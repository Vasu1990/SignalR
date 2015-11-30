using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using SignalRUpdates.Hubs;
using SignalRUpdates.Repo;

namespace SignalRUpdates
{
    public class MessageRepo
    {
        //conection string
        private readonly string _connString =
            ConfigurationManager.ConnectionStrings["proworldzdbNEWEntities1"].ConnectionString;

        //fetch data from db table 
        public IEnumerable<Messages> GetAllMessages()
        {
            var messages = new List<Messages>();
            using (var connection = new SqlConnection(_connString))
            {
                connection.Open();
                /***note: 
                 * 1.using dbo i.e. schema name is must or else it will not work.
                 * 2.SELECT * will not work entities has to be mentioned.
                 * 3.db will send updates only for those entities that are presern in the select statement.
                 * 4.if an entity is present in the select statement and not a part of result set it's change will 
                     not send db update to application.
                 */
                using (var command = new SqlCommand(@"SELECT [Communities].[Id],[Communities].[Name],[Users].[Email],
                                                     [Users].[Name] as UserName from [dbo].[Users] 
                                                     join [dbo].[Communities]
                                                       on [Users].[CommunityId] = [Communities].[Id]", connection))
                {
                    command.Notification = null;

                    var dependency = new SqlDependency(command);
                    dependency.OnChange += new OnChangeEventHandler(dependency_OnChange);

                    if (connection.State == ConnectionState.Closed)
                        connection.Open();

                    var reader = command.ExecuteReader();

                    while (reader.Read())
                    {
                        messages.Add(item: new Messages { Id = (int)reader["Id"],  Username = (string)reader["Name"] });
                    }
                }

            }
            return messages;


        }

        //event fired whenever db entites in the select list change
        private void dependency_OnChange(object sender, SqlNotificationEventArgs e)
        {
            if (e.Type == SqlNotificationType.Change)
            {
                //calls to hub message to broadvast changes
                MessagesHub.SendMessages();
            }
        }
    }
}