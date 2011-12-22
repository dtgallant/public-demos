<div class="view">

<!--
	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />
-->

<!-- 	<b><?php echo CHtml::encode($data->getAttributeLabel('text')); ?>:</b> -->
	<?php echo CHtml::encode($data->text); ?>
	<br />

<!-- 	<b><?php echo CHtml::encode($data->getAttributeLabel('created_at')); ?>:</b> -->
	<br/><br/>
	<i><?php echo CHtml::encode($data->created_at); ?></i>
	<br />


</div>