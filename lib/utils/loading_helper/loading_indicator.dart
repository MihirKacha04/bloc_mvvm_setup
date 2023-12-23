part of 'loading_handler.dart';

class LoadingIndicator extends StatelessWidget {
  static Future show({required BuildContext context, double? size}) {
    return showDialog(
      context: context,
      useRootNavigator: true,
      builder: (context) {
        return Dialog(
            insetPadding: EdgeInsets.symmetric(
              horizontal: context.width * .37,
            ),
            elevation: 0,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            backgroundColor: Colors.white,
            child: LoadingIndicator(
              size: size,
            ));
      },
    );
  }

  final double? size;

  const LoadingIndicator({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: SizedBox(
            height: size ?? 120,
            width: size ?? 120,
            child: const CircularProgressIndicator()),
      ),
    );
  }
}
