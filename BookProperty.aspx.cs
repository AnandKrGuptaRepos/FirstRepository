using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class BookProperty : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    string choice;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        if (!IsPostBack)
        {
            if (Request.QueryString["pid"] != null)
            {
                lblPropertyId.Text = Request.QueryString["pid"].ToString();
                string quer = "select * from Property_info where Prop_id='" + Request.QueryString["pid"].ToString() + "'";
                DataTable dt = new DataTable();
                dt = db.GetDataTableByQuery(quer);
                if (dt.Rows.Count > 0)
                {
                    lblBooking.Text = dt.Rows[0]["Booking_Price"].ToString();
                }

            }
           else if (Request.QueryString["sid"] != null)
            {
                lblPropertyId.Text = Request.QueryString["sid"].ToString();
                string quer = "select * from SellerUpload_Property where Sell_id='" + Request.QueryString["sid"].ToString() + "'";
                DataTable dt = new DataTable();
                dt = db.GetDataTableByQuery(quer);
                if (dt.Rows.Count > 0)
                {
                    lblBooking.Text = dt.Rows[0]["Booking_Price"].ToString();
                }

            }
        }
    
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtCard.Text = null;
        txtCreated.Text = null;
        txtCVV.Text = null;
        txtmobile.Text = null;
        txtExpiry.Text = null;
        lblMessage.Text = null;

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["pid"]!=null)
        {
            string quer = "select * from BookingPayment where Prop_id='" + Request.QueryString["pid"].ToString() + "'";
            DataTable dt = new DataTable();
            dt = db.GetDataTableByQuery(quer);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('This Property is already booked try another Property for Booking')</script>");
                return;
            }
        }
       
        if (RadioButtonBankPayment.Checked)
        {
            choice = RadioButtonBankPayment.Text;
        }
        else if (RadioButtonCredit.Checked)
        {
            choice = RadioButtonCredit.Text;

        }
        else if (RadioButtonDebit.Checked)
        {
            choice = RadioButtonDebit.Text;

        }
        else if (RadioButtonGoogleWallet.Checked)
        {
            choice = RadioButtonGoogleWallet.Text;

        }
        else if (RadioButtonPaytm.Checked)
        {
            choice = RadioButtonPaytm.Text;

        }
        else if (RadioButtonvisa.Checked)
        {
            choice = RadioButtonvisa.Text;

        }
        try
        {


            SqlParameter[] parameter =
        {                                                                                                                                                  
                    new SqlParameter("@pro_Id",Convert.ToInt32(lblPropertyId.Text)),
                    new SqlParameter("@UserId",Session["User"].ToString()),
                    new SqlParameter("@Book_amount",lblBooking.Text),
                    new SqlParameter("@Expiry_date",txtExpiry.Text),
                    new SqlParameter("@Created_date",txtCreated.Text),
                    new SqlParameter("@Debit",choice),
                    new SqlParameter("@Credit",choice),
                    new SqlParameter("@cvv",txtCVV.Text),
                    new SqlParameter("@Visa_Master",choice),
                    new SqlParameter("@GoogleWallet",choice),
                    new SqlParameter("@Paytm",choice),
                    new SqlParameter("@Bank_payment",choice),
                    new SqlParameter("@CardNumber",txtCard.Text),
                    new SqlParameter("@AccNumber",txtAccount.Text),
                    new SqlParameter("@Mobile",txtmobile.Text),
                };

            int i = db.ExecuteNonQueryByProc("Booking_Payment", parameter);
            if (i > 0)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Congratulations You Booked this Property!!";
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "There is some Problem in registration, Please try again..!!";
            }
        }
        catch (SqlException ex)
        {
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Text = ex.Message;
        }
        catch (Exception ex)
        {
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Text = ex.Message;

        }
    }

    protected void RadioButtonDebit_CheckedChanged(object sender, EventArgs e)
    {
        lblDetails.Visible = true;
        lblDetails.Text = "Enter Your Debit Card Details";
        txtCard.Visible = true;
        txtCreated.Visible = true;
        txtCVV.Visible = true;
        txtExpiry.Visible = true;
        txtAccount.Visible = false;
        txtmobile.Visible = false;
    }

    protected void RadioButtonCredit_CheckedChanged(object sender, EventArgs e)
    {
        lblDetails.Visible = true;
        lblDetails.Text = "Enter Your Credit Card Details";
        txtCard.Visible = true;
        txtCreated.Visible = true;
        txtCVV.Visible = true;
        txtExpiry.Visible = true;
        txtAccount.Visible = false;
        txtmobile.Visible = false;
    }

    protected void RadioButtonGoogleWallet_CheckedChanged(object sender, EventArgs e)
    {
        lblDetails.Visible = true;
        txtCard.Visible = false;
        txtCreated.Visible = false;
        txtCVV.Visible = false;
        txtExpiry.Visible = false;
        txtAccount.Visible = false;
        txtmobile.Visible = true;
    }

    protected void RadioButtonPaytm_CheckedChanged(object sender, EventArgs e)
    {
        txtCard.Visible = false;
        txtCreated.Visible = false;
        txtCVV.Visible = false;
        txtExpiry.Visible = false;
        lblDetails.Visible = true;
        lblDetails.Text = "Enter Your Paytm Number";
        txtmobile.Visible = true;
        txtAccount.Visible = false;
    }

    protected void RadioButtonBank_CheckedChanged(object sender, EventArgs e)
    {
        lblDetails.Visible = true;
        lblDetails.Text = "Enter Your Bank Account Number";
        txtAccount.Visible = true;
        txtCard.Visible = false;
        txtCreated.Visible = false;
        txtCVV.Visible = false;
        txtExpiry.Visible = false;
        txtmobile.Visible = false;
    }

    protected void RadioButtonVisa_CheckedChanged(object sender, EventArgs e)
    {
        lblDetails.Visible=true;
        lblDetails.Text = "Enter Your Visa Card Details";
        txtCard.Visible = true;
        txtCreated.Visible = true;
        txtCVV.Visible = true;
        txtExpiry.Visible = true;
        txtAccount.Visible = false;
        txtmobile.Visible = false;
    }

    protected void BtnClear_Click(object sender, EventArgs e)
    {
        txtmobile.Text = null;
        txtExpiry.Text = null;
        txtCVV.Text = null;
        txtCreated.Text = null;
        txtCard.Text = null;
        txtAccount.Text = null;
    }


    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewBooking.aspx");
    }
}