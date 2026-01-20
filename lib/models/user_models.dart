class UserModels {
  String id;
  String firstName;
  String lastName;
  String email;
  String image;
  UserModels({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
    };
  }

  factory UserModels.fromMAP(Map<String, String> userData) {
    return UserModels(
      id: userData["id"]!,
      firstName: userData["firstName"]!,
      lastName: userData["lastName"]!,
      email: userData["email"]!,
      image: userData["image"]!,
    );
  }
}
