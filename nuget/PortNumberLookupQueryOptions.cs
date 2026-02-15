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
        /// Port number to lookup
        /// </summary>
        [JsonProperty("port")]
        public string Port { get; set; }
    }
}
