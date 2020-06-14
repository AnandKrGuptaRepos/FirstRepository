using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class PayRent : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    string choice;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        if (Request.QueryString["pid"] != null)
        {
            lblProperty.Text = Request.QueryString["pid"].ToString();
            string quer = "select * from Property_info where Prop_id='" + Request.QueryString["pid"].ToString() + "'";
            DataTable dt = new DataTable();
            dt = db.GetDataTableByQuery(quer);
            if (dt.Rows.Count > 0)
            {
                lblRentAmount.Text = dt.Rows[0]["Rent_Amount"].ToString();
            }

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(RadioButtonBank.Checked)
        {
            choice = RadioButtonBank.Text;
        }
        else if(RadioButtonCredit.Checked)
        {
            choice = RadioButtonCredit.Text;
           
        }
        else if(RadioButtonDebit.Checked)
        {
            choice = RadioButtonDebit.Text;
           
        }
        else if(RadioButtonGoogleWallet.Checked)
        {
            choice = RadioButtonGoogleWallet.Text;
            
        }
        else if(RadioButtonPaytm.Checked)
        {
            choice = RadioButtonPaytm.Text;
           
        }
        else if(RadioButtonVisa.Checked)
        {
            choice = RadioButtonVisa.Text;
           
        }
        try
        {


            SqlParameter[] parameter =
            {
                    new SqlParameter("@pro_Id",Convert.ToInt32(lblProperty.Text)),
                    new SqlParameter("@UserId",Session["User"].ToString()),
                    new SqlParameter("@Rent_amount",lblRentAmount.Text),
                    new SqlParameter("@Expiry_date",txtExpiry.Text),
                    new SqlParameter("@Created_date",txtCreated.Text),
                    new SqlParameter("@Debit",choice),
                    new SqlParameter("@Credit",choice),
                    new SqlParameter("@cvv",txtCVV.Text),
                    new SqlParameter("@Visa_Master",choice),
                    new SqlParameter("@GoogleWallet",choice),
                    new SqlParameter("@Paytm",choice),
                    new SqlParameter("@Bank_payment",choice),
                    new SqlParameter("@CardNumber",txtCardNumber.Text),
                    new SqlParameter("@AccNumber",txtAccountNo.Text),
                    new SqlParameter("@Mobile",txtNumberDetails.Text)
                };

            int i = db.ExecuteNonQueryByProc("Insert_RentPayment", parameter);
            if (i > 0)
            {
               
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Congratulations you are become a Tenant..!!";
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
        txtCardNumber.Visible = true;
        txtCreated.Visible = true;
        txtCVV.Visible = true;
        txtExpiry.Visible = true;
        txtAccountNo.Visible = false;
        txtNumberDetails.Visible = false;
    }

    protected void RadioButtonCredit_CheckedChanged(object sender, EventArgs e)
    {
        lblDetails.Visible = true;
        lblDetails.Text = "Enter Your Credit Card Details";
        txtCardNumber.Visible = true;
        txtCreated.Visible = true;
        txtCVV.Visible = true;
        txtExpiry.Visible = true;
        txtAccountNo.Visible = false;
        txtNumberDetails.Visible = false;
    }

    protected void RadioButtonGoogleWallet_CheckedChanged(object sender, EventArgs e)
    {
        lblDetails.Visible = true;
        lblDetails.Text = "Enter your Google Wallet number";
        txtCardNumber.Visible = false;
        txtCreated.Visible = false;
        txtCVV.Visible = false;
        txtExpiry.Visible = false;
        txtAccountNo.Visible = false;
        txtNumberDetails.Visible = true;
    }

    protected void RadioButtonPaytm_CheckedChanged(object sender, EventArgs e)
    {
        txtCardNumber.Visible = false;
        txtCreated.Visible = false;
        txtCVV.Visible = false;
        txtExpiry.Visible = false;
        lblDetails.Visible = true;
        lblDetails.Text = "Enter Your Paytm Number";
        txtNumberDetails.Visible = true;
        txtAccountNo.Visible = false;
    }

    protected void RadioButtonBank_CheckedChanged(object sender, EventArgs e)
    {
        lblDetails.Visible = true;
        lblDetails.Text = "Enter Your Bank Account Number";
        txtAccountNo.Visible = true;
        txtCardNumber.Visible = false;
        txtCreated.Visible = false;
        txtCVV.Visible = false;
        txtExpiry.Visible = false;
        txtNumberDetails.Visible = false;
    }

    protected void RadioButtonVisa_CheckedChanged(object sender, EventArgs e)
    {
        lblDetails.Visible = true;
        lblDetails.Text = "Enter Your Visa Card Details";
        txtCardNumber.Visible = true;
        txtCreated.Visible = true;
        txtCVV.Visible = true;
        txtExpiry.Visible = true;
        txtAccountNo.Visible = false;
        txtNumberDetails.Visible = false;
    }

    protected void BtnClear_Click(object sender, EventArgs e)
    {
        txtCardNumber.Text = null;
        txtCreated.Text = null;
        txtCVV.Text = null;
        txtExpiry.Text = null;
        txtNumberDetails.Text = null;
        txtAccountNo.Text = null;
        lblMessage.Text = null;
    }



   
}