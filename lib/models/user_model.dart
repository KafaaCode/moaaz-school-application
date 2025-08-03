class UserModel {
  final int id;
  final String email;
  final String type;
  final UserDetails details;
  final String token;

  UserModel({
    required this.id,
    required this.email,
    required this.type,
    required this.details,
    required this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      type: json['type'],
      details: UserDetails.fromJson(json['details']),
      token: json['token'],
    );
  }
}

class UserDetails {
  final int id;
  final String fname;
  final String userName;
  final String password;
  final String lname;
  final String? fatherName;
  final String? motherName;
  final String? dateBirth;
  final String? placeBirth;
  // ... جميع الحقول الأخرى

  UserDetails({
    required this.id,
    required this.fname,
    required this.userName,
    required this.password,
    required this.lname,
    this.fatherName,
    this.motherName,
    this.dateBirth,
    this.placeBirth,
    // ... جميع الحقول الأخرى
  });

  factory UserDetails.fromJson(Map<String, dynamic> json) {
    return UserDetails(
      id: json['id'],
      fname: json['fname'],
      userName: json['userName'],
      password: json['password'],
      lname: json['lname'],
      fatherName: json['fatherName'],
      motherName: json['motherName'],
      dateBirth: json['dateBirth'],
      placeBirth: json['placeBirth'],
      // ... جميع الحقول الأخرى
    );
  }
}