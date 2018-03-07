using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1.UserControls
{
    public partial class ForgotPaswordControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtUName.Text = Request.QueryString["UserName"].ToString();
                txtUName.Enabled = false;
            }
        }

        protected void lnbLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ChangePassword.aspx?UserName=" + txtUName.Text + "");
        }

        protected void lnbCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}