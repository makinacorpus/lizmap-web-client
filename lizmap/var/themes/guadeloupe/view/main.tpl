{meta_html csstheme 'css/main.css'}
{meta_html csstheme 'css/media.css'}

{meta_html others '<link rel="shortcut icon" type="image/x-icon" href="'.$j_basepath.'themes/guadeloupe/css/img/favicon.png" />' }

<div id="header">
  <div id="logo">
    <h1></h1>
  </div>
</div>

<div id="headermenu" class="navbar navbar-fixed-top">
  <div id="auth" class="navbar-inner">
    <ul class="nav pull-right">
      {if $isConnected}
      <li class="user dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
          <span class="icon"></span>
          <b id="info-user-login" class="text">{$user->login|eschtml}</b>
          <span class="caret"></span>
        </a>
        <ul class="dropdown-menu pull-right">
          {ifacl2 'auth.user.view'}
          <li><a href="{jurl 'jauthdb_admin~user:index', array('j_user_login'=>$user->login)}">{@master_admin~gui.header.your.account@}</a></li>
          {/ifacl2}
          <li><a href="{jurl 'jauth~login:out'}?auth_url_return={jurl 'view~default:index'}">{@view~default.header.disconnect@}</a></li>
        </ul>
      </li>
      {else}
      <li class="login">
        <a href="{jurl 'jauth~login:form'}">
          <span class="icon"></span>
          <span class="text">{@view~default.header.connect@}</span>
        </a>
      </li>
        {if isset($allowUserAccountRequests)}
        <li class="login">
          <a href="{jurl 'view~user:createAccount'}">
            <span class="icon"></span>
            <span class="text">{@view~default.header.createAccount@}</span>
          </a>
        </li>
        {/if}
      {/if}
    </ul>
  </div>
</div>

<div id="content" class="container index_map">
{jmessage_bootstrap}
    <div id="menu_themes">
        <ul id="menu_themes_list">
            <li class="title">Thématiques</li>
        <ul>
    </div>
    <div id="map_themes">
        <div id="map_theme_dyn"></div>
        <div id="map_theme_orig">{$MAIN}</div>
    </div>
</div>

<footer class="footer">
  <div id="inner_footer">
    <p class="pagination-centered">
          <a class="cms_link" href="http://observatoire-eau-guadeloupe.makina-corpus.net/">© copyright 2014 | Observatoire de l'eau de la Guadeloupe</a><br/>
          <a href="http://www.makina-corpus.com">{image $j_themepath.'css/img/logo_footer.png'}</a>
          <a href="http://observatoire-eau-guadeloupe.makina-corpus.net/">{image $j_themepath.'css/img/logo_eauguadeloupe.jpg'}</a>
          
    </p>
  </div>
</footer>



<script type="text/javascript">
// <![CDATA[
    {literal}
        // build a compartimented maps index
        var theme_hide_class= "";
        var theme_active_class= "active";
        var themes = $( "div#content" ).find( "div.directory h2" );
        themes.each(function( index ) {
            $("#menu_themes_list").append('<li id="theme_list_'+index+'" onclick="displayMapTheme('+index+');" class="theme_list_item '+theme_active_class+'"><a href="#">'+$(this).text()+'</li>');
            
            block_map = "<div class='"+theme_hide_class+" theme_map' id='theme_map_"+index+"'>"+$(this).next().html()+"</div>"
            $("#map_theme_dyn").append(block_map);
            
            theme_hide_class = "index_hide";
            theme_active_class = "";
        });        
        
        // Hide original maps index
        $("#map_theme_orig").addClass("index_hide");
        
        function displayMapTheme(theme_id) {
            // Hide all themes
            $("div#map_theme_dyn").find( "div.theme_map" ).addClass("index_hide");
            // Display selected one a:hover
            $("#theme_map_"+theme_id).removeClass("index_hide");
            
            $(".theme_list_item").removeClass("active");
            $("#theme_list_"+theme_id).addClass("active");
        }        
    {/literal}
// ]]>
</script>

