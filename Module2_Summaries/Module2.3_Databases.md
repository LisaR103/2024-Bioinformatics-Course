# Relational Databases

## Some important terms

Datbases are collectinos of two-dimensional *tables*, also called *entities* or *classes*

They contain:

- Columns, also called *attributes*
- Rows, also called *tuples*, *records* or *instances* (no relation to tuple in Python)

To interact with a database we use a Relational Database Management System (RDBMS). This contains:
- a collection of objects or relations
- set of operations to act on the relations
- data integrity for accuracy and consistency

Ideally a database conforms to Codd's 12 rules. However, this is in practise almost impossible

https://en.wikipedia.org/wiki/Codd%27s_12_rules

## Problems that Databases have to solve
- Redundancy: to have multiple entries containing the same information in our data collection
- Inconsistency: informations referring to a specific topic contradictseach other
- Merging Data
- Expanding the Collection
- Multiple Users: e.g. generating new entries in a data collection simultaneously
- Lost Update: Losing data when only the last changes are saved
- Loss of data: If data is lost, the correlations in the data system often can't be reproduced
- Breach of Integrity: A new entry has to fulfill all criteria defined by the database
- Safety concerns: only granting access where necessary

## Tables

Tables, somtimes also called classes, contain:

- Columns, also called *attributes*
  - Describe the dataset
  - Can only contain *one value per row*
- Rows
  - Each row corresponds to one dataset of this table
  - Each row has to be uniquely identified fom other rows

Tables can be described through Class diagrams
- Name of table is writen above a rectangular box
- the column names are written inside the box

### Primary Keys and Foreign Keys

Each row in a table needs to be uniquely identified. This is done through one or several **primary key (PK)**
- column or set of columns uniquely identifying each row
  - if the primary key is formed by several columns it is a *composite* primary key
- cannot contain empty values or duplicates
- value for the primary key should ideally never change and is best auto generated

A **foreign key (FK)** is a column or combination of columns in a table that refers to the primary key of another table
- A foreign key must match an existing primary key value or be empty
- A foreign key can be (part of) the primary key, but then it can't be empty
- The columnd containing the foreign key must be formatted exactly the same as the primary key it points to (e.g. containing strings, numbers etc.)

## Visualizing Databases

Databases can be easily visualized on the following website:

[https://erdplus.com/standalone]

### ER diagram

- Tabels are Rectangles
- Columns are Circles
  - if the columns are underlined, they are the Primary Key(s)
- Diamonds are the relations between tables
- Connection line with one line and a bar: one-end relationship
- Connection line with three lines: many-end relationship

### Relational Scheme

- Class diagramm representing the table
  - Name of table is writen above a rectangular box
  - inside the box are written the column names
  - Primary Key(s) in bold and underlined 
- Foreign keys are linked to their Primary Key location in their "home table" through arrows. This is usually a one-to-many relationship
- In a relational scheme we see a hierachy: the highest point in the database hierachy are tables that contain only primary keys and no foreign keys. We then go down to tables only containing foreign keys pointing to the highest level and so on down

## Designing a Database

There are four steps to designing a database:
1. Gather information
2. Design the tables
3. Modell the relations between the tables
4. Refine the database

### Gather information

The most important step is to gather information about the requirements and objectives of the database!! Possible questions to ask:
- What do we need to save?
- What relations are of interest?
- What kind of diagrams, tables are needed?
- Are there any external applications that need to be included?
- Is there example data?

### Design the tables

Gather the needed data into seperate tables
- What topics are there? (= how many tables)
- Which columns do I need in each table?
- After thinking about the needed columns pick a primary key
- Only if no column(s) fulfils the criteria of a primary key add an extra column (or if the composite primary key would consist of too many columns)

### Modell the Relations between the tables

There are three (important for us) types of relations that exist between tables:
- one-to-many
- many-to-many
- one-to-one

#### one-to-many

> Example:
> A teacher may teach 0 or more classes, but a class (one lesson at one time) is only taught by one teacher.

one-to-many relationship *cannot* be represented in a single table:
- if we have a table called `teacher`, we would need several columns for the classes (`class1`,`class2`, etc.)
  - we don't know how many columns we might need at max
  - we have a lot of emtpy fields
    -> not a good solution
- if we have a table called `class` the information about `teacher` (name, room, email etc.) is repeated many times
  - there is a lot of redundant data -> redundancy has to be minimized as much as possible

> Solution: two tables!
> - a table `teacher` with `teacherID` as primary key (parent table/one-end)
> - a table `classes` with `classID` as primary key referencing `teacherID` as foreign key (child table/many-end)

The primary key of the parent table (where it is unique = one) becomes the foreign key in the child table (where it can occur multiple times = many)

#### many-to-many

> Example:
> In a sales database a customers order may contain many products and a product may occur in many orders

We start with two tables

> - Products, containing e.g. ProductID, ProductName, Description and QuantityInStock
> - Orders, containing e.g. OrderID, CustomerID, DateOrdered, DateRequired and Status (but not the actual products!)

We then make a third table connecting the two main tables: a **junction table** or **relationship table**

> - OrderDetails, containing ProductID, OrderID and e.g. Quantity
> In this instance the two foreign keys (ProductID and OrderID) form a composite primary key

The many-to-manyrelationship is thus established by two one-to-many relationships to the junction table

### Refine the database

# Exercises

## Exercise 1 - Design Tables

### A student at a university
- Name
- First Name
- Date of Birth
- Road
- Number
- Postal Code
- City
- Email Adresse
- Faculty
- Degree
- Thesis advisor
- Grade average

### A faculty member at a university
- Name
- First Name
- Title
- Room
- Date of Birth
- Road
- Number
- Postal Code
- City
- Email Adresse
- Telefon Work
- Telefon Private
- Faculty
- Chair/Working group
- Vacation days left

### A work of art displayed in a gallery or museum
- Title
- Description
- Artist
- Genre
- Date of Creation
- Place of Creation
- Value
- Insurance value
- Room it is placed

### An automobile registered with the Motor Vehicle Department
- Manufacturer
- Modell
- Color
- Registration Number
- License Plate
- Date of first registration
- Date of last registration
- Last Name Owner
- First Name Owner
- Adress Owner
- Type of engine

### A pizza that is on the menu in a restaurant
- Name
- Size
- Price
- Sauce
- Topping1
- Topping2

### Household furniture
- Name
- Main Function
- Room
- Weight
- Height
- Depth
- Width
- Color
- Material
- Age
- Designer


## Exercise 2 - Table design

Design tables for the following topics:
- Cell cultures
- Laboratory animals
- Isolation experiments
- Western Blot Results
- Protein concentration measurements
Don’t forget to include a primary key for each table

### Cell culture

- **Cell_ID**
- Cellline
- Subclone
- Medium
- Flask_type
- Growth_type (Adherent/Semi-adherent/Suspension)
- Split_ratio
- Dissociation_method
- Split_Frequency
- MediumChange_Frequency
- Max_Passages
- Contamination_Status
- No_frozen_vials
- Biosafety_Level

### Laboratory animals

- **AnimalID**
- Organism
- Sex
- Date_Birth
- Age (not a good idea, because we don't calculate in our table!!)
- ExperimentID (FK)
- Health_status
- Biosafety_Level
- Cage_number
- Marking
- Handler
- PI
- Veterinarian

### Isolation Experiments

- **SampleID**
- ExperimentID (FK)
- OriginMaterial (Cells/tissue) (FK)
- TreatmentMaterial (FK)
- IsolationDate
- Experimentor
- IsolationMethod
- QualityOK

### Western Blot Result

- **BandID**
- Protein
- ProteinWeight.kDa
- RawDensity
- DensitometryMethod
- PrimAntibody (FK)
- SecAntibody (FK)
- OriginMaterial (FK)
- TreatmentMaterial (FK)
- ExperimentID (FK)
- DevelopDate
- DevelopMethod

### Protein Concentration Measurements

- **SampleID** (FK)
- Concentration
- MeasurementDate
- MeasurementMethod
- Experimentor (FK)
- SampleDilution
- RawValue

## Exercise 3 - One-to-Many

Create a relational scheme for each of the relations described below:
1. Organisms and Kingdoms of Life
2. Protein sequences and known Protein structures
3. Genes and protein sequences
4. Chromosomes and Genes

ER-diagram:
![One-to-Many](https://github.com/LisaR103/2024-Bioinformatics-Course/blob/main/Module2_Summaries/Module2_Exercises/Module2.3_Exercise3_ERdiagram_V1.png)

Relational Scheme:
![One-to-Many2](https://github.com/LisaR103/2024-Bioinformatics-Course/blob/main/Module2_Summaries/Module2_Exercises/Module2.3_Exercise3_RelationalDiagram_V2.png)

## Exercise 4 - Many-to-Many

Create a Relational scheme for each of the three databases described below:
1. A database that collects information about proteins, organic cofactors (e.g. ATP) and inorganic cofactors (e.g. Ca ions)
2. A database that collects information about proteins, organisms and the kingdoms of life
3. A database that collects information about cell lines, chemicals used in experiments and the observation of these experiments

# End of Script