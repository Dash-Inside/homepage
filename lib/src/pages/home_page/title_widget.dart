part of '../home_page.dart';

class TitleWidget extends StatelessWidget {
  static const String _orgName = 'Dash Inside';
  static const String _orgDesc = 'Non-Profit Developer Organization';

  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final Color primaryColor = Colors.orange[100]!;

    return SizedBox(
      width: size.width,
      height: size.height * 1,
      child: ScreenTypeLayout.builder(
        desktop: (_) {
          return Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(64.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    _orgName,
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 128.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 5,
                    ),
                  ),
                  Text(
                    _orgDesc,
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 32.0,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 5,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        mobile: (_) {
          return SizedBox(
            width: size.width,
            height: size.height,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      _orgName,
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 64.0,
                        fontWeight: FontWeight.w400,
                        height: 1.2,
                        letterSpacing: 5,
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    Text(
                      _orgDesc,
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 32.0,
                        fontWeight: FontWeight.w300,
                        height: 1.2,
                        letterSpacing: 5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
