using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Seller_SellerMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User2"] != null)
        {
            Label2.Visible = true;
            Label2.Text = Session["User2"].ToString();
        }
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }

    protected void Label1_DataBinding(object sender, EventArgs e)
    {

    }

    protected void lnkbtnLogOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Home.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
}
