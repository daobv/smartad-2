<h4 style="margin-top: 1px">
    <i class="fa fa-star"></i>
    Danh Sách Ứng Dụng
    <table class="table-responsive table table-striped table-hover dataTable no-footer" id="tableTop5">
        <thead>
        <tr>
            <th width="" class="number">Ứng Dụng</th>
            <th width="10%" class="number">Hình Thức</th>
            <th width="10%" class="number">Action</th>
            <th width="10%" class="number">Clicks</th>
            <th width="15%" class="number">CTR</th>
            <th width="20%" class="number">Doanh Thu</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <?php foreach($data as $value):?>
             <?php $application = Application::model()->findByPk($value['app_id']);?>
             <?php if($application):?>
            <td><a href="#">
                    <img src="<?php echo $application->image; ?>"
                         style="max-width: 30px" class="icon-default">
                    <?php echo $application->name;?>
                </a>
            </td>
            <td><i class="<?php echo $application['appearance']['image']; ?>" style="font-size: 16px; color: #8dc63f;"></i>
                <?php echo $application['appearance']['name'];?>
            </td>
            <td>
                <?php echo $value['success']; ?>
            </td>
            <td>
                <?php echo $value['day_click']; ?>
            </td>
            <td>
                <?php if($value['success'] ==0) echo "0.00"; else printf("%4.2f",(float)($value['success']/$value['day_click']*100))?>%
            </td>
            <td>
                <?php printf("%3.0f",$value['revenue']);?> VNĐ
            </td>
                    <?php endif;?>
            <?php endforeach; ?>
        </tr>
        </tbody>
    </table>
</h4>