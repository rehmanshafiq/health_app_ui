class DoctorsModel {
  final String name;
  final String position;
  final int averageReview;
  final int totalReview;
  final String profile;

  DoctorsModel({
    required this.name,
    required this.position,
    required this.averageReview,
    required this.totalReview,
    required this.profile,
  });
}

List<DoctorsModel> nearbyDoctors = [
  DoctorsModel(
      name: "Luke Skywalker",
      position: "Orthopedic Specialist",
      averageReview: 3,
      totalReview: 195,
      profile: "assets/doctor_1.jpg",
  ),
  DoctorsModel(
      name: "Shane Watson",
      position: "Eye Specialist",
      averageReview: 5,
      totalReview: 125,
      profile: "assets/doctor_2.jpg",
  ),
  DoctorsModel(
      name: "Mike Tyson",
      position: "General Physician",
      averageReview: 5,
      totalReview: 135,
      profile: "assets/doctor_3.jpg",
  ),
  DoctorsModel(
      name: "Ricky Mathew",
      position: "Orthopedic",
      averageReview: 4,
      totalReview: 115,
      profile: "assets/doctor_1.jpg",
  ),
];