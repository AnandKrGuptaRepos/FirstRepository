using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class _1 : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string filepath = "~/Seller/Uploads/" + FileUpload1.FileName;
        try
        {
            FileInfo fileinfo = new FileInfo(FileUpload1.FileName);
            if (fileinfo.Extension == ".JPEG" || fileinfo.Extension == ".jpeg" || fileinfo.Extension == ".JPG" || fileinfo.Extension == ".jpg" || fileinfo.Extension == ".jpeg" || fileinfo.Extension == ".GIF" || fileinfo.Extension == ".gif")
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath(filepath));
            }
        }
        catch (Exception) { }
        try
        {


            SqlParameter[] parameter =
        {
                new SqlParameter("@Name", txtName.Text),
                new SqlParameter("@User_Name",txtusername.Text),
                new SqlParameter("@Email", txtEmail.Text),
                new SqlParameter("@Phone", txtPhone.Text),
                new SqlParameter("@Age", txtAge.Text),
                new SqlParameter("@Password",txtPassword.Text),
                new SqlParameter("@Image", filepath)
       };

            int i = db.ExecuteNonQueryByProc("Insert_SellerInfo", parameter);
            if (i > 0)
            {

                lblerrorMessage.Text = "You are Become a Seller Successfull..!!";
                //lnkbtnUploadProperty.Visible = true;
                //lnkbtnViewProfile.Visible = true;
            }
            else
            {
                lblerrorMessage.Text = "There is some Problem in registration, Please try again..!!";
            }
        }
        catch (SqlException ex)
        {
            lblerrorMessage.ForeColor = System.Drawing.Color.Red;
            lblerrorMessage.Text = ex.Message;
        }
        catch (Exception ex)
        {
            lblerrorMessage.ForeColor = System.Drawing.Color.Red;
            lblerrorMessage.Text = ex.Message;

        }
    }

    protected void lnkbtnUploadProperty_Click(object sender, EventArgs e)
    {
        Response.Redirect("UploadProperty.aspx");
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtName.Text = null;
        txtEmail.Text = null;
        txtAge.Text = null;
        txtPhone.Text = null;

    }
}
