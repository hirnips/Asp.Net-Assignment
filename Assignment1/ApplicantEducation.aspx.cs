using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1
{
    public partial class ApplicantEducation : System.Web.UI.Page
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
            if(drpApplicant.SelectedItem.Text == "==Select Applicant==")
            {
                lblAns.Text = "Please Select Applicant";
                drpApplicant.Focus();
                return;
            }
        }

        protected void lnbCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ApplicantEducation.aspx");
        }
    }
}