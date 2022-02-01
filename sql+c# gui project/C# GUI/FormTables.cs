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
    public partial class FormTables : Form
    {
        string connectString = @"Server=.\SQLEXPRESS;Database=BD_CourseProject;Trusted_Connection=True;";
        public FormTables()
        {
            InitializeComponent();
        }

        private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void студентыToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.studentTableAdapter.Fill(this.dataSet.Student);
        }

        private void FormTables_Load(object sender, EventArgs e)
        {
            // TODO: данная строка кода позволяет загрузить данные в таблицу "dataSet.Work". При необходимости она может быть перемещена или удалена.
            this.workTableAdapter.Fill(this.dataSet.Work);
            // TODO: данная строка кода позволяет загрузить данные в таблицу "dataSet.Tchr_Subj". При необходимости она может быть перемещена или удалена.
            this.tchr_SubjTableAdapter.Fill(this.dataSet.Tchr_Subj);
            // TODO: данная строка кода позволяет загрузить данные в таблицу "dataSet.Tchr". При необходимости она может быть перемещена или удалена.
            this.tchrTableAdapter.Fill(this.dataSet.Tchr);
            // TODO: данная строка кода позволяет загрузить данные в таблицу "dataSet.Subj". При необходимости она может быть перемещена или удалена.
            this.subjTableAdapter.Fill(this.dataSet.Subj);
            // TODO: данная строка кода позволяет загрузить данные в таблицу "dataSet.KM". При необходимости она может быть перемещена или удалена.
            this.kMTableAdapter.Fill(this.dataSet.KM);
            // TODO: данная строка кода позволяет загрузить данные в таблицу "dataSet.Grp_Subj". При необходимости она может быть перемещена или удалена.
            this.grp_SubjTableAdapter.Fill(this.dataSet.Grp_Subj);
            // TODO: данная строка кода позволяет загрузить данные в таблицу "dataSet.Grp". При необходимости она может быть перемещена или удалена.
            this.grpTableAdapter.Fill(this.dataSet.Grp);
            // TODO: данная строка кода позволяет загрузить данные в таблицу "dataSet.AccMarks". При необходимости она может быть перемещена или удалена.
            this.accMarksTableAdapter.Fill(this.dataSet.AccMarks);
            // TODO: данная строка кода позволяет загрузить данные в таблицу "dataSet.Student". При необходимости она может быть перемещена или удалена.
            this.studentTableAdapter.Fill(this.dataSet.Student);
            // TODO: данная строка кода позволяет загрузить данные в таблицу "dataSet.AccAttend". При необходимости она может быть перемещена или удалена.
            this.accAttendTableAdapter.Fill(this.dataSet.AccAttend);

        }

        private void tabPage3_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            studentBindingSource.RemoveCurrent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            studentBindingSource.EndEdit();
            studentTableAdapter.Update(dataSet);
        }

        private void tabControl1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void tabPage1_Click(object sender, EventArgs e)
        {

        }

        private void button18_Click(object sender, EventArgs e)
        {
            tchrSubjBindingSource.EndEdit();
            tchr_SubjTableAdapter.Update(dataSet);
        }

        private void button17_Click(object sender, EventArgs e)
        {
            tchrSubjBindingSource.RemoveCurrent();
        }

        private void tabPage9_Click(object sender, EventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {
            tchrBindingSource.EndEdit();
            tchrTableAdapter.Update(dataSet);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            tchrBindingSource.RemoveCurrent();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            grpBindingSource.EndEdit();
            grpTableAdapter.Update(dataSet);
        }

        private void button5_Click(object sender, EventArgs e)
        {
            grpBindingSource.RemoveCurrent();
        }

        private void button8_Click(object sender, EventArgs e)
        {
            subjBindingSource.EndEdit();
            subjTableAdapter.Update(dataSet);
        }

        private void button7_Click(object sender, EventArgs e)
        {
            subjBindingSource.RemoveCurrent();
        }

        private void button10_Click(object sender, EventArgs e)
        {
            accAttendBindingSource.EndEdit();
            accAttendTableAdapter.Update(dataSet);
        }

        private void button9_Click(object sender, EventArgs e)
        {
            accAttendBindingSource.RemoveCurrent();
        }

        private void button12_Click(object sender, EventArgs e)
        {
            accMarksBindingSource.EndEdit();
            accMarksTableAdapter.Update(dataSet);
        }

        private void button11_Click(object sender, EventArgs e)
        {
            accMarksBindingSource.RemoveCurrent();
        }

        private void button14_Click(object sender, EventArgs e)
        {
            kMBindingSource.EndEdit();
            kMTableAdapter.Update(dataSet);
        }

        private void button13_Click(object sender, EventArgs e)
        {
            kMBindingSource.RemoveCurrent();
        }

        private void button16_Click(object sender, EventArgs e)
        {
            workBindingSource.EndEdit();
            workTableAdapter.Update(dataSet);
        }

        private void button15_Click(object sender, EventArgs e)
        {
            workBindingSource.RemoveCurrent();
        }

        private void button20_Click(object sender, EventArgs e)
        {
            grpSubjBindingSource.EndEdit();
            grp_SubjTableAdapter.Update(dataSet);
        }

        private void button19_Click(object sender, EventArgs e)
        {
            grpSubjBindingSource.RemoveCurrent();
        }
    }
}
