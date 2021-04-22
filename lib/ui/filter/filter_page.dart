import 'package:flutter/material.dart';
import 'package:flutter_rw_courses/state/filter_state_container.dart';
import 'package:flutter_rw_courses/ui/filter/filter_widget.dart';

import '../../constants.dart';
import '../../strings.dart';

class FilterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  FilterState state;


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    state = FilterStateContainer.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.filter),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FilterWidget(
              value: Constants.iosFilter,
              groupValue: state.filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.ios,
            ),
            FilterWidget(
              value: Constants.androidFilter,
              groupValue: state.filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.android,
            ),
            FilterWidget(
              value: Constants.flutterFilter,
              groupValue: state.filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.flutter,
            ),
            FilterWidget(
              value: Constants.sssFilter,
              groupValue: state.filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.sss,
            ),
            FilterWidget(
              value: Constants.unityFilter,
              groupValue: state.filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.unity,
            ),
            FilterWidget(
              value: Constants.macOsFilter,
              groupValue: state.filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.macOS,
            ),
            FilterWidget(
              value: Constants.allFilter,
              groupValue: state.filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.all,
            ),
          ],
        ),
      ),
    );
  }

  void _handleRadioValueChange(int value) async {
    state.updateFilterValue(value);
  }
}
