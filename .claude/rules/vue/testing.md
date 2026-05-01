---
paths:
  - "frontend/**/*.{js,ts,vue}"
---
# Vue Testing

> This file extends [common/testing.md](../common/testing.md) with Vue 3 specific content.

## Framework

Use **Vitest** as the test runner, configured via `vite.config.js`.

| Package | Purpose |
|---------|---------|
| `vitest` | Test runner + assertions |
| `@vue/test-utils` | Mount and interact with Vue components |
| `@pinia/testing` | Isolate Pinia stores per test |
| `jsdom` | Browser-like DOM environment |

## Running Tests

```bash
cd frontend

# Run once
npm test

# Watch mode
npm run test:watch

# With coverage
npm run test:coverage
```

## Test Organization

Tests live in `frontend/src/__tests__/`, mirroring the `src/` structure:

```
src/__tests__/
  setup.js              — Global test setup (stubs, mocks)
  views/                — View component tests
  components/           — Reusable component tests
  stores/               — Pinia store tests
  composables/          — Composable tests
  api/                  — API client tests
  router/               — Router guard tests
  utils/                — Utility function tests
```

## Component Tests

```js
import { mount } from '@vue/test-utils'
import { createTestingPinia } from '@pinia/testing'
import MyComponent from '@/components/MyComponent.vue'

it('renders correctly', () => {
  const wrapper = mount(MyComponent, {
    global: {
      plugins: [createTestingPinia()]
    }
  })
  expect(wrapper.text()).toContain('Expected text')
})
```

## Store Tests

```js
import { setActivePinia, createPinia } from 'pinia'
import { useMedicinesStore } from '@/stores/medicines'

beforeEach(() => {
  setActivePinia(createPinia())
})

it('fetches medicines', async () => {
  const store = useMedicinesStore()
  // test store actions/getters
})
```

## Global Setup (`setup.js`)

The `frontend/src/__tests__/setup.js` file runs before all tests and provides:
- Global component stubs (router-link, router-view)
- Axios mock setup
- Any other global test configuration

## Reference

See skill: `tdd-workflow` for the full TDD cycle with Vitest.
