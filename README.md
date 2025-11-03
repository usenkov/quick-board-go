# Project "Quick Board Go"

A simple Kanban board dashboard built with React, Vite, and Supabase.

## 🚀 Tech Stack

* **Framework:** React (with Vite + TypeScript)
* **Runtime / Package Manager:** Bun
* **Backend:** Supabase (PostgreSQL Database)
* **Styling:** Tailwind CSS
* **Drag-and-Drop:** @dnd-kit/core

---

## 🏁 Getting Started

Before running the project, you must set up the connection to Supabase and install dependencies.

### 1. Configure `.env.local`

This project requires a connection to your Supabase instance.

1.  Create a file named `.env.local` in the project's root folder.
2.  Copy the following text into it and paste your keys from Supabase:

VITE_SUPABASE_URL="YOUR_PROJECT_URL_FROM_SUPABASE" 
VITE_SUPABASE_ANON_KEY="YOUR_ANON_PUBLIC_KEY_FROM_SUPABASE"

### 2. Set Up the Supabase Database

This project requires the `columns` and `cards` tables to exist in your database.

1.  Go to your Supabase project on `app.supabase.com`.
2.  Navigate to the **SQL Editor** section.
3.  Open the `supabase/schema.sql` file in your project, copy **all** of its content.
4.  Paste the copied SQL code into the Supabase SQL Editor and click **"RUN"**.

This will create all the necessary tables and populate them with starting data.

### 3. Install and Run (using Bun)

1.  **Install dependencies:**
    (Ensure you have Bun installed)
    ```bash
    bun install
    ```

2.  **Run the development server:**
    ```bash
    bun run dev
    ```

The application will be available at `http://localhost:8080/`.

---

## 📜 Available Scripts

* `bun run dev`: Runs the app in development mode.
* `bun run build`: Builds the app for production (into the `dist` folder).
* `bun run preview`: Runs the locally built production build.