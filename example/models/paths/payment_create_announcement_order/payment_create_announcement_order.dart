import '../../swagger_model.dart';
import 'payment_create_announcement_order_post/payment_create_announcement_order_post.dart';

class PaymentCreateAnnouncementOrder {
  final PaymentCreateAnnouncementOrderPost post;
  final List<dynamic> parameters;

  PaymentCreateAnnouncementOrder({
    required this.post,
    required this.parameters,
  });

  factory PaymentCreateAnnouncementOrder.fromJson(Map<String, dynamic> json) => PaymentCreateAnnouncementOrder(
        post: PaymentCreateAnnouncementOrderPost.fromJson(json['post']),
        parameters: List<dynamic>.from(json['parameters'].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'post': post.toJson(),
        'parameters': List<dynamic>.from(parameters.map((x) => x)),
      };
}
