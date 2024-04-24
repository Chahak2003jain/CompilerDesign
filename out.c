#include<stdio.h> 
int main() {
    int num, i;     int sum_even = 0, sum_odd = 0; 
    
    printf("Enter a number: ");
    scanf("%d", &num); 
    
    for(i = 1; i <= num; i++) {
        if(i % 2 == 0) {             sum_even += i;         } else {
            sum_odd += i;         }
    }

    
    printf("Sum of even numbers from 1 to %d: %d\n", num, sum_even);
    printf("Sum of odd numbers from 1 to %d: %d\n", num, sum_odd);

    return 0; }
