using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MasterPage master = Page.Master;
            if (master != null)
            {
                LinkButton lnb = master.FindControl("lnbSignIn") as LinkButton;
                if (lnb != null)
                {
                    lnb.Visible = false;
                }
                LinkButton lnb1 = master.FindControl("lnbSignOut") as LinkButton;
                if (lnb1 != null)
                {
                    lnb1.Visible = false;
                }
            }
        }
    }
}