class Villain {
    String name;
    String url;

    Villain({
        required this.name,
        required this.url,
    });

  factory Villain.fromJson(Map<String, dynamic> json) => Villain(
        name: json["name"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
    };
    
}