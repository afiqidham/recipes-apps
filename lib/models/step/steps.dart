import 'package:isar/isar.dart';

part 'steps.g.dart';

@Collection()
class Steps {
  Id stepId = Isar.autoIncrement;
  String? step1;
  String? step2;
  String? step3;
  String? step4;
  String? step5;
  String? step6;
  String? step7;
  String? step8;

  Steps(
      {this.step1,
      this.step2,
      this.step3,
      this.step4,
      this.step5,
      this.step6,
      this.step7,
      this.step8});
}
