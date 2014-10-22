<?php
class UserInfo extends  CFormModel{
    //Login Information
    public $password;
    public $rePassword;
    public $email;
    //Account Information
    public $full_name;
    public $job;
    public $company;
    public $address;
    public $city;
    public $country;
    public $phone_number;
    public $store_channel;
    public $reference;
    //Payment Information
    public $identity_card;
    public $type;
    public $number;
    public $owner;
    public $branch;
    public function rules(){
        return array(
            // username and password are required
            array('full_name', 'length', 'min'=>3,'max'=>30,'tooLong'=>'Tên không được dài hơn 30 ký tự','tooShort'=>'Tên không được ngắn hơn 3 ký tự'),
            array('password', 'length', 'min'=>3,'max'=>10,'tooLong'=>'Mật khẩu không được dài hơn 10 ký tự','tooShort'=>'Tên không được ngắn hơn 3 ký tự'),
            array('number,identity_card,phoneNumber','numerical', 'integerOnly'=>true,'message'=>'Số điện thoại không hợp lệ'),
            array('rePassword', 'compare', 'compareAttribute'=>'password','message'=>"Mật khẩu không khớp"),
            array('email', 'email', 'allowEmpty'=>false,'message'=>'Email không hợp lệ'),
        );
    }
    public function attributeLabels(){
        return array(
            'email'=>'email',
            'password'=>'mật khẩu',
            'rePassword'=>"xác nhận mật khẩu",
            'full_name'=>'họ và tên',
            'job'=>'nghề nghiệp',
            'company'=>'công ty',
            'address'=>'địa chỉ',
            'city'=>'tỉnh,thành phố',
            'phone_number'=>'số điện thoại',
            'storeChannel'=>'kênh bán hàng',
            'identity_card'=>'số CMT',
            'type' =>'ngần hàng',
            'number'=>'số tài khoản',
            'owner'=>'chủ tài khoản',
            'branch'=>'chi nhánh'
        );
    }
}