import 'package:flutter/material.dart';
import 'package:log_in/domain/models/Post_model.dart';
import '../../../domain/services/api_service/getdata.dart';

class DataFetchUI extends StatefulWidget {
  const DataFetchUI({Key? key}) : super(key: key);
  @override
  State<DataFetchUI> createState() => _DataFetchUIState();
}

class _DataFetchUIState extends State<DataFetchUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Data '),
        ),
        body: FutureBuilder<List<Post>>(
          future: DataALL.getAllPost(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                      child: Text(snapshot.data![index].id.toString())),
                  title: Text(snapshot.data![index].title ?? ''),
                );
              });
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ));
  }
}
