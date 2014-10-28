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
                'summaryText' => '<h5 class="iFrames">Hiển thị từ {start} đến {end} trên {count} ứng dụng</h5>',
                'columns' => array(
                    array(
                        "name" => "",
                        'type' => 'html',
                        "value" => 'CHtml::link(CHtml::image($data->image,$data->name,array("style"=>"height:40px;"))
                    ,$data->image,array("id"=>"application-image"))',
                        'filter' => "",
                        'htmlOptions' => array('style' => 'width:5%;height:10px'),
                    ),
                    array(
                        'header'=>'Ứng Dụng',
                        'type'=>'raw',
                        'headerHtmlOptions'=>array('style'=>'padding-left:0px'),
                        'value'=>'CHtml::link($data->name,Yii::app()->createUrl("application/".$data->slug))',
                    ),
                    array(
                        'header'=>'Hình Thức',
                        'htmlOptions' =>array('style'=>'width:10%'),
                        'value'=>'$data["appearance"]["name"]',
                        'filter'=>CHtml::listData(AdvApperance::model()->findAll(), 'id', 'name')
                    ),
                    array(
                        'header'=>'Giá',
                        'value'=>'$data["price"]." VNĐ"'
                    ),
                    array(
                        'header'=>'Tình Trạng',
                        'htmlOptions' =>array('style'=>'width:10%'),
                        'value'=>'$data["status"]["name"]',
                        'filter'=>CHtml::listData(AdvStatus::model()->findAll(), 'id', 'name')
                    ),
                ),
            )); ?>
        </div>
    </div>
</div>