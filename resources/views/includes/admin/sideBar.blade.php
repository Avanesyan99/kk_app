<nav class="mt-2">
    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <li class="nav-header">ADMIN PANEL</li>
            <li class="nav-item">
                <a href="{{ route('admin.event.index') }}" class="nav-link">
                    <i class="nav-icon fas fa-calendar-alt"></i>
                    <p>
                        Events
                        <span class="badge badge-info right">2</span>
                    </p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{ route('admin.fighter.index') }}" class="nav-link">
                    <i class="nav-icon fas fa-calendar-alt"></i>
                    <p>
                        Fighters
                        <span class="badge badge-info right">2</span>
                    </p>
                </a>
            </li>
        </li>
    </ul>
</nav>