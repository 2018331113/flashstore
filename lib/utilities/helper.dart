import '../config/constants.dart';

class Helper {
  static screenPadding(double width) {
    return width > kLargeScreenSize
        ? kLargeScreenPadding
        : width > kMediumScreenSize
            ? kMediumScreenPadding
            : width > kSmallScreenSize
                ? kSmallScreenPadding
                : kExtraSmallScreenPadding;
  }

  static int crossAxisProductCount(double width) {
    return width > kLargeScreenSize
        ? 4
        : width > kMediumScreenSize
            ? 3
            : width > kSmallScreenSize
                ? 2
                : 1;
  }

  static double ProductWidgetHeight(double width) {
    return width > kLargeScreenSize
        ? kLargeScreenSize * .2
        : width > kMediumScreenSize
            ? 200
            : width > kSmallScreenSize
                ? 150
                : 100;
  }

  static double ProductWidgetWidth(double width) {
    return width > kLargeScreenSize
        ? 300
        : width > kMediumScreenSize
            ? 200
            : width > kSmallScreenSize
                ? 150
                : 100;
  }
}
