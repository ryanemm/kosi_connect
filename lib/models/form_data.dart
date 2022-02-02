class FormData {
  String name;
  String email;
  String mobileNo;
  String query;

  FormData(this.name, this.email, this.mobileNo, this.query);

  factory FormData.fromJson(dynamic json) {
    return FormData("${json['name']}", "${json['email']}",
        "${json['mobileNo']}", "${json['feedback']}");
  }

  // Method to make GET parameters.
  Map toJson() => {
        'name': name,
        'email': email,
        'mobileNo': mobileNo,
        'feedback': query,
      };
}
