-- Migration: Add missing columns to products and orders tables
-- Safe to run multiple times (uses try/catch pattern via separate statements)

-- Products table: add missing columns
ALTER TABLE products ADD COLUMN image_url TEXT;
ALTER TABLE products ADD COLUMN is_customizable INTEGER NOT NULL DEFAULT 0;
ALTER TABLE products ADD COLUMN cover_image_url TEXT;
ALTER TABLE products ADD COLUMN gallery_images_json TEXT;
ALTER TABLE products ADD COLUMN description TEXT;
ALTER TABLE products ADD COLUMN customization_fee INTEGER NOT NULL DEFAULT 20;

-- Orders table: add missing columns
ALTER TABLE orders ADD COLUMN is_customized INTEGER NOT NULL DEFAULT 0;
ALTER TABLE orders ADD COLUMN customization_fee INTEGER;
ALTER TABLE orders ADD COLUMN invoice_number TEXT;
