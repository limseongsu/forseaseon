class DocumentInput {
  String? type;
  String? text;

  DocumentInput(
    this.type,
    this.text);

  DocumentInput.fromJson(dynamic json) {
    type = json["type"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["type"] = type;
    map["text"] = text;
    return map;
  }

}