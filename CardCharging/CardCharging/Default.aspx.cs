using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using CardCharging.code;

namespace CardCharging
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            new CardsCharging().init(txtAcess, txtSecret, txtType, txtPin, txtSerial, txtTransRef, lblResult);
        }
    }
}