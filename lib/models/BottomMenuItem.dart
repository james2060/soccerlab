class BottomMenuItem {
  final int id;
  final String icon;
  final String label;

  BottomMenuItem({required this.label, required this.id, required this.icon});
}

List<BottomMenuItem> btmItems = [
  BottomMenuItem(id: 0, label: "Home", icon: "assets/icons/home.svg"),
  BottomMenuItem(id: 1, label: "Fixtures", icon: "assets/icons/star.svg"),
  BottomMenuItem(id: 2, label: "Team", icon: "assets/icons/square.svg"),
  BottomMenuItem(id: 3, label: "Invite", icon: "assets/icons/loupe.svg"),
  BottomMenuItem(id: 4, label: "Profile", icon: "assets/icons/user.svg"),
];
