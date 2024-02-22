
enum HouseType {house, office, penthouse, popular}

extension EnumExtension on HouseType {
  String capitalizeName(){
    return name[0].toUpperCase() + name.substring(1);
  }
}