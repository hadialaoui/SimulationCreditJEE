<%@page import="sid.cours.model.CreditModel"%>

<%
CreditModel mod=(CreditModel)request.getAttribute("mod");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Credit Banque</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css"/>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
<div class="container">
	<div class="row">
	   <div class="col-lg-12 ">
	   <p></p>
	       <div class="panel panel-primary inverse">
	          <div class="panel-heading">
	               Simulateur Credit
	          </div>
	          <div class="panel-body">
	           <form action="Controleur.php" method="post">
	           <div class="row">
		           <div class="form-group ">
	                     <label for="montant" class="control-label col-lg-2">Montant (en DH).<span class="required">*</span></label>
	                     <div class="col-lg-6">
	                      <input class="form-control" id="montant" name="montant"  type="text" value="<%=mod.getMontant()%>" required />
	                     </div>
	               </div>
	           </div>
	           <p></p>
	           <div class="row">
	               <div class="form-group ">
	                     <label for="duree" class="control-label col-lg-2">Duree (en mois)<span class="required">*</span></label>
	                     <div class="col-lg-6">
	                      <input class="form-control" id="duree" name="duree"  type="text" value="<%=mod.getDuree()%>" required />
	                     </div>
	               </div>
	           </div>
	           <p></p>
	           <div class="row">
	               <div class="form-group ">
	                     <label for="taux" class="control-label col-lg-2">Taux (%)<span class="required">*</span></label>
	                     <div class="col-lg-6">
	                      <input class="form-control" id="taux" name="taux"  type="text" value="<%=mod.getTaux()%>" required />
	                     </div>
	               </div>
	            </div>
	                <p></p>
	            <div class="row">
	                <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-6">
                              <button class="btn btn-primary" type="submit" name="calculer">Calculer</button>
                            </div>
                            </div>
                    </div>
            </form>        
            </div>
				<div class="alert alert-success" style="font-size: 40px">
				               <strong >Mensualité :</strong><br/><%= mod.getMensualite() %>
				</div>
	          </div>
	       </div>
	   </div>
	</div>

<div>    
</div>
</body>
</html>