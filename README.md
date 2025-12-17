import java.util.Scanner;
public class Main{
    public static void main(String[] args){
        System.out.println("---- Digite os 9 primeiros digitos do seu CPF ----");
        Scanner scanner = new Scanner(System.in);
        int cpf = scanner.nextInt();
        
        digcpf.digitos(cpf);
        scanner.close();
    }
}
