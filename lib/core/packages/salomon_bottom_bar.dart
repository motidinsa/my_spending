import 'package:flutter/material.dart';

class SalomonBottomBar extends StatelessWidget {
  /// A bottom bar that faithfully follows the design by Aurélien Salomon
  ///
  /// https://dribbble.com/shots/5925052-Google-Bottom-Bar-Navigation-Pattern/
  const SalomonBottomBar({
    super.key,
    required this.items,
    this.currentIndex = 0,
    this.onTap,
    this.selectedItemColor,
    this.unselectedItemColor,
    this.selectedColorOpacity,
    this.itemShape = const StadiumBorder(),
    this.margin = const EdgeInsets.all(8),
    this.itemPadding = const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
    this.duration = const Duration(milliseconds: 500),
    this.curve = Curves.easeOutQuint,
    this.hasFAB,
    this.backgroundColor,
    this.borderRadius,
  });

  /// A list of tabs to display, ie `Home`, `Likes`, etc
  final List<SalomonBottomBarItem> items;

  /// The tab to display.
  final int currentIndex;

  /// Returns the index of the tab that was tapped.
  final Function(int)? onTap;

  /// The color of the icon and text when the item is selected.
  final Color? selectedItemColor;

  /// The color of the icon and text when the item is not selected.
  final Color? unselectedItemColor;

  /// The opacity of color of the touchable background when the item is selected.
  final double? selectedColorOpacity;

  /// The border shape of each item.
  final ShapeBorder itemShape;

  /// A convenience field for the margin surrounding the entire widget.
  final EdgeInsets margin;

  /// The padding of each item.
  final EdgeInsets itemPadding;

  /// The transition duration
  final Duration duration;

  /// The transition curve
  final Curve curve;

  final bool? hasFAB;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(left: 4, right: 4, bottom: 2, top: 0),
      child: Container(
        margin: EdgeInsets.only(left: 4, right: 4, bottom: 3, top: 0),
        decoration: BoxDecoration(
          // border: Border.all(color: lightTealColor(),width: 2.5),
          color: backgroundColor,
          borderRadius: borderRadius ?? BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.5),
              spreadRadius: 3,
              blurRadius: 6,
              offset: Offset(0, 4),
              // blurStyle: BlurStyle.inner
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: hasFAB == true ? 0 : 8,
          ),
          child: Row(
            /// Using a different alignment when there are 2 items or less
            /// so it behaves the same as BottomNavigationBar.
            mainAxisAlignment:
                items.length <= 2
                    ? MainAxisAlignment.spaceEvenly
                    : MainAxisAlignment.spaceBetween,
            children: [
              for (final item in items)
                TweenAnimationBuilder<double>(
                  tween: Tween(
                    end: items.indexOf(item) == currentIndex ? 1.0 : 0.0,
                  ),
                  curve: curve,
                  duration: duration,
                  builder: (context, t, _) {
                    final selectedColor =
                        item.selectedColor ??
                        selectedItemColor ??
                        theme.primaryColor;

                    final unselectedColor =
                        item.unselectedColor ??
                        unselectedItemColor ??
                        theme.iconTheme.color;

                    return Material(
                      color: Color.lerp(
                        selectedColor.withValues(alpha: 0),
                        selectedColor.withValues(
                          alpha: selectedColorOpacity ?? 0.1,
                        ),
                        t,
                      ),
                      shape: itemShape,
                      child: InkWell(
                        onTap: () => onTap?.call(items.indexOf(item)),
                        customBorder: itemShape,
                        focusColor: selectedColor.withValues(alpha: 0.1),
                        highlightColor: selectedColor.withValues(alpha: 0.1),
                        splashColor: selectedColor.withValues(alpha: 0.1),
                        hoverColor: selectedColor.withValues(alpha: 0.1),
                        child: Padding(
                          padding:
                              item.hasPadding == false
                                  ? const EdgeInsets.symmetric(vertical: 2)
                                  : itemPadding -
                                      (Directionality.of(context) ==
                                              TextDirection.ltr
                                          ? EdgeInsets.only(
                                            right: itemPadding.right * t,
                                          )
                                          : EdgeInsets.only(
                                            left: itemPadding.left * t,
                                          )),
                          child: Row(
                            children: [
                              IconTheme(
                                data: IconThemeData(
                                  color: Color.lerp(
                                    unselectedColor,
                                    selectedColor,
                                    t,
                                  ),
                                  size: 24,
                                ),
                                child:
                                    items.indexOf(item) == currentIndex
                                        ? item.activeIcon ?? item.icon
                                        : item.icon,
                              ),
                              ClipRect(
                                clipBehavior: Clip.antiAlias,
                                child: SizedBox(
                                  ///
                                  /// The Align property appears to make these full height, would be
                                  /// best to find a way to make it respond only to padding.
                                  height: 20,
                                  child: Align(
                                    alignment: const Alignment(-0.2, 0.0),
                                    widthFactor: t,
                                    child: Padding(
                                      padding:
                                          Directionality.of(context) ==
                                                  TextDirection.ltr
                                              ? EdgeInsets.only(
                                                left: itemPadding.left / 2,
                                                right: itemPadding.right,
                                              )
                                              : EdgeInsets.only(
                                                left: itemPadding.left,
                                                right: itemPadding.right / 2,
                                              ),
                                      child: DefaultTextStyle(
                                        style: TextStyle(
                                          color: Color.lerp(
                                            selectedColor.withValues(
                                              alpha: 0.0,
                                            ),
                                            selectedColor,
                                            t,
                                          ),
                                          fontWeight: FontWeight.w600,
                                        ),
                                        child: item.title,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
            ],
          ),
        ), //your widget here
      ),
    );
  }
}

/// A tab to display in a [SalomonBottomBar]
class SalomonBottomBarItem {
  /// An icon to display.
  final Widget icon;

  /// An icon to display when this tab bar is active.
  final Widget? activeIcon;

  /// Text to display, ie `Home`
  final Widget title;

  /// A primary color to use for this tab.
  final Color? selectedColor;

  /// The color to display when this tab is not selected.
  final Color? unselectedColor;
  final bool? hasPadding;

  SalomonBottomBarItem({
    required this.icon,
    required this.title,
    this.selectedColor,
    this.unselectedColor,
    this.activeIcon,
    this.hasPadding,
  });
}
