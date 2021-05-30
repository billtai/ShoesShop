﻿using System;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Windows.Forms;

namespace demo
{
    public partial class fBillSearch : Form
    {
        public fBillSearch()
        {
            InitializeComponent();
        }

        private void fBillDetail_Load(object sender, EventArgs e)
        {
            ShowBill();
        }
        Connect ConnectSQL = new Connect();
        DataTable Bill = new DataTable(); DataTable BillDetail = new DataTable();

        void ConnectSql(string query, DataGridView dgv)
        {
            Bill = ConnectSQL.ExcuteQuery(query);
            dgv.DataSource = Bill;
        }
        // Danh sách sản phẩm
        void ShowBill()
        {
            String query = "select IDBill,Date,IDCustomer,IDStaff,TypeBill from Bill";
            ConnectSql(query, dgvBill);

        }
        //tìm kiếm hóa đơn
        void SearhBillwithDay()
        {
            String query = "select IDBill,Date,IDCustomer,IDStaff,TypeBill from Bill where IDBill like '%" + txtSearch.Text + "%'and Date BETWEEN convert(date,'"+dateTimePicker1.Value.ToString("dd/MM/yyyy")+ "',105) AND convert(date,'"+dateTimePicker2.Value.ToString("dd/MM/yyyy")+ "',105)";
            Bill = ConnectSQL.ExcuteQuery(query);
            dgvBill.DataSource = Bill;
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            SearhBillwithDay();
        }

        private void dgvBill_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            String query1 = "select IDBill,Date,IDCustomer,IDStaff,TypeBill from Bill where IDBill like '%" + txtSearch.Text + "%'";
            Bill = ConnectSQL.ExcuteQuery(query1);
            string a="";
            int vt = e.RowIndex;
            if (vt <= Bill.Rows.Count-1)
            {
                a = Bill.Rows[vt][0].ToString();
                String query = @"select IDBill,IDProductDetail,Number,Price,Discount,TotalPrice from BillDetail where IDBill =N'" + a + "'";
                BillDetail = ConnectSQL.ExcuteQuery(query);
                dgvBillDetail.DataSource = BillDetail;
            }

        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Hide();
            fHomePage HP = new fHomePage();
            HP.ShowDialog();
            this.Close();
        }



    }
}
