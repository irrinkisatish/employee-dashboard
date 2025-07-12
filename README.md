📋 Employee Directory – Frontend UI
A modern, responsive, and interactive Employee Directory web application built using HTML, CSS, Vanilla JavaScript, and Freemarker templates. This project was built as part of a frontend UI assignment focusing on clean design, modular code, and great user experience.

🚀 Setup & Run Instructions
✅ Prerequisites
Java JDK 8+

Apache Maven

Any modern browser (Chrome, Firefox, Edge)

IDE/Text Editor (VS Code, IntelliJ, etc.)

🔧 Steps to Run Locally

# Step 1: Clone the Repository
git clone https://github.com/your-username/employee-directory-ui.git
cd employee-directory-ui

# Step 2: Build the Project
mvn clean compile

# Step 3: Run the Project
mvn exec:java


✨ Features
📋 Dashboard View: Shows employee cards with ID, name, email, department, and role.

✏️ Edit/Add Employee: Form to add or update employee details with client-side validation.

🔍 Search/Filter/Sort:

Search by name or email

Filter by department/role

Sort by name/department

📱 Responsive Design: Fully mobile, tablet, and desktop friendly.

♻️ Pagination: View 10, 25, 50, or 100 items per page.

🎨 Modern UI: Clean card layout with hover effects and transitions.

💡 No Backend: All data is handled locally using JavaScript arrays and Freemarker mock data.

📸 Screenshots (Optional)
Include screenshots/ folder with images like dashboard.png, form.png, etc.



💭 Reflection
🧩 Challenges Faced
Integrating Freemarker into a static-feeling frontend project without backend data.

Ensuring clean responsiveness across screen sizes.

Managing in-memory employee data without actual server-side logic.

🛠️ What I'd Improve With More Time
Add localStorage or IndexedDB to persist employee data across refreshes.

Add unit tests for validation logic and DOM updates.

Improve accessibility (ARIA roles, better focus handling).

Integrate dark mode toggle or themes.

Polish animations and transitions further using @keyframes.

📌 License
This project is open-source and free to use under the MIT License.
