using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {         
        }

        protected void lnbSignIn_Click(object sender, EventArgs e)
        {
            MasterPage master = Page.Master;
            if (master != null)
            {
                LinkButton lnb = master.FindControl("lnbSignIn") as LinkButton;
                if (lnb != null)
                {
                    lnb.Visible = false;
                }
            }
            Response.Redirect("~/Login.aspx");
        }

        protected void lnbSignOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }
    }
}