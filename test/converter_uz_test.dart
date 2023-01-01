import 'package:converter_uz/converter_uz.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    ConverterUz converter = ConverterUz.instance;

    test(
      'Latin to Cyrillic',
      () {
        expect(
          converter.toCyrillic(source: 'Assalomu alaykum!'),
          'Ассалому алайкум!',
        );
      },
    );
    test(
      'Cyrillic to Latin',
      () {
        expect(
          converter.toLatin(source: 'Ассалому алайкум!'),
          'Assalomu alaykum!',
        );
      },
    );
  });
}
