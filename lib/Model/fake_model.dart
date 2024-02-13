class AllModel {
  String? id;
  String? email;
  String? firstname;
  String? lastname;
  String? avatar;

  AllModel({
    this.id,
    this.email,
    this.firstname,
    this.lastname,
    this.avatar,
  });

  factory AllModel.fromjson(Map<String, dynamic> json) {
    return AllModel(
      id: json['id'],
      email: json['email'],
      firstname: json['first_name'],
      lastname: json['last_name'],
      avatar: json['avatar'],
      
    );
  }
}
