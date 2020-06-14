using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RealEstate : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] != null)
        {
            Label1.Visible = true;
            Label1.Text = Session["User"].ToString();
            lnkbtnLogin.Visible = false;
            lnkbtnLogOut.Visible = true;
            LinkButtonHistory.Visible = true;


            //lnkbtnViewForm.Visible = true;

        }
        else if(Session["user1"]!=null)
        {
            LinkButton3.Visible = true;
        }
    }

    protected void lnkbtnLogin_Click(object sender, EventArgs e)
    {

        Response.Redirect("Login.aspx");
        
    }


    protected void linkBtnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Home.aspx");
    }


    protected void lnkbtnViewForm_Click1(object sender, EventArgs e)
    {
        Response.Redirect("ViewForm.aspx");
    }

   

    protected void lnkbtnLogOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Home.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ContactUs.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("FeedBack.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/AdminHomePage.aspx");
    }

    protected void LinkButtonHistory_Click(object sender, EventArgs e)
    {
        Response.Redirect("BookingHistory.aspx");
    }
}
