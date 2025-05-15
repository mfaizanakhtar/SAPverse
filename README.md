# Galactic Adventure

This repository contains a SAP CAP-based backend and a Fiori Elements V4 frontend for the **Galactic Adventure** application.

## Project Structure

* **galactic-adventure-backend/**: CAP service definitions and implementation
* **galactic-adventure-frontend/**: Fiori Elements V4 application

## Prerequisites

* Node.js (>=14.x)
* npm (>=6.x)
* VS Code (optional) with SAP Fiori Tools extensions for guided UI5 development

## Running the Backend

1. Navigate to the backend folder:

   ```bash
   cd galactic-adventure-backend
   ```
2. Install dependencies (if not already installed):

   ```bash
   npm install
   ```
3. Start the CAP service:

   ```bash
   npm run start
   ```

The service will be available at `http://localhost:4004/odata/v4/space/`.

## Running the Frontend

1. Open a new terminal and navigate to the frontend folder:

   ```bash
   cd galactic-adventure-frontend
   ```
2. Install dependencies (if not already installed):

   ```bash
   npm install
   ```
3. Start the UI:

   ```bash
   npm run start-app
   ```

The application will open in your default browser at `http://localhost:8080/` (or as configured).

## Demo Users

The application uses Basic Auth for local development. Use incognito/private browsing mode to switch between users.

| Username | Password | Roles | Origin Planet   |
| -------- | -------- | ----- | --------------- |
| user     | user     | User  | Mars            |
| admin    | admin    | Admin | Earth (and all) |

* **user**: Can only see Spacefarers whose `originPlanet` matches their attribute (e.g., Mars).
* **admin**: Can see all Spacefarers across all planets.

## Switching Users

* Open the UI in **Incognito/Private** mode.
* When prompted for credentials, enter either `user/user` or `admin/admin`.
* To switch user, close all incognito windows and reopen the application.

## Notes

* Backend drafts are enabled, allowing draft edits on entities.
* UI annotations are configured via CDS and `manifest.json`.

---

Happy star-traveling!
