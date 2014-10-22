<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="col-md-6" style="padding-left: 0px">
                <?php $form=$this->beginWidget('CActiveForm', array(
                    'id'=>'user-info',
                    'enableClientValidation'=>true,
                    'enableAjaxValidation'=>true,
                    'clientOptions'=>array(
                        'validateOnSubmit'=>true,
                    ),
                    'htmlOptions'=>array('class'=>'form-user-info form-login')
                )); ?>
                <fieldset>
                    <div class="form-group">
                        <!--<label class="control-label" for="inputUser">Tên đăng nhập</label> -->
                        <div class="controls">
                            <?php echo $form->textField($model,'full_name',array('class'=>'form-control','placeholder'=>'Họ Và Tên')); ?>
                            <p>
                                <?php echo $form->error($model,'full_name',array('style'=>'color:#d04526')); ?>
                                <small>Tối thiểu 3-30 ký tự. Chỉ cho phép chữ cái và số.</small>

                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="controls">
                            <?php echo $form->passwordField($model,'password',array('class'=>'form-control','placeholder'=>'Mật Khẩu')); ?>
                            <p>
                                <small>Mật khẩu từ 3 đến 10 ký tự. Chỉ cho phép chữ cái và số.</small>
                                <?php echo $form->error($model,'password',array('style'=>'color:#d04526')); ?>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="controls">
                            <?php echo $form->passwordField($model,'rePassword',array('class'=>'form-control','placeholder'=>'Nhập Lại Mật Khẩu')); ?>
                            <p>
                                <small>Mật khẩu từ 3 đến 10 ký tự. Chỉ cho phép chữ cái và số.</small>
                                <?php echo $form->error($model,'rePassword',array('style'=>'color:#d04526')); ?>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="controls">
                            <?php echo $form->textField($model,'phone_number',array('class'=>'form-control','placeholder'=>'Số Điện Thoại')); ?>
                            <small>Ví dụ: 0988546789, cần nhập đúng số điện thoại của bạn để đảm bảo quyền lợi
                                của bạn.
                            </small>
                            <?php echo $form->error($model,'phone_number',array('style'=>'color:#d04526')); ?>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="controls">
                            <?php echo $form->textField($model,'email',array('class'=>'form-control','placeholder'=>'Email')); ?>
                            <p>
                                <small>Nhập đúng Email đang dùng để đảm bảo quyền lợi của bạn.</small>
                                <?php echo $form->error($model,'email',array('style'=>'color:#d04526')); ?>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="controls">
                            <?php echo $form->textField($model,'job',array('class'=>'form-control','placeholder'=>'Nghề nghiệp')); ?>
                            <p>
                            <?php echo $form->error($model,'job',array('style'=>'color:#d04526')); ?>
                            </p>

                        </div>
                    </div>
                    <div class="form-group">
                        <div class="controls">
                            <?php echo $form->textField($model,'company',array('class'=>'form-control','placeholder'=>'Công ty')); ?>
                            <p>
                                <?php echo $form->error($model,'company',array('style'=>'color:#d04526')); ?>
                            </p>

                        </div>
                    </div>
                    <div class="form-group">
                        <div class="controls">
                            <?php echo $form->textField($model,'address',array('class'=>'form-control','placeholder'=>'Địa chỉ')); ?>
                            <p>
                                <?php echo $form->error($model,'address',array('style'=>'color:#d04526')); ?>
                            </p>

                        </div>
                    </div>
                    <div class="form-group">
                        <div class="controls">
                            <?php echo $form->textField($model,'city',array('class'=>'form-control','placeholder'=>'Tỉnh/Thành Phố')); ?>
                            <p>
                                <?php echo $form->error($model,'city',array('style'=>'color:#d04526')); ?>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="controls">
                            <?php echo $form->textField($model,'store_channel',array('class'=>'form-control','placeholder'=>'Kênh Bán Hàng')); ?>
                            <p>
                                <?php echo $form->error($model,'store_channel',array('style'=>'color:#d04526')); ?>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="controls">
                            <?php echo $form->textField($model,'identity_card',array('class'=>'form-control','placeholder'=>'Số CMTND')); ?>
                            <p>
                                <?php echo $form->error($model,'identity_card',array('style'=>'color:#d04526')); ?>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="controls">
                            <?php echo $form->textField($model,'type',array('class'=>'form-control','placeholder'=>'Ngân Hàng')); ?>
                            <p>
                                <?php echo $form->error($model,'type',array('style'=>'color:#d04526')); ?>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="controls">
                            <?php echo $form->textField($model,'owner',array('class'=>'form-control','placeholder'=>'Chủ Tài Khoản')); ?>
                            <p>
                                <?php echo $form->error($model,'owner',array('style'=>'color:#d04526')); ?>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="controls">
                            <?php echo $form->textField($model,'number',array('class'=>'form-control','placeholder'=>'Số Tài Khoản')); ?>
                            <p>
                                <?php echo $form->error($model,'number',array('style'=>'color:#d04526')); ?>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="controls">
                            <?php echo $form->textField($model,'branch',array('class'=>'form-control','placeholder'=>'Chi Nhánh')); ?>
                            <p>
                                <?php echo $form->error($model,'branch',array('style'=>'color:#d04526')); ?>
                            </p>
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
                    <img src="http://pub.adflex.vn/default/images/img_phone.png" class="img-responsive">
                </div>
            </div>
        </div>
    </div>
</div>