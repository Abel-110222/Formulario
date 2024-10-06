import 'package:flutter/material.dart';
import 'package:formulario/utils/forms_validate_functions.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formulario/widgets/widget_text_field.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  GlobalKey<FormState> formKeyA = GlobalKey();

  GlobalKey nombreKey = GlobalKey();
  GlobalKey apellidoKey = GlobalKey();
  GlobalKey calleKey = GlobalKey();
  GlobalKey numeroKey = GlobalKey();
  GlobalKey numeroIntKey = GlobalKey();
  GlobalKey numeroExtKey = GlobalKey();
  GlobalKey cpKey = GlobalKey();
  GlobalKey direccionKey = GlobalKey();
  GlobalKey numeroCardExtKey = GlobalKey();
  GlobalKey dateKey = GlobalKey();
  GlobalKey cvvKey = GlobalKey();

  TextEditingController nombreController = TextEditingController();
  TextEditingController apellidoController = TextEditingController();
  TextEditingController calleController = TextEditingController();
  TextEditingController numeroController = TextEditingController();
  TextEditingController numeroIntController = TextEditingController();
  TextEditingController numeroExtController = TextEditingController();
  TextEditingController cpController = TextEditingController();
  TextEditingController direccionController = TextEditingController();
  TextEditingController numeroCardExtController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();

  FocusNode nombreFocusNode = FocusNode();
  FocusNode apellidoFocusNode = FocusNode();
  FocusNode calleFocusNode = FocusNode();
  FocusNode numeroFocusNode = FocusNode();
  FocusNode numeroIntFocusNode = FocusNode();
  FocusNode numeroExtFocusNode = FocusNode();
  FocusNode cpFocusNode = FocusNode();
  FocusNode direccionFocusNode = FocusNode();
  FocusNode numeroCardExtFocusNode = FocusNode();
  FocusNode dateFocusNode = FocusNode();
  FocusNode cvvFocusNode = FocusNode();

  ///!  *************************************************************
  ///!  DISPOSE
  ///!  *************************************************************
  @override
  void dispose() {
    super.dispose();

    ///
    nombreFocusNode.dispose();
    apellidoFocusNode.dispose();
    calleFocusNode.dispose();
    numeroFocusNode.dispose();
    numeroIntFocusNode.dispose();
    numeroExtFocusNode.dispose();
    cpFocusNode.dispose();
    direccionFocusNode.dispose();
    numeroCardExtFocusNode.dispose();
    dateFocusNode.dispose();
    cvvFocusNode.dispose();

    ///
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Formulario"), centerTitle: true, backgroundColor: Colors.blue),
      body: Container(
        padding: const EdgeInsets.all(15),
        color: Colors.white,
        child: Center(
          child: ListView(
            children: [
              Form(
                key: formKeyA,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Datos personales",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ResponsiveGridRow(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      rowSegments: 10,
                      children: <ResponsiveGridCol>[
                        //!  Nombre y apellido
                        ResponsiveGridCol(
                          key: nombreKey,
                          md: 5,
                          lg: 5,
                          child: WidgetTextField(
                            suffixIcon: const Icon(FontAwesomeIcons.solidUser),
                            label: "Nombre",
                            maxLength: 30,
                            onlyText: true,
                            focusNode: nombreFocusNode,
                            textEditingController: nombreController,
                            enable: true,
                            validator: (text) {
                              return FormsValidate.inputString(
                                text,
                                "Especificar nombre",
                              );
                            },
                            onChanged: (text) {},
                          ),
                        ),
                        ResponsiveGridCol(
                          key: apellidoKey,
                          md: 5,
                          lg: 5,
                          child: WidgetTextField(
                            suffixIcon: const Icon(FontAwesomeIcons.user),
                            label: "Apellido",
                            maxLength: 30,
                            onlyText: true,
                            focusNode: apellidoFocusNode,
                            textEditingController: apellidoController,
                            enable: true,
                            validator: (text) {
                              return FormsValidate.inputString(
                                text,
                                "Especificar Apellido",
                              );
                            },
                            onChanged: (text) {},
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Ubicacion",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ResponsiveGridRow(rowSegments: 10, children: <ResponsiveGridCol>[
                      ResponsiveGridCol(
                          key: calleKey,
                          xs: 7,
                          sm: 7,
                          md: 5,
                          xl: 3,
                          lg: 3,
                          child: WidgetTextField(
                            label: "Calle",
                            maxLength: 30,
                            focusNode: calleFocusNode,
                            textEditingController: calleController,
                            enable: true,
                            validator: (text) {
                              if (FormsValidate.inputString(
                                    text,
                                    "Especificar calle",
                                  ) !=
                                  null) {
                                return FormsValidate.inputString(
                                  text,
                                  "Especificar calle",
                                );
                              }
                              return null;
                            },
                            onChanged: (text) {},
                          )),
                      ResponsiveGridCol(
                          key: numeroKey,
                          xs: 3,
                          sm: 3,
                          md: 5,
                          lg: 2,
                          xl: 2,
                          child: WidgetTextField(
                            label: "Numero",
                            maxLength: 5,
                            onlyPhoneNumber: true,
                            focusNode: numeroFocusNode,
                            textEditingController: numeroController,
                            enable: true,
                            validator: (text) {
                              if (FormsValidate.inputString(
                                    text,
                                    "Especificar numero",
                                  ) !=
                                  null) {
                                return FormsValidate.inputString(
                                  text,
                                  "Especificar numero",
                                );
                              }
                              return null;
                            },
                            onChanged: (text) {},
                          )),
                      ResponsiveGridCol(
                          key: numeroIntKey,
                          xs: 7,
                          sm: 7,
                          md: 4,
                          lg: 2,
                          xl: 2,
                          child: WidgetTextField(
                            label: "Numero Interior (opcional)",
                            maxLength: 6,
                            onlyPhoneNumber: true,
                            focusNode: numeroIntFocusNode,
                            textEditingController: numeroIntController,
                            enable: true,
                            validator: (text) {
                              if (FormsValidate.inputString(
                                    text,
                                    "Especificar numero interior",
                                  ) !=
                                  null) {
                                return FormsValidate.inputString(
                                  text,
                                  "Especificar numero interior",
                                );
                              }
                              return null;
                            },
                            onChanged: (text) {},
                          )),
                      // ResponsiveGridCol(
                      //     xs: 3,
                      //     sm: 3,
                      //     md: 4,
                      //     lg: 2,
                      //     xl: 2,
                      //     child: WidgetTextField(
                      //       label: "Numero Exterior",
                      //       maxLength: 100,
                      //       onlyPhoneNumber: true,
                      //       focusNode: FocusNode(),
                      //       textEditingController: TextEditingController(),
                      //       enable: true,
                      //       validator: (text) {
                      //         if (FormsValidate.inputString(
                      //               text,
                      //               "ssss",
                      //             ) !=
                      //             null) {
                      //           return FormsValidate.inputString(
                      //             text,
                      //             "aassa",
                      //           );
                      //         }
                      //       },
                      //       onChanged: (text) {},
                      //     )),
                      ResponsiveGridCol(
                          key: cpKey,
                          xs: 3,
                          sm: 3,
                          md: 3,
                          lg: 3,
                          xl: 3,
                          child: WidgetTextField(
                            label: "CP",
                            maxLength: 5,
                            rowHeight: 100,
                            onlyPhoneNumber: true,
                            counterText: true,
                            focusNode: cpFocusNode,
                            textEditingController: cpController,
                            enable: true,
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return "Especificar CP";
                              }
                              if (text.length != 5 || !RegExp(r'^\d{5}$').hasMatch(text)) {
                                return "CP inválido";
                              }
                              return null;
                            },
                            onChanged: (text) {},
                          )),
                    ]),
                    Text(
                      "Datos bancarios",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ResponsiveGridRow(rowSegments: 12, children: <ResponsiveGridCol>[
                      ResponsiveGridCol(
                          key: numeroCardExtKey,
                          md: 12,
                          sm: 12,
                          xs: 12,
                          lg: 12,
                          xl: 12,
                          child: WidgetTextField(
                            label: "Numero de Cuenta",
                            maxLength: 20,
                            onlyCreditCard: true,
                            focusNode: numeroCardExtFocusNode,
                            textEditingController: numeroCardExtController,
                            enable: true,
                            validator: (text) {
                              // Validación del Número de Cuenta o Tarjeta de Crédito
                              if (text == null || text.isEmpty) {
                                return "Especificar Numero de Cuenta";
                              }
                              // Validar que el número tenga exactamente 16 dígitos
                              if (text.trim().length < 16) {
                                return "Cuenta inválida";
                              }
                              return null; // Si es válido, no retorna nada (valido)
                            },
                            onChanged: (text) {},
                          )),
                      ResponsiveGridCol(
                          key: dateKey,
                          md: 6,
                          lg: 6,
                          xs: 6,
                          sm: 6,
                          xl: 6,
                          child: WidgetTextField(
                            label: "Fech de vencimiento (MM/AA)",
                            maxLength: 5,
                            onlydateCreditCard: true,
                            focusNode: dateFocusNode,
                            textEditingController: dateController,
                            enable: true,
                            validator: (text) {
                              // Validación del CP
                              if (text == null || text.isEmpty) {
                                return "Especificar Fecha de vencimiento (MM/AA)";
                              }
                              if (text.trim().length < 4) {
                                return "Fecha inválida";
                              }
                              return null; // Si es válido, no retorna nada (valido)
                            },
                            onChanged: (text) {},
                          )),
                      ResponsiveGridCol(
                          key: cvvKey,
                          md: 6,
                          sm: 6,
                          xs: 6,
                          lg: 6,
                          xl: 6,
                          child: WidgetTextField(
                            label: "CCV",
                            maxLength: 3,
                            onlyPhoneNumber: true,
                            counterText: true,
                            rowHeight: 100,
                            focusNode: cvvFocusNode,
                            textEditingController: cvvController,
                            enable: true,
                            validator: (text) {
                              // Validación del CP
                              if (text == null || text.isEmpty) {
                                return "Especificar CCV";
                              }
                              if (text.length != 3 || !RegExp(r'^\d{3}$').hasMatch(text)) {
                                return "CCV inválido";
                              }
                              return null; // Si es válido, no retorna nada (valido)
                            },
                            onChanged: (text) {},
                          )),
                    ]),
                    ResponsiveGridRow(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <ResponsiveGridCol>[
                          ResponsiveGridCol(
                              md: 12,
                              xs: 12,
                              sm: 12,
                              lg: 12,
                              xl: 12,
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(10),
                                    child: ElevatedButton.icon(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                        ),
                                        onPressed: () {
                                          saveData();
                                        },
                                        label: const Text("Guardar",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                        icon: const Icon(Icons.save, color: Colors.white)),
                                  ),
                                ],
                              )),
                        ])
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void saveData() async {
    ///
    final isOk = formKeyA.currentState!.validate();
    //
    if (isOk) {
      ///
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Guardado con exito'),
        ),
      );

      //
    } else {
      if (FormsValidate.inputString(nombreController.text.trim(), '') != null) {
        FocusScope.of(context).requestFocus(nombreFocusNode);
        return;
      }
      if (FormsValidate.inputString(apellidoController.text.trim(), '') != null) {
        FocusScope.of(context).requestFocus(apellidoFocusNode);
        return;
      }
      if (FormsValidate.inputString(calleController.text.trim(), '') != null) {
        FocusScope.of(context).requestFocus(calleFocusNode);
        return;
      }
      if (FormsValidate.inputString(numeroController.text.trim(), '') != null) {
        FocusScope.of(context).requestFocus(numeroFocusNode);
        return;
      }
      if (FormsValidate.inputString(numeroIntController.text.trim(), '') != null) {
        FocusScope.of(context).requestFocus(numeroIntFocusNode);
        return;
      }
      if (FormsValidate.inputString(numeroExtController.text.trim(), '') != null) {
        FocusScope.of(context).requestFocus(numeroExtFocusNode);
        return;
      }
      if (FormsValidate.inputString(cpController.text.trim(), '') != null) {
        FocusScope.of(context).requestFocus(cpFocusNode);
        return;
      }
      if (FormsValidate.inputString(direccionController.text.trim(), '') != null) {
        FocusScope.of(context).requestFocus(direccionFocusNode);
        return;
      }
      if (FormsValidate.inputString(numeroCardExtController.text.trim(), '') != null) {
        FocusScope.of(context).requestFocus(numeroCardExtFocusNode);
        return;
      }
      if (FormsValidate.inputString(dateController.text.trim(), '') != null) {
        FocusScope.of(context).requestFocus(dateFocusNode);
        return;
      }
      if (FormsValidate.inputString(cvvController.text.trim(), '') != null) {
        FocusScope.of(context).requestFocus(cvvFocusNode);
        return;
      }
    }
  }
}
