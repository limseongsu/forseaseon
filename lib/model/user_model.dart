class User {
  String? name;
  String? email;
  String? profileUrl;
  int? exp;
  int? medals;
  String? comment;

  User(
    this.name,
    this.email,
    this.profileUrl,
    this.exp,
    this.medals,
    this.comment);

  User.fromJson(dynamic json) {
    name = json["name"];
    email = json["email"];
    profileUrl = json["profileUrl"];
    exp = json["exp"];
    medals = json["medals"];
    comment = json["comment"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = name;
    map["email"] = email;
    map["profileUrl"] = profileUrl;
    map["exp"] = exp;
    map["medals"] = medals;
    map["comment"] = comment;
    return map;
  }

}