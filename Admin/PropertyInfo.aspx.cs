using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_PropertyInfo : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    string Rent,category;
    long Book;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User1"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
    

    protected void btnPropSubmit_Click(object sender, EventArgs e)
    {


        if (RadioButton1.Checked)
        {
            Rent = RadioButton1.Text;
        }
        else if (RadioButton2.Checked)
        {
            Rent = RadioButton2.Text;
        }
        if (RadioButtonCommercial.Checked)
        {
            category = RadioButtonCommercial.Text;
        }
        else if (RadioButtonResidential.Checked)
        {
            category = RadioButtonResidential.Text;
        }
        string filePath1 = string.Empty;
        string filepath2 = string.Empty; 
        string filepath3 = string.Empty; 
        string filepath4 = string.Empty; 
        FileInfo fileinfo1 = null; 
        FileInfo fileinfo2 = null; 
        FileInfo fileinfo3 = null; 
        FileInfo fileinfo4 = null; 
        if (FileUpload1.FileName.Length > 0)
        {
            filePath1 = "~\\Uploads\\" + FileUpload1.FileName;
            fileinfo1 = new FileInfo(FileUpload1.FileName);
        }
        if (fileinfo1 != null)
        {
            if (fileinfo1.Extension == ".JPEG" || fileinfo1.Extension == ".jpeg" || fileinfo1.Extension == ".JPG" || fileinfo1.Extension == ".jpg" || fileinfo1.Extension == ".jpeg" || fileinfo1.Extension == ".GIF" || fileinfo1.Extension == ".gif")
            {
                filePath1 = "~\\Uploads\\" + FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath(filePath1));
            }
        }
        if (FileUpload2.FileName.Length > 0)
        {
            filepath2 = "~\\Uploads\\" + FileUpload2.FileName;
            fileinfo2 = new FileInfo(FileUpload2.FileName);
        }
        if (fileinfo2 != null)
        {
            if (fileinfo2.Extension == ".JPEG" || fileinfo2.Extension == ".jpeg" || fileinfo2.Extension == ".JPG" || fileinfo2.Extension == ".jpg" || fileinfo2.Extension == ".jpeg" || fileinfo2.Extension == ".GIF" || fileinfo2.Extension == ".gif")
            {
                FileUpload2.PostedFile.SaveAs(Server.MapPath(filepath2));
            }
        }
        if (FileUpload3.FileName.Length > 0)
        {
            filepath3 = "~\\Uploads\\" + FileUpload3.FileName;
            fileinfo3 = new FileInfo(FileUpload3.FileName);
        }
        if (fileinfo3 != null)
        {
            if (fileinfo3.Extension == ".JPEG" || fileinfo3.Extension == ".jpeg" || fileinfo3.Extension == ".JPG" || fileinfo3.Extension == ".jpg" || fileinfo3.Extension == ".jpeg" || fileinfo3.Extension == ".GIF" || fileinfo3.Extension == ".gif")
            {
                FileUpload3.PostedFile.SaveAs(Server.MapPath(filepath3));
            }
        }
        if (FileUpload4.FileName.Length > 0)
        {
            filepath4 = "~\\Uploads\\" + FileUpload4.FileName;
            fileinfo4 = new FileInfo(FileUpload4.FileName);
        }
        if (fileinfo4 != null)
        {
            if (fileinfo4.Extension == ".JPEG" || fileinfo4.Extension == ".jpeg" || fileinfo4.Extension == ".JPG" || fileinfo4.Extension == ".jpg" || fileinfo4.Extension == ".jpeg" || fileinfo4.Extension == ".GIF" || fileinfo4.Extension == ".gif")
            {
                FileUpload4.PostedFile.SaveAs(Server.MapPath(filepath4));
            }
        }
        try
        {
             SqlParameter[] parameter =
            {
                new SqlParameter("@Property_Name", txtPropertyName.Text),
                new SqlParameter("@Address",txtPropAddress.Text),
                new SqlParameter("@Image1", filePath1),
                new SqlParameter("@Image2", filepath2),
                new SqlParameter("@Image3", filepath3),
                new SqlParameter("@Image4", filepath4),
                new SqlParameter("@BHK", txtPropBHK.Text),
                new SqlParameter("@Floor", txtPropFloor.Text),
                new SqlParameter("@Washroom", txtPropWashroom.Text),
                new SqlParameter("@Bedroom", PropBedroom.Text),
                new SqlParameter("@Hall",txtPropHall.Text),
                new SqlParameter("@Kitchen",txtPropKitchen.Text),
                new SqlParameter("@Description",txtDescription.Text),
                new SqlParameter("@Price",txtPrice.Text),
                new SqlParameter("@Booking_Price",txtBook.Text),
                new SqlParameter("@Rent",Rent),
                new SqlParameter("@Rent_amount",ttxtRentAmount.Text),
                new SqlParameter("@Duration",txtDuration.Text),
                new SqlParameter("@Agreement",txtAgreemnet.Text),
                new SqlParameter("@category",category),
                new SqlParameter("@Locality",txtLocality.Text),
                new SqlParameter("@Pin",txtArea.Text)
            };
            int i = db.ExecuteNonQueryByProc("insert_PropertyInfo", parameter);
            if (i > 0)
            {
                lnkButton.ForeColor = System.Drawing.Color.Red;
                lnkButton.Text = "Property Details are submitted Successfully..!!";
                //Button1.Visible = true;
            }
            else
            {
                lnkButton.ForeColor = System.Drawing.Color.Red;
                lnkButton.Text = "There is some Problem in Submission, Please try again..!!";
            }
        }
        
        catch (SqlException ex)
        {
            lnkButton.ForeColor = System.Drawing.Color.Red;
            lnkButton.Text = ex.Message;
        }
        catch (Exception ex)
        {
            lnkButton.ForeColor = System.Drawing.Color.Red;
            lnkButton.Text = ex.Message;

        }
    }





    protected void txtPrice_TextChanged(object sender, EventArgs e)
    {

        Book = Convert.ToInt64(txtPrice.Text);
        float val = (Book / 100) * 5;
        txtBook.Text = Convert.ToString(val);
    }
}
