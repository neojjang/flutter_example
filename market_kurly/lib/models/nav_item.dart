class NaveItem {
  final int id;
  final String icon;
  final String label;

  NaveItem({required this.id, required this.icon, required this.label});
}

List<NaveItem> navItems = [
  NaveItem(id: 0, icon: "assets/icons/home.svg", label: "홈"),
  NaveItem(id: 1, icon: "assets/icons/star.svg", label: "추천"),
  NaveItem(id: 2, icon: "assets/icons/square.svg", label: "카테고리"),
  NaveItem(id: 3, icon: "assets/icons/loupe.svg", label: "검색"),
  NaveItem(id: 4, icon: "assets/icons/user.svg", label: "마이컬리"),
];
