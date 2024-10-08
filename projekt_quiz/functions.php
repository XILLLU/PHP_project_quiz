<?php
if(isset($_POST["question_number"])){

$question_number = $_POST['question_number'];
}
else{
  $question_number = 1;
}

if(isset($_POST['next'])){
  $question_number++;
  
}

if(isset($_POST['previous'])){
  $question_number--;
}

//CONNECTION FOR QUESTION CONTENT AND QUESTION NUMBER
$questions_connection = new mysqli('localhost','root','','quiz');
if($questions_connection ->connect_error){
  die($questions_connection ->connect_error);
}

  $result_questions = "SELECT questions_content FROM questions WHERE id_question  =". $question_number;
  $result_questions  = $questions_connection -> query($result_questions);

  $questions_connection -> close();



   //DISPLAYING ANSWER FOR A SPECIFIC QUESTION

   $answer_display = new mysqli('localhost','root','','quiz');
   if($answer_display ->connect_error){
    die($answer_display->connect_error);
   }

   //CONNECTION FOR GETTING ID ANSWERS FOR A QUESTION NUMBER 

   $result_answers = 'SELECT id_answers FROM answers_question_relation WHERE id_question ='.$question_number;
   $result_answers = $answer_display ->query($result_answers);

  
   $answer_check_connection = new mysqli('localhost','root','','quiz');


   $answer_check = 'SELECT id_answers FROM answers_question_relation WHERE  isCorrect = 1 AND id_question = '.$question_number;
   $answer_check = $answer_check_connection->query($answer_check);

   $correct_answer = $answer_check -> fetch_assoc();
   
   $wrong_answer_check = 'SELECT id_answers FROM answers_question_relation WHERE  isCorrect = 0 AND id_question = '.$question_number;
   $wrong_answer_check = $answer_check_connection->query($wrong_answer_check);

   
   


?>
