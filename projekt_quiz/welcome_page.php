<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="welcome_page.css"><link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
    
    <?php 
        include 'date.php'
    ?>

    <title>Quiz main page</title>
</head>
<body>
    <header class = "header"> 
        <div class  = "text-wrapper">
            <h1 class = "heading-primary">
                <span class = "heading-primary-main ">Bezpieczeństwo aplikacji interenetowych</span>
                <span class = "heading-primary-sub">Jak zabezpieczyć aplikacje na poziomie pisania kodu</span>
            </h1>
        </div>
        <div class="button-wrapper">
            <button class = "button"> <a href = "#title" class = "title"> Zaczynajmy </a></button>
        </div>
      
                <div class = "gear-container1">
                    <div class="gear-wrapper1">
                            <div class="gear1">
                                <div class="center1"></div>
                                <div class="tooth1"></div>
                                <div class="tooth1"></div>
                                <div class="tooth1"></div>
                                <div class="tooth1"></div>
                            </div>
                        </div>  
                    </div>    
                    <div class = "gear-container">
                        <div class="gear-wrapper">
                            <div class="gear">
                                <div class="center"></div>
                                <div class="tooth"></div>
                                <div class="tooth"></div>
                                <div class="tooth"></div>
                                <div class="tooth"></div>
                            </div>  
                        </div>    
                    </div>
    </header>
    <div class = "title-heading">
            <a id = "title" class = "starter">Od czego zacząć?</a>
    </div>
    <div class ="card-wrapper">
        <div class = "card lecture">
          <div class = "text">
            
            <a href = "content.html">Poczytaj</a>
        
        </div>
        </div>
        <div class = "card quiz">
        <div class = "text">
            
                <a href = "quiz.php">Sprawdź się</a>
            
            </div>
        </div>
    </div>
    

    </div>
    <div class = "links-section"> 
        <a href="https://www.flaticon.com/free-icons/check" title="check icons">Check icons created by Freepik - Flaticon</a> 
    </div>

    <footer> 
        <?php polish_date(); 
           
        ?> 
        </footer>
</body>
</html>