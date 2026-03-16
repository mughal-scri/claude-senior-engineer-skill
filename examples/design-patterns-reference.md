# Design Patterns Quick Reference

As a Senior Developer, recognize when a classic GoF pattern fits the problem space elegantly.

## Creational Patterns
How you instantiate objects.

*   **Singleton**: Use sparingly. Good for global state managers (like a logger or database connection pool). Often considered an anti-pattern if misused for shared mutable state.
*   **Factory Method**: When a class can't anticipate the class of objects it must create. Let subclasses decide which class to instantiate.
*   **Builder**: Use when creating an object requires a lot of parameters or steps. Replaces constructors with long parameter lists.

## Structural Patterns
How you compose classes and objects to form larger structures.

*   **Adapter**: When you need an existing class to work with others without modifying its source code (e.g., wrapping a third-party API).
*   **Decorator**: Add responsibilities to objects dynamically. More flexible than subclassing.
*   **Facade**: Provide a unified, simple interface to a complex subsystem. Excellent for hiding legacy code or complex API interactions.

## Behavioral Patterns
How objects communicate and distribute responsibilities.

*   **Observer (Pub/Sub)**: Define a one-to-many dependency so that when one object changes state, all its dependents are notified. Excellent for UI state and event-driven architectures.
*   **Strategy**: Define a family of algorithms, encapsulate each one, and make them interchangeable at runtime (e.g., different sorting algorithms, different payment gateways).
*   **Command**: Encapsulate a request as an object, allowing parameterization of clients with queues, requests, and operations. Perfect for implementing Undo/Redo functionality.

---
*Note: Always prefer Modern Architectural Patterns (e.g., React Hooks, functional composition) over strict OO patterns when working in functional or functional-adjacent paradigms.*
