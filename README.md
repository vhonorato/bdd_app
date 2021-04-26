# bdd_app

BDD (Behavioral Driven Development) é técnica de desenvolvimento ágil que visa integrar regras de negócios com linguagem de programação, focando o comportamento do software. Além disso, pode-se dizer também, que BDD é a evolução do TDD. Isto porque, os testes ainda orientam o desenvolvimento, ou seja, primeiro se escreve o teste e depois o código.

<p align="center">
  <img src="assets\bdd_arch.png?raw=true" alt="BDD Arch"/>
</p>

Nos blocos de código a seguir podemos ver como essa documentação viva e os testes caminham juntos dentro da aplicação promovendo através de uma linguagem ubica a leitura por qualquer membro das equipes possibilitando assim o entendimento dos cenários por pessoas não especializadas em tecnologia.

```
Feature: AddFeature
  Test add features

  Scenario: Test Plus feature of the app
    Given I test the initial state of the app
    And I click the plus button
    Then I see if the value is "1"
```

```
   testWidgets('Test Plus feature of the app', (WidgetTester tester) async {
      await initialStateOfApp(tester);
      await iClickPlusButton(tester);
      await iSeeTheValue(tester);
    });
```
Esta é uma aplicação desenvolvida em Dart através do framework Flutter para explorar e aprender sobre o poder do BDD.

## Running Using Flutter Driver

Dentro da diretorio raiz do projeto execute o comando a seguir e veja a mágica acontecer.

```
flutter drive \
  --driver=test_driver/integration_driver.dart \
  --target=integration_test/app_test.dart
```

## Running Using Flutter Driver

Em breve.

