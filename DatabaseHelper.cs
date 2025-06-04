using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace sunshine.DispatchProcessing
{
    public static class DatabaseHelper
    {
        public static string ConnStr = "server=localhost;user=1001;password=pass1;database=sunshinedb;";

        public static MySqlConnection GetConnection()
        {
            return new MySqlConnection(ConnStr);
        }
    }
}