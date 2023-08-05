import '../../../core/helper_models/param_content_model.dart';
import '../../../core/helper_models/param_model_fields.dart';
import '../helper_models/field_constructor.dart';

ParamModelFields getDatasourceParamFields(List<ParamContent> src) {
  String fields = '';
  String constructors = '';
  for (var i = 0; i < src.length; i++) {
    String fieldType = '';
    String fieldName = '';
    String defaultValue = '';
    fields += 'final $fieldType $fieldName; ';
    constructors += 'this.$fieldName = $defaultValue, ';
  }
  return ParamModelFields(fields: fields,constructors: constructors);
}
