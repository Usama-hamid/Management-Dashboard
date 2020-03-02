<?php
//die(json_encode($_SESSION));
$menu = '<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

  <!-- Sidebar - Brand -->
  <a class="sidebar-brand d-flex align-items-center justify-content-center" href="dashboard.php">
    <div class="sidebar-brand-icon rotate-n-15">
      <i class="fas fa-laugh-wink"></i>
    </div>
    <div class="sidebar-brand-text mx-3">Management Dashboard</div>
  </a>

<!--'.company_name($LOGIN_ORG_ID).' -->

  <!-- Divider -->
  <hr class="sidebar-divider my-0">

  <!-- Nav Item - Dashboard -->
  <li class="nav-item active">
    <a class="nav-link" href="dashboard.php">
      <i class="fas fa-fw fa-tachometer-alt"></i>
      <span>Dashboard</span></a>
  </li>

  <!-- Divider -->
  <hr class="sidebar-divider">

  <!-- Nav Item - List_Users -->
  <li class="nav-item">
    <a class="nav-link" href="list_companies.php">
      <i class="fas fa-building"></i>
      <span>Companies</span></a>
  </li>

  <!-- Divider -->
  <hr class="sidebar-divider">

  <!-- Nav Item - List_Users -->
  <li class="nav-item">
    <a class="nav-link" href="list_admins.php">
      <i class="fas fa-users"></i>
      <span>Admins</span></a>
  </li>

  <!-- Divider -->
  <hr class="sidebar-divider">

  <!-- Nav Item - List_Users -->
  <li class="nav-item">
    <a class="nav-link" href="list_users.php">
      <i class="fas fa-users"></i>
      <span>Users</span></a>
  </li>



  <!-- Divider -->
  <hr class="sidebar-divider d-none d-md-block ">
<br>
  <!-- Sidebar Toggler (Sidebar) -->
  <div class="text-center d-none d-md-inline "  >
    <button class="rounded-circle border-0" id="sidebarToggle"></button>
  </div>

</ul>'

?>
