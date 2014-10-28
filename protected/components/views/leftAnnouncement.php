<div class="content-news-db">
    <div class="news-dansboad">
        <h4><i class="fa fa-list-alt "></i>Thông Báo<i style="float: right; padding-top: 6px" class="fa fa-rss"></i> </h4>
        <?php $this->widget('zii.widgets.grid.CGridView', array(
            'dataProvider'=>$model->search(),
            'htmlOptions'=>array('class'=>'list-news','id'=>'list-news','style'=>'padding-bottom:20px'),
            'summaryText' => '',
            'rowCssClass'=>array('gradeA odd', 'gradeA even'),
            'columns'=>array(
                array(
                    'type'=>'raw',
                    'value'=>'CHtml::link($data->title,"#",array("style"=>"padding-left:15px;padding-bottom:10px"))',
                     'headerHtmlOptions'=>array('style'=>'width:0%; display:none'),
                    'htmlOptions'=>array('class'=>'fa fa-star-o'),
                )
            ),
        )); ?>
    </div>
</div>
