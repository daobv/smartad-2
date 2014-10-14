<?php
/* @var $this StaticPageController */
/* @var $dataProvider CActiveDataProvider */

?>
<div class="container marketing">
    <h1>Static Pages</h1>

    <?php $this->widget('zii.widgets.CListView', array(
        'dataProvider'=>$dataProvider,
        'itemView'=>'_view',
    )); ?>
</div>

