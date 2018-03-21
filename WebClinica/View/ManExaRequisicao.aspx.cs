using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebClinica.View
{
    public partial class ManExaRequisicao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["IdExaReq"] == "IdExaReq")
                {
                    FormView1.ChangeMode(FormViewMode.Edit);
                }
            }

        }
    }
}