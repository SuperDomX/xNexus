<div class="list-group">
    

    {$outdated = false}
    {foreach $xtras as $xtra => $x}
        {assign var=master value=$master_xtras["$xtra"]}
        {if $master.version != $x.version}
            {$outdated = true}
        {/if}
    {/foreach}


    {if $outdated}
        <a href="./git/pullShell/{$suite}" class="btn btn-primary btn-block">
            <!-- <i class="fa fa-chevron-right pull-right"></i> -->
            <i class="fa fa-cloud-download"></i> Latest Stable Release
        </a>
        <a href="#" class="list-group-item">
            <!-- <i class="fa fa-chevron-right pull-right"></i> -->
            <span class="badge">Master Version</span>
            
            <strong>Local Xtra</strong> - <span class="label  label-success "> VERSION</span> 
        </a> 

        {$outdated = false}
        {foreach $xtras as $xtra => $x} 
            {assign var=master value=$master_xtras["$xtra"]}
            <a href="/{$toBackDoor}/{$Xtra}/git/{$master.class}/" class="list-group-item  {if  $master.version == $x.version}hidden{/if} "> 
            {if $master_xtras["$xtra"].version == $x.version}
                <i class="fa fa-check text-success pull-right"></i> 
            {else}
                <i class="fa fa-git pull-right text-danger"></i> 
            {/if} 
                <span class="badge {if $master.alpha}badge-danger{elseif $master.beta}badge-warning{elseif $master.delta}badge-success{elseif $master.omega}badge-primary{else}badge-default{/if}">{$master.version}</span> 

                <i class="fa fa-{$x.mini}"></i>&nbsp;
               {$x.class} | <span class="label {if $x.alpha}label-danger{elseif $x.beta}label-warning{elseif $x.delta}label-success{elseif $x.omega}label-primary{else}label-default{/if}">{$x.version}</span> 
            </a>
            </pre>
        {/foreach} 
    {else}
        <a href="/{$toBackDoor}/{$Xtra}/git/pullShell/{$suite}" class="btn btn-success active disabled btn-block">
            <!-- <i class="fa fa-chevron-right pull-right"></i> -->
            <i class="fa fa-check"></i> Everything Up-to-date
        </a>
    {/if}
    <script type="text/javascript">
        window.updateXtra = function  ($class) {
            var yes = confirm("Are you sure you want to update "+$class );

            if(yes){
                //alert("Updating: "+"/{$toBackDoor}/{$Xtra}/git/"+$class+"/");
                location.href("/{$toBackDoor}/{$Xtra}/git/"+$class+"/");
            }

        }
    </script>
</div>