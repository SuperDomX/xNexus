<div class="row">        
    <div class="col-md-12"> 
        <section class="widget">
            <div class="jumbotron handle">
                <div class="container">
                    <div class="widget-controls" data-widgster="restore">
                        <a data-widgster="expand" title="Expand" href="#"><i class="glyphicon glyphicon-plus"></i></a>
                        <a data-widgster="collapse" title="Collapse" href="#"><i class="glyphicon glyphicon-minus"></i></a>
                        <!-- <a data-widgster="load" title="I am spinning!" href="#"><i class="glyphicon glyphicon-refresh"></i></a> -->
                        <a data-widgster="close" title="Close" href="#"><i class="glyphicon glyphicon-remove"></i></a>
                    </div>


                    <div id="carousel-example-generic" class="carousel slide">
                        <ol class="carousel-indicators outer">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li> 
                            {foreach $admin_menu as $key => $item}
                                {if $key} 
                                    <li data-target="#key" data-slide-to="{counter start=1}"></li>    
                                {/if}
                            {/foreach} 
                        </ol>
                        <div class="carousel-inner text-align-center">
                            <div class="item active" id="0">
                                <h1><i class="fa fa-4x fa-space-shuttle "></i><br/>Hello {$user.username|ucfirst}  </h1>
                                <p class="lead">
                                   
                                Welcome to your Super <b>Spacylecious</b>  Dashboard!
                                   
                                </p>
                                <p class="text-align-center">
                                    <!-- <a class="btn btn-success btn-lg " data-widgster="fullscreen"> -->
                                    <a class="btn btn-info btn-lg " href="/{$toBackDoor}/login/profile">
                                        <i class="fa fa-user"></i> {$user.username}
                                    </a>
                                    <a class="btn btn-info btn-lg " data-widgster="restore">
                                        Watchtower
                                    </a>
                                </p>
                            </div>

                            {foreach $admin_menu as $key => $item}
                                {if $key} 
                                    <div class="item " id="{$key}">
                                        <h1><i class="fa fa-{$key} fa-4x"></i><br/>{$item.area|ucfirst}</h1>
                                        <p class="lead">
                                            {$item.desc|ucfirst} 
                                        </p> 
                                        <p class="text-align-center">
                                            
                                                 
                                             {foreach $xtras as $x => $xtra}
                                                {if $xtra.icon && $key == $xtra.see}
                                                    <!-- <img src="{$ICON.48}{$xtra.icon}" desc="{$xtra.desc}" link="{$xtra.link}" file="{$x}" icon="{$xtra.icon}" title="{$xtra.name}">  -->
                                                    
                                                    <a  href="/x/{$xtra.link}" title="{$xtra.desc}"  data-placement="top" data-original-title="{$xtra.desc}" class="btn btn-lg {if $xtra.alpha}btn-danger{elseif $xtra.beta}btn-warning{elseif $xtra.delta}btn-success{elseif $xtra.omega}btn-primary{else}btn-default" disabled="disabled{/if}" > 

                                                       
                                                        
                                                        <i class="fa fa-{$xtra.mini}  "></i> {$xtra.name} 
                                                    </a>
                                                {/if}
                                            {/foreach}
                                             
                                              
                                        </p>
                                    </div>
                                   

                                   <!--  <div align="center" id="map-{$key}" area="{$key}" style="overflow: hidden"> 
                                        <img src="{$ICON.A}{$key}.png"  id="area-{$key}" height="128" width="128" >
                                        {foreach $xtras as $x => $xtra}
                                            {if $xtra.icon && $key == $xtra.see}
                                            <img src="{$ICON.48}{$xtra.icon}" desc="{$xtra.desc}" link="{$xtra.link}" file="{$x}" icon="{$xtra.icon}" title="{$xtra.name}"> 
                                            {/if}
                                        {/foreach}
                                        <p>{$item.area|ucfirst}</p>
                                        <span class="transparent-black-25" style="display: none; height: 48px; padding : 5px;">
                                            <img align="absmiddle" style="margin: 5px;" />
                                            <h1 style="float: left; margin-left: 60px;"></h1>
                                            <h3 style=" "></h3>
                                        </span> 
                                    </div>   -->
                                {/if}
                            {/foreach}

                           <!--  <div class="item">
                                <h1>The SuperDom neXus</h1>
                                <p class="lead">
                                    Or as we like to call it... <em>SuperDomX</em>! 
                                </p> 
                                <p class="text-align-center">
                                    <a class="btn btn-info btn-lg ">
                                       Connect to the <em>neXus</em>! &nbsp;
                                        <i class="fa fa-globe"></i>
                                    </a>
                                </p>
                            </div>
                            <div class="item">
                                <h1>Blox & Costumez</h1>
                                <p class="lead">
                                    Check our the plethora of contributions from other <em>Users</em>! 
                                </p> 
                                <p class="text-align-center">
                                    <a class="btn btn-danger btn-lg ">
                                       Get More <em>Pieces</em>! &nbsp;
                                        <i class="fa fa-puzzle-piece"></i>
                                    </a>
                                </p>
                            </div>
                        </div> -->
                        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                            <i class="fa fa-angle-left"></i>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </div>

                    <h1>    
                        <i class="fa fa-ge  "></i> <em>NeXus Installation</em>
                        <label class="label label-danger pull-right">
                        
                            Last Communication: 
                        </label>  
                    </h1>
                    <p class="lead">
                       to the NeXus way of Install Software<br/>
 
                        <a href="/{$toBackDoor}/{$Xtra}/{$method}/master" class="btn btn-success btn-lg" >
                           Download Master List
                            
                        </a>

                        <a href="/{$toBackDoor}/{$Xtra}/pullShell" class="btn btn-danger btn-lg" >
                           Update Shell
                        </a>
<!-- 
                        <a href="/{$toBackDoor}/{$Xtra}/pullShell" class="btn btn-danger btn-lg" >
                           Update Suite
                        </a>

                        <a href="/{$toBackDoor}/{$Xtra}/pullShell" class="btn btn-danger btn-lg" >
                           Update Library
                        </a> -->
                    </p> 
                    <p class="text-align-right">
                        <a class="btn btn-primary btn-lg" data-widgster="fullscreen">
                             C<i class="fa fa-crosshairs"></i>nnect C<i class="fa fa-cog"></i>re
                            
                        </a>

                        <a class="btn btn-primary btn-lg " data-widgster="restore">
                            <i class="fa fa-backward"></i>  Go Back  
                        </a>
                        <a class="btn btn-info btn-lg " data-widgster="restore">
                            <i class="fa fa-wrench"></i> Go to Blueprints &raquo;
                        </a>
                        <a href="xtras" class="btn btn-success btn-lg " data-widgster="restore"  >
                            <i class="fa fa-cubes"></i> Go to Blox &raquo;
                        </a>

                        <a class="btn btn-warning btn-lg " data-widgster="restore">
                            <i class="fa fa-magic"></i> Go to Costumez &raquo;
                        </a>
                        <a class="btn btn-danger btn-lg " data-widgster="restore">
                            <i class="fa fa-gears"></i> Go to Xtras &raquo;
                        </a>
                    </p>

                    <div class="col-md-12" data-widgster="restore">
                        <header>
                            <blockquote><h2>We are all connected;</h2>To each other, Biologically; To the Earth, Chemically; To the rest of the Universe - Atomically. <br/>― Neil deGrasse Tyson</blockquote> 
 
                        </header>
                        <div class="row">
                            <p>
                                <h2>And to the Internet, Digitally!  <input type="text"/></h2>
                              
                            </p>  
                            <h3>Welcome to the Super Neighborhood. Where the latest Blueprints Blox, Xtras & Costumez are "neXus" Door.</h3>
                            
                             <div class="alert alert-info col-md-3" style="height:200px;">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true"><i class="fa fa-3x fa-wrench"></i> </button> 
                                <h3><strong>Blueprints</strong></h3>
                                 <strong>Get a head start on the layout of your website/app with a blueprint. Pre-made, structurely & responsively sound formats.</strong>
                            </div>
                            <div class="alert alert-success  col-md-3" style="height: 200px">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true"><i class="fa fa-3x fa-cubes"></i> </button> 
                               <h3><strong>Blox</strong> </h3>
                                 <strong>Blox are Toy-like Blocks; Made up of HTML, CSS, & Javascript. A Blox thats packaged with Xtras are also Powered with PHP server-side logic.</strong>
                            </div>
                            <div class="alert alert-warning  col-md-3" style="height: 200px">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true"><i class="fa fa-3x fa-magic"></i> </button>
                                <h3><strong>Costumez</strong> </h3>
                                 <strong>Customize the look and feel of your site with Costumez. Choose from many pre-made design from the whole nexus community. </strong>
                            </div>
                            <div class="alert alert-danger  col-md-3" style="height: 200px">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true"><i class="fa fa-3x fa-gears"></i> </button>
                                <h3><strong>Xtras</strong> </h3>
                                <strong> Xtras add extra functionality to your Domain where there was none before. Web applications ranging from Blogs, Shops, Photo Galleries, Calendars etc. </strong>
                            </div>
                            
                           
                            <!-- <div class="alert alert-info col-md-3" style="background: #7f56bc;">
                                 <button type="button" class="close" data-dismiss="alert" aria-hidden="true"><i class="fa fa-desktop"></i> </button>
                                
                                <strong>Welcome Screen</strong> <br/>
                                Give your visitors a very welcoming greeting.
                            </div>
                            <div class="alert alert-success  col-md-3"  style="background: #bc8156;">

                                <strong><i class="fa fa-check"></i> Well done!</strong> You successfully read this important alert message.
                            </div>
                            <div class="alert alert-warning  col-md-3"  style="background: #565bbc;">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                <strong><i class="fa fa-bell-o"></i> Warning!</strong> Best check yo self, you're not looking too good.
                            </div>
                            <div class="alert alert-danger col-md-3"  style="background: #bc568d;">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                <i class="fa fa-ban"></i> <strong>Oh snap! You got an error!</strong> That was close, here is some more text.
                                
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div> 

     
</div>
<script type="text/javascript" src="/x/html/layout/watchtower/js/grid-live.js"> </script>
