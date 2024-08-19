// ignore_for_file: constant_identifier_names

enum HttpTypes {
  GET(apiKey: "GET"),
  POST(apiKey: "POST");

  final String apiKey;

  const HttpTypes({required this.apiKey});
}
