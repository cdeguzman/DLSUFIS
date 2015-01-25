var FacultyInformationView = Backbone.View.extend({

  initialize: function(){
      this.subViews = new Array();
      this.model.on("fetched", this.render, this);
  },
  
  render: function(){
      //Show CRUD Panel
      var hidePanel = App.currentUserData.access_type!=="0" && App.currentUserData.access_type!=="3" ? " hidePanel" : ""
      //Show Faculty Selection
      var hideFacSelect = App.currentUserData.access_type!=="1" && App.currentUserData.access_type!=="2" ? " hideFacSelect" : ""
      var html ='';    
            if(App.currentUserData.access_type==="1" || App.currentUserData.access_type==="2"){
              this.getFacultyList();
            }
            if(App.currentUserData.access_type==="3"){
              html +='<div id="profileContent" class="'+hidePanel+'"></div>'
              $(this.el).append(html);
              this.subViews.push(new AdminTabView({
               el: "#profileContent"
              }));
            }else{
               html+='<div class="facSelect '+hideFacSelect+'"><br><select class="form-control" id="facultySelectionDropDown"></select><br>';
              html+='<button id="selectFaculty" type="button" class="btn btn-info"><i class="fa fa-share"></i> Select Faculty</button><br><br></div>';
              html +='<div id="facultyInformation" class="jumbotron '+hidePanel+'">';
              html +='<div class="panel panel-default">';
                  html +='<!-- Default panel contents -->';
                  html +='<div class="panel-heading">'+App.currentFacultyId+" - "+this.model.get('flname')+', ' + this.model.get('ffname')+' '+this.model.get('fmname')+'</div>';
                  html +='<div class="panel-body">';
                      html +='<h3>'+this.model.get('college')+' - '+this.model.get('unitTitle')+'</h3>';
                      html +='<h4>'+this.model.get('deptName')+'</h4>';
                      html +='<h4>'+this.model.get('classification') + ' - ' + this.model.get('rankTitle')+'</h4>';
                  html +='</div>';
                  html +='<!-- Table -->';
                html +='</div>';
                html +='</div>';
                html +='<div id="profileContent" class="'+hidePanel+'"></div>'
                $(this.el).append(html);
              this.subViews.push(new FacultyProfileSectionTabView({
               el: "#profileContent"
              }));
            }
            $("#selectFaculty").click(function(){
              App.currentFacultyId = $('#facultySelectionDropDown').val();
              App.facultyInformationModel.getUpdatedFacultyInfomation();
              $(".jumbotron")[0].remove();
              $(".facSelect")[0].remove();
              setTimeout(function(){
                _.each(this.subViews, function(view){view.remove()});
                this.subViews = new Array();
                $("#facultyInformation").slideDown();
                $("#profileContent").slideDown();
                  this.subViews.push(new FacultyProfileSectionTabView({
                    el: "#profileContent"
                  }));
              },500);
            });

      },

    getFacultyList: function(){
       $.ajax({
           url: App.facultyListUrl,
           type: 'GET',
           data: {access_type: App.currentUserData.access_type, dept_code: App.currentUserData.dept},
           success: function(data) {
            data = eval("["+data+"]");
              data[0].forEach(function(faculty){
                $("#facultySelectionDropDown").append(new Option("("+faculty.unit_code +") "+faculty.fid + " - " +faculty.flname + ", " +faculty.ffname + " " + faculty.fmname, faculty.fid));
              });
           }
         });
    },
    close: function(){
      _.each(this.subViews, function(view){view.remove()});
      this.remove();
   }
});