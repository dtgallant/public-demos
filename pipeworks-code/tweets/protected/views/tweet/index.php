<?php
$this->breadcrumbs=array(
	'Tweets',
);

$this->menu=array(
	array('label'=>'Create Tweet', 'url'=>array('create')),
	//array('label'=>'Manage Tweet', 'url'=>array('admin')),
);
?>

<h1>Tweets</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
