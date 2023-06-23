import '../../car_place_category/car_place_category_properties/contact_name_class/contact_name_class.dart';
import '../../car_place_category/car_place_category_properties/is_camparison_class/is_camparison_class.dart';

class StaticPageProperties {
  final IsComparisonClass id;
  final ContactNameClass title;
  final ContactNameClass slug;
  final ContactNameClass link;
  final ContactNameClass content;

  StaticPageProperties({
    required this.id,
    required this.title,
    required this.slug,
    required this.link,
    required this.content,
  });

  factory StaticPageProperties.fromJson(Map<String, dynamic> json) => StaticPageProperties(
        id: IsComparisonClass.fromJson(json['id']),
        title: ContactNameClass.fromJson(json['title']),
        slug: ContactNameClass.fromJson(json['slug']),
        link: ContactNameClass.fromJson(json['link']),
        content: ContactNameClass.fromJson(json['content']),
      );

  Map<String, dynamic> toJson() => {
        'id': id.toJson(),
        'title': title.toJson(),
        'slug': slug.toJson(),
        'link': link.toJson(),
        'content': content.toJson(),
      };
}
