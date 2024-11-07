import 'package:flutter/material.dart';
import 'package:alquiler_autos/views/menuPrincipal.dart';
import 'package:alquiler_autos/views/register.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  "https://static.vecteezy.com/system/resources/thumbnails/025/305/916/small_2x/white-sport-car-on-transparent-background-3d-rendering-illustration-free-png.png",
                  height: 250,
                  width: 250,
                ),
                const Text(
                  "Bienvenido",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const Text("Inicia sesión para continuar"),
                const SizedBox(height: 24.0),
                TextField(
                  controller: _passwordController,
                  obscureText: true, // Para ocultar el texto
                  style: const TextStyle(
                    color: Colors.black, // Color del texto
                    fontSize: 18, // Tamaño de la fuente
                  ),
                  decoration: InputDecoration(
                    labelText: 'Correo', // Etiqueta del campo
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
                      // print("email: ${_emailController.text} ");
                      // print("password: ${_passwordController.text} ");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Menuprincipal()));
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text(
                      "Iniciar sesion",
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
                        const Text("¿Olvidaste tu contraseña?"),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Menuprincipal()));
                          },
                          child: (const Text(
                            "Recuperar",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("¿No tienes una cuenta?"),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => register()));
                          },
                          child: (const Text(
                            "Registrate",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          )),
                        )
                      ],
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
