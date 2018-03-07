using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1.UserControls
{
    public partial class SignInControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void lnbLogin_Click(object sender, EventArgs e)
        {
            if(txtUName.Text.ToUpper() ==  "Company".ToUpper())
            {
                if(txtPassword.Text.ToUpper() == "company".ToUpper())
                {   
                    Response.Redirect("~/CompanyHome.aspx");                    
                }
                else
                {
                    lblAns.Text = "Invalid Password";
                    txtPassword.Text = "";
                    txtPassword.Focus();
                    return;
                }
                
            }
           else if(txtUName.Text.ToUpper() == "Applicant".ToUpper())
            {
                if(txtPassword.Text.ToUpper() == "Applicant".ToUpper())
                {
                    Response.Redirect("~/ApplicantEducation.aspx");
                }
                else
                {
                    lblAns.Text = "Invalid Password";
                    txtPassword.Text = "";
                    txtPassword.Focus();
                    return;
                }                
            }
            else
            {
                lblAns.Text = "Invalid User Name";
                txtUName.Text = "";
                txtPassword.Text = "";
                txtUName.Focus();
                return;
            }
        }

        protected void lnbCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }

        protected void lnbForgot_Click(object sender, EventArgs e)
        {
            if(txtUName.Text == "")
            {
                lblAns.Text = "Please enter User Name";
                txtUName.Focus();
                return;
            }
            Response.Redirect("~/ForgotPassword.aspx?UserName=" + txtUName.Text.ToUpper() + "");
        }

        protected void lnbSignUp_Click(object sender, EventArgs e)
        {            
            Response.Redirect("~/SignUp.aspx");
        }
    }
}