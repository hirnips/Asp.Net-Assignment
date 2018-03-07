using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1
{
    public partial class CompanyHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MasterPage master = Page.Master.Master;
            if (master != null)
            {
                LinkButton lnb = master.FindControl("lnbSignIn") as LinkButton;
                if (lnb != null)
                {
                    lnb.Visible = false;
                }
            }
        }

        protected void lnbSave_Click(object sender, EventArgs e)
        {
            if(drpCompany.SelectedItem.Text == "==Select Company==")
            {
                lblAns.Text = "Please select company";
                drpCompany.Focus();
                return;
            }
            if(drpLanguage.SelectedItem.Text == "==Select Language==")
            {
                lblAns.Text = "Please select Language";
                drpLanguage.Focus();
                return;
            }
            Response.Redirect("~/CompanyHome.aspx");
        }

        protected void lnbCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CompanyHome.aspx");
        }

        protected void drpCompany_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblAns.Text = "";
        }

        protected void drpLanguage_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblAns.Text = "";
        }
    }
}