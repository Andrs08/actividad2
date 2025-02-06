public class Main {
    public static void main(String[] args) {
        long start = System.currentTimeMillis();
        int count = 0, num = 2, sum = 0;

        while (count < 10000) {
            if (esPrimo(num)) {
                sum += num;
                count++;
            }
            num++;
        }

        long end = System.currentTimeMillis();
        System.out.println(end - start);
    }

    static boolean esPrimo(int n) {
        if (n < 2) return false;
        for (int i = 2; i * i <= n; i++) {
            if (n % i == 0) return false;
        }
        return true;
    }
}
 
