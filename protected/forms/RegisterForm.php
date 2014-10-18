<?php
class RegisterForm extends  CFormModel{
    public $full_name;
    public $username;
    public $password;
    public $rePassword;
    public $identity_card;
    public $phoneNumber;
    public $email;
    public $verifyCode;
    public $acceptRules;
    public function rules(){
        return array(
            // username and password are required
            array('full_name,username,email,password,rePassword,phoneNumber,identity_card', 'required','message'=>"Vui lòng nhập {attribute}"),
            array('acceptRules', 'boolean'),
            array('username','unique','enableClientValidation'=>true,
                'attributeName'=>'email','className'=>'User','skipOnError'=>false,
                'message'=>"'{value}' đã tồn tại"),
            array('email','unique','enableClientValidation'=>true,
                'attributeName'=>'email','className'=>'User','skipOnError'=>false,
                'message'=>"'{value}' đã tồn tại"),
            array('rePassword', 'compare', 'compareAttribute'=>'password','message'=>"Mật khẩu không khớp"),
            array('email', 'email', 'allowEmpty'=>false,'message'=>'Email không hợp lệ'),
            array('verifyCode', 'ext.captchaExtended.CaptchaExtendedValidator', 'allowEmpty'=>!CCaptcha::checkRequirements(),"message"=>"Captcha không hợp lệ"),
        );
    }
    public function attributeLabels(){
        return array(
            'full_name'=>'Tên',
            'username'=>'Email Đăng Nhập',
            'password'=>'Mật Khẩu',
            'identity_card'=>'Số CMT',
            'rePassword'=>"Xác Nhận Mật Khẩu",
            'phoneNumber'=>'Số Điện Thoại',
            'verifyCode' =>"Mã Captcha",
            'acceptRules' => "Đồng Ý"
        );
    }
}