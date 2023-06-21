class Dealer {
  final String ref;

  Dealer({
    required this.ref,
  });

  factory Dealer.fromJson(Map<String, dynamic> json) => Dealer(
        ref: json['\u0024ref'],
      );

  Map<String, dynamic> toJson() => {
        '\u0024ref': ref,
      };
}
