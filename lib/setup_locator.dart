import 'package:glasses/data/data_locator.dart';
import 'package:glasses/domain/domain_locator.dart';
import 'package:glasses/features/feature_locator.dart';

void setupLocator() {
  setupDataLocator();
  setupDomainLocator();
  setupFeatureLocator();
}
