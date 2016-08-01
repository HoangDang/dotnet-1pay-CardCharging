using _1Pay;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI.WebControls;

namespace CardCharging.code
{
    public class CardsCharging
    {
        public void init(TextBox txtAccess, TextBox txtSecret, TextBox txtType, TextBox txtPin, TextBox txtSerial, TextBox txtTransRef, Label lblResult)
        {
            string access = txtAccess.Text.Trim();
            string secret = txtSecret.Text.Trim();
            string type = txtType.Text.Trim();
            string pin = txtPin.Text.Trim();
            string serial = txtSerial.Text.Trim();
            string transRef = txtTransRef.Text.Trim();

            if (access.Length > 0 && secret.Length > 0 && type.Length > 0 &&
                pin.Length > 0 && serial.Length > 0 && transRef.Length > 0)
            {
                string result = sendPost(access, secret, type, pin, serial, transRef);
                if (result != null)
                {
                    lblResult.Text = result;
                }
            }
        }


        public String sendPost(String access_key, String secret_key, String type, String pin, String serial, String transRef)
        {
            String result = "";
            String url = "https://api.1pay.vn/card-charging/v5/topup";
            My1Pay my1Pay = new My1Pay();
            String signature = my1Pay.generateSignature_Card_V5_TopupApi(access_key, pin, serial, transRef, type, secret_key); //create signature
            String urlParameter = String.Format("access_key={0}&type={1}&pin={2}&serial={3}&signature={4}&transRef={5}", access_key, type, pin, serial, signature, transRef);
            try
            {
                HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
                request.KeepAlive = false;
                request.ProtocolVersion = HttpVersion.Version10;
                request.Method = "POST";
                request.ContentType = "application/x-www-form-urlencoded";
                request.UserAgent = "Mozilla/5.0";
                WebHeaderCollection headerReader = request.Headers;
                headerReader.Add("Accept-Language", "en-US,en;q=0.5");
                var data = Encoding.ASCII.GetBytes(urlParameter);
                request.ContentLength = data.Length;
                Stream requestStream = request.GetRequestStream();
                // send url param
                requestStream.Write(data, 0, data.Length);
                requestStream.Close();
                HttpWebResponse response = (HttpWebResponse)request.GetResponse();
                result = new StreamReader(response.GetResponseStream()).ReadToEnd();
                response.Close();
            }
            catch (Exception e)
            {
                result = e.GetBaseException().ToString();
            }
            return result;
        } 


    }
}