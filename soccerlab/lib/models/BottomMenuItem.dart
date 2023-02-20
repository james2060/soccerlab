class BottomMenuItem {
  final int id;
  final String icon;
  final String label;

  BottomMenuItem({required this.label, required this.id, required this.icon});
}

List<BottomMenuItem> btmItems = [
  BottomMenuItem(id: 0, label: "Home", icon: "icons/home.svg"),
  BottomMenuItem(id: 1, label: "Fixtures", icon: "icons/star.svg"),
  BottomMenuItem(id: 2, label: "Team", icon: "icons/square.svg"),
  BottomMenuItem(id: 3, label: "Invite", icon: "icons/loupe.svg"),
  BottomMenuItem(id: 4, label: "Profile", icon: "icons/user.svg"),
];
