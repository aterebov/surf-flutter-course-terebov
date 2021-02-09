// Sight - модель данных
class Sight {
  final String name;
  final double lat; // Широта
  final double lon; // Долгота
  final String url;
  final String detail;
  final String type; // Пока просто String

  Sight({
    this.name,
    this.lat,
    this.lon,
    this.url,
    this.detail,
    this.type,
  });
}
