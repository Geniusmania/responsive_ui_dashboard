import 'package:flutter/material.dart';
import 'package:index/components/dashboard_header.dart';
import 'package:index/components/storage.dart';
import 'package:index/constants.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          const DashboardHeader(),
          const SizedBox(
            height: defaultPadding,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('My Files',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(fontSize: 18)),
                        ElevatedButton.icon(
                            onPressed: () {},
                            label: const Text(
                              'Add New',style: TextStyle(color: Colors.white),
                            ),
                            icon: const Icon(Icons.add,color: Colors.white,))
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: defaultPadding,
              ),
              const Expanded(
                flex: 2,
                child: Storage(),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
