<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Event Page</title>
  <link rel="stylesheet" href="adminhead.css">
</head>
<body>
  <div class="admin-container">
    <!-- Sidebar -->
    <aside class="sidebar">
      <h2>Admin Panel</h2>
      <nav>
        <ul>
          <li><a href="#">Dashboard</a></li>
          <li><a href="eventdetails.jsp">Event Details</a><li>
          <li><a href="manageevents.jsp">Manage Events</a></li>
          <li><a href="participantlist.jsp">Users</a></li>
          
         
          <li><a href="Logout.jsp">Logout</a></li>
        </ul>
      </nav>
    </aside>

    <!-- Main Content -->
    <main class="main-content">
      <header class="header">
        <h1>Welcome, Admin!</h1>
        <p> Manage your events here.</p>
      </header>

      <!-- Event Section -->
      <section class="content">
        <div class="card">
          <h2>Upcoming Events</h2>
          <table>
            <thead>
              <tr>
                <th>Event Name</th>
                <th>Performance</th>
                <th>Class</th>
                <th>No of participants</th>
                <th>Actions</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Dandiya</td>
                <td>Dance</td>
                <td>Bca 1st Year </td>
                <td>7</td>
                <td>
                  <button class="btn edit">Edit</button>
                  <button class="btn delete">Delete</button>
                </td>
              </tr>
              <tr>
                <td>Cultural Night</td>
                <td>Dance</td>
                <td>BBA 1st year</td>
                <td>5</td>
                <td>
                  <button class="btn edit">Edit</button>
                  <button class="btn delete">Delete</button>
                </td>
              </tr>
            </tbody>
          </table>
        </div>

        <div class="card">
          <h2>Add New Event</h2>
          <form>
            <label for="event-name">Event Name:</label>
            <input type="text" id="event-name" placeholder="Enter event name" required>

            <label for="event-performance">Performance:</label>
            <input type="text" id="event-performance" placeholder="Dance/song/Drama/Rampwalk" required>

            <label for="event-class">Class:</label>
            <input type="text" id="event-class" placeholder="Enter Class" required>

            <label for="no_of_participants">Number of Participants:</label>
            <input type="text" id="numberofp" placeholder="Enter Number of Participants" required>

            <button type="submit" class="btn submit">Add Event</button>
          </form>
        </div>
      </section>
    </main>
  </div>
  <script src="adminhead.js"></script>
</body>
</html>