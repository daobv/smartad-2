<?php
/* @var $this ApplicationController */
/* @var $model Application */

?>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="col-md-2 col-xs-2">
                <?php echo CHtml::image($model->image, $model->name, array("style" => 'width: 90%')) ?>
            </div>
            <div class="col-md-4 col-xs-4">
                <h5 style="text-transform: uppercase; color:#0054a6"><?php echo $model->name; ?></h5>

                <p><span style="font-weight: bold; color: #09468b"> Phát hành:</span> N/A</p>

                <p><span style="font-weight: bold; color: #09468b"> Tình trạng:</span> <span
                        class="label label-success"><?php echo $model['status']['name']?></span></p>

                <p><span style="font-weight: bold; color: #09468b"> Hình thức:</span>
                    <?php echo $model['appearance']['name']?> <i class="<?php echo $model['appearance']['image']?>" style="font-size: 16px; color: #b3c833;"></i>
                </p>

                <p><span style="font-weight: bold; color: #09468b"> Chấp nhận khu vực:</span> <?php echo $model['area']?></p>
            </div>
            <div class="col-md-5 col-xs-6">
                <p><span style="font-weight: bold; color: #09468b"> Tiền chia sẻ</span>: <?php echo $model['price']?> VNĐ</p>

                <p><span style="font-weight: bold; color: #09468b"> Thời gian:</span> từ <?php echo date("d/m/Y",strtotime($model['from']))?> đến <?php echo date("d/m/Y",strtotime($model['to']))?>
                </p>

                <p><span style="font-weight: bold; color: #09468b"> Dung lượng: </span> <?php echo $model['size'];?></p>
            </div>
        </div>
    </div>
    <div class="clearfix" style="height: 50px"></div>
    <div class="row2 tab-data">
        <div class="col-md-12">
            <ul class="nav nav-tabs tab-detailapp" id="myTab">
                <li class="active"><a href="#content_detail"> <b>Nội dung</b></a></li>
                <li class=""><a href="#code_embed"><b>Mã nhúng</b></a></li>
            </ul>

            <div class="tab-content" style="margin-bottom: 20px; padding:15px;">
                <div class="tab-pane active" id="content_detail">
                    <div class="tab_item">
                        <label> <b>Link phân phối:</b></label>

                        <p><a href="<?php echo Yii::app()->createUrl("cpi/".Yii::app()->user->name."/".$model->app_code);?>" target="_blank"><?php echo Yii::app()->getBaseUrl(true)."/cpi/".Yii::app()->user->name."/".$model->app_code; ?></a></p>

                    </div>
                    <div class="row-item" style="margin-bottom: 10px">
                        <label> <b>Mô tả</b> </label>
                        <div class="content_desc">
                            <div class="content_data"><p><?php echo $model->content; ?></p></div>
                        </div>
                    </div>
                </div>
                <!-- Tab of webmaster -->
                <!-- end tab of webmaster -->
            </div>
        </div>
    </div>
</div>

