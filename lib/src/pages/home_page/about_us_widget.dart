part of '../home_page.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final Color primaryColor = Colors.orange[100]!;

    //DEBUG
    final String leftRow = loremIpsum(words: 30);
    final String rightRow = loremIpsum(words: 30);

    return SizedBox(
      width: size.width,
      height: size.height,
      child: ScreenTypeLayout.builder(
        desktop: (_) {
          return Padding(
            padding: const EdgeInsets.all(64.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    leftRow,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                const SizedBox(width: 32.0),
                Expanded(
                  child: Text(
                    rightRow,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
