using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Mail;
using System.Net;
using System.Diagnostics;

namespace BTL_ASPdotNet.Helpers
{
    public class EmailHelper
    {
        public static string MailFromAddress = "sendcodebtl@gmail.com";
        public static bool UseSsl = true;
        public static string Username = "sendcodebtl@gmail.com";
        public static string Password = "anhanh123";
        public static string ServerName = "smtp.gmail.com";
        public static int ServerPort = 587;

        public static void SendMail(string mailToAddress, string subject, string content)
        {
            using (var client = new SmtpClient()
            {
                Host = ServerName,
                Port = ServerPort,
                EnableSsl = UseSsl,
                Credentials = new NetworkCredential(Username, Password),
            })
            {
                
                MailMessage mess = new MailMessage();
                mess.From = new MailAddress(MailFromAddress);
                mess.ReplyToList.Add(MailFromAddress);
                mess.To.Add(new MailAddress(mailToAddress));
                mess.Subject = subject;
                mess.Body = content;

                try
                {
                    client.Send(mess);
                }
                catch (Exception)
                {
                    return;
                }

            }
        }

    }
}