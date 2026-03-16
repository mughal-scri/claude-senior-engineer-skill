# Complexity & Estimation Guide

Senior developers provide realistic, reliable estimates rather than overly optimistic guesses. This guide outlines how to size tasks effectively.

## 1. Story Point Baseline (Fibonacci Sequence)
Use story points ($1, 2, 3, 5, 8, 13$) to estimate complexity, *not* time.

*   **1 Point**: Trivial change. Typo fix, single CSS tweak. (< 1 hour)
*   **2 Points**: Small, well-understood task. Simple CRUD endpoint, basic UI component. (Half a day)
*   **3 Points**: Moderate complexity. Requires touching multiple components or involves simple business logic. (1-2 days)
*   **5 Points**: Complex task. Significant business logic, data migrations, or third-party integrations. (3-5 days)
*   **8 Points**: Very complex. High risk or unknown architectural changes. (1-2 weeks). **Recommendation**: Break this down into smaller tasks.
*   **13+ Points**: Epic. Too large to estimate accurately. **Mandatory**: Break down immediately.

## 2. Estimation Modifiers
When translating complexity into time estimates for stakeholders, account for these factors:
*   **The "Unknown Unknowns" Buffer**: Add 20-30% buffer to estimates involving legacy code or undocumented APIs.
*   **Testing Tax**: Factor in the time required to write unit/integration tests (usually 20-50% of the coding time).
*   **Review/QA Cycle**: Code isn't done when you finish typing; it's done when it's merged and tested. Include PR review time in your mental model.

## 3. Hofstadter's Law
> "It always takes longer than you expect, even when you take into account Hofstadter's Law."

Never give an immediate estimate for a complex problem during a meeting. Say: *"Let me review the architecture and get back to you with a reliable estimate this afternoon."*
