using Azure.Storage.Files.DataLake;
using Azure.Storage.Files.DataLake.Models;
using Azure.Storage;
using System.IO;
using Azure;
using System;
using System.Threading;
using System.Threading.Tasks;
using RestSharp;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using RestSharp.Authenticators;
using System.Text;

namespace VTS
{
    class InvokeAPI
    {
       static RestClient Client = new RestClient("https://api.vts.com/api/connect/v1");


        internal static string getAuthtoken()
        {
            var strResponse = string.Empty;
            var username = "0Zf2bXkLBCB+XG37ptOrDbEHGmBX0D5gZp3TYhRFliU=";
            var password = "fp/kvvpjbHKVIABUJC0kSvRF/D02pEkWs1iQtP/AcvY=";            
            Client.Authenticator = new HttpBasicAuthenticator(username, password);
            var token = Convert.ToBase64String(Encoding.UTF8.GetBytes(string.Format("{0}:{1}", username, password)));
            //authHeader = string.Format("Basic {0}", token);
            var request = new RestRequest(Method.GET);
            request.AddHeader("Authorization", "Basic");
            IRestResponse response = Client.Execute(request);
            strResponse = response.Content;
            //Console.WriteLine(strResponse);            
            return token;
        }

        internal static string getProperties(string token)
        {
            var Client = new RestClient("https://api.vts.com/api/marketing/v1/properties");
            Client.Timeout = -1;
            Client.Authenticator = new HttpBasicAuthenticator("0Zf2bXkLBCB+XG37ptOrDbEHGmBX0D5gZp3TYhRFliU=", "fp/kvvpjbHKVIABUJC0kSvRF/D02pEkWs1iQtP/AcvY=");
            var request = new RestRequest(Method.GET);
            request.AddParameter("Authorization", token);
            //request.AddParameter("authorization", token);
            //request.AddHeader("Authorization", "Basic");
            IRestResponse response = Client.Execute(request);
            //Console.WriteLine(response.Content);
            var getproperties = response.Content;
            return getproperties;
        }

        internal static string getLeaseAbstract()
        {
           var Client = new RestClient("https://api.vts.com/api/oscre/v1/send_lease_abstract");
            Client.Authenticator = new HttpBasicAuthenticator("0Zf2bXkLBCB+XG37ptOrDbEHGmBX0D5gZp3TYhRFliU=", "fp/kvvpjbHKVIABUJC0kSvRF/D02pEkWs1iQtP/AcvY=");
            var request = new RestRequest(Method.GET);
            request.AddHeader("Authorization", "Basic");
            IRestResponse response = Client.Execute(request);
            //Console.WriteLine(response.Content);
            var getleaseAbstract = response.Content;
            return getleaseAbstract;
        }
    }
}
