import 'package:alquiler_autos/views/Login.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:alquiler_autos/views/menuPrincipal.dart';

class register extends StatefulWidget {
  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> RegisterUser() async {
    final response = await http.post(
        Uri.parse(
            'https://alquiler-autos-backen-12-10.onrender.com/api/register'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'username': _usernameController.text,
          'email': _emailController.text,
          'password': _passwordController.text
        }));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final token = data['token'];
      print("Registro exitosos, token: $token");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Menuprincipal()),
      );
    } else {
      print('Error al iniciar sesión: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(16.5),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.network(
                    "https://static.vecteezy.com/system/resources/thumbnails/025/305/916/small_2x/white-sport-car-on-transparent-background-3d-rendering-illustration-free-png.png",
                    height: 250,
                    width: 250,
                  ),
                  const Text(
                    "Empecemos",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Crea una nueva cuenta"),
                  const SizedBox(height: 24.0),
                  TextField(
                    controller: _usernameController,
                    style: const TextStyle(
                      color: Colors.black, // Color del texto
                      fontSize: 18, // Tamaño de la fuente
                    ),
                    decoration: InputDecoration(
                      labelText: 'Nombre completo', // Etiqueta del campo
                      labelStyle: const TextStyle(
                        color: Colors.red, // Color de la etiqueta
                        fontWeight: FontWeight.bold, // Estilo de la etiqueta
                      ),
                      hintText: 'Ingresa tu nombre', // Texto de sugerencia
                      hintStyle: const TextStyle(
                        color: Colors.grey, // Color del texto de sugerencia
                      ),
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(12.0), // Bordes redondeados
                        borderSide: const BorderSide(
                            color: Colors.red,
                            width: 2.0), // Color y grosor del borde
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                            color: Colors.red,
                            width: 2.5), // Borde cuando el campo está enfocado
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                            color: Colors.grey,
                            width:
                                2.0), // Borde cuando el campo está habilitado pero no enfocado
                      ),
                      filled:
                          true, // Si quieres que el fondo del campo tenga color
                      fillColor: Colors.grey[200], // Color de fondo del campo
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: _emailController,
                    style: const TextStyle(
                      color: Colors.black, // Color del texto
                      fontSize: 18, // Tamaño de la fuente
                    ),
                    decoration: InputDecoration(
                      labelText: 'Correo electronico', // Etiqueta del campo
                      labelStyle: const TextStyle(
                        color: Colors.red, // Color de la etiqueta
                        fontWeight: FontWeight.bold, // Estilo de la etiqueta
                      ),
                      hintText: 'Ingresa tu correo', // Texto de sugerencia
                      hintStyle: const TextStyle(
                        color: Colors.grey, // Color del texto de sugerencia
                      ),
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(12.0), // Bordes redondeados
                        borderSide: const BorderSide(
                            color: Colors.red,
                            width: 2.0), // Color y grosor del borde
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                            color: Colors.red,
                            width: 2.5), // Borde cuando el campo está enfocado
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                            color: Colors.grey,
                            width:
                                2.0), // Borde cuando el campo está habilitado pero no enfocado
                      ),
                      filled:
                          true, // Si quieres que el fondo del campo tenga color
                      fillColor: Colors.grey[200], // Color de fondo del campo
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: _passwordController,
                    obscureText: true, // Para ocultar el texto
                    style: const TextStyle(
                      color: Colors.black, // Color del texto
                      fontSize: 18, // Tamaño de la fuente
                    ),
                    decoration: InputDecoration(
                      labelText: 'Contraseña', // Etiqueta del campo
                      labelStyle: const TextStyle(
                        color: Colors.red, // Color de la etiqueta
                        fontWeight: FontWeight.bold, // Estilo de la etiqueta
                      ),
                      hintText: 'Ingresa tu contraseña', // Texto de sugerencia
                      hintStyle: const TextStyle(
                        color: Colors.grey, // Color del texto de sugerencia
                      ),
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(12.0), // Bordes redondeados
                        borderSide: const BorderSide(
                            color: Colors.red,
                            width: 2.0), // Color y grosor del borde
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                            color: Colors.red,
                            width: 2.5), // Borde cuando el campo está enfocado
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                            color: Colors.grey,
                            width:
                                2.0), // Borde cuando el campo está habilitado pero no enfocado
                      ),
                      filled:
                          true, // Si quieres que el fondo del campo tenga color
                      fillColor: Colors.grey[200], // Color de fondo del campo
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                      onPressed: () {
                        RegisterUser();
                      },
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      child: const Text(
                        "Registrarse",
                        style: TextStyle(color: Colors.white),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("¿Ya tienes una cuenta?"),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => login()));
                            },
                            child: (const Text(
                              "Iniciar sesión",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )),
        ));
  }
}
