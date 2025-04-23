<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="participants.css">
</head>
<body>
    <div class="container">
        <h2>Event Registration</h2>
        <form id="participantForm" action="eventregister" method="post">
            <label for="name">Full Name:</label>
            <input type="text" id="name" name="t1" required>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="t2" required>
            
            <label for="stream">Stream:</label>
            <select id="stream" required name="t3">
                <option value="">Select Stream</option>
                <option value="BCA">BCA</option>
                <option value="BBA">BBA</option>
            </select>
            
            <label for="year">Year:</label>
            <select id="year" required name="t4">
                <option value="">Select Year</option>
                <option value="1st Year">1st Year</option>
                <option value="2nd Year">2nd Year</option>
                <option value="3rd Year">3rd Year</option>
            </select>

            <label for="particate">Participation Category:</label>
            <input type="text" id="pc" name="t5" required>

            <label for="Performance">Performance Name:</label>
            <select id="Performance" required name="t6">
                 <option value="">Select Performance</option>
                 <option value="Solo">Solo</option>
                 <option value="Duet">Duet</option>
                 <option value="Group">Group</option>
            </select>

            <label for="PhoneNo">Phone Number:</label>
            <input type="text" id="pno" name="t7" required> 
            
            <input type="submit" class="btn" onclick="registerParticipant()" value="Register">
        </form>
    </div>

</body>
</html>