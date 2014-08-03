<div class="row">
    <div class="col-md-12">
        <section class="widget">
            <div class="jumbotron">
                <h1><i class="fa fa-cloud"></i> Add & Remove Xtras</h1>
                <p>
                   Choose from many Xtras to Install into SuperDom. 
                   <br/>
                   <span class="label label-success"><i class="fa fa-ge"></i> Nexus Server : {$CONFIG.super_nexus}</span>
                </p>
                <!-- <a href="/{$toBackDoor}/access" class="btn btn-info btn-lg"><i class="fa fa-lock"></i> Manage Locks</a> -->
                <!-- <a href="/{$toBackDoor}/access" class="btn btn-warning btn-lg"><i class="fa fa-key"></i> Master Key</a> -->
            </div>  
        </section>
    </div>

    {foreach $admin_menu as $key => $item}
        {if $key} 
        <div class="col-md-12"> 
            <section class="widget">
                <h1><i class="fa fa-{$key} fa-1x"></i> {$item.area|ucfirst}<small>
                    {$item.desc}
                </small></h1>
                
            </section>
        </div>
        {foreach $xtras as $x => $xtra}
        {if $xtra.icon && $key == $xtra.see}
                <div class="col-md-4 {if $master_xtras["$x"].version == $xtra.version}hidden{/if}"> 
                   <section class="widget text-align-center">
                        <h1><i class="fa fa-{$xtra.mini} fa-4x"></i><br/> {$xtra.name} </h1>
                    <!-- <img src="{$ICON.48}{$xtra.icon}" desc="{$xtra.desc}" link="{$xtra.link}" file="{$x}" icon="{$xtra.icon}" title="{$xtra.name}">  -->
                         <!-- {$xtra.desc} -->
                         <br/>
                        <a  href="/x/{$xtra.link}" title="{$xtra.desc}"  data-placement="top" data-original-title="{$xtra.desc}" class="btn btn-lg {if $xtra.alpha}btn-danger{elseif $xtra.beta}btn-warning{elseif $xtra.delta}btn-success{elseif $xtra.omega}btn-primary{else}btn-default" disabled="disabled{/if}" >  
                            
                            <i class="fa fa-cloud-download"></i> Install
                            
                          
                        </a>
                    </section>
                </div>
            {/if}
        {/foreach}
        {/if}
    {/foreach}  
</div>

<script type="text/javascript" src="/x/html/layout/watchtower/js/grid-live.js"> </script>