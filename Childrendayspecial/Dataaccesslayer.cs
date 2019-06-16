using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Security.Cryptography;

namespace Childrendayspecial
{
    class Dataaccesslayer
    {
        int user = 0;
        SqlConnection con = null;
        string str = null;

        public Dataaccesslayer()
        {
            str = ConfigurationManager.ConnectionStrings["WorkaholicsConnectionString"].ConnectionString;
            con = new SqlConnection(str);
            con.Open();

        }
        public int childrenregister(string firstname,string lastname,string email,string contactus)
        {
            string query = "insert into tblchildregistration values('"+firstname+"','"+lastname+"','"+email+"','"+contactus+"')";
            SqlCommand cmd = new SqlCommand(query,con);
             return cmd.ExecuteNonQuery();
        }
        public int childmarks(string firstname,string lastname,string email,int marks,int totalmarks,string contactno)
        {
            string query = "insert into tblchildmarks values('" + firstname + "','" + lastname + "','" + email + "',"+ marks + ","+totalmarks+",'"+contactno+"')";
            SqlCommand cmd = new SqlCommand(query, con);
            return cmd.ExecuteNonQuery();
        }
        public int stafflogin(string staffid,string password)
        {
            string query = "select Password from tblstafflogin where Staffid= '"+ staffid+"'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string dbpassword = Convert.ToString(dr["Password"]);
                //string dbsalt = Convert.ToString(dr["salt"]);
               string hashedpassword = Convert.ToString(Dataaccesslayer.GenerateSHA512(password));
                if (hashedpassword.Trim() == dbpassword.Trim())
                {
                    user = user + 1;
                }

            }
            return user;
        }
        public static string GenerateSHA512(string inputstring)
        {
            HashAlgorithm algoSHA512 = SHA512.Create();
            byte[] bytepassword = ASCIIEncoding.ASCII.GetBytes(inputstring);
            byte[] hashcodeSHA512 = algoSHA512.ComputeHash(bytepassword);
            var sb = new StringBuilder();
            for (var i = 0; i < hashcodeSHA512.Length; i++)
            {
                sb.Append(hashcodeSHA512[i].ToString());
            }
            return sb.ToString();
        }




    }
}