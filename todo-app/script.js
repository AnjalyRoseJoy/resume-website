const input = document.getElementById("taskInput");
const addButton = document.getElementById("addTaskButton");
const taskList = document.getElementById("taskList");


addButton.addEventListener("click", function() {  
   const textTask = input.value.trim();
   if(textTask == ""){
      alert("you didn't set a task 🤥");
      return;
   }
   const li = document.createElement("li");
   const taskText = document.createElement("span");
   taskText.textContent = textTask; // Set the text content of the span to the task text
   const check = document.createElement("span");
   check.textContent = "✅";
   check.addEventListener("click", function() {
      taskText.classList.toggle("completed");
   });
   li.appendChild(check); // Append the span to the li element
   li.appendChild(taskText); // Append the text to the li element

   const delbtn = document.createElement("button");
   delbtn.textContent = "🗑️";
   delbtn.style.background = "none";
   delbtn.style.border = "none";
   delbtn.style.cursor = "pointer";
   delbtn.style.marginLeft = "auto";
   delbtn.addEventListener("click", function(e) {
      e.stopPropagation(); // Prevent the click event from bubbling up to the li element
      taskList.removeChild(li); // Remove the li element from the task list
   });
   li.appendChild(delbtn); // Append the delete button to the li element
   taskList.appendChild(li);
   input.value = ""; // Clear the input field after adding the task
});