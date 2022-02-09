import 'dart:convert';

class RegisterModel {
  final String? name;
  final String? email;
  final String? site;

  RegisterModel({
    this.name,
    this.email,
    this.site,
  });

  RegisterModel copyWith({
    String? name,
    String? email,
    String? site,
  }) {
    return RegisterModel(
      name: name ?? this.name,
      email: email ?? this.email,
      site: site ?? this.site,
    );
  }

  @override
  String toString() => 'RegisterModel(name: $name, email: $email, site: $site)';

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'site': site,
    };
  }

  factory RegisterModel.fromMap(Map<String, dynamic> map) {
    return RegisterModel(
      name: map['name'],
      email: map['email'],
      site: map['site'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterModel.fromJson(String source) => RegisterModel.fromMap(json.decode(source));
}
