<?php
include_once "./admin_panel/config/dbconnect.php";
// require_once('TCPDF-main/tcpdf.php');

// Function to execute prepared statements
function executePreparedStatement($conn, $sql, $params, $types) {
    $stmt = $conn->prepare($sql);
    if ($stmt === false) {
        die("Error in preparing statement: " . $conn->error);
    }

    // Bind parameters
    if (!empty($params) && !empty($types)) {
        $stmt->bind_param($types, ...$params);
    }

    // Execute the statement
    $stmt->execute();

    // Get the result (if needed)
    $result = $stmt->get_result();

    // Close the statement
    $stmt->close();

    return $result;
}

// Check if the form is submitted
if (isset($_POST['submitStudent'])) {
    // Retrieve the student code from the POST data
    $student = $_POST['student_code'];
    $escaped_student = mysqli_real_escape_string($conn, $student);

    


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Reports</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/font-awesome-4.7.0/css/font-awesome.css">
</head>
<body class="report">
    <!-- Your HTML content here -->
    <div class="rpt">
    <header>
        <div class="logos">
            <img src="imgs/Logos/Code Academy logo-15.png" alt="Your Logo" width="100" height="70">
            <div class="title">
                <h class="school"> Code Camp</h>
            </div>
            <!--<p style="color: azure;">+256 774802292  +256 757612154</p>-->
        </div>

        
        
    
        <!-- Add more navigation links as needed -->
    
        <!-- <nav class="navigation">
           
                <li><a href="index.php">Home</a></li>
                <li  id="current" class="menuitem"><a href="student_report.php">Generate Report</a></li> 

        </nav> -->

        <h1>Student Report</h1>
        <!-- <div class="download-button" onclick="downloadPDF()">Download as PDF</div> -->
    </header>
    <a href="index.php" class="back-arrow">&#8592;</a>
    <br>

            <div class="container">
               <div class="card">

               <?php
                // Fetch student details
                $fetchDetails = "SELECT * FROM students WHERE student_id = ?";
                $result1 = executePreparedStatement($conn, $fetchDetails, [$escaped_student], "s");

                if ($result1->num_rows > 0) {
                    while ($row = $result1->fetch_assoc()) {
                        // Display student details here
                        ?>
                        <section class="student_details" id="student-details">
                            <!-- Include student details here -->
                            <div class="profile-card">
                                <img src='imgs/Logos/<?= $row["picture"] ?>'>
                                <h2><?= $row["student_name"] ?></h2>
                                <p>CLASS: <?= $row["std_level"] ?></p>
                                <?php
                                   }
                                } else {
                                    echo "No such student found in Database. Check student code and Try again";
                                }
                                        
                                $project = "SELECT * FROM stdprojects WHERE CodeCampCode = 'CC050' AND student_id = ?";
                $result3 = executePreparedStatement($conn, $project, [$escaped_student], "s");

                if ($result3->num_rows > 0) {
                    while ($row3 = $result3->fetch_assoc()) {
                        ?>
                                <p>PROJECT TITLE: <?= $row3["ProjectTitle"] ?></p>
                            </div>
                            <?php
                    }
                } else {
                    echo "No Project Found";
                }
         
                    // Fetch project
                    $fetchpjlink = "SELECT * FROM stdprojects WHERE student_id = ? AND CodeCampCode = 'CC050'";
                    $result5 = executePreparedStatement($conn, $fetchpjlink, [$escaped_student], "s");

                    if ($result5->num_rows > 0) {
                        while ($row = $result5->fetch_assoc()) {
                            // Display project here
                        ?>

                            <div class="std_project">
                <iframe src="<?= $row["ProjectLink"] ?>/embed" allowtransparency="true" width="380" height="402"  frameborder="0" scrolling="no" allowfullscreen></iframe>        </div>
               </div>


                        </section>
            </div>
            <?php
                        }
                    }
                // }

            // Fetch marks
                    $fetchMarks = "SELECT * FROM assessment WHERE student_id = ?";
                    $result2 = executePreparedStatement($conn, $fetchMarks, [$escaped_student], "s");

                    if ($result2->num_rows > 0) {
                        while ($row = $result2->fetch_assoc()) {
                            // Display student marks here

                   ?>         

            <section id="class-assessment">
                 <!-- Include class assessment here -->
             <h2 style=" background:  #0046B6; color: #F79600; padding: 18px; margin-bottom:5%; margin-top:3%;  margin-left:0;  margin-right:0">Student Assessment</h2>
               <!-- Add your content here -->
               <h class="codecampNo">49th Code Camp</h>

             <div class="crad">

             <div class="marks">
                    <div class="cont_ass">
                        <div class="score_desc">
                            <p>Project Score</p>
                        </div>
                        <div class="score_card">
                            <div class="pie animate no-round" style="--p: <?=$row["project_score"]?>;--c:#F79600;">  <?=$row["project_score"]?>%</div>
                        
                        </div>
                    </div>
                    <div class="cont_ass">
                        <div class="score_desc">
                            <p> Average Quiz Score</p>
                        </div>
                        <div class="score_card">
                            <div class="pie animate no-round" style="--p: <?=$row["quiz_score"]?>;--c:#F79600;">  <?=$row["quiz_score"]?>%</div>
                        
                        </div>
                    </div>
                    <div class="cont_ass">
                        <div class="score_desc">
                            <p>Attendance</p>
                        </div>
                        <div class="score_card">
                            <div class="pie animate no-round" style="--p: <?=$row["attendence"]?>;--c:#F79600;">  <?=$row["attendence"]?>%</div>
                        
                        </div>
                    </div>
 
            </div>
    
             </div>
<?php
                        }
             // 50th camp
                    $fetchNewMarks = "SELECT * FROM 50thCCMarks WHERE student_id = ?";
                    $marks = executePreparedStatement($conn, $fetchNewMarks, [$escaped_student], "s");

                    if ($marks->num_rows > 0) {
                        while ($row3 = $marks->fetch_assoc()) {
                            // Display student marks here

                   ?>         

            <section id="class-assessment">
                 <!-- Include class assessment here -->
               <h class="codecampNo">50th Code Camp</h>

             <div class="crad">

             <div class="marks">
                    <div class="cont_ass">
                        <div class="score_desc">
                            <p>Project Score</p>
                        </div>
                        <div class="score_card">
                            <div class="pie animate no-round" style="--p: <?=$row3["Project_Marks"]?>;--c:#F79600;">  <?=$row3["Project_Marks"]?>%</div>
                        
                        </div>
                    </div>
                    <div class="cont_ass">
                        <div class="score_desc">
                            <p> Average Quiz Score</p>
                        </div>
                        <div class="score_card">
                            <div class="pie animate no-round" style="--p: <?=$row3["Quiz"]?>;--c:#F79600;">  <?=$row3["Quiz"]?>%</div>
                        
                        </div>
                    </div>
                    <div class="cont_ass">
                        <div class="score_desc">
                            <p>Attendance</p>
                        </div>
                        <div class="score_card">
                            <div class="pie animate no-round" style="--p: <?=$row3["Attendance"]?>;--c:#F79600;">  <?=$row3["Attendance"]?>%</div>
                        
                        </div>
                    </div>
 
            </div>
    
             </div>

             <h2 style=" background:  #0046B6; color: #F79600; padding: 18px; margin-bottom:5%; margin-top:3%;  margin-left:0;  margin-right:0">
             <!--Next Class: -->
             <?php
                if(($row3["Attendance"]>69) or ($row3["Project_Marks"]>69) or ($row3["Quiz"]>69) ){
                     $fetchClass = "SELECT * FROM students WHERE student_id = ?";
                    $result1= executePreparedStatement($conn, $fetchClass, [$escaped_student], "s");
                    if ($result1->num_rows > 0) {
                        while ($row6 = $result1->fetch_assoc()){
                            $studentName=$row6["student_name"];
                          if ($row6["std_level"] == 'SCRATCH BEGINNERS'){
                                echo "Scratch Intermediate";
                            }elseif($row6["std_level"] == 'SCRATCH INTERMEDIATE'){
                                echo "Scratch Advanced";
                            }elseif($row6["std_level"] == 'SCRATCH ADVANCED'){
                                echo "2D Game Development";
                                echo "<br>";
                                ?>
                                        <a class="btn-secondary" href="certificate.php?student_name=<?php echo $studentName ?>">Certificate</a>
                                <?php   
                            }elseif($row6["std_level"] == '2D GAME DEVELOPMENT'){
                                echo " STORY TELLING AND ANIMATION ";
                            }else{
                                echo "Confirm With MGT";
                            }
                        }
                    }
             ?>
            </h2>

                        <?php
                    }
                } 
                      
                
    // Close the connection
    $conn->close();
}}
}
                ?>
            </section>
        
</div>
<br><br><br>

    <footer>
        &copy; 2023 Code Academy Uganda
    </footer>
</body>
</html>