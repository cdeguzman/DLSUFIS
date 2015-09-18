
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
				renderTargetId: "facDegreeEarnedRow",//id of the tbody where to render the data
			},
			{
				dataSource : "../../server/php/FacultyAcademicBackground/getFacDegreePursue.php", 
				columnDataNameSourceId: "facPursueDegreeData", 
				renderTargetId: "facDegreePursueRow"
			},	
			{
				dataSource : "../../server/php/FacultySpecialTraining/getFacSpecTrain1.php", 
				columnDataNameSourceId: "facSpecialTrainingData", 
				renderTargetId: "facSpecialTrainingRow"
			},
			{
				dataSource : "../../server/php/FacultyTeachingExperience/getFacTeachExp.php", 
				columnDataNameSourceId: "facTeachingExperienceDLSUData", 
				renderTargetId: "facTeachingExperienceRow"
			},
			{
				dataSource : "../../server/php/FacultyLicensure/getFacProfExp.php", 
				columnDataNameSourceId: "facProfessionalExperienceData", 
				renderTargetId: "facProfessionalExperienceRow"
			},
			{
				dataSource : "../../server/php/FacultyNon-Teaching/getFacProfPrac1.php", 
				columnDataNameSourceId: "facIndustryExperienceData", 
				renderTargetId: "facIndustryExperienceRow"
			}
		];
	}else if(page==="page2"){ //FIS_tab2
	    loadFacultyInfo();
	
		fetchRequests = [
			{
				dataSource : "../../server/php/FacultyMembership/getFacLeadership.php", 
				columnDataNameSourceId: "facLeadershipProfOrgData", 
				renderTargetId: "facLeadershipProfOrgRow"
			},
			{
				dataSource : "../../server/php/FacultyMembership/getFacMembership.php", 
				columnDataNameSourceId: "facMembershipProfOrgData", 
				renderTargetId: "facMembershipProfOrgRow"
			},
			{
				dataSource : "../../server/php/FacultyAwards/getFacAwards.php", 
				columnDataNameSourceId: "facAwardsData", 
				renderTargetId: "facAwarsRow"
			},
			{
				dataSource : "../../server/php/FacultyResearch/getFacInResearch.php", 
				columnDataNameSourceId: "facInternalResearchData", 
				renderTargetId: "facInternalResearchRow"
			},
			{
				dataSource : "../../server/php/FacultyResearch/getFacExResearch.php", 
				columnDataNameSourceId: "facExternalResearchData", 
				renderTargetId: "facExternalResearchRow"
			},
			{
				dataSource : "../../server/php/FacultyResearch/getFacResearchGrants.php", 
				columnDataNameSourceId: "facResearchGrantsData", 
				renderTargetId: "facResearchGrantsRow"
			}
	];	
	}else if(page==="page3"){ //FIS_tab3
	    loadFacultyInfo();
	
		fetchRequests = [
			{
				dataSource : "../../server/php/FacultyPublication/getFacJournal.php", 
				columnDataNameSourceId: "facJournalPublicationData", 
				renderTargetId: "facJournalPublicationRow"
			},
			{
				dataSource : "../../server/php/FacultyPublication/getFacPrototype.php", 
				columnDataNameSourceId: "facPrototypesData", 
				renderTargetId: "facPrototypesRow"
			},
			{
				dataSource : "../../server/php/FacultyPublication/getFacPatents.php", 
				columnDataNameSourceId: "facPatentsData", 
				renderTargetId: "facPatentsRow"
			},
			{
				dataSource : "../../server/php/FacultyPublication/", 
				columnDataNameSourceId: "", 
				renderTargetId: ""
			},
			{
				dataSource : "../../server/php/FacultyPublication/getFacBooks.php", 
				columnDataNameSourceId: "facAuthoredBooksData", 
				renderTargetId: "facAuthoredBooksRow"
			},
			{
				dataSource : "../../server/php/FacultyPublication/getFacChaptBook.php", 
				columnDataNameSourceId: "facChapterEditedBooksData", 
				renderTargetId: "facChapterEditedBooksRow"
			},
			{
				dataSource : "../../server/php/FacultyPublication/getFacConferencePaper.php", 
				columnDataNameSourceId: "facConfPaperContentData", 
				renderTargetId: "facConfPaperContentRow"
			},
			{
				dataSource : "../../server/php/FacultyPublication/getFacOtherPublished.php", 
				columnDataNameSourceId: "facCreativeWorkContentData", 
				renderTargetId: "facCreativeWorkContentRow"
			},
			{
				dataSource : "../../server/php/FacultyPublication/getFacScreenPlay.php", 
				columnDataNameSourceId: "facScreenPlayContentData", 
				renderTargetId: "facScreenPlayContentRow"
			},
			{
				dataSource : "../../server/php/FacultyPublication/getFacOtherResearch.php", 
				columnDataNameSourceId: "facOtherResearchContentData", 
				renderTargetId: "facOtherResearchContentRow"
			},
			{
				dataSource : "../../server/php/FacultyPublication/getFacSeminars.php", 
				columnDataNameSourceId: "facConferenceSeminarData", 
				renderTargetId: "facConferenceSeminarRow"
			}
		];
		
	}else if(page==="page4"){ //FIS_tab
		 loadFacultyInfo();
	
		 fetchRequests = [
			{
				dataSource : "../../server/php/FacultyCommunityService/getFacComSrvDLSU.php", 
				columnDataNameSourceId: "facComServeDLSUData", 
				renderTargetId: "facComServeDLSURow"
			},
			{
				dataSource : "../../server/php/FacultyCommunityService/getFacCSProfOrg.php", 
				columnDataNameSourceId: "facComServeProfOrgData", 
				renderTargetId: "facComServeProfOrgRow"
			},
			{
				dataSource : "../../server/php/FacultyCommunityService/getFacCSGovOrg.php", 
				columnDataNameSourceId: "facComServeGovtData", 
				renderTargetId: "facComServeGovtRow"
			},
			{
				dataSource : "../../server/php/FacultyCommunityService/getFacCSOthers.php", 
				columnDataNameSourceId: "facComServeOthersData", 
				renderTargetId: "facComServeOthersRow"
			}
		 
		 ];
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

