/// Response models for the Port Number Lookup API.

/// API Response wrapper.
class PortnumberlookupResponse {
  final String status;
  final dynamic error;
  final PortnumberlookupData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  PortnumberlookupResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory PortnumberlookupResponse.fromJson(Map<String, dynamic> json) => PortnumberlookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? PortnumberlookupData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Port Number Lookup API.

class PortnumberlookupData {
  num? count;
  List<PortnumberlookupDataPortsItem>? ports;

  PortnumberlookupData({
    this.count,
    this.ports,
  });

  factory PortnumberlookupData.fromJson(Map<String, dynamic> json) => PortnumberlookupData(
      count: json['count'],
      ports: (json['ports'] as List?)?.map((e) => PortnumberlookupDataPortsItem.fromJson(e)).toList(),
    );
}

class PortnumberlookupDataPortsItem {
  num? port;
  String? service;
  String? protocol;
  String? description;
  String? category;
  bool? isWellKnown;
  bool? isRegistered;
  bool? isDynamic;

  PortnumberlookupDataPortsItem({
    this.port,
    this.service,
    this.protocol,
    this.description,
    this.category,
    this.isWellKnown,
    this.isRegistered,
    this.isDynamic,
  });

  factory PortnumberlookupDataPortsItem.fromJson(Map<String, dynamic> json) => PortnumberlookupDataPortsItem(
      port: json['port'],
      service: json['service'],
      protocol: json['protocol'],
      description: json['description'],
      category: json['category'],
      isWellKnown: json['is_well_known'],
      isRegistered: json['is_registered'],
      isDynamic: json['is_dynamic'],
    );
}

class PortnumberlookupRequest {
  int port;

  PortnumberlookupRequest({
    required this.port,
  });

  Map<String, dynamic> toJson() => {
      'port': port,
    };
}
