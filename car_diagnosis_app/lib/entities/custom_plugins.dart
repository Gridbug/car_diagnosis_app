import 'dart:typed_data';

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

// class JsonPlugin extends StandardJsonPlugin {
//   /// fix Uint8List serialization
//   @override
//   Object afterSerialize(Object object, FullType specifiedType) {
//     if (object is List && specifiedType.root != Uint8List) {
//       return super.afterSerialize(object, specifiedType);
//     } else {
//       return object;
//     }
//   }
// }