Byte[] certificate;
var url = "https://schuldenknooppunt-example.net/WaarborgfondsService/v1";
var xml = @"
<?xml version=""1.0"" encoding=""utf-8""?>
<soap:Envelope xmlns:soap=""http://schemas.xmlsoap.org/soap/envelope/"">
    <soap:Body>
    </soap:Body>
</soap:Envelope>";
var action = "SendMessage";

var httpClientHandler = new HttpClientHandler();
httpClientHandler.ClientCertificates.Add(new X509Certificate2(certificate));

using (var httpClient = new HttpClient(httpClientHandler))
{
    using (var content = new StringContent(xml, Encoding.UTF8, "text/xml"))
    {
        using (var request = new HttpRequestMessage(HttpMethod.Post, url))
        {
            request.Headers.Add("SOAPAction", action);
            request.Content = content;

            using (var response = await httpClient.SendAsync(request, HttpCompletionOption.ResponseHeadersRead))
            {
                response.EnsureSuccessStatusCode();
                return await response.Content.ReadAsStringAsync();
            }
        }
    }
}