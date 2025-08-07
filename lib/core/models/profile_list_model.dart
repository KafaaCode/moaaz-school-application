class ProfileListModel {
  final String title;
  final String imagePath;

  ProfileListModel({required this.title, required this.imagePath});
}

List<ProfileListModel> profileSections = [
  ProfileListModel(title: 'Play Quiz', imagePath: 'assets/quiz.png'),
  ProfileListModel(title: 'Assignment', imagePath: 'assets/assignment.png'),
  ProfileListModel(title: 'School Holiday', imagePath: 'assets/holiday.png'),
  ProfileListModel(title: 'Time Table', imagePath: 'assets/calender.png'),
  ProfileListModel(title: 'Result', imagePath: 'assets/results.png'),
  ProfileListModel(title: 'Date Sheet', imagePath: 'assets/sheet.png'),
  ProfileListModel(title: 'Ask Doubts', imagePath: 'assets/doubts.png'),
  ProfileListModel(title: 'School Gallery', imagePath: 'assets/gallery.png'),
  ProfileListModel(title: 'Chat With Friends', imagePath: 'assets/chat.png'),
  ProfileListModel(title: 'Change Password', imagePath: 'assets/password.png'),
  ProfileListModel(title: 'Events', imagePath: 'assets/event.png'),
  ProfileListModel(title: 'Logout', imagePath: 'assets/logout.png'),
];
