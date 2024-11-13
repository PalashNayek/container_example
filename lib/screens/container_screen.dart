import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/setup_locator.dart';
import '../view_models/container_viewmodel.dart';

class ContainerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<ContainerViewModel>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Container with MVVM and DI'),
        ),
        body: Center(
          child: Consumer<ContainerViewModel>(
            builder: (context, viewModel, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: viewModel.width,
                    height: viewModel.height,
                    decoration: BoxDecoration(
                      color: viewModel.color,
                      borderRadius: BorderRadius.circular(viewModel.borderRadius),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.setColor(Colors.red); // Change color on button press
                    },
                    child: Text("Change Color"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.setWidth(viewModel.width + 20); // Increase width
                    },
                    child: Text("Increase Width"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.setHeight(viewModel.height + 20); // Increase height
                    },
                    child: Text("Increase Height"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.setBorderRadius(viewModel.borderRadius + 5); // Increase border radius
                    },
                    child: Text("Increase Border Radius"),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
