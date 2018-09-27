﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LibraryManagement
{
    public partial class BorrowBook : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=KANAIYAARYA2F15\KANAIYA;Initial Catalog=LibaryManagement;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSelect_Click(object sender, EventArgs e)
        {
            Button borrow = (Button)sender;
            DataListItem item = (DataListItem)borrow.NamingContainer;
            Label bookNamelb = (Label)item.FindControl("BookNameLabel");
            Label authorlb = (Label)item.FindControl("AuthorLabel");
            bookName.Text = bookNamelb.Text;
            author.Text = authorlb.Text;
            borrowForm.Visible = true;
        }
        protected void btn_Add(object sender, EventArgs e)
        {
            DBAcme DB = (DBAcme)Session["DB"];

            string StdID = stdid.Text;
            string StdName = stdName.Text;
            string Email = email.Text;
            string Bname = bookName.Text;
            string Author = author.Text;
            string dateNow = DateTime.Now.ToString();
            //DateTime borrowDate = DateTime.Parse(dateNow);
            string returnDate = DateTime.Now.AddDays(7).ToString();
            int numrow = DB.InsertBorrowBook(StdID, StdName, Email, Bname, Author,dateNow);


            SqlCommand cmd1 = conn.CreateCommand();
            cmd1.CommandText = "update Book set AvailableQty=AvailableQty-1,RentQty=RentQty+1 where BookName='" + bookName.Text + "'";
            conn.Open();
            cmd1.ExecuteNonQuery();
            test1.Text = "Book borrow Successfully!";
            returnForm.Text = "Retrun Date is " + returnDate;
            conn.Close();
            
        }
    }
}