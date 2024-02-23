
enum HouseType {popular, house, office, penthouse}

extension EnumExtension on HouseType {
  String capitalizeName(){
    return name[0].toUpperCase() + name.substring(1);
  }
}