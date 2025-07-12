<#assign employees = [
  {"id": 1, "firstName": "John", "lastName": "Doe", "email": "john.doe@example.com", "department": "HR", "role": "Manager"},
  {"id": 2, "firstName": "Jane", "lastName": "Smith", "email": "jane.smith@example.com", "department": "Engineering", "role": "Developer"},
  {"id": 3, "firstName": "Alice", "lastName": "Johnson", "email": "alice.johnson@example.com", "department": "Sales", "role": "Executive"}
]>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Employee Directory</title>
  <link rel="stylesheet" href="static/css/style.css">
</head>
<body>
  <div class="container">
    <header>
      <h1>Employee Directory</h1>
      <div class="actions">
        <input type="text" id="searchBar" placeholder="Search by name or email...">
        <button onclick="openFilter()">Filter</button>
        <a href="form.html" class="btn-primary">Add Employee</a>
      </div>
    </header>

    <div class="filter-panel" id="filterPanel">
      <label>First Name: <input type="text" id="filterFirstName"></label>
      <label>Department:
        <select id="filterDepartment">
          <option value="">All</option>
          <option value="HR">HR</option>
          <option value="Engineering">Engineering</option>
          <option value="Sales">Sales</option>
        </select>
      </label>
      <label>Role:
        <select id="filterRole">
          <option value="">All</option>
          <option value="Manager">Manager</option>
          <option value="Developer">Developer</option>
          <option value="Executive">Executive</option>
        </select>
      </label>
      <button onclick="applyFilters()">Apply</button>
      <button onclick="closeFilter()">Close</button>
    </div>

    <div class="employee-list" id="employeeList">
      <#list employees as emp>
        <div class="employee-card">
          <p><strong>ID:</strong> ${emp.id}</p>
          <p><strong>Name:</strong> ${emp.firstName} ${emp.lastName}</p>
          <p><strong>Email:</strong> ${emp.email}</p>
          <p><strong>Department:</strong> ${emp.department}</p>
          <p><strong>Role:</strong> ${emp.role}</p>
          <div class="card-actions">
            <a href="form.html?id=${emp.id}" class="edit">Edit</a>
            <button onclick="deleteEmployee(${emp.id})" class="delete">Delete</button>
          </div>
        </div>
      </#list>
    </div>

    <footer>
      <label for="pageSize">Page Size:</label>
      <select id="pageSize" onchange="changePageSize()">
        <option>10</option>
        <option>25</option>
        <option>50</option>
        <option>100</option>
      </select>
    </footer>
  </div>
  <script src="/static/js/app.js"></script>
</body>
</html>