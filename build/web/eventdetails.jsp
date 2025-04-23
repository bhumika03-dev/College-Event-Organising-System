<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="eventDetail.css">
</head>
<body>
    <div class="container">
        <h2>Event Details</h2>
        <form action="eventdetails" id="participantForm" method="post" >
            <label for="name">Program Name:</label>
            <input type="text" id="name" name="t1" required>
            
            <label for="name">Chief Guest:</label>
            <input type="text" id="cg" name="t2" required>

            <label for="program">Total No. of Programs:</label>
            <input type="text" id="program" name="t3" required>

            <label for="ProgramDetails">Program Details:</label>
            <input type="text" id="programd" name="t4" required> 

            <label for="EventTime">Program Starting Time:</label>
            <input type="time" id="event time" name="t5" required>

            <label for="EventTime">Program Ending Time:</label>
            <input type="time" id="event time" name="t6" required>


            <label for="Venue">Venue:</label>
            <input type="text" id="venue" name="t7" required>
            
            
            <button type="submit" class="btn" onclick="registerParticipant()">Register</button>
        </form>
    </div>

</body>
</html>
