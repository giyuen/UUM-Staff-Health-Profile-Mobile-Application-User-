<?php 
  $db = "joshuaoo_uumstaffhealthprofile";
  $host = "localhost";
  $db_user = 'joshuaoo_joshuaoo';
  $db_password = 'gy24204836';
  //MySql server and database info
  
  $link = mysqli_connect($host, $db_user, $db_password, $db);
  //connecting to database

  function matchper($s1, $s2){ 
        similar_text(strtolower($s1), strtolower($s2), $per);
        return $per; //function to find matching similarity of two string
  }

  if(isset($_REQUEST["query"])){
      $query = strtolower($_REQUEST["query"]);
  }else{
      $query = "";
  } //if there is query in parameter then grabe it


  $json["error"] = false;
  $json["errmsg"] = "";
  $json["data"] = array();

  $sql = "SELECT * FROM USER ORDER BY NAME ASC";
  $res = mysqli_query($link, $sql);
  $numrows = mysqli_num_rows($res);
  if($numrows > 0){
     //check if there is any data
     $namelist = array();

      while($obj = mysqli_fetch_object($res)){
           $matching = matchper($query, $obj->NAME);
           //get the similarity between name and query
           $namelist[$matching][$obj->STAFFID] = $obj->NAME;
           
      }

      krsort($namelist); 
      

      foreach($namelist as $innerarray){
         foreach($innerarray as $STAFFID => $NAME){
            $subdata = array(); //create new array
            $subdata["id"] = "$STAFFID"; //return as string
            $subdata["name"] = $NAME; 

            array_push($json["data"], $subdata); //push sub array into $json array
         }
      }
  }else{
      $json["error"] = true;
      $json["errmsg"] = "No any data to show.";
  }

  mysqli_close($link);
  
  header('Content-Type: application/json');
  // tell browser that its a json data
  echo json_encode($json);

?>