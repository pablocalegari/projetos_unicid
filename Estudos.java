import java.util.Scanner;
public class Calculadora {
    public static void main(String[] args){
        calculo();
    }

    public static void calculo(){
        try (Scanner scanner = new Scanner(System.in)) {
            System.out.println("Digite um numero: ");
            int a = scanner.nextInt(); //pega o numero e atribui a variavel 'a'
            scanner.nextLine(); 
            System.out.println("Escolha a operação (+, -, *, /): ");
            String op = scanner.nextLine(); // pega a operação de escolha e artibui a variavel 'op'
            System.out.println("Digite outro numero: ");
            int b = scanner.nextInt(); //pega o numero e atribui a variavel 'b'

            double resultado = 0; 

            // sequencia de if else para todas as operações
            if (op.equals ("+")){
                resultado = a + b;   
            }
            else if(op.equals ("-")) {
                resultado = a - b;
            }
            else if(op.equals ("/")) {
                resultado = a / b;
            }
            else if(op.equals ("*")) {
                resultado = a * b;
            }
            System.out.println("O resultado é: " + resultado); // printa o resultado

        }
    }
}
    
