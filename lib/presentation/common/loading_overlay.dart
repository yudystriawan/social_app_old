import 'package:flutter/material.dart';

class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({
    Key key,
    @required this.isSubmitting,
  }) : super(key: key);

  final bool isSubmitting;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSubmitting,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color:
            isSubmitting ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSubmitting,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircularProgressIndicator(),
              const SizedBox(height: 8),
              Text(
                'Saving',
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
