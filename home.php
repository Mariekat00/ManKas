 <!-- Header-->
 <header class="bg-dark py-5" id="main-header">
    <div class="container h-100 d-flex align-items-end justify-content-center w-100">
        <div class="text-center text-white w-100">
            <h1 class="display-4 fw-bolder"><?php echo $_settings->info('name') ?></h1>
            <p class="lead fw-normal text-white-50 mb-0">Chez ManKas Corporation nous faisons briller votre voiture comme neuve en 
                quelque minutes. Avec nos services de lavage rapide, vous serez de retour sur la route un rien de temps. 
                Parfait pour votre dimanche en couple !</p>
            <div class="col-auto mt-2">
                <button class="btn btn-primary btn-lg rounded-50" id="send_request" type="button">Fait une réservation</button>
            </div>
        </div>
    </div>
</header>
<!-- Section-->
<section class="py-5">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row">
            <div class="col-md-4">
                <h3 class="text-center">Nous faisons un service pour :</h3>
                <hr class="bg-primary opacity-100">
                <ul class="list-group">
                    <?php 
                    $category = $conn->query("SELECT * FROM `categories` where status = 1 order by `category` asc");
                    while($row=$category->fetch_assoc()):
                    ?>
                    <li class="list-group-item"><b><?php echo $row['category'] ?></b></li>
                    <?php endwhile; ?>
                </ul>
            </div>
            <div class="col-md-8">
                <h3 class="text-center">Nos Services</h3>
                <hr class="bg-primary opacity-100">
                <div class="form-group">
                <div class="input-group mb-3">
                    <input type="search" id="search" class="form-control" placeholder="Chercher un service ici" aria-label="Search Service Here" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                        <span class="input-group-text bg-primary" id="basic-addon2"><i class="fa fa-search"></i></span>
                    </div>
                </div>
                </div>
                <div class="row gx-4 gx-lg-5 row-cols-1 row-cols-sm-1 row-cols-md-2 row-cols-xl-2" id="service_list">
                    <?php 
                    $services = $conn->query("SELECT * FROM `service_list` where status = 1 order by `service`");
                    while($row= $services->fetch_assoc()):
                        $row['description'] = strip_tags(html_entity_decode(stripslashes($row['description'])));
                    ?>
                    <a class="col item text-decoration-none text-dark view_service" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">
                        <div class="callout callout-primary border-primary rounded-0">
                            <dl>
                                <dt><?php echo $row['service'] ?></dt>
                                <dd class="truncate-3 text-muted lh-1"><small><?php echo $row['description'] ?></small></dd>
                            </dl>
                        </div>
                    </a>
                    <?php endwhile; ?>
                </div>
                <div id="noResult" style="display:none" class="text-center"><b>Pas de résultat</b></div>
            </div>
        </div>
    </div>
</section>
<script>
    $(function(){
        $('#search').on('input',function(){
            var _search = $(this).val().toLowerCase().trim()
            $('#service_list .item').each(function(){
                var _text = $(this).text().toLowerCase().trim()
                    _text = _text.replace(/\s+/g,' ')
                    console.log(_text)
                if((_text).includes(_search) == true){
                    $(this).toggle(true)
                }else{
                    $(this).toggle(false)
                }
            })
            if( $('#service_list .item:visible').length > 0){
                $('#noResult').hide('slow')
            }else{
                $('#noResult').show('slow')
            }
        })
        $('#service_list .item').hover(function(){
            $(this).find('.callout').addClass('shadow')
        })
        $('#service_list .view_service').click(function(){
            uni_modal("Service Details","view_service.php?id="+$(this).attr('data-id'),'mid-large')
        })
        $('#send_request').click(function(){
            uni_modal("Fill the Service Request Form","send_request.php",'large')
        })

    })
    $(document).scroll(function() { 
        $('#topNavBar').removeClass('bg-transparent navbar-dark bg-primary')
        if($(window).scrollTop() === 0) {
           $('#topNavBar').addClass('navbar-dark bg-transparent')
        }else{
           $('#topNavBar').addClass('navbar-dark bg-primary')
        }
    });
    $(function(){
        $(document).trigger('scroll')
    })
</script>