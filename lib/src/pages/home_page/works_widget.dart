part of '../home_page.dart';

class WorksWidget extends StatelessWidget {
  const WorksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * 2,
      color: Colors.orange[100]!,
      padding: const EdgeInsets.all(32.0),
      child: ListView(
        children: const [
          Text(
            'Our Works',
            style: TextStyle(
              color: Colors.black,
              fontSize: 32.0,
              letterSpacing: 5.0,
              height: 1,
            ),
          ),
          SizedBox(height: 24.0),
          Text(
            'Comming soon',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              height: 1,
            ),
          ),
        ],
      ),
    );

    // return SizedBox(
    //   width: size.width,
    //   height: size.height,
    //   child: ColoredBox(
    //     color: Colors.orange[100]!,
    //     child: const Text(
    //       'Our Works',
    //       style: TextStyle(
    //         color: Colors.black,
    //       ),
    //     ),
    //   ),
    // );
  }
}
