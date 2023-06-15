class KitsuDimensions {
  final KitsuDimension tiny;
  final KitsuDimension small;
  final KitsuDimension? medium;
  final KitsuDimension large;

  KitsuDimensions(
      {required this.tiny,
      required this.small,
      this.medium,
      required this.large});

  factory KitsuDimensions.fromJson(Map<String, dynamic> json) {
    return KitsuDimensions(
      tiny: KitsuDimension.fromJson(json['tiny']),
      small: KitsuDimension.fromJson(json['small']),
      medium: json['medium'] != null
          ? KitsuDimension.fromJson(json['medium'])
          : null,
      large: KitsuDimension.fromJson(json['large']),
    );
  }
}

class KitsuDimension {
  final int width;
  final int height;

  KitsuDimension({required this.width, required this.height});

  factory KitsuDimension.fromJson(Map<String, dynamic> json) {
    return KitsuDimension(width: json['width'], height: json['height']);
  }
}
