using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebClinica.View
{
    public partial class AgendarConsulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["IdConsulta"] == null)
                {
                    FormView1.ChangeMode(FormViewMode.Insert);
                }
            }
        }
    }
}