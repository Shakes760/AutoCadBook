using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Xml.Linq;
using System.Net;
using System.Web.Services.Description;


namespace Booking_Test
{
    public partial class Home : System.Web.UI.Page
    {
        string passedFormateDate;
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                error.Text = "Success!";
               

            }
            string fromMail = "designanddraughting@gmail.com";
            string fromPassword = "pvsxjdddqxcoejhf";

            DateTime selectedDate = Calendar1.SelectedDate;
            DateTime todaysDate = DateTime.Now;

            string userName1 = TextBox1.Text;
            string userSurname1 = TextBox2.Text;
            string userEmail1 = TextBox3.Text;
            string contactNumber1 = TextBox4.Text;
            string duration1 = DropDownList1.SelectedValue;
            string area1 = TextBoxArea.Text;
            string occupation1 = TextBoxOccupation.Text;
            string Employment1 = DropDownListEmployment.SelectedValue;
            string adminBody = $@"
<p style='color: black;'>Booking Request Made By <b>{userName1} {userSurname1}</b>,</p>
<p style='color: black;'><b>Student's Name:</b> {userName1} {userSurname1}</p>
<p style='color: black;'><b>Student's Email:</b> {userEmail1}</p>
<p style='color: black;'><b>Student's Contact:</b> {contactNumber1}</p>
<p style='color: black;'><b>Date:</b> {Calendar1.SelectedDate.ToLongDateString()}</p>
<p style='color: black;'><b>Duration:</b> {duration1}</p>
<p style='color: black;'><b>Area of Residence:</b> {area1}</p>
<p style='color: black;'><b>Occupation:</b> {occupation1}</p>
<p style='color: black;'><b>Employment:</b> {Employment1}</p>";





            MailMessage admin = new MailMessage();
            admin.From = new MailAddress(fromMail);
            admin.Subject = "Booking Request";
            admin.To.Add(new MailAddress("designanddraughting@gmail.com"));
            admin.Body = adminBody;
            admin.IsBodyHtml = true;

            var smtpClient1 = new SmtpClient("smtp.gmail.com")
            {

                Port = 587,
                Credentials = new NetworkCredential(fromMail, fromPassword),
                EnableSsl = true

            };
            smtpClient1.Send(admin);



            if (selectedDate > todaysDate)
            {

                string userName = TextBox1.Text;
                string userSurname = TextBox2.Text;
                string userEmail = TextBox3.Text;
                string contactNumber = TextBox4.Text;
                string duration = DropDownList1.SelectedValue;
                string area = TextBoxArea.Text;
                string occupation = TextBoxOccupation.Text;
                string Employment = DropDownListEmployment.SelectedValue;

                passedFormateDate = Calendar1.SelectedDate.ToLongDateString();
                string body1 = $@"
<p style='color: black;'>Dear <b>{userName} {userSurname}</b>,</p>
<p style='color: black; font-style: italic;'><b>Note:</b> This is not a confirmation email. Please wait for a confirmation email from the owner.</p>
<p style='color: black;'>Booking request:</p>
<p style='color: black;'><b>Student's Name:</b> {userName} {userSurname}</p>
<p style='color: black;'><b>Student's Contact:</b> {contactNumber}</p>
<p style='color: black;'><b>Date:</b> {passedFormateDate}</p>
<p style='color: black;'><b>Duration:</b> {duration}</p>
<p style='color: black;'><b>Area of Residence:</b> {area}</p>
<p style='color: black;'><b>Occupation:</b> {occupation}</p>
<p style='color: black;'><b>Employment:</b> {Employment}</p>
<p style='color: black;'>Please <b>do not</b> reply to the sender of this email address as you will not receive a response.</p>
<p style='color: black;'>Kind regards,</p>
<p style='color: black; font-style: italic;'>This is an automated response.</p>";





                MailMessage message = new MailMessage();
                message.From = new MailAddress(fromMail);
                message.Subject = "Booking Request";
                message.To.Add(new MailAddress(userEmail));
                message.Body = body1;
                message.IsBodyHtml = true;

                var smtpClient = new SmtpClient("smtp.gmail.com")
                {

                    Port = 587,
                    Credentials = new NetworkCredential(fromMail, fromPassword),
                    EnableSsl = true

                };
                smtpClient.Send(message);
                Response.Redirect("Success.aspx");

            }
            else
            {

                error.Text = "Error: You have selected a past date!";
            }


           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }
    }
}