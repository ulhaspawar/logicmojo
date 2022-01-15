long double pow(float x, int n) {
    long double result {0};
    
    if(n == 0) {
        return 1;
    }
    
    long double result_half = pow(x, n / 2);
    
    if(n % 2 == 0) { //Even
        result = result_half * result_half;
    } else { //Odd
        result = x * result_half * result_half;
    }
    
    return result;
}