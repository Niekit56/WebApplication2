﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class projekt_szczegoly_temat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
            {
                Label1.Text = "nie wybrano projektu którego szczegóły mają być wyświetlone! (kliknij link poniżej aby wybrać projekt)";
            }
            else
            {
                Label1.Visible = false;
            }
        }
    }
}