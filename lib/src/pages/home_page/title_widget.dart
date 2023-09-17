part of '../home_page.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: size.height,
      child: ScreenTypeLayout.builder(
        desktop: (_) {
          return const Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.all(64.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Dash Inside',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 128.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 5,
                    ),
                  ),
                  Text(
                    'Non-Profit Developer Organization',
                    style: TextStyle(
                      color: Colors.white,
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
            child: const Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.all(32.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Dash Inside',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 64.0,
                        fontWeight: FontWeight.w400,
                        height: 1.2,
                        letterSpacing: 5,
                      ),
                    ),
                    SizedBox(height: 24.0),
                    Text(
                      'Non-Profit Developer Organization',
                      style: TextStyle(
                        color: Colors.white,
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
