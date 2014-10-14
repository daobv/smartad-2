<div class="wrapper">
    <div class="content">
        <div class="nav-content">
            <?php $form = $this->beginWidget('CActiveForm', array(
                'id' => 'login',
                'enableClientValidation' => true,
                'enableAjaxValidation' => true,
                'clientOptions' => array(
                    'validateOnSubmit' => true,
                ),
                'htmlOptions'=>array('class'=>'login-form'),
            )); ?>
            <div class="header">
                <h1>Đăng nhập</h1>
            </div>
            <div class="content">
                <input name="username" type="text" class="input username" placeholder="Tên đăng nhập"/>

                <div class="user-icon"></div>
                <input name="password" type="password" class="input password" placeholder="Mật khẩu"/>

                <div class="pass-icon"></div>
            </div>
            <div class="footer">
                <div class="rd"><input type="checkbox" class="radio"/><span>Nhớ mật khẩu</span></div>
                <a href="" class="qmk">Quên mật khẩu?</a>
                <input type="submit" name="submit" value="Login" class="button"/>
            </div>
            </form>
            <?php $this->endWidget(); ?>
        </div>
    </div>
</div>