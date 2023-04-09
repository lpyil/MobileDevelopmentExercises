import 'package:app16_json_api/user_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class RemoteApi extends StatefulWidget {
  const RemoteApi({super.key});

  @override
  State<RemoteApi> createState() => _RemoteApiState();
}

class _RemoteApiState extends State<RemoteApi> {
  Future<List<UserModel>> _getUserList() async {
    try {
      var response =
          await Dio().get("https://jsonplaceholder.typicode.com/users");
      List<UserModel> userList = [];
      if (response.statusCode == 200) {
        userList =
            (response.data as List).map((e) => UserModel.fromJson(e)).toList();
      }
      return userList;
    } on DioError catch (e) {
      return Future.error(e.message.toString());
    }
  }

 late final Future<List<UserModel>> _userList;
  @override
  void initState() {
    super.initState();

    _userList = _getUserList();
    
  }

  @override
  Widget build(BuildContext context) {
    _getUserList();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Remote Api with dio "),
      ),
      body: Center(
        child: FutureBuilder<List<UserModel>>(
          future: _userList,
          builder: (BuildContext context, snapshot) {
            if (snapshot.hasData) {
              var userList = snapshot.data!;
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  var user = userList[index];

                  return ListTile(
                    title: Text(user.email),
                    subtitle: Text(user.address.toString()),
                    leading: Text(user.id.toString()),
                  );
                },
                itemCount: userList.length,
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
