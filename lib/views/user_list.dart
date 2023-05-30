import 'package:flutter/material.dart';
import 'package:flutter_crud_app/components/user_tile.dart';
import 'package:flutter_crud_app/provider/users.dart';
import 'package:flutter_crud_app/routes/app_routes.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UsersProvider users = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Usuário'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                AppRoutes.USER_FORM,
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (contexto, indice) => UserTile(
          users.byIndex(indice),
        ),
      ),
    );
  }
}
