import 'package:flutter/material.dart';

class PatientFilter extends StatefulWidget {
  const PatientFilter({super.key});

  @override
  State<PatientFilter> createState() => _PatientFilterState();
}

class _PatientFilterState extends State<PatientFilter> {
  String _selectedStatus = 'All';
  List<String> Options = ['All', 'Stable', 'Critical', 'Recovering'];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 220,
          child: ListView.builder(
            itemCount: Options.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(Options[index]),
                selected: _selectedStatus == Options[index],

                onTap: () {
                  setState(() {
                    _selectedStatus = Options[index];
                    Navigator.pop(context, _selectedStatus);
                  });
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
