import 'package:converter_uz/converter_uz.dart';

void main() {
  ConverterUz converter = ConverterUz.instance;
  print('Assalomu Alaykum!'.convert());
  converter.setConvertType = ConvertType.ltToCr;
  print('Assalomu Alaykum!'.convert());
}
