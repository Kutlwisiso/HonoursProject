using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using MessagingToolkit.QRCode.Codec;
using MessagingToolkit.QRCode.Codec.Data;
using System.Drawing;
using System.Drawing.Imaging;

namespace ElectronicVoting
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        private static string connectionString = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        private SqlConnection connection;
        private SqlCommand command;
        private SqlDataReader reader;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGenerator_Click(object sender, EventArgs e)
        {
            int userid = Convert.ToInt32(Request.QueryString["id"]);

            connection = new SqlConnection(connectionString);
            string commandString = "SELECT * FROM Profile WHERE User_ID = @uid";
            command = new SqlCommand(commandString);

            command.Parameters.AddWithValue("@uid", userid);

            command.CommandType = CommandType.Text;
            command.Connection = connection;
            command.Connection.Open();
            command.ExecuteNonQuery();
            reader = command.ExecuteReader();

            int pid = 0;
            int uid = 0;

            if (reader.HasRows)
            {
                if (reader.Read())
                {
                    pid = reader.GetInt32(0);
                    uid = reader.GetInt32(1);
                }
            }

            QRCodeEncoder encoder = new QRCodeEncoder();

            string temppid = Convert.ToString(pid);
            string tempuid = Convert.ToString(uid);
            Bitmap img = encoder.Encode(temppid);
            img = encoder.Encode(tempuid);

            img.Save("C:\\Users\\Kutlwi\\Documents\\Visual Studio 2015\\Projects\\ElectronicVoting\\ElectronicVoting\\img.jpg", ImageFormat.Jpeg);

            QRImage.ImageUrl = "img.jpg";

            PHQRCode.Controls.Add(QRImage);
        }
    }
}