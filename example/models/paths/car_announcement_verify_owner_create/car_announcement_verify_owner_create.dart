import '../../swagger_model.dart';
import 'car_announcement_verify_owner_create_post/car_announcement_verify_owner_create_post.dart';

class CarAnnouncementVerifyOwnerCreate {
  final CarAnnouncementVerifyOwnerCreatePost post;
  final List<dynamic> parameters;

  CarAnnouncementVerifyOwnerCreate({
    required this.post,
    required this.parameters,
  });

  factory CarAnnouncementVerifyOwnerCreate.fromJson(Map<String, dynamic> json) => CarAnnouncementVerifyOwnerCreate(
        post: CarAnnouncementVerifyOwnerCreatePost.fromJson(json['post']),
        parameters: List<dynamic>.from(json['parameters'].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'post': post.toJson(),
        'parameters': List<dynamic>.from(parameters.map((x) => x)),
      };
}
