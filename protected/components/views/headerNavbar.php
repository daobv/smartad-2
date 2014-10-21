<div class="header navbar" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a  href="<?php echo Yii::app()->getBaseUrl(true); ?>" ><img src ="<?php echo Setting::getSetting("logo")?>"> </a>
        </div>
        <div class="collapse navbar-collapse">
        <ul class="nav nav-pills pull-right">
        <?php foreach($categories  as $category):?>
            <?php $subCategories = $category->getReverseArrayCategory($category)?>
            <li class="dropdown">
                <a href="<?php echo $category->slug; ?>" <?php if(count($subCategories)  > 0):?>class="dropdown-toggle" data-toggle="dropdown" <?php endif;?>>
                    <?php echo $category->name;?><b class="caret">
                    </b>
                </a>
                <?php if(count($subCategories) > 0):?>
                     <ul class="dropdown-menu">
                <?php foreach($subCategories as $subCategory):?>
                        <li><a href="<?php echo Yii::app()->createUrl('chuyen-muc/'.$subCategory->slug); ?>"><?php echo $subCategory->name?></a></li>
                <?php endforeach; ?>
                     </ul>
                <?php endif;?>
            </li>
            <?php endforeach; ?>
            <?php if(!Yii::app()->user->isGuest):?>
                <li class="dropdown">
                    <a href="<?php echo Yii::app()->createUrl("application/");?>" >
                        Kho CPI<b class="caret">
                        </b>
                    </a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" >
                        Xin chào, <?php echo Yii::app()->user->name;?><b class="caret">
                        </b>
                    </a>
                        <ul class="dropdown-menu">
                                <li><a href="">Thông Tin Tài Khoản</a></li>
                                <li><a href="<?php echo Yii::app()->createUrl('user/revenue')?>">Xem Báo Cáo</a></li>
                                <li><a href="<?php echo Yii::app()->createUrl('user/logout')?>">Thoát</a></li>
                        </ul>
                </li>
            <?php else:;?>
            <li class="dropdown login">
                <button class="dropdown-toggle btn btn-primary" data-toggle="dropdown">Đăng nhập <b class="caret"></b></button>
                <ul class="dropdown-menu" style="padding: 15px;min-width: 250px;">
                    <li>
                        <div class="row">
                            <div class="col-md-12">
                                <?php $form=$this->beginWidget('CActiveForm', array(
                                    'id'=>'login-form',
                                    'enableClientValidation'=>true,
                                    'clientOptions'=>array(
                                        'validateOnSubmit'=>true,
                                    ),
                                    'action'=>Yii::app()->createUrl('user/login')
                                )); ?>

                                    <div class="form-group">
                                        <label class="sr-only" for="exampleInputEmail2"><?php echo $form->labelEx($model,'username'); ?></label>
                                        <?php echo $form->textField($model,'username',array('class'=>'form-control',)); ?>
                                        <?php echo $form->error($model,'username'); ?>
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only" for="exampleInputPassword2"><?php echo $form->labelEx($model,'password'); ?></label>
                                        <?php echo $form->passwordField($model,'password',array('class'=>'form-control',)); ?>
                                        <?php echo $form->error($model,'username'); ?>
                                    </div>
                                    <div class="checkbox">
                                        <?php echo $form->checkBox($model,'rememberMe'); ?>
                                        <label>
                                            <?php echo $form->label($model,'rememberMe'); ?>
                                            <?php echo $form->error($model,'rememberMe'); ?>
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-success btn-block">Đăng nhập</button>
                                    </div>
                                <?php $this->endWidget(); ?>
                            </div>
                        </div>
                    </li>
                </ul>
            </li>
            <li><button type="button" onclick="window.location='<?php echo Yii::app()->createUrl("user/register")?>';" class="btn btn-lg btn-default">Đăng ký</button></li>
            <?php endif;?>
        </ul><!--/.navbar-collapse -->
        </div>
    </div>
</div>