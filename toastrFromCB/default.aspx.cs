using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace toastrCB
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        enum toastrTypes { Success, Error, Info, Warning };
        public string display;

        protected void btnSuccess_Click(object sender, EventArgs e)
        {
            display = "Success message I want to display";
            DisplayToastr(display, toastrTypes.Success.ToString());

        }


        protected void btnError_Click(object sender, EventArgs e)
        {
            display = "Error message I want to display";
            DisplayToastr(display, "Error");
        }

        protected void btnInfo_Click(object sender, EventArgs e)
        {
            display = "Information message I want to display";
            DisplayToastr(display, "Info");
        }

        protected void btnWarning_Click(object sender, EventArgs e)
        {
            display = "Warning message I want to display";
            DisplayToastr(display, "Warning");
        }


        protected void btnTest_Click(object sender, EventArgs e)
        {

        }

        protected void DisplayToastr(string message, string type)
        {

            Page.ClientScript.RegisterStartupScript(this.GetType(), "toastr", "alertMe(" + "\"" + message + "\"" + "," + "\"" + type + "\"" + " );", true);
        }
    }
}