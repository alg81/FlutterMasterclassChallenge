import 'dart:ffi';
import 'dart:io';

void main(List<String> arguments) {
  /*  Controle de WHILE para garantir que
      só seja passado um argumento vazio, o qual
      será calculado. 
  */
  int flag = 1;
  List<String?> lista = []; // Lista a ser preenchida pelo usuário

  while (flag == 1) {
    int numNulos = 0;
    const int numItens = 4;
    List<String> listaPos = ["1.1", "1.2", "2.1", "2.2"];

    print('');
    print('item1.1 x item2.2 = item2.1 x item1.2');
    print(' Digite somente números!');

    for (int n = 0; n < numItens; n++) {
      print(
          'Entre com o item ${listaPos[n]} (Apenas aperte ENTER no item a ser calculado): ');
      String? item = stdin.readLineSync();

      // Se o item ñ for digitado e for dado ENTER, adiciona a
      // string "0" no item da lista, caso contrário adiciona o item digitado.
      if (item?.isEmpty ?? true) {
        lista.add("0");
        numNulos++;
      } else {
        lista.add(item);
      }
    }
    // Garante que só exista 1 item nulo
    if (numNulos == 1) {
      flag = 0;
    } else {
      print(' Só pode haver um item nulo. Digite novamente!');
      lista.clear(); // limpando a lista para tentar novamente.
    }
    //print("lista: $lista");
  }
  regratres(lista);
}

void regratres(List<String?> lista) {
  List<String?> ListaParam = lista;
  int ItemPCalc = ListaParam.indexWhere((element) => element!
      .startsWith('0')); // encontra o indice do parametro a ser calculado

  // Converte a lista de string em double para poder realizar cálculos.
  List<double> ListaDouble = [];
  ListaParam.forEach((element) {
    double val = double.tryParse(element!) ?? 0;
    ListaDouble.add(val);
  });

  print(ListaDouble);

  switch (ItemPCalc) {
    case 0:
      ListaDouble[0] = (ListaDouble[1] * ListaDouble[2]) / ListaDouble[3];
      print('O item1.1 foi calculado e seu resultado é: ${ListaDouble[0]}');
      break;
    case 1:
      ListaDouble[1] = (ListaDouble[0] * ListaDouble[3]) / ListaDouble[2];
      print(' O item1.2 foi calculado e seu resultado é: ${ListaDouble[1]}');
      break;
    case 2:
      ListaDouble[2] = (ListaDouble[0] * ListaDouble[3]) / ListaDouble[1];
      print(' O item2.1 foi calculado e seu resultado é: ${ListaDouble[2]}');
      break;
    case 3:
      ListaDouble[3] = (ListaDouble[1] * ListaDouble[2]) / ListaDouble[0];
      print(' O item2.2 foi calculado e seu resultado é: ${ListaDouble[3]}');
      break;
    default:
      print(' Item não informado.');
  }
}
