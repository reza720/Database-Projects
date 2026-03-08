# Prison Management
- A system designed to store and manage data related to prison operations. It keeps records of prisoners, staff members, buildings, and cells. The system also tracks prisoner visits and release information.

## Tech Stack: 
- MySQL

## Data Model: 
- **Entities & Attributes (Constraints, Indexes):**
  
  - **Buildings:**
    - name (pk, digits + Alpha only) 
    - number_of_floors (not null, positive)
    - number_of_cells (not null, positive)
    - prisoners_capacity (not null, derived from number_of_cells * 4)

  - **Cells:**

  - **Staffs:**

  - **Prisoners:**
    - id (pk, auto)
    - fullName (not null, letters and space only, indexed)
    - 



  - **Visits:**