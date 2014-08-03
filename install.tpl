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
        {foreach $remote_xtras as $x => $xtra} 
        {if $xtra.icon && $key == $xtra.see}
                <div class="col-md-6 {if $xtras["$x"].version == $xtra.version}{/if}"> 
                   <section class="widget text-align-center">
                        <h1><i class="fa fa-{$xtra.mini} fa-4x"></i> </h1>
                        <h1> {$xtra.name} </h1> 
                        <p>{$xtra.desc}</p>
                        
                        
                    <!-- <img src="{$ICON.48}{$xtra.icon}" desc="{$xtra.desc}" link="{$xtra.link}" file="{$x}" icon="{$xtra.icon}" title="{$xtra.name}">  -->
                         <!-- {$xtra.desc} -->
                         {if $xtra.price}
                            <h1 style="position: absolute; top: 0; left; 5px; color: rgba(0,0,0,0.25);font-size: 333%">
                                <i class="fa fa-money"></i> {$xtra.price} 
                            </h1>
                        
                        {/if}
                        <a  href="/{$toBackDoor}/{$Xtra}/git/submodule/{$xtra.class}" title="{$xtra.desc}" class="btn btn-info btn-lg"  data-placement="top" data-original-title="{$xtra.desc}" >
                            <i class="fa fa-cloud-download"></i> Download</a>
                         <hr/>
                         <span class="label {if $xtras["$x"].alpha}label-danger{elseif $xtras["$x"].beta}label-warning{elseif $xtras["$x"].delta}label-success{elseif $xtras["$x"].omega}label-primary{else}label-default" disabled="disabled{/if}">
                         <i class="fa fa-globe"></i> {$xtras["$x"].version}</span>
                         vs. 
                         <span class="label {if $xtra.alpha}label-danger{elseif $xtra.beta}label-warning{elseif $xtra.delta}label-success{elseif $xtra.omega}label-primary{else}label-default" disabled="disabled{/if}"><i class="fa fa-ge"></i> {$xtra.version}</span><br/>
                    </section>
                </div>
            {/if}
        {/foreach}
        {/if}
    {/foreach}  
</div>

<script type="text/javascript" src="/x/html/layout/watchtower/js/grid-live.js"> </script>