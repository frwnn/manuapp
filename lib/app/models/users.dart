class UserModel {
  String? email;
  String? name;
  String? uid;
  String? role;

// receiving data
  UserModel({this.uid, this.email, this.name, this.role});
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      role: map['role'],
      name: map['name'],
    );
  }
// sending data
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'role': role,
      'name': name,
    };
  }
}
