BEGIN;

ALTER TABLE "user" ADD COLUMN "role" text DEFAULT 'member';

COMMIT; 
