<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="col-md-6" style="padding-left: 0px">
                <?php $form=$this->beginWidget('CActiveForm', array(
                    'id'=>'register-form',
                    'enableClientValidation'=>true,
                    'enableAjaxValidation'=>true,
                    'clientOptions'=>array(
                        'validateOnSubmit'=>true,
                    ),
                    'htmlOptions'=>array('class'=>'form-register form-login','id'=>'form_register')
                )); ?>
                    <fieldset>
                        <div class="form-group">
                            <!--<label class="control-label" for="inputUser">Tên đăng nhập</label> -->
                            <div class="controls">
                                <?php echo $form->textField($model,'full_name',array('class'=>'form-control','id'=>'inputUser','placeholder'=>'Tên đăng nhập')); ?>
                                <p>
                                    <small>Tối thiểu 3-30 ký tự. Chỉ cho phép chữ cái và số.</small>
                                </p>
                                <?php echo $form->error($model,'full_name',array('style'=>'padding-left:165px;color:#d04526;')); ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <!-- <label class="control-label" for="inputPass">Mật khẩu</label> -->
                            <div class="controls">
                                <?php echo $form->passwordField($model,'password',array('class'=>'form-control','id'=>'inputPassword','placeholder'=>'Password')); ?>
                                <p>
                                    <small>Mật khẩu từ 3 đến 10 ký tự. Chỉ cho phép chữ cái và số.</small>
                                </p>
                                <?php echo $form->error($model,'password',array('style'=>'padding-left:165px;color:#d04526;')); ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="controls">
                                <?php echo $form->textField($model,'phoneNumber',array('class'=>'form-control','id'=>'inputPhone','placeholder'=>'Số điện thoại')); ?>
                                    <small>Ví dụ: 0988546789, cần nhập đúng số điện thoại của bạn để đảm bảo quyền lợi
                                        của bạn.
                                    </small>
                                </p>
                                <?php echo $form->error($model,'phoneNumber',array('style'=>'padding-left:165px;color:#d04526;')); ?>
                            </div>
                        </div>

                        <div class="form-group">
                            <!-- <label class="control-label" for="inputEmail">Email</label> -->
                            <div class="controls">
                                <?php echo $form->textField($model,'email',array('class'=>'form-control','id'=>'inputEmail','placeholder'=>'Email')); ?>
                                <p>
                                    <small>Nhập đúng Email đang dùng để đảm bảo quyền lợi của bạn.</small>
                                </p>
                                <?php echo $form->error($model,'email',array('style'=>'padding-left:165px;color:#d04526;')); ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="controls">
                                <?php echo $form->textField($model,'identity_card',array('class'=>'form-control','id'=>'so_cmnd','placeholder'=>'Số chứng minh nhân dân')); ?>
                            </div>
                            <?php echo $form->error($model,'identity_card',array('style'=>'padding-left:165px;color:#d04526;')); ?>
                        </div>
                        <div class="form-group">
                            <div class="controls">
                                <input type="checkbox" name="i_agree" id="i_agree"> <label for="i_agree">Tôi đồng ý với
                                    các quy định của SmartAd.</label>

                                <p><label for="i_agree" class="error" style="display:none;"> </label></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="controls">
                                <button type="submit" name="submit_register" value="1" class="btn btn-success">Đăng ký
                                </button>
                            </div>
                        </div>

                    </fieldset>
                <?php $this->endWidget(); ?>
            </div>
            <div class="col-md-5 text-right">
                <div class="image_register">

                </div>
            </div>
        </div>
    </div>
</div>