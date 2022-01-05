import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        //- - - - - -  - PARTE DO LOGO - - - - - - - -
        //para fazer a logo tem que colocar uma row com duas colunas cada coluna
        //cada coluna é um lado do logo
        Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // primeira coluna contém dois container um para cada forma
        // do lado esquerdo. O primeiro container é do circulo
        // e o segundo é o quadrado com o lado arredondado.
        Column(
          children: [
            Container(
              //para fazer o circulo basta colocar o Boxdecoration
              //e passar no parametro BorderRadius.all()
              //dentro do BorderRadius.all() passar o Radius.circular(50)
              //o 50 é para deixar completamente redondo.
              // color fica dentro do boxdecoration para nao dar problema com conflito de cores
              // ele ira prencher o container corretamente.
              decoration: const BoxDecoration(
                  color: Color(0xff5e5ce5),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              height: 20,
              width: 20,
            ),
            //sizedBox para dar espaço entre o circulo e o quadrado com o semicirculo.
            const SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                //para fazer o quadrado com o semi-circulo basta colocar o Boxdecoration
                //e passar no parametro orderRadius.only()
                //dentro do BorderRadius.only() passar no parametro bottomleft Radius.circular(50)
                //para somente a parte de baixo no lado esquerdo ficar arredondado.
                border: Border.all(
                  color: const Color(0xff5e5ce5),
                ),
                color: const Color(0xff5e5ce5),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
              ),
              height: 20,
              width: 20,
            ),
          ],
        ),
        //sizedBox para dar espaço entre o lado direito e o esquerdo do logo.
        const SizedBox(
          width: 5,
        ),
        /* Para fazer a segunda parte do logo basta ter um container que
                 * tenha de altura a soma dos outros dois container ao lado ou seja 20 + 20
                 */
        Column(
          children: [
            Container(
              //para fazer o retangulo com os dois semi-circulos basta colocar o Boxdecoration
              //e passar no parametro orderRadius.only()
              //dentro do BorderRadius.only()
              //passar no parametro bottomLeft Radius.circular(50)
              //para somente a parte de baixo no lado esquerdo ficar arredondado.
              //passar no parametro topRight Radius.circular(50)
              //para o topo no lado direito ficar arredondado. E TA PRONTO O SORVETINHO.
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xff5e5ce5),
                ),
                color: const Color(0xff5e5ce5),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
              ),
              height: 40,
              width: 20,
            ),
          ],
        )
      ],
      //logo
    );
  }
}
