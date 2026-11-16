# Port Number Lookup API - Dart/Flutter Client

Port Number Lookup identifies network services and port ranges from any port number or service name. Each query returns the assigned service, description, and classification across well-known, registered, or dynamic ranges, while paid plans add protocol details.

[![pub package](https://img.shields.io/pub/v/apiverve_portnumberlookup.svg)](https://pub.dev/packages/apiverve_portnumberlookup)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Port Number Lookup API](https://apiverve.com/marketplace/portnumberlookup?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_portnumberlookup: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_portnumberlookup/apiverve_portnumberlookup.dart';

void main() async {
  final client = PortnumberlookupClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'port': 443
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Port Number Lookup API](https://apiverve.com/marketplace/portnumberlookup?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/portnumberlookup](https://docs.apiverve.com/ref/portnumberlookup?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
