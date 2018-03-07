using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1
{
    public partial class CompanyEducation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
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
        }
    }
}