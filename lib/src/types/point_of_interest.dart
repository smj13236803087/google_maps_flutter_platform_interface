// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:meta/meta.dart';

import '../../google_maps_flutter_platform_interface.dart';

/// A pair of latitude and longitude coordinates, stored as degrees.
@immutable
class PointOfInterest {
  /// Creates a PointOfInterest
  const PointOfInterest({
    required this.placeId,
    required this.name,
    required this.position,
  });

  /// The placeId of the POI.
  final String placeId;

  /// The name of the POI.
  final String name;

  /// The LatLng of the POI.
  final LatLng position;

  /// Converts this object to something serializable in JSON.
  Object toJson() {
    return <String, Object>{
      "placeId": placeId,
      "name": name,
      "position": position.toJson(),
    };
  }

  @override
  String toString() =>
      'PointOfInterest{placeId: $placeId, name: $name, position: $position}';

  @override
  bool operator ==(Object o) {
    return o is PointOfInterest &&
        o.position == position &&
        o.name == name &&
        o.placeId == placeId;
  }

  @override
  int get hashCode => placeId.hashCode;
}
