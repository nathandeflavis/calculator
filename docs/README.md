# calculator
A FileMaker calculator application.

In my spare time, I built a FileMaker calculator application. It extends the capabilities of a scientific calculator, with tabs for different branches of mathematics.

The Standard tab has arithmetic operations, as well as exponential, logarithmic, combinatorial, and factorial functions.

![standard_tab](https://github.com/nathandeflavis/calculator/assets/92447278/032ddc2d-8f03-4041-b639-60b71b5d1c84)
*Calculator computes log<sub>2</sub> 8 (Apple macOS version).*

The Trigonometry tab has the 3 common trigonometric functions, as well as inverse, reciprocal, and hyperbolic versions.

![trig_tab](https://github.com/nathandeflavis/calculator/assets/92447278/e822d848-4680-4b74-90e7-01957494b3ca)
*Calculator computes cos π.*

The Base Converter tab has a feature to convert a number from a given base to decimal, and vice versa.

![base_converter_tab](https://github.com/nathandeflavis/calculator/assets/92447278/4b38c722-a78a-4096-84d5-ad1ec236aea8)
*Calculator converts 255 from decimal to hexadecimal.*

The Quadratic tab has a feature to solve a quadratic equation given its coefficients.

![quadratic_tab](https://github.com/nathandeflavis/calculator/assets/92447278/9c036108-8534-4b48-83f2-1341a17c251a)
*Calculator solves the quadratic equation x<sup>2</sup> + 3x + 2 = 0.*

The Binomial tab has a feature to expand a given binomial expression raised to a given power. Calculator uses a combinatorial function to compute the coefficients of the expansion.

![binomial_tab](https://github.com/nathandeflavis/calculator/assets/92447278/a58f9b98-436b-4a4f-b392-33188a72893d)
*Calculator expands the expression (x + 1)<sup>4</sup>.*

The Calculus tab has differentiation and integration features.

![calculus_tab](https://github.com/nathandeflavis/calculator/assets/92447278/7c9ad2ec-fd3d-4ab4-85a5-ee5ab92bef77)
*Calculator integrates 1/x with respect to x.*

The Primality tab has a feature to determine whether a given number is prime or composite. Calculator first looks up the number in a prime table. If the number exceeds the largest prime in the table, Calculator uses an AI-like approach as follows. It learns new primes for the table, from test-dividing numbers of the form (6x ± 1), where x is an integer, by existing primes. This continues until the given number is reached or exceeded, at which point it can be looked up in the table.

![primality_tab](https://github.com/nathandeflavis/calculator/assets/92447278/9b4939df-f03a-4607-8f81-90a6b1a2b9dd)
*Calculator determines whether 10001 is prime or composite.*

The Polynomial tab has a feature to long-divide a polynomial expression.

![polynomial_tab](https://github.com/nathandeflavis/calculator/assets/92447278/009ca385-bbd8-46f9-b54c-d0dd79021fe6)
*Calculator long-divides (x<sup>2</sup> + 2x + 2) by (x + 1).*

I hope to take the computational power of Calculator further in the future.

# Credit
Layout themes: 'Wave' and 'Cool Gray', built into Claris FileMaker Pro
