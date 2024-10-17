<?php 
require_once('./../../config.php');
$qry = $conn->query("SELECT s.*,c.category FROM `service_requests` s inner join `categories` c where s.id = '{$_GET['id']}' ");
foreach($qry->fetch_array() as $k => $v){
    $$k = $v;
}
$meta = $conn->query("SELECT * FROM `request_meta` where request_id = '{$id}'");
while($row = $meta->fetch_assoc()){
    ${$row['meta_field']} = $row['meta_value'];
}
$services  = $conn->query("SELECT * FROM service_list where id in ({$service_id}) ");
?>
<style>
    #uni_modal .modal-footer{
        display:none
    }
</style>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-6">
            <dl>
                <dt><b>Type Vehicle</b></dt>
                <dd class="pl-2"><?php echo $category ?></dd>
                <dt><b>Nom Propriétaire Name</b></dt>
                <dd class="pl-2"><?php echo $owner_name ?></dd>
                <dt><b>Contact Propriétaire</b></dt>
                <dd class="pl-2"><?php echo $contact ?></dd>
                <dt><b>Email Propriétaire</b></dt>
                <dd class="pl-2"><?php echo $email ?></dd>
                <dt><b>Addresse Propriétaire</b></dt>
                <dd class="pl-2"><?php echo $address ?></dd>
                <dt><b>Type commande</b></dt>
                <dd class="pl-2"><?php echo $service_type ?></dd>
                <dt><b>Status</b></dt>
                <dd class="pl-2">
                    <?php if($status == 1): ?>
                        <span class="badge badge-primary">Confirmé</span>
                    <?php elseif($status == 2): ?>
                        <span class="badge badge-warning">En cours</span>
                    <?php elseif($status == 3): ?>
                        <span class="badge badge-success">Términé</span>
                    <?php elseif($status == 4): ?>
                        <span class="badge badge-danger">Annulé</span>
                    <?php else: ?>
                        <span class="badge badge-secondary">En attente</span>
                    <?php endif; ?>
                </dd>
            </dl>
        </div>
        <div class="col-sm-6">
            <dl>
                <dt><b>Nom du vehicle</b></dt>
                <dd class="pl-2"><?php echo $vehicle_name ?></dd>
                <dt><b>Numéro d'inscription du Vehicle</b></dt>
                <dd class="pl-2"><?php echo $vehicle_registration_number ?></dd>
                <dt><b>Modèle Vehicle</b></dt>
                <dd class="pl-2"><?php echo $vehicle_model ?></dd>
                <dt><b>Service/s:</b></dt>
                <dd class="pl-2">
                    <ul>
                        <?php 
                        while($srow= $services->fetch_assoc()):
                         ?>
                        <li><?php echo $srow['service'] ?></li>
                        <?php endwhile; ?>
                    </ul>
                </dd>
            </dl>
        </div>
    </div>
    <div class="w-100 d-flex justify-content-end mx-2">
        <div class="col-auto">
            <button class="btn btn-light btn-sm rounded-0" type="button" data-dismiss="modal">Férmer</button>
        </div>
    </div>
</div>