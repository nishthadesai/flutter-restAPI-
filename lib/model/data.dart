class Data {
  final int? id;
  final String email;
  final String first_name;
  final String last_name;
  final String avatar;

  Data({
    this.id,
    required this.email,
    required this.first_name,
    required this.last_name,
    required this.avatar,
  });

  factory Data.fromJson1(Map<String, dynamic> json) {
    return Data(
      id: json['id'] == null ? null : json['id'],
      email: json['email'] == null ? null : json['email'],
      first_name: json['first_name'] == null ? null : json['first_name'],
      last_name: json['last_name'] == null ? null : json['last_name'],
      avatar: json['avatar'] == null ? null : json['avatar'],
    );
  }
}
