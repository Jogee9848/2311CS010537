-- Create the main notifications master table
CREATE TABLE IF NOT EXISTS notifications (
    notification_id VARCHAR(36) PRIMARY KEY, -- Stores a standard 36-character string UUID
    type ENUM('Event', 'Result', 'Placement') NOT NULL,
    message TEXT NOT NULL,
    is_read BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Seed initial evaluation dataset matching requirement specs
INSERT INTO notifications (notification_id, type, message, is_read, created_at) VALUES
('d146095a-0d86-4a34-9e69-3900a14576bc', 'Result', 'Mid-sem results have been published.', FALSE, '2026-04-22 17:51:30'),
('b283218f-ea5a-4b7c-93a9-1f2f240d64b0', 'Placement', 'CSX Corporation hiring drive open for registration.', TRUE, '2026-04-22 17:51:18'),
('81589ada-0ad3-4f77-9554-f52fb558e09d', 'Event', 'Annual campus cultural farewell festival scheduled.', FALSE, '2026-04-22 17:51:06');