user = if User.count.zero?
  User.create(email_address: "admin@bananacoding.com", password: "password",)
else
  User.first
end

[
    "Complete the project report",
    "Finish the book chapter",
    "Write a blog post",
    "Attend the team meeting",
    "Review the code for bugs",
    "Send out weekly newsletter",
    "Prepare a presentation for the client",
    "Organize the workspace",
    "Respond to emails",
    "Call the customer support team",
    "Update the website",
    "Schedule a dentist appointment",
    "Plan the team outing",
    "Clean the house",
    "Buy groceries",
    "Submit the expense report",
    "Check the budget spreadsheet",
    "Call the electrician",
    "Prepare dinner",
    "Complete online course module",
    "Finish the coding challenge",
    "Fix the broken chair",
    "Review the sales performance",
    "Organize the closet",
    "Complete the performance review form",
    "Renew the car insurance",
    "Take the dog for a walk",
    "Go for a run",
    "Pay bills",
    "Check social media notifications",
    "Set up a meeting with the supervisor",
    "Update the resume",
    "Read a new research article",
    "Write a letter to a friend",
    "Prepare for the interview",
    "Clean out the garage",
    "Check the bank account",
    "Research new hobbies",
    "Plan a vacation",
    "Buy new shoes",
    "Complete a puzzle",
    "Practice a new language",
    "Rearrange the furniture",
    "Attend a virtual networking event",
    "Start a new hobby",
    "Cook a new recipe",
    "Attend a fitness class",
    "Set goals for the month",
    "Review personal finances"
].each do |task|
  Task.create(title: task, user:)
end
