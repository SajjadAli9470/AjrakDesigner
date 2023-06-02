import 'package:flutter/material.dart';
import 'package:matrix_gesture_detector_pro/matrix_gesture_detector_pro.dart';

class TransformDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ValueNotifier<Matrix4> notifier = ValueNotifier(Matrix4.identity());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Transform Demo'),
      ),
      body: Stack(
        children: [
            Positioned.fill(
              child: MatrixGestureDetector(
                    onMatrixUpdate: (m, tm, sm, rm) {
                      notifier.value = m;
                    },
                    child: AnimatedBuilder(
                      animation: notifier,
                      builder: (ctx, child) {
              return Transform(
                transform: notifier.value,
                child:Container(
                    transform: notifier.value,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Icon(Icons.heat_pump_rounded,size: 20,color: Colors.brown,)
                    
                  ),
                ),
              );
                      },
                    ),
                  ),
            ),
    
            Positioned.fill(
              child: MatrixGestureDetector(
                    onMatrixUpdate: (m, tm, sm, rm) {
                      notifier.value = m;
                    },
                    child: AnimatedBuilder(
                      animation: notifier,
                      builder: (ctx, child) {
              return Transform(
                transform: notifier.value,
                child:Container(
                    transform: notifier.value,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text("data"),
                    
                  ),
                ),
              );
                      },
                    ),
                  ),
            ),
    
    
       
        ],
      )
      
    
    
    );
  }
}