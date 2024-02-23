import 'package:flutter_property_rental_ui/helpers/enums.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final stateItemNav = StateProvider<int>((ref) => 0);

final stateItemFilter = StateProvider<HouseType>((ref) =>  HouseType.Popular);