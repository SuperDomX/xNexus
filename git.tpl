<div class="row">
	<div class="col-md-12">
		<section class="widget">
			<div class="jumbotron">	
				<h1> 
					Updated {$update}
				</h1>
				<h1><i class="fa fa-terminal fa-3x pull-right"></i></h3>
				{foreach $system as $l => $line}
					<h4>{$line}</h4>
				{/foreach}
				<a href="/{$toBackDoor}/{$Xtra}/" class="btn btn-success">
					<i class="fa fa-ge"></i> Nexus
				</a>
				<a href="/{$toBackDoor}/{$update|strtolower|substr:1}/"  class="btn btn-info">
					<i class="fa fa-{$xtras["$update.php"].mini}"></i> {$xtras["$update.php"].name}					
				</a> 
			</div>
		</section>
	</div>
</div>