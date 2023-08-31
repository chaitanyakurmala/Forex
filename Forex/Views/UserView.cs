using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Forex.Views.UserView
{
    internal class UserView
    {
        string temp;
        public void User()
        {
            string StartUser = @"
1. Register
2. Login
        ";
            Console.WriteLine(StartUser);
            temp = Console.ReadLine();
            int.TryParse(temp, out int number);

            switch (temp)
            {
                case "1":
                    
                    break;
                case "2":

                    break;
                default:
                    Console.WriteLine("Enter Correct Option");
                    break;
            }
        }

        public void RegisterUserView()
        {

        }
    }
}
