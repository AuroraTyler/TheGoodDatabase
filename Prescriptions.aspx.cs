using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Prescriptions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //    if (!IsPostBack)
        //    {
        //        Refresh();
        //    }

    }

    //void Refresh()
    //{
    //    if (dbcon != null)
    //        dbcon.Dispose();
    //    dbcon = new PrescriptionDataSource();
    //    dbcon.EmailTables.Where(item => item.RecipientUserName.Trim().Equals(User.Identity.Name.Trim())).Load();

    //    //add data to the GridView
    //    GridView1.DataSource = dbcon.EmailTables.Local;
    //    GridView1.DataBind();
    //}
    //HOSEntities dbcon;
}