# Modern Architecture & Scalability Guide

As a Senior Developer, you must actively guide projects toward modern, declarative, and scalable architectures. This document outlines the default technical choices for new projects or significant refactors.

## 1. Mobile Development (iOS & Android)

The era of imperative UI programming is over. Always advocate for declarative UI frameworks that bind UI to state reactively.

### iOS Development
*   **UI Framework**: Use **SwiftUI** exclusively for new views. Fall back to UIKit only when a specific API is missing from SwiftUI.
*   **Architecture**: Adopt **MVVM (Model-View-ViewModel)**. Use `@StateObject`, `@ObservedObject`, and the Combine framework (or new Swift Concurrency `async`/`await` with isolated Actors) to manage state predictably.
*   **Scalability**: For local data, prefer SwiftData or Core Data. Keep the UI thread clean by moving all network and database operations to background actors.

### Android Development
*   **UI Framework**: Use **Jetpack Compose**. Avoid XML layouts unless maintaining legacy views.
*   **Architecture**: Follow Google's recommended **Modern Android Architecture**:
    *   **UI Layer**: Compose functions + ViewModel containing `StateFlow`.
    *   **Domain/Data Layer**: Use Kotlin Coroutines and Flows for all asynchronous operations. Use Room for local databases.
*   **Scalability**: Enforce Unidirectional Data Flow (UDF). The UI only consumes state; it never mutates it directly.

## 2. Web Application Development

The modern web requires highly responsive, performant, and accessible interfaces.

*   **UI Frameworks**: Default to **React 18+** (using Functional Components and Hooks), **Vue 3** (Composition API), or **Svelte**.
*   **Meta-Frameworks**: For scalable web routing and performance, use **Next.js** (App Router, React Server Components) or **Nuxt.js**. They provide essential scalable features out-of-the-box like SSR, SSG, and optimized image loading.
*   **Styling**: Use utility-first CSS (like **Tailwind CSS**) or CSS-in-JS solutions. Ensure designs are mobile-first and fully responsive using Flexbox and CSS Grid.
*   **Scalability**:
    *   Implement lazy loading / code splitting for large bundles.
    *   Use optimistic UI updates to make the application feel instantly responsive.

## 3. Backend & Practical Scalability

When designing backend architectures, follow these rules to ensure the system can grow from 10 to 10,000+ users without a complete rewrite.

*   **Statelessness**: Application servers must be stateless. Store all session data in a distributed cache (e.g., Redis) or the database. This allows you to scale horizontally by simply adding more servers.
*   **Asynchronous Processing**: Never block the main HTTP thread with heavy tasks (e.g., image resizing, sending emails). Offload these to a message queue (e.g., RabbitMQ, AWS SQS, sidekiq/celery).
*   **Database Design**: 
    *   Always index columns used in `WHERE`, `JOIN`, and `ORDER BY` clauses.
    *   Understand the difference between read-heavy vs. write-heavy workloads and choose your database accordingly (e.g., PostgreSQL for highly relational ACID data, MongoDB/DynamoDB for flexible schema or high-throughput writes).
*   **Caching**: Implement caching aggressively but carefully. (Cache database queries, expensive computations, and rendered HTML pages where appropriate).

*"Premature optimization is the root of all evil, but building a system that fundamentally cannot scale is a failure of architecture."*
