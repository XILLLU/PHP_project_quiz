<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="quiz.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">

    <title>Quiz</title>
</head>

<?php   
    include 'functions.php';
    include 'date.php';
?>

<body>
    <div class="container">
            <div class="question-wrapper">
                <div class="question-section"><?php echo "Pytanie nr " .$question_number; ?></div>
                <div class ="questions">
                        <?php   
                                $row_question = $result_questions->fetch_assoc();
                                echo $row_question['questions_content'];
                        ?>
                </div>
                    <form method="POST">
                        <div class ="answers-section">
                            <?php 
                                while($row_answer = $result_answers ->fetch_assoc()){
                                $get_answer = 'SELECT id_answers,answers_content FROM answers WHERE id_answers ='.$row_answer['id_answers'];
                                
                                $get_answer = $answer_display ->query($get_answer);
                                $result = $get_answer -> fetch_assoc();
                                    
                                echo 
                                    '<div class = "answers">
                                            <input type ="radio" class ="invisible" value="'.$result['id_answers'].'" name = "answer">
                                            <input type ="submit" name="'.$result['id_answers'].'" class = "answer-check-button" value ="">
                                            <label for="'.$result['id_answers'].'">'.$result['answers_content'].'</label>
                                    </div>';
                                }
                            ?>
                            <input type="number"  name="question_number" class = "invisible"value ="<?php echo $question_number; ?>">
                        </div>
                    </form>

                <div class= "bottom-section">
                    <?php
                        

                        if(isset($_POST[''.$correct_answer['id_answers'].''])){
                           
                            echo '<div class = "popup correct"> Poprawnie </div>';
                        }
                       
                        while($wrong_answer = $wrong_answer_check->fetch_assoc()){
                            if(isset($_POST[''.$wrong_answer['id_answers'].''])) 
                                echo '<div class = "popup wrong"> Błędnie </div>';
                           }
                           
                    ?>
                    <form method="POST">  
                        <?php 
                            if($question_number != 1){
                                echo '<input type="submit" class="button-previous" value="Poprzednie" name="previous">';
                                }   
                                else{
                                    echo "";
                                }
                            ?>
                            <input type="number"  name="question_number" class = "invisible"value ="<?php echo $question_number; ?>">
                        

                            <?php 
                            if($question_number !=10){
                                echo '<input type="submit" class="button-next" value="Następne" name="next">';
                                }
                                else{
                                    echo '<input type="submit" class="button-next" value ="Zakończ" name="finish">';
                                }
                            ?>
                          
                    </form>
                </div>
                
        </div>
    </div>
    <footer> <?php polish_date()?></footer>
</body>
</html>