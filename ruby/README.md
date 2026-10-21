# Port Number Lookup API - Ruby Gem

Port Number Lookup identifies network services and port ranges from any port number or service name. Each query returns the assigned service, description, and classification across well-known, registered, or dynamic ranges, while paid plans add protocol details.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_portnumberlookup'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_portnumberlookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_portnumberlookup'

# Initialize the client
client = APIVerve::Portnumberlookup::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ port: 443 })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ port: 443 })
  puts response["data"]
rescue APIVerve::Portnumberlookup::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Portnumberlookup::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Portnumberlookup::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "count": 1,
    "ports": [
      {
        "port": 443,
        "service": "HTTPS",
        "protocol": "TCP",
        "description": "HTTP Secure (HTTP over TLS/SSL)",
        "category": "Web",
        "is_well_known": true,
        "is_registered": false,
        "is_dynamic": false
      }
    ]
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/portnumberlookup?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/portnumberlookup?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/portnumberlookup?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
