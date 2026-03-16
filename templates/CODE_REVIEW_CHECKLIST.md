# Code Review Checklist

## 1. Correctness & Functionality
- [ ] Does the code accomplish the intended goal?
- [ ] Are all edge cases and error states handled gracefully?
- [ ] Are nulls/undefined values checked before access?

## 2. Architecture & Design
- [ ] Does the code follow SOLID principles?
- [ ] Is it DRY (Don't Repeat Yourself)?
- [ ] Are dependencies injected where appropriate?
- [ ] Does it avoid premature optimization?

## 3. Security
- [ ] Is all user input sanitized/escaped before use?
- [ ] Are parameterized queries used for all database access?
- [ ] Are secrets/credentials hardcoded? (Should be in env vars).
- [ ] Is authorization checked for sensitive operations?

## 4. Performance
- [ ] Are there obvious performance bottlenecks (e.g., nested loops N^2)?
- [ ] Are database queries optimized (avoiding N+1)?
- [ ] Are resources (files, network connections) properly closed?

## 5. Readability & Maintainability
- [ ] Are variables and functions named expressively?
- [ ] Are complex blocks of logic broken down into smaller, pure functions?
- [ ] Is the code self-documenting? Are comments used only for *why*, not *what*?
- [ ] Are magic numbers/strings moved to constants?

## 6. Testing
- [ ] Are new unit/integration tests included?
- [ ] Do the tests actually break if the implementation is wrong?
- [ ] Is the code easily testable (e.g., mockable dependencies)?
