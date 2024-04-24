#include<stdio.h> // Include standard input/output library

int main() {
    int num, i; // Declare variables to store input and loop counter
    int sum_even = 0, sum_odd = 0; // Initialize variables to store sum of even and odd numbers

    /* Prompt user to enter a number */
    printf("Enter a number: ");
    scanf("%d", &num); // Read the number from user input

    /* Loop through numbers from 1 to the given number */
    for(i = 1; i <= num; i++) {
        if(i % 2 == 0) { // Check if the number is even
            sum_even += i; // Add the even number to the sum_even
        } else {
            sum_odd += i; // Add the odd number to the sum_odd
        }
    }

    /* Display the sum of even and odd numbers */
    printf("Sum of even numbers from 1 to %d: %d\n", num, sum_even);
    printf("Sum of odd numbers from 1 to %d: %d\n", num, sum_odd);

    return 0; // Return 0 to indicate successful execution
}
