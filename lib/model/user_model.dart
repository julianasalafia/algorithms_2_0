class UserModel {
  UserModel({
    required this.name,
    required this.wage,
  });

  final String name;
  final double? wage;

  factory UserModel.empty() {
    return UserModel(
      name: '',
      wage: 0,
    );
  }

  copywith({
    String? name,
    double? wage,
  }) {
    return UserModel(
      name: name ?? this.name,
      wage: wage ?? this.wage,
    );
  }
}
