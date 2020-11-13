import 'dart:ui';

class RecommendedJobModel {
  RecommendedJobModel(this.title, this.companyName, this.companyLocation,
      this.jobImageSource, this.cardColor);

  final String title;
  final String companyName;
  final String companyLocation;
  final String jobImageSource;
  final Color cardColor;
}
