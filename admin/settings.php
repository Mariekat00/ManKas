<?php
$plans = [
    ['name' => 'Basic', 'price' => '$10', 'tone' => 'basic', 'badge' => '<i class="fas fa-check"></i>', 'button' => 'Current Plan', 'copy' => 'Base features for up to 10 users with detailed projects and inventory.'],
    ['name' => 'Growth', 'price' => '$20', 'tone' => 'growth', 'badge' => 'Popular', 'button' => 'Upgrade Plan', 'copy' => 'Advance features and reporting, custom workflows and automations.'],
    ['name' => 'Scale', 'price' => '$30', 'tone' => 'scale', 'badge' => '', 'button' => 'Upgrade Plan', 'copy' => 'Personalized planning, advanced reports and spending in VIP access.'],
    ['name' => 'Enterprise', 'price' => '$40', 'tone' => 'enterprise', 'badge' => '', 'button' => 'Upgrade Plan', 'copy' => 'Personalized service and enterprise security for larger teams.'],
];
$rows = array_fill(0, 5, ['plan' => 'Basic Plan', 'amount' => 'USD $10.00', 'date' => 'Jan 2, 2023', 'card' => '1234']);
?>

<style>
    * { box-sizing: border-box; }
    body {
        margin: 0;
        background: #e9e8e6 !important;
        color: #25231f;
        font-family: Inter, -apple-system, BlinkMacSystemFont, "Segoe UI", Arial, sans-serif !important;
    }
    body .main-header, body .main-footer, body .brand-link, body .nav-sidebar p, body .nav-header { display: none !important; }
    body .wrapper { min-height: 100vh; background: #e9e8e6; }
    body .main-sidebar {
        position: fixed !important;
        inset: 18px auto 18px 18px !important;
        width: 64px !important;
        min-height: 0 !important;
        height: calc(100vh - 36px) !important;
        z-index: 30;
        border-radius: 24px;
        border: 1px solid rgba(255,255,255,.75);
        background: rgba(255,255,255,.96) !important;
        box-shadow: 0 24px 70px rgba(54,50,44,.12);
        overflow: hidden;
    }
    body .sidebar, body .os-content, body .os-padding, body .os-viewport {
        width: 100% !important;
        height: 100% !important;
        padding: 0 !important;
        overflow: visible !important;
    }
    body .sidebar { position: relative; padding-top: 22px !important; }
    body .sidebar:after {
        content: "";
        position: absolute;
        left: 13px;
        bottom: 14px;
        width: 38px;
        height: 38px;
        border-radius: 50%;
        background: url("<?php echo validate_image($_settings->userdata('avatar')) ?>") center/cover no-repeat, #f2f1ee;
        box-shadow: 0 8px 18px rgba(30,28,24,.16);
    }
    body .nav-sidebar {
        display: flex !important;
        flex-direction: column !important;
        align-items: center;
        gap: 10px;
        padding: 0;
        margin: 0 !important;
        list-style: none;
    }
    body .nav-sidebar .nav-item { width: 42px; list-style: none; }
    body .nav-sidebar .nav-link {
        width: 42px;
        height: 42px;
        margin: 0;
        padding: 0 !important;
        display: flex;
        align-items: center;
        justify-content: center;
        border-radius: 17px;
        color: #797b7f !important;
        text-decoration: none;
        background: transparent !important;
        transition: transform .22s ease, background .22s ease, color .22s ease;
    }
    body .nav-sidebar .nav-link:hover, body .nav-sidebar .nav-link.active {
        color: #20201e !important;
        background: #f1f0ed !important;
        transform: translateY(-1px);
    }
    body .nav-sidebar .nav-icon {
        display: inline-flex !important;
        align-items: center;
        justify-content: center;
        width: 18px !important;
        margin: 0 !important;
        font-size: 15px;
        color: currentColor;
    }
    body .content-wrapper {
        margin: 0 !important;
        padding: 22px 22px 22px 112px !important;
        min-height: 100vh !important;
        background: #e9e8e6 !important;
    }
    body .content {
        min-height: calc(100vh - 36px);
        border-radius: 24px;
        background: #f8f6f1;
        box-shadow: inset 0 1px rgba(255,255,255,.7), 0 18px 55px rgba(67,62,54,.08);
    }
    body .container-fluid { max-width: 1180px; margin: 0 auto; padding: 34px 38px 24px !important; }

    .premium-top { display: flex; align-items: center; justify-content: space-between; gap: 22px; margin-bottom: 8px; }
    .premium-top h1 { margin: 0; font-size: 31px; line-height: 1.1; font-weight: 800; letter-spacing: 0; color: #24231f; }
    .search-pill {
        width: min(280px,100%);
        height: 46px;
        display: flex;
        align-items: center;
        gap: 10px;
        padding: 0 16px 0 18px;
        border: 1px solid rgba(224,190,190,.65);
        border-radius: 999px;
        background: #f8e7e7;
        color: #908984;
    }
    .search-pill input { width: 100%; border: 0; outline: 0; background: transparent; color: #3d3b37; font-size: 14px; }
    .tabs { display: flex; gap: 26px; margin: 0 0 32px; overflow-x: auto; scrollbar-width: none; }
    .tabs::-webkit-scrollbar { display: none; }
    .tabs a {
        position: relative;
        flex: 0 0 auto;
        padding: 12px 0 10px;
        color: #9b9892;
        font-size: 13px;
        font-weight: 600;
        text-decoration: none;
    }
    .tabs a.active { color: #24231f; }
    .tabs a.active:after {
        content: "";
        position: absolute;
        left: 0;
        right: 0;
        bottom: 2px;
        height: 2px;
        border-radius: 999px;
        background: #24231f;
    }
    .section-title { margin-bottom: 22px; }
    .section-title h2, .history-head h2 { margin: 0; font-size: 16px; font-weight: 800; color: #2b2925; }
    .section-title p { margin: 5px 0 0; color: #96928a; font-size: 13px; }
    .settings-panel { display: none; }
    .settings-panel.active { display: block; }
    .settings-card-grid {
        display: grid;
        grid-template-columns: repeat(2, minmax(0, 1fr));
        gap: 18px;
    }
    .settings-card {
        min-height: 148px;
        padding: 22px;
        border-radius: 22px;
        background: #fff;
        box-shadow: 0 12px 28px rgba(63,59,53,.07);
    }
    .settings-card h3 {
        margin: 0 0 8px;
        color: #2b2925;
        font-size: 15px;
        font-weight: 800;
    }
    .settings-card p {
        margin: 0 0 16px;
        color: #817d75;
        font-size: 13px;
        line-height: 1.5;
    }
    .settings-input {
        width: 100%;
        height: 40px;
        border: 1px solid #e5e0d8;
        border-radius: 999px;
        background: #fbfaf7;
        color: #393733;
        padding: 0 14px;
        outline: 0;
    }
    .plans {
        display: grid;
        grid-template-columns: repeat(4, minmax(0,1fr));
        gap: 24px;
        margin-bottom: 34px;
    }
    .plan {
        min-height: 214px;
        padding: 24px;
        border-radius: 28px;
        border: 1px solid rgba(255,255,255,.74);
        box-shadow: 0 18px 42px rgba(52,49,44,.06);
        transition: transform .25s ease, box-shadow .25s ease;
    }
    .plan:hover { transform: translateY(-5px); box-shadow: 0 24px 55px rgba(52,49,44,.11); }
    .plan.basic { background: linear-gradient(135deg,#ececfe,#e5e0f7); }
    .plan.growth { background: linear-gradient(135deg,#fff4c8,#f8e8a8); }
    .plan.scale { background: linear-gradient(135deg,#fae7e4,#f4dcd8); }
    .plan.enterprise { background: linear-gradient(135deg,#e5f0ef,#d9e9eb); }
    .plan-head { display: flex; align-items: center; justify-content: space-between; margin-bottom: 22px; font-size: 13px; font-weight: 700; }
    .badge-dot {
        min-width: 22px;
        min-height: 22px;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        border: 1px solid rgba(35,34,31,.45);
        border-radius: 999px;
        color: #30302d;
        font-size: 10px;
        font-weight: 800;
    }
    .badge-dot.popular { padding: 3px 9px; background: rgba(255,255,255,.36); }
    .price { display: flex; align-items: baseline; gap: 7px; margin-bottom: 8px; }
    .price strong { color: #54514b; font-size: 32px; line-height: 1; font-weight: 850; }
    .price span { color: #6d6961; font-size: 12px; font-weight: 700; }
    .plan p { min-height: 38px; margin: 0 0 20px; color: #6f6b63; font-size: 12px; line-height: 1.45; }
    .plan button {
        min-width: 118px;
        min-height: 34px;
        border: 0;
        border-radius: 999px;
        background: #4e4b46;
        color: #fff;
        font-size: 12px;
        font-weight: 800;
        cursor: pointer;
        box-shadow: 0 10px 22px rgba(45,42,38,.18);
        transition: transform .2s ease, background .2s ease, box-shadow .2s ease;
    }
    .plan button:hover { transform: translateY(-1px); background: #24231f; box-shadow: 0 12px 28px rgba(45,42,38,.22); }
    .history-head { display: flex; align-items: center; justify-content: space-between; margin-bottom: 14px; }
    .filter { width: 34px; height: 34px; border: 0; border-radius: 50%; background: transparent; color: #56534d; }
    .history-list { display: grid; gap: 12px; }
    .history-row {
        display: grid;
        grid-template-columns: 24px 1.3fr .9fr auto;
        align-items: center;
        gap: 18px;
        min-height: 58px;
        padding: 10px 14px;
        border-radius: 10px;
        background: #fff;
        box-shadow: 0 8px 20px rgba(63,59,53,.08);
        transition: transform .2s ease, box-shadow .2s ease;
    }
    .history-row:hover { transform: translateY(-2px); box-shadow: 0 12px 26px rgba(63,59,53,.12); }
    .history-row input { width: 14px; height: 14px; accent-color: #24231f; }
    .invoice strong { display: block; color: #34312d; font-size: 12px; font-weight: 800; }
    .invoice span { display: block; margin-top: 4px; color: #a5a19a; font-size: 12px; font-weight: 600; }
    .card-brand { justify-self: end; display: flex; align-items: center; gap: 8px; color: #6d6963; font-size: 12px; font-weight: 700; white-space: nowrap; }
    .mc { position: relative; width: 25px; height: 15px; display: inline-block; }
    .mc:before, .mc:after { content: ""; position: absolute; top: 2px; width: 12px; height: 12px; border-radius: 50%; }
    .mc:before { left: 3px; background: #ee5b52; }
    .mc:after { right: 3px; background: #f0c75f; mix-blend-mode: multiply; }
    .download {
        min-height: 30px;
        padding: 0 12px;
        border: 1px solid #ddd9d2;
        border-radius: 999px;
        background: #fff;
        color: #393733;
        font-size: 12px;
        font-weight: 800;
        cursor: pointer;
    }
    @media (max-width: 1120px) { .plans { grid-template-columns: repeat(2,minmax(0,1fr)); } }
    @media (max-width: 760px) {
        body .main-sidebar { inset: 14px 16px auto 16px !important; width: calc(100% - 32px) !important; height: 62px !important; border-radius: 22px; }
        body .sidebar { padding: 10px 58px 10px 12px !important; }
        body .sidebar:after { left: auto; right: 14px; bottom: 12px; }
        body .nav-sidebar { flex-direction: row !important; overflow-x: auto; }
        body .content-wrapper { padding: 94px 16px 16px !important; }
        body .container-fluid { padding: 24px 18px !important; }
        .premium-top { align-items: flex-start; flex-direction: column; }
        .search-pill { width: 100%; }
        .plans { grid-template-columns: 1fr; }
        .settings-card-grid { grid-template-columns: 1fr; }
        .history-row { grid-template-columns: 24px 1fr auto; gap: 10px; }
        .card-brand { grid-column: 2 / -1; justify-self: start; }
    }
</style>

<main class="premium-settings">
    <header class="premium-top">
        <h1>Admin Settings</h1>
        <label class="search-pill">
            <input type="search" placeholder="Search">
            <i class="fas fa-search" aria-hidden="true"></i>
        </label>
    </header>

    <nav class="tabs" aria-label="Settings sections">
        <?php
        $tabs = [
            'details' => 'My details',
            'profile' => 'Profile',
            'password' => 'Password',
            'team' => 'Team',
            'billing' => 'Plans & Billing',
            'notification' => 'Notification',
            'integrations' => 'Integrations'
        ];
        foreach ($tabs as $key => $tab):
        ?>
            <a href="javascript:void(0)" data-tab="<?php echo $key ?>" class="<?php echo $key === 'billing' ? 'active' : '' ?>"><?php echo $tab ?></a>
        <?php endforeach; ?>
    </nav>

    <section class="settings-panel" data-panel="details">
        <div class="section-title">
            <h2>My details</h2>
            <p>Manage the information shown on your admin account.</p>
        </div>
        <div class="settings-card-grid">
            <article class="settings-card">
                <h3>Personal information</h3>
                <p>Update the name connected to the current session.</p>
                <input class="settings-input" value="<?php echo ucwords($_settings->userdata('firstname').' '.$_settings->userdata('lastname')) ?>" readonly>
            </article>
            <article class="settings-card">
                <h3>Account type</h3>
                <p>Your current role controls which admin modules are visible.</p>
                <input class="settings-input" value="<?php echo $_settings->userdata('type') == 1 ? 'Administrator' : 'Staff' ?>" readonly>
            </article>
        </div>
    </section>

    <section class="settings-panel" data-panel="profile">
        <div class="section-title">
            <h2>Profile</h2>
            <p>Review your public admin profile details.</p>
        </div>
        <div class="settings-card-grid">
            <article class="settings-card">
                <h3>Avatar</h3>
                <p>The avatar is used in the sidebar and account menu.</p>
                <input class="settings-input" value="<?php echo validate_image($_settings->userdata('avatar')) ?>" readonly>
            </article>
            <article class="settings-card">
                <h3>Business name</h3>
                <p>This is the name displayed across the admin workspace.</p>
                <input class="settings-input" value="<?php echo $_settings->info('name') ?>" readonly>
            </article>
        </div>
    </section>

    <section class="settings-panel" data-panel="password">
        <div class="section-title">
            <h2>Password</h2>
            <p>Password changes stay connected to the existing user management screen.</p>
        </div>
        <div class="settings-card">
            <h3>Security</h3>
            <p>Use the user list to edit account credentials and access details.</p>
            <button class="download" type="button" onclick="location.href='?page=user/list'">Open users</button>
        </div>
    </section>

    <section class="settings-panel" data-panel="team">
        <div class="section-title">
            <h2>Team</h2>
            <p>Manage members and service assignment.</p>
        </div>
        <div class="settings-card-grid">
            <article class="settings-card">
                <h3>Members</h3>
                <p>View active members who can be assigned to service requests.</p>
                <button class="download" type="button" onclick="location.href='?page=mechanics'">Open members</button>
            </article>
            <article class="settings-card">
                <h3>Users</h3>
                <p>Manage admin users and their access.</p>
                <button class="download" type="button" onclick="location.href='?page=user/list'">Open users</button>
            </article>
        </div>
    </section>

    <section class="settings-panel active" data-panel="billing">
        <div class="section-title">
            <h2>Plans &amp; Billing</h2>
            <p>Manage your plans and billing details.</p>
        </div>
        <div class="plans">
            <?php foreach ($plans as $plan): ?>
                <article class="plan <?php echo $plan['tone'] ?>">
                    <div class="plan-head">
                        <span><?php echo $plan['name'] ?></span>
                        <span class="badge-dot <?php echo $plan['tone'] === 'growth' ? 'popular' : '' ?>"><?php echo $plan['badge'] ?></span>
                    </div>
                    <div class="price"><strong><?php echo $plan['price'] ?></strong><span>per month</span></div>
                    <p><?php echo $plan['copy'] ?></p>
                    <button type="button"><?php echo $plan['button'] ?></button>
                </article>
            <?php endforeach; ?>
        </div>
    </section>

    <section class="settings-panel active" data-panel="billing">
        <div class="history-head">
            <h2>Billing history</h2>
            <button class="filter" type="button" aria-label="Filter"><i class="fas fa-sliders-h"></i></button>
        </div>
        <div class="history-list">
            <?php foreach ($rows as $index => $row): ?>
                <article class="history-row">
                    <input type="checkbox" aria-label="Select invoice <?php echo $index + 1 ?>">
                    <div class="invoice">
                        <strong><?php echo $row['plan'] ?> - <?php echo $row['amount'] ?></strong>
                        <span><?php echo $row['date'] ?></span>
                    </div>
                    <div class="card-brand"><span class="mc"></span><span>Card ending <?php echo $row['card'] ?></span></div>
                    <button class="download" type="button"><i class="fas fa-cloud-download-alt"></i> Download</button>
                </article>
            <?php endforeach; ?>
        </div>
    </section>

    <section class="settings-panel" data-panel="notification">
        <div class="section-title">
            <h2>Notification</h2>
            <p>Choose which admin events should be highlighted.</p>
        </div>
        <div class="settings-card-grid">
            <article class="settings-card">
                <h3>Service requests</h3>
                <p>Receive alerts when new commands are created or updated.</p>
                <button class="download" type="button">Enabled</button>
            </article>
            <article class="settings-card">
                <h3>Reports</h3>
                <p>Keep billing and service summaries easy to monitor.</p>
                <button class="download" type="button">Enabled</button>
            </article>
        </div>
    </section>

    <section class="settings-panel" data-panel="integrations">
        <div class="section-title">
            <h2>Integrations</h2>
            <p>Connect external tools used by the business.</p>
        </div>
        <div class="settings-card-grid">
            <article class="settings-card">
                <h3>Payments</h3>
                <p>Payment provider integration can be connected here later.</p>
                <button class="download" type="button">Not connected</button>
            </article>
            <article class="settings-card">
                <h3>Messaging</h3>
                <p>SMS or email notifications can be added to the workflow.</p>
                <button class="download" type="button">Not connected</button>
            </article>
        </div>
    </section>
</main>

<script>
$(function(){
    $('.tabs a').on('click', function(){
        var target = $(this).data('tab');
        $('.tabs a').removeClass('active');
        $(this).addClass('active');
        $('.settings-panel').removeClass('active');
        $('.settings-panel[data-panel="'+target+'"]').addClass('active');
    });
});
</script>
