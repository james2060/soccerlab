
//Last Matches View에 표시될 데이터셋
class MealsListData {
  MealsListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.meals,
    this.kacl = 0,
    this.matchResult = ''
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String>? meals;
  int kacl;
  String matchResult;
  static List<MealsListData> tabIconsList = <MealsListData>[
    MealsListData(
      imagePath: 'assets/images/club-logo.png',
      titleTxt: '오라클FC',
      kacl: 525,
      matchResult: '패',
      meals: <String>['7/4 ', '7-9 AM ', '2:1 '],
      startColor: '#FA7D82',
      endColor: '#FFB295',
    ),
    MealsListData(
      imagePath: 'assets/images/group.png',
      titleTxt: '스트레인져스',
      kacl: 602,
      matchResult: '패',
      meals: <String>['7/1 ', '7-9 AM ', '2:1 '],
      startColor: '#738AE6',
      endColor: '#5C5EDD',
    ),
    MealsListData(
      imagePath: 'assets/images/group-1735.png',
      titleTxt: 'FC일레븐',
      kacl: 0,
      matchResult: '패',
      meals: <String>['6/28 ', '7-9 AM ', '1:1 '],
      startColor: '#FE95B6',
      endColor: '#FF5287',
    ),
    MealsListData(
      imagePath: 'assets/bottom/dinner.png',
      titleTxt: '스트레인져스',
      kacl: 0,
      matchResult: '승',
      meals: <String>['6/20 ', '7-9 AM ', '2:1 '],
      startColor: '#6F72CA',
      endColor: '#1E1466',
    ),
  ];
}
