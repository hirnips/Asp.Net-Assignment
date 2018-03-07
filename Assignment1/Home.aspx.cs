using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MasterPage master = Page.Master;
                if (master != null)
                {
                    LinkButton lnb = master.FindControl("lnbSignOut") as LinkButton;
                    if (lnb != null)
                    {
                        lnb.Visible = false;
                    }
                }
            }
        }
    }
}