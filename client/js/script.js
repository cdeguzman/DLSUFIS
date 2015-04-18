
// function that create a cookie to establish a user session
function createSession(sessionHash){
   $.cookie('sessionCookie', sessionHash);
}

//call this to check if user session exists, if is it returns true else false
function checkSession(){
   var isSessionValid = false; // if session exists
   if( $.cookie('sessionCookie')!=undefined){
      // put additional checks for session here.
      isSessionValid = true;
   }
   return isSessionValid;
}

//call this to destroy session
function destroySession(){
   $.removeCookie('sessionCookie');
}

// unbinds and removes a view
function cleanUpView(view){
   try{
      view.unbind();
      view.remove();
   }catch(err){}
}

function showLoad(load){
   if(load){
      $('.loadingStatus').show();
   }else{
      $('.loadingStatus').hide();
   }
}

function viewFISSheet(facultyId){
	$.cookie('fisReportId', facultyId);
	// create an anchor, add to body, next document click triggers it this make it unblockable by popup blockers
	var a = document.createElement('a');
	a.setAttribute('href', 'reports/FIS_tab1.html');
	a.setAttribute('target', '_blank');
	document.body.appendChild(a);
	a.click();
}

function loadFISForm(page){
	var fetchRequests = [];
	if(page==="page1"){ //FIS_tab1
		//Do not remove loads faculty info for page 1
		loadFacultyInfo();
	
		fetchRequests = [
			{
				dataSource : "../../server/php/FacultyAcademicBackground/getFacEarnedDegree.php", //endpoint where to fetch data
				columnDataNameSourceId: "facDegreeEarnedData", //id of the thead where to get column data
				renderTargetId: "facDegreeEarnedRow" //id of the tbody where to render the data
			}
		];
	}else if(page==="page2"){ //FIS_tab2
		
	}else if(page==="page3"){ //FIS_tab3
		
	}else if(page==="page4"){ //FIS_tab4
		
	}
	
	fetchData(fetchRequests);
}

function loadFacultyInfo(){
		$.ajax({
			   url: '../../server/php/FacultyPersonalInfo/getFacInfo.php',
			   data: {fid: $.cookie('fisReportId')},
			   dataType:"json",
			   type: 'GET',
			   contentType: "application/json",
			   success: function(data) {
					var facultyInfo = data[0];
					$(".facultyInfo").each(function(idX){
						var dataColumnName = $(this).attr("data-column-name");
						var columnData = "";
						if(dataColumnName==="name"){
							$("td[data-column-name='name']").html(facultyInfo.flname + ", " + facultyInfo.ffname + " " + facultyInfo.fmname);
						}else if(dataColumnName==="college"){
							$("td[data-column-name='college']").html(facultyInfo.unit_code + " - " + facultyInfo.unit_title);
						}else{
							var columnData = eval("facultyInfo."+$(this).attr("data-column-name"));
							$("td[data-column-name='"+$(this).attr("data-column-name")+"']").html(columnData);
						}
						
					});
			   }
		});
}

function fetchData(fetchRequests){
	fetchRequests.forEach(function(fetchRequest){
		var dataSource = fetchRequest.dataSource;
		var source = fetchRequest.columnDataNameSourceId;
		var renderTarget = fetchRequest.renderTargetId
		var self = this;
		$.ajax({
			   url: dataSource,
			   data: {fid: $.cookie('fisReportId')},
			   dataType:"json",
			   type: 'GET',
			   contentType: "application/json",
			   success: function(data) {
					var hasData = false;
					data.forEach(function(datum){
						hasData = true;
						var row = "<tr>";
						$("#"+source + " th").each(function(idX){
							var columnData = eval("datum."+$(this).attr("data-column-name"));
							row += "<td>"+columnData+"</td>";
						});
						row += "</tr>";
						$("#"+renderTarget).append(row);
					});
					
					if(!hasData){
						var colspan = $("#"+source + " th").length;
						$("#"+renderTarget).html("<tr><td colspan='"+colspan+"' class='noInfoAvailable'>No information</td></tr>")
					}
			   }
		});
	})
}

