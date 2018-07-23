using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



namespace ElectronicVoting
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private int uid;
        private string name;
        private string surname;
        private int id;
        private string password;
        private string level;
        private string confirm;
        private static string connectionString = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        private SqlConnection connection;
        private SqlCommand command;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            name = txtname.Text;
            surname = txtsurname.Text;
            id = Convert.ToInt32(txtID.Text);
            //password = sha1(sha1(txtPassword.Text + salt)); //hashed password with random number
            password = Secrecy.HashPassword(txtPassword.Text);
            level = "voter";
            //confirm = sha1(sha1(txtconfirm.Text + salt));
            confirm = Secrecy.HashPassword(txtconfirm.Text);
            connection = new SqlConnection(connectionString);

            //check if passwords are the same
            if (confirm.Equals(password))
            {
                connection = new SqlConnection(connectionString);
                string commandString = "INSERT INTO [Users](FirstName,LastName,ID,Password,UserType) VALUES(@name,@surname,@id,@password,@Type)";
                command = new SqlCommand(commandString); //Saving into the database

                command.Parameters.AddWithValue("@name", name);
                command.Parameters.AddWithValue("@surname", surname);
                command.Parameters.AddWithValue("@id", id);
                command.Parameters.AddWithValue("@password", password);
                command.Parameters.AddWithValue("@Type", level);

                command.CommandType = CommandType.Text;
                command.Connection = connection;
                command.Connection.Open();
                command.ExecuteNonQuery();


                command.Connection.Close();
                command.Dispose();
                connection.Dispose();

                //---------------------------------------insert user id into profile table------------------------------------------------
                var db = new DataClasses1DataContext();
                var addToProfile = from user in db.Users
                                   select user;

                foreach(User u in addToProfile)
                {
                    uid = u.UserID;
                }

                var addID = new Profile
                {
                    User_ID = uid
                };
                db.Profiles.InsertOnSubmit(addID); //add id to profile table

                try
                {
                    db.SubmitChanges(); //accept changes
                }
                catch(Exception ex)
                {
                    ex.GetBaseException();
                }

                string temp = Convert.ToString(uid);
                Response.Redirect("WebForm2.aspx?id=" + temp);
            }
        }

       
    }
}