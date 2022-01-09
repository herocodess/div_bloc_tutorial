class CreateUserDto {
  String? email, username, phoneNumber, password;

  CreateUserDto({this.email, this.username, this.phoneNumber, this.password});

  CreateUserDto copyWith({
    String? email,
    password,
    username,
    phoneNumber,
  }) =>
      CreateUserDto(
        phoneNumber: phoneNumber ?? this.phoneNumber,
        email: email ?? this.email,
        password: password ?? this.password,
        username: username ?? this.username,
      );

  CreateUserDto.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    username = json['username'];
    phoneNumber = json['phoneNumber'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['username'] = username;
    data['phoneNumber'] = phoneNumber;
    data['password'] = password;
    return data;
  }
}
