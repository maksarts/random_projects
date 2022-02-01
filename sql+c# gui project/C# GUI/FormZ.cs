using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace BD_KR
{
    public partial class FormZ : Form
    {
        string connectionString = @"Server=DESKTOP-K3VRVCH;Database=BD_CourseProject;Trusted_Connection=True;";
        public FormZ()
        {
            InitializeComponent();
            textBox1.Text = "6";
        }

        void helpFun()
        {
            dataGridView1.Visible = true;
            dataGridView2.Visible = false;
            dataGridView3.Visible = false;

            dataGridView1.Rows.Clear();
            using (var sqlConn = new SqlConnection(connectionString))
            {
                var command = new SqlCommand("AvgMarkBySubj", sqlConn);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@SubjID", Convert.ToInt32(textBox1.Text));

                sqlConn.Open();
                var reader = command.ExecuteReader();

                dataGridView1.Visible = true;
                dataGridView2.Visible = false;
                dataGridView3.Visible = false;

                while (reader.Read())
                {
                    object fio = reader.GetValue(0);
                    object mark = reader.GetValue(1);
                    dataGridView1.Rows.Add(fio, mark);
                }

            }
        }


        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            helpFun();
        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {
            dataGridView1.Visible = false;
            dataGridView2.Visible = false;
            dataGridView3.Visible = true;

            dataGridView3.Rows.Clear();
            using (var sqlConn = new SqlConnection(connectionString))
            {
                var command = new SqlCommand("AvgBadMark", sqlConn);
                command.CommandType = CommandType.StoredProcedure;

                sqlConn.Open();
                var reader = command.ExecuteReader();

                dataGridView1.Visible = false;
                dataGridView2.Visible = false;
                dataGridView3.Visible = true;

                while (reader.Read())
                {
                    object fio = reader.GetValue(0);
                    dataGridView3.Rows.Add(fio);
                }

            }
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            dataGridView1.Visible = false;
            dataGridView2.Visible = true;
            dataGridView3.Visible = false;

            dataGridView2.Rows.Clear();
            using (var sqlConn = new SqlConnection(connectionString))
            {
                var command = new SqlCommand("AvgMark", sqlConn);
                command.CommandType = CommandType.StoredProcedure;

                sqlConn.Open();
                var reader = command.ExecuteReader();

                dataGridView1.Visible = false;
                dataGridView2.Visible = true;
                dataGridView3.Visible = false;

                while (reader.Read())
                {
                    object fio = reader.GetValue(0);
                    object mark = reader.GetValue(1);
                    dataGridView2.Rows.Add(fio, mark);
                }

            }
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            int i;
            if (radioButton1.Checked && int.TryParse(textBox1.Text, out i))
            {
                helpFun();
            }
        }
    }
}
