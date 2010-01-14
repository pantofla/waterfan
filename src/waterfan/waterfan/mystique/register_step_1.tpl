

{#PLIGG_Visual_Register_Thankyou#|sprintf:$templatelite.get.user}
<p class="error">{#PLIGG_Visual_Register_Noemail#}</p>

{assign var="email" value=#PLIGG_PassEmail_From#}
{#PLIGG_Visual_Register_ToDo#|sprintf:$email}

