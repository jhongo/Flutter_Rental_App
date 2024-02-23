
// ignore: constant_identifier_names
enum HouseType {Popular, House, Office, Penthouse}

extension EnumExtension on HouseType {
  String capitalizeName(){
    return name[0].toUpperCase() + name.substring(1);
  }
}