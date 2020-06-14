using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class PrppertiesDetails : System.Web.UI.Page
{
    DataClassesDataContext db=new DataClassesDataContext();
    int propertyId;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["pid"] != null)
            {
                string query = "Select * from Property_info where Prop_id='" + Request.QueryString["pid"].ToString() + "'";
                DataTable dt = new DataTable();
                dt = db.GetDataTableByQuery(query);
                if (dt.Rows.Count > 0)
                {
                    Image1.ImageUrl = dt.Rows[0]["Image1"].ToString();
                    Image2.ImageUrl = dt.Rows[0]["Image2"].ToString();
                    Image3.ImageUrl = dt.Rows[0]["Image3"].ToString();
                    Image4.ImageUrl = dt.Rows[0]["Image4"].ToString();
                    LblPropName.Text = dt.Rows[0]["Property_Name"].ToString();
                    LblAddress.Text = dt.Rows[0]["Address"].ToString();
                    LblBHK.Text = dt.Rows[0]["BHK"].ToString();
                    LblFLoor.Text = dt.Rows[0]["Floor"].ToString();
                    LblWashroom.Text = dt.Rows[0]["Washroom"].ToString();
                    LblBedroom.Text = dt.Rows[0]["hall"].ToString();
                    LblHall.Text = dt.Rows[0]["hall"].ToString();
                    LblKitchen.Text = dt.Rows[0]["kitchen"].ToString();
                    LblDesc.Text = dt.Rows[0]["Description"].ToString();
                    lblPrice.Text = dt.Rows[0]["Price"].ToString();
                    lblBook.Text = dt.Rows[0]["Booking_Price"].ToString();
                    lblrentstatus.Text = dt.Rows[0]["Rent"].ToString();
                    LabelRent.Text = dt.Rows[0]["Rent_amount"].ToString();
                }
            }
            else if (Request.QueryString["sid"] != null)
            {
                string query = "Select * from SellerUpload_Property where Sell_id='" + Request.QueryString["sid"].ToString() + "'";
                DataTable dt = new DataTable();
                dt = db.GetDataTableByQuery(query);
                if (dt.Rows.Count > 0)
                {
                    Image1.ImageUrl = dt.Rows[0]["Image1"].ToString();
                    Image2.ImageUrl = dt.Rows[0]["Image2"].ToString();
                    Image3.ImageUrl = dt.Rows[0]["Image3"].ToString();
                    Image4.ImageUrl = dt.Rows[0]["Image4"].ToString();
                    LblPropName.Text = dt.Rows[0]["Property_Name"].ToString();
                    LblAddress.Text = dt.Rows[0]["Address"].ToString();
                    LblBHK.Text = dt.Rows[0]["BHK"].ToString();
                    LblFLoor.Text = dt.Rows[0]["Floor"].ToString();
                    LblWashroom.Text = dt.Rows[0]["Washroom"].ToString();
                    LblBedroom.Text = dt.Rows[0]["hall"].ToString();
                    LblHall.Text = dt.Rows[0]["hall"].ToString();
                    LblKitchen.Text = dt.Rows[0]["kitchen"].ToString();
                    LblDesc.Text = dt.Rows[0]["Description"].ToString();
                    lblPrice.Text = dt.Rows[0]["Price"].ToString();
                    lblBook.Text = dt.Rows[0]["Booking_Price"].ToString();
                    btnRent.Visible = false;
                    lblrentstatus.Visible = false;
                    LabelRent.Visible = false;
                }
            }



        }
    }

    protected void btnBookProperty_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["pid"] != null)
        {

            Response.Redirect("BookProperty.aspx?pid=" + Request.QueryString["pid"].ToString());
        }
        else if (Request.QueryString["sid"] != null)
        {

            Response.Redirect("BookProperty.aspx?sid=" + Request.QueryString["sid"].ToString());
        }

    }

    protected void btnRent_Click(object sender, EventArgs e)
    {
        Response.Redirect("PayRent.aspx?pid=" + Request.QueryString["pid"].ToString());
    }

    protected void btnviewSeller_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewSeller.aspx");
    }
}