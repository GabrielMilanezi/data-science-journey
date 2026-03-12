# Database Design and Normalization Examples

## Database Design Principles
1. **Entity-Relationship Model (ER Model)**: A visual representation of entities and their relationships. It helps to design databases at a high level.
2. **Normalization**: The process of organizing data to minimize redundancy. The most common normal forms are:
   - **1NF (First Normal Form)**: Ensures that each column contains atomic (indivisible) values, and each record is unique.
   - **2NF (Second Normal Form)**: Builds on 1NF by ensuring that all non-key attributes are fully functional dependent on the primary key.
   - **3NF (Third Normal Form)**: Ensures that all attributes are functionally dependent only on the primary key.

## Examples of Normalization

### 1NF Example
**Customer Table Before Normalization**:
| CustomerID | CustomerName | PhoneNumbers               |
|-------------|---------------|----------------------------|
| 1           | John Doe     | 123-4567, 234-5678        |
| 2           | Jane Smith   | 345-6789                   |

**Customer Table After Normalization (1NF)**:
| CustomerID | CustomerName | PhoneNumber |
|-------------|---------------|--------------|
| 1           | John Doe     | 123-4567     |
| 1           | John Doe     | 234-5678     |
| 2           | Jane Smith   | 345-6789     |

### 2NF Example
**Order Table Before Normalization**:
| OrderID | ProductID | CustomerID | ProductName |
|----------|-----------|-------------|-------------|
| 1        | 101       | 1           | Widget A    |
| 1        | 102       | 1           | Widget B    |
| 2        | 103       | 2           | Widget C    |

**Order Table After Normalization (2NF)**:
**Orders**:
| OrderID | CustomerID |
|----------|-------------|
| 1        | 1           |
| 2        | 2           |

**Products**:
| ProductID | ProductName |
|------------|-------------|
| 101        | Widget A    |
| 102        | Widget B    |
| 103        | Widget C    |

### 3NF Example
**Employee Table Before Normalization**:
| EmployeeID | EmployeeName | Department   | Manager    |
|-------------|-----------------|--------------|------------|
| 1           | Alice          | HR           | Bob        |
| 2           | Charlie        | IT           | Dave       |

**Employee Table After Normalization (3NF)**:
**Employees**:
| EmployeeID | EmployeeName | DepartmentID |
|-------------|-----------------|--------------|
| 1           | Alice          | 1            |
| 2           | Charlie        | 2            |

**Departments**:
| DepartmentID | DepartmentName | Manager |
|----------------|------------------|---------|
| 1              | HR               | Bob     |
| 2              | IT               | Dave    |