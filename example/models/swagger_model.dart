import 'definitions/definitions.dart';
import 'info/info.dart';
import 'paths/paths.dart';
import 'security/security.dart';
import 'security_definations/security_definations.dart';

class SwaggerModel {
  final String swagger;
  final Info info;
  final String host;
  final List<String> schemes;
  final String basePath;
  final List<String> consumes;
  final List<String> produces;
  final SecurityDefinitions securityDefinitions;
  final List<Security> security;
  final Paths paths;
  final Definitions definitions;

  SwaggerModel({
    required this.swagger,
    required this.info,
    required this.host,
    required this.schemes,
    required this.basePath,
    required this.consumes,
    required this.produces,
    required this.securityDefinitions,
    required this.security,
    required this.paths,
    required this.definitions,
  });

  factory SwaggerModel.fromJson(Map<String, dynamic> json) => SwaggerModel(
        swagger: json['swagger'],
        info: Info.fromJson(json['info']),
        host: json['host'],
        schemes: List<String>.from(json['schemes'].map((x) => x)),
        basePath: json['basePath'],
        consumes: List<String>.from(json['consumes'].map((x) => x)),
        produces: List<String>.from(json['produces'].map((x) => x)),
        securityDefinitions: SecurityDefinitions.fromJson(json['securityDefinitions']),
        security: List<Security>.from(json['security'].map((x) => Security.fromJson(x))),
        paths: Paths.fromJson(json['paths']),
        definitions: Definitions.fromJson(json['definitions']),
      );

  Map<String, dynamic> toJson() => {
        'swagger': swagger,
        'info': info.toJson(),
        'host': host,
        'schemes': List<dynamic>.from(schemes.map((x) => x)),
        'basePath': basePath,
        'consumes': List<dynamic>.from(consumes.map((x) => x)),
        'produces': List<dynamic>.from(produces.map((x) => x)),
        'securityDefinitions': securityDefinitions.toJson(),
        'security': List<dynamic>.from(security.map((x) => x.toJson())),
        'paths': paths.toJson(),
        'definitions': definitions.toJson(),
      };
}
