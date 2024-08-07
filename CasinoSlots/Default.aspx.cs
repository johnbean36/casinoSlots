using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CasinoSlots
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string[] Images = new string[] { "images/cherry.jpg", "images/horseshoe.jpg", "images/shamrock.jpg" };
            Random random = new Random();
            int[] imgNum = new int[3];
            int bet = int.Parse(TxtBet.Text);
            int result = 0;
            int a = 0;
            int b = 0;
            int c = 0;
            LblResult.Text = "";
            LblMoney.Text = "";


            imgNum[0] = random.Next(0, 3);
            imgNum[1] = random.Next(0, 3);
            imgNum[2] = random.Next(0, 3);
            Img1.ImageUrl = Images[imgNum[0]];
            Img2.ImageUrl = Images[imgNum[1]];
            Img3.ImageUrl = Images[imgNum[2]];

            for( int i = 0; i < 3; i++)
            {
                if (imgNum[i] == 0)
                {
                    a += 1;
                }
                else if (imgNum[i] == 1)
                {
                    b += 1;
                }
            }
            if(b == 3)
            {
                result = bet * 100;
                LblResult.Text = "Three Horseshoes!";
                LblMoney.Text = $"You bet ${TxtBet.Text}.00 and won ${result}.00";
            }
            else if(a == 3)
            {
                result = bet * 4;
                LblResult.Text = "Three Cherries";
                LblMoney.Text = $"You bet ${TxtBet.Text}.00 and won ${result}.00";
            }
            else if(a == 2)
            {
                result = bet * 3;
                LblResult.Text = "Two Cherries";
                LblMoney.Text = $"You bet ${TxtBet.Text}.00 and won ${result}.00";
            }
            else if(a == 1)
            {
                result = bet * 2;
                LblResult.Text = "One Cherry";
                LblMoney.Text = $"You bet ${TxtBet.Text}.00 and won ${result}.00";
            }
        }
    }
}