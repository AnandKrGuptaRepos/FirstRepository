using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    string gender;
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnViewForm_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewForm.aspx");
    }



    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
        {
            gender = RadioButton1.Text;
        }
        else if (RadioButton2.Checked)
        {
            gender = RadioButton2.Text;
        }

        try
        {


            SqlParameter[] parameter =
        {
                new SqlParameter("@Name", txtName.Text),
                new SqlParameter("@User_Name",txtUserName.Text),
                new SqlParameter("@Gender",gender),
                new SqlParameter("@Phone", txtPhone.Text),
                new SqlParameter("@Address", txtAddress.Text),
                new SqlParameter("@Password", txtPassword.Text),
                new SqlParameter("@Email", txtEmail.Text),
                new SqlParameter("@Age", txtAge.Text),
                new SqlParameter("@Aadhar_no",txtAadhar.Text)


            };
            
            int i = db.ExecuteNonQueryByProc("insert_User'sProfile", parameter);
            if (i > 0)
            {
                linkbtn.ForeColor = System.Drawing.Color.Red;
                linkbtn.Text = "Registration Successfull..!!";
                Button1.Visible = true;
               
              

            }
            else
            {
                linkbtn.ForeColor = System.Drawing.Color.Red;
                linkbtn.Text = "There is some Problem in registration, Please try again..!!";
            }
        }
        catch (SqlException ex)
        {
            linkbtn.ForeColor = System.Drawing.Color.Red;
            linkbtn.Text = ex.Message;
        }
        catch (Exception ex)
        {
            linkbtn.ForeColor = System.Drawing.Color.Red;
            linkbtn.Text = ex.Message;

        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {

    }
}

 