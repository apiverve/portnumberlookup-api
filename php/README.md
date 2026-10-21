# Port Number Lookup API - PHP Package

Port Number Lookup identifies network services and port ranges from any port number or service name. Each query returns the assigned service, description, and classification across well-known, registered, or dynamic ranges, while paid plans add protocol details.

## Installation

Install via Composer:

```bash
composer require apiverve/portnumberlookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Portnumberlookup\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['port' => 443]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Portnumberlookup\Client;
use APIVerve\Portnumberlookup\Exceptions\APIException;
use APIVerve\Portnumberlookup\Exceptions\ValidationException;

try {
    $response = $client->execute(['port' => 443]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/portnumberlookup?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/portnumberlookup?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/portnumberlookup?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
