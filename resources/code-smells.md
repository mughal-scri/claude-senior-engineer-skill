# Code Smells & Refactoring Catalog

When reviewing or writing code, actively look for and refactor these common smells.

## 1. The God Class or God Object
*   **Smell**: A class or module that controls too much and knows too much. It has thousands of lines and dozens of responsibilities.
*   **Fix**: Extract Class. Identify distinct responsibilities and move them into their own classes/modules following the Single Responsibility Principle (SRP).

## 2. Long Parameter List
*   **Smell**: Functions with 4+ parameters are hard to read and use correctly.
*   **Fix**: Introduce Parameter Object. Group related parameters into a single object or struct (e.g., instead of `x, y, z, width, height`, pass a `Bounds` object).

## 3. Arrow Code (Deep Nesting)
*   **Smell**: Code that looks like an arrow `>` due to many nested `if/for/while` statements.
*   **Fix**: Guard Clauses. Return early when conditions fail instead of wrapping the happy path in a deep `if` block. Extract inner loops into their own functions.

## 4. Magic Numbers & Strings
*   **Smell**: Unexplained numbers or strings scattered through the code (e.g., `if (status == 4)`).
*   **Fix**: Replace with constants or Enums (e.g., `if (status == Status.SHIPPED)`).

## 5. Primitive Obsession
*   **Smell**: Using basic primitives to represent domain ideas (e.g., using a `string` for a ZIP code or a `float` for currency).
*   **Fix**: Replace Data Value with Object. Create a `ZipCode` or `Money` class that encapsulates the data and its validation logic.

## 6. Shotgun Surgery
*   **Smell**: Making a single logical change requires touching many different files/classes.
*   **Fix**: Move Function / Move Field. The code is highly coupled; bring the related behaviors together into a single module.
