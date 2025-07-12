function openFilter() {
  document.getElementById("filterPanel").style.display = "block";
}
function closeFilter() {
  document.getElementById("filterPanel").style.display = "none";
}
function deleteEmployee(id) {
  alert("Delete employee with ID: " + id);
}
function applyFilters() {
  alert("Filter applied");
}
function changePageSize() {
  const size = document.getElementById("pageSize").value;
  alert("Page size changed to: " + size);
}

document.getElementById("searchBar").addEventListener("input", function () {
  const value = this.value.toLowerCase();
  alert("Search for: " + value);
});
