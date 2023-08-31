using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Forex.Model.RegisterUser
{
    class User
    {
        private long userID;
        private string userName;
        private string password;
        private string email;
        private string phoneNumber;

        public long UserID
        {
            set { userID = value; }
            get { return userID; }
            
        }

        public string UserName
        {
            get { return userName; }
            set { userName = value; }
        }

        public string Password
        {
            get { return password; }
            set { password = value; }
        }

        public string Email
        {
            get { return email; }
            set { email = value; }        }

        public string PhoneNumber
        {
            get { return phoneNumber; }
            set { phoneNumber = value; }
        }
    }
}
