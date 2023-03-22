class ParsedPhoneNumber {
  String phoneNumber;
  String countryCode;
  String e164Format;

  ParsedPhoneNumber({
    required this.phoneNumber,
    required this.countryCode,
    required this.e164Format,
  });

  ParsedPhoneNumber.fromJson(Map<String, dynamic> json)
      : phoneNumber = json['nationalNumber'],
        countryCode = json['countryCode'],
        e164Format = json['e164Format'];

  Map<String, dynamic> toJson() => {
        'phoneNumber': phoneNumber,
        'isoCode': countryCode,
        'e164Format': e164Format,
      };

  @override
  String toString() {
    return "ParsedPhoneNumber(phoneNumber: $phoneNumber, countryCode: $countryCode,"
        " e164Format: $e164Format)";
  }
}
