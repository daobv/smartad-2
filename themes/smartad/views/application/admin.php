<?php
/* @var $this ApplicationController */
/* @var $model Application */

?>
<div class="container">
    <div class="row">

        <div class="col-md-12">
            <?php $this->widget('zii.widgets.grid.CGridView', array(
                'id' => 'application-grid',
                'dataProvider' => $model->search(),
                'itemsCssClass'=>'table-responsive table table-striped table-hover dataTable no-footer',
                'summaryText' => '<h5 class="iFrames">Hiển thị từ {start} đến {end} trên {count} bản ghi</h5>',
                'columns' => array(
                    array(
                        "name" => "",
                        'type' => 'html',
                        "value" => 'CHtml::link(CHtml::image($data->image,$data->name,array("style"=>"height:40px;"))
                    ,$data->image,array("id"=>"application-image"))',
                        'filter' => "",
                        'htmlOptions' => array('style' => 'width: 40px;height:10px'),
                    ),
                    array(
                        'name'=>'name',
                        'type'=>'raw',
                        'value'=>'CHtml::link($data->name,Yii::app()->createUrl("application/".$data->slug))',
                    ),
                    array(
                        'name'=>'appearance_id',
                        'htmlOptions' =>array('style'=>'width:50px'),
                        'value'=>'$data["appearance"]["name"]',
                        'filter'=>CHtml::listData(AdvApperance::model()->findAll(), 'id', 'name')
                    ),
                    array(
                        'name'=>'price',
                        'value'=>'$data["price"]." VNĐ"'
                    ),
                    array(
                        'name'=>'status_id',
                        'htmlOptions' =>array('style'=>'width:50px'),
                        'value'=>'$data["status"]["name"]',
                        'filter'=>CHtml::listData(AdvStatus::model()->findAll(), 'id', 'name')
                    ),
                ),
            )); ?>
        </div>
    </div>
</div>