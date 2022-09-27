using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CapaVista
{
    public partial class inicio : Form
    {
        public inicio()
        {
            InitializeComponent();
        }

        private void inicio_Load(object sender, EventArgs e)
        {

        }

        private void agregarToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void verEmpleadosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            bool abierto = false;
            foreach (Form f in Application.OpenForms)
            {
                if (f.Text == "empleados")
                {
                    abierto = true;
                    f.Focus();
                    break;
                }
            }
            if (abierto == false)
            {
                empleados refe = new empleados();
                refe.MdiParent = this;
                refe.Show();
            }
        }

        private void diarioToolStripMenuItem_Click(object sender, EventArgs e)
        {
            bool abierto = false;
            foreach (Form f in Application.OpenForms)
            {
                if (f.Text == "polizadiario")
                {
                    abierto = true;
                    f.Focus();
                    break;
                }
            }
            if (abierto == false)
            {
                polizadiario refe = new polizadiario();
                refe.MdiParent = this;
                refe.Show();
            }
        }

        private void ingresoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            bool abierto = false;
            foreach (Form f in Application.OpenForms)
            {
                if (f.Text == "polizaingreso")
                {
                    abierto = true;
                    f.Focus();
                    break;
                }
            }
            if (abierto == false)
            {
                polizaingreso refe = new polizaingreso();
                refe.MdiParent = this;
                refe.Show();
            }
        }

        private void egresoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            bool abierto = false;
            foreach (Form f in Application.OpenForms)
            {
                if (f.Text == "polizaegreso")
                {
                    abierto = true;
                    f.Focus();
                    break;
                }
            }
            if (abierto == false)
            {
                polizaegreso refe = new polizaegreso();
                refe.MdiParent = this;
                refe.Show();
            }
        }
    }
}
