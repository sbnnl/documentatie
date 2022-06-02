static string SendSOAPMessage(string url, string action, string envelope, X509Certificate2 certificate)
{
    using (var httpClientHandler = new HttpClientHandler())
    {
        httpClientHandler.ClientCertificates.Add(certificate);

        using (var httpClient = new HttpClient(httpClientHandler))
        {
            using (var content = new StringContent(envelope, Encoding.UTF8, "text/xml"))
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
    }
}

var url = "https://schuldenknooppunt-example.net/WaarborgfondsService/v1";
var action = "SendMessage";
var envelope = @"
<?xml version=""1.0"" encoding=""utf-8""?>
<soap:Envelope xmlns:soap=""http://schemas.xmlsoap.org/soap/envelope/"">
    <soap:Body>
    </soap:Body>
</soap:Envelope>";
X509Certificate2 certificate; //.cert bestand, wordt door het schuldenknooppunt beschikbaar gesteld.

SendSOAPMessage(url, action, envelope, certificate);