static Task<string> SendSOAPMessage(string url, string action, string envelope, X509Certificate2 certificate)
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