<html>
<head>
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.2/angular.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.2/angular-touch.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<link rel="stylesheet" type="text/css" href="/js/master.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script>
$(document).ready(function(){
    $("#north_button").click(function(){
        $.post("/moveperson",
        {
          attr1: "NORTH",
          attr2: "data2"
        },
        function(data,status){
        	var currentClass = this.className;
           $("#roompage").addClass("room"+data.currentRoom.refId).removeClass("room"+data.previousRoom.refId); 
        });
    });
    $("#south_button").click(function(){
        $.post("/moveperson",
        {
          attr1: "SOUTH",
          attr2: "data2"
        },
        function(data,status){
        	var currentClass = this.className;
            $("#roompage").addClass("room"+data.currentRoom.refId).removeClass("room"+data.previousRoom.refId);
        });
    });
    $("#east_button").click(function(){
        $.post("/moveperson",
        {
          attr1: "EAST",
          attr2: "data2"
        },
        function(data,status){
        	var currentClass = this.className;
            $("#roompage").addClass("room"+data.currentRoom.refId).removeClass("room"+data.previousRoom.refId);
        });
    });
    $("#west_button").click(function(){
        $.post("/moveperson",
        {
          attr1: "WEST",
          attr2: "data2"
        },
        function(data,status){
        	var currentClass = this.className;
            $("#roompage").addClass("room"+data.currentRoom.refId).removeClass("room"+data.previousRoom.refId);
        });
    });
});
</script>
</head>
<body>


<div id="roompage" data-role="page" class="room1">
<h2>Welcome ${userName} in ${personJson.currentRoom.refId}</h2>   
 
    <div data-role="content">
        
    </div><!-- /content -->

    <div data-role="footer" data-position="fixed">
        <button id="west_button" class="ui-btn ui-btn-inline">West</button>
        <button id="north_button" class="ui-btn ui-btn-inline">North</button>
        <button id="south_button" class="ui-btn ui-btn-inline">South</button>
        <button id="east_button" class="ui-btn ui-btn-inline">East</button>
    </div><!-- /footer -->

</div>
</body>
</html>