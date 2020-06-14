





using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
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
             ds= db.GetDataTable("ValidateLogin", parameter);
            
            if (ds.Rows.Count>0)
            {
                if (ds.Rows[0]["role"].ToString().Equals("2"))
                {
                    Session["User"] = txtUserName.Text;
                    Response.Write("<script>alert('Login Successfully..!!')</script>");
                    Response.Redirect("Home.aspx");
                }
                else if (ds.Rows[0]["role"].ToString().Equals("1"))
                {
                    Session["User1"] = txtUserName.Text;
                    Response.Redirect("Admin/AdminHomePage.aspx");
                }
              

            }
            else
            {
                lblErrorMessage.Text = "Invalid User Name and Password..!!";
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



    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtUserName.Text = null;
        txtPassword.Text = null;
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}

