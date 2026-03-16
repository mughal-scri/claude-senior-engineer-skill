# Technology & Framework Decision Matrix

Senior developers do not choose technologies based on hype; they evaluate trade-offs based on project constraints.

## 1. The Decision Process
1.  **Define constraints**: What are the hard requirements? (e.g., must run in an embedded system, must support $10,000$ concurrent users, must launch in 2 weeks).
2.  **Identify options**: List 3-4 viable technologies that meet the constraints.
3.  **Evaluate across 6 dimensions**:
    *   **Ecosystem & Community**: Is it mature? Are there readily available libraries for common tasks (auth, database drivers)? Is it actively maintained?
    *   **Learning Curve**: Does the existing team know it? How hard is it to hire for this skill?
    *   **Performance**: Does it meet the load/latency requirements without excessive tuning?
    *   **Maintainability**: Does the language/framework enforce good practices (e.g., strong typing, modularity)?
    *   **Operational Complexity**: How hard is it to deploy, monitor, and scale? (e.g., a simple monolith vs. a distributed microservices architecture).
    *   **Cost**: Licensing, hosting, and developer time.

## 2. Default Assumptions (Unless proven otherwise)
*   **Monolith first**: Start with a well-structured monolith. Do not build microservices until organization size or distinct scaling requirements demand it.
*   **Boring is Better**: Prefer battle-tested technologies (e.g., PostgreSQL, Python/Go/Java, React) over bleeding-edge frameworks unless the latter offers a massive, quantifiable advantage.
*   **Types save time**: Prefer statically/strongly typed languages (TypeScript, Go, Rust) for large codebases to catch errors at compile time rather than runtime.

## 3. Creating an Architecture Decision Record (ADR)
Once a decision is made, document it simply:
*   **Title**: (e.g., Use MongoDB instead of PostgreSQL for User Profiles)
*   **Status**: Accepted/Rejected/Deprecated
*   **Context**: What is the problem we are solving?
*   **Decision**: What did we choose?
*   **Consequences**: What is the impact? (e.g., We sacrifice ACID transactions across collections for flexible schema design).
