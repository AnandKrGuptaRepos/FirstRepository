using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ContactUs : System.Web.UI.Page
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
                new SqlParameter("@Contact", txtContact.Text)



            };

            int i = db.ExecuteNonQueryByProc("contact_info", parameter);
            if (i > 0)
            {
                Label2.Visible = true;
                Label2.ForeColor = System.Drawing.Color.Red;
                Label2.Text = "Your contact details Send Successfull.. Thank you!!";
                
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
        txtName.Text = null;
        txtEmail.Text = null;
        txtContact.Text = null;

    }
}