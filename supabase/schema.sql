-- Kanban Board Database Schema
-- Create tables for columns and cards

-- Columns table
CREATE TABLE IF NOT EXISTS columns (
    id TEXT PRIMARY KEY,  -- <-- FIX: Changed from UUID to TEXT
    title TEXT NOT NULL,
    "order" INTEGER NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Cards table (tasks in frontend)
CREATE TABLE IF NOT EXISTS cards (
    id TEXT PRIMARY KEY,  -- <-- FIX: Changed from UUID to TEXT
    column_id TEXT NOT NULL REFERENCES columns(id) ON DELETE CASCADE, -- <-- FIX: Changed from UUID to TEXT
    title TEXT NOT NULL,
    "order" INTEGER NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create indexes for better performance
CREATE INDEX IF NOT EXISTS idx_columns_order ON columns("order");
CREATE INDEX IF NOT EXISTS idx_cards_column_id ON cards(column_id);
CREATE INDEX IF NOT EXISTS idx_cards_order ON cards("order");

-- Insert default columns
INSERT INTO columns (id, title, "order") VALUES 
    ('todo', 'To Do', 0),
    ('in-progress', 'In Progress', 1),
    ('done', 'Done', 2)
ON CONFLICT (id) DO NOTHING;

-- Insert sample cards for demonstration
INSERT INTO cards (id, column_id, title, "order") VALUES 
    -- To Do column cards
    ('task-1', 'todo', 'Research user requirements', 0),
    ('task-2', 'todo', 'Create wireframes', 1),
    ('task-3', 'todo', 'Update documentation', 2),
    
    -- In Progress column cards
    ('task-4', 'in-progress', 'Implement authentication flow', 0),
    ('task-5', 'in-progress', 'Design database schema', 1),
    
    -- Done column cards
    ('task-6', 'done', 'Set up project repository', 0),
    ('task-7', 'done', 'Configure CI/CD pipeline', 1),
    ('task-8', 'done', 'Install dependencies', 2)
ON CONFLICT (id) DO NOTHING;
