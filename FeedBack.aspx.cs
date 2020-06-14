using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class FeedBack : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {


            SqlParameter[] parameter =
        {
                new SqlParameter("@Name", txtName.Text),              
                new SqlParameter("@Email", txtEmail.Text),
                new SqlParameter("@Feedback", txtFeedback.Text)
                


            };

            int i = db.ExecuteNonQueryByProc("Feedback_info", parameter);
            if (i > 0)
            {
                Label2.Visible = true;
                Label2.ForeColor = System.Drawing.Color.Red;
                Label2.Text = "Feedback Send Successfull.. Thank you!!";
                Label2.Visible = true;



            }
            else
            {
                Label2.ForeColor = System.Drawing.Color.Red;
                Label2.Text = "There is some Problem in registration, Please try again..!!";
            }
        }
        catch (SqlException ex)
        {
            Label2.ForeColor = System.Drawing.Color.Red;
            Label2.Text = ex.Message;
        }
        catch (Exception ex)
        {
            Label2.ForeColor = System.Drawing.Color.Red;
            Label2.Text = ex.Message;

        }

    }


    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtEmail.Text = null;
        txtFeedback.Text = null;
        txtName.Text = null;
    }
}