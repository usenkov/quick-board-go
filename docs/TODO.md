# Kanban Board – Development Todo List

## 1. Setup

- [x] Initialize project with **Vite + React + TypeScript**
- [x] Install and configure **Tailwind CSS**
- [x] Install **dnd-kit** dependencies:
  - `@dnd-kit/core`
  - `@dnd-kit/sortable`
  - `@dnd-kit/modifiers`
- [x] Setup project file structure (`components/`, `hooks/`, `utils/`, etc.)
- [x] Create static Kanban layout with 3 hard-coded columns ("To Do", "In Progress", "Done")
- [x] Implement basic card components (static titles)
- [x] Add basic drag-and-drop functionality for cards between columns (no persistence yet)
- [x] Implement drag-and-drop sorting within a column

---

## 2. Set Up Supabase

- [x] Create Supabase project
- [x] Create `columns` and `cards` tables as per the data model
- [x] Set up Supabase client in the frontend
- [x] Implement API utilities for:
  - Fetching columns and cards
  - Creating/updating/deleting rows
- [x] Seed initial data (optional)

---

## 3. Basic Functionality

- [x] Load columns and cards from Supabase
- [x] Add ability to create a new card in any column
- [x] Allow drag-and-drop of cards across columns and update Supabase
- [x] Implement reordering of cards (and update `order` field in DB)

---

## 4. Column Management

- [x] Add new column functionality
- [x] Edit column title in-place
- [x] Delete a column (with confirmation and optional cascading delete of its cards)
- [x] Reorder columns with drag-and-drop and update `order` field in DB

---

## 5. Card Editing

- [x] Edit card title in-place
- [x] Delete card

---

## 6. UI/UX & Responsiveness

- [x] Style layout and components with Tailwind for a clean, modern look
- [x] Add visual feedback during drag-and-drop (e.g., drop zones, elevation)
- [x] Ensure mobile responsiveness
- [x] Handle loading, error, and empty states gracefully

---

## 7. Final Polish

- [x] Clean up and optimize code
- [x] Add utility hooks (e.g., useSortableList, useColumns)
- [x] Confirm performance and usability
- [ ] Deploy project (e.g., Vercel or Netlify)