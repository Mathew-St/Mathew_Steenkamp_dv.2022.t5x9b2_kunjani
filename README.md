# Kunjani-eCommerce

## Repository Structure

- `kunjani_htdocs_sql/`
  - `kunjaniDB.sql` – Database dump exported from InfinityFree
  - `kunjanihtdocs/`
    - `htdocs/`
      - `index.php` – Landing page
      - `C2CeCommerceWebsite/`
        - `*.php` – All backend logic files
        - `*.css`, `*.js` – Stylesheets and JavaScript files
        - `uploads/` – Uploaded product images
        - `images/` – Static image assets

## How to Set Up the Website
1. Clone or Download the Repository
2. Import the Database
--> import the kunjaniDB.sql file located in the kunjani_htdocs_sql/ folder
Important: The .sql file must be updated to the database name to match the name you've chosen locally.
3. Configure the Database Connection
--> Open dbConnection.php (located in C2CeCommerceWebsite/)
--> Update fields with your local database credentials
4. Serve the Project
Place the kunjanihtdocs/htdocs/ folder into your local web server directory
5. Edit http://localhost/index.php accordingly
--> The site should load with full functionality

## License  
This project is licensed under the **GNU Affero General Public License v3.0 (AGPL-3.0)**.  
**Additional restrictions apply:**  
- Commercial use is **prohibited without explicit written permission**.  
- Redistribution in **closed-source projects is not allowed**, even if modified.  
- Contact the author for licensing exceptions. 
