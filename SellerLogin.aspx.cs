using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class SellerLogin : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            SqlParameter[] parameter =
            {
                        new SqlParameter("@UserName", txtUserName.Text),
                        new SqlParameter("@Password",txtPassword.Text),
                    };

            DataTable ds = new DataTable();
            ds = db.GetDataTable("ValidateSellerLogin", parameter);

            if (ds.Rows.Count > 0)
            {
                if (ds.Rows[0]["role"].ToString().Equals("3"))
                {
                    Session["User2"] = txtUserName.Text;
                    Response.Redirect("~/Seller/SellerPage.aspx");
                    LinkButton4.Visible = true;

                }               
            }
            else
            {
                lblErrorMessage.Text = "You are not a Seller!!";
            }
        }
        catch (SqlException ex)
        {
            lblErrorMessage.Text = ex.Message;
        }
        catch (Exception ex)
        {
            lblErrorMessage.Text = ex.Message;
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtUserName.Text = null;
        txtPassword.Text = null;
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("SellerLogin.aspx");
    }
}