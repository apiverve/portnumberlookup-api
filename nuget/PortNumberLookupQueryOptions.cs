using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.PortNumberLookup
{
    /// <summary>
    /// Query options for the Port Number Lookup API
    /// </summary>
    public class PortNumberLookupQueryOptions
    {
        /// <summary>
        /// Port number to lookup (1-65535, provide either port or service)
        /// Example: 443
        /// </summary>
        [JsonProperty("port")]
        public string Port { get; set; }

        /// <summary>
        /// Service name to lookup (provide either port or service)
        /// Example: https
        /// </summary>
        [JsonProperty("service")]
        public string Service { get; set; }
    }
}
