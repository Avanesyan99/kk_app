@extends('layouts.admin')
@section('content')


<div>
  
  <table class="table table-dark">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Event Information</th>
        <th scope="col">Edit</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th scope="row">Title</th>
        <td>{{ $event->title }}</td>
        <td><a href=""><i class="bi bi-pencil-square" style="color: #000;"></i></a></td>
      </tr>
      <tr>
        <th scope="row">Type</th>
        <td>{{ $event->type }}</td>
        <td><a href=""><i class="bi bi-pencil-square" style="color: #000;"></i></a></td>

      </tr>
      <tr>
        <th scope="row">Image</th>
        <td>{{ $event->image }}</td>
        <td><a href=""><i class="bi bi-pencil-square" style="color: #000;"></i></a></td>

      </tr>
      <tr>
        <th scope="row">Place</th>
        <td>{{ $event->Country->title }}</td>
        <td><a href=""><i class="bi bi-pencil-square" style="color: #000;"></i></a></td>

      </tr>
      <tr>
        <th scope="row">Start</th>
        <td>{{ $event->date }}</td>
        <td><a href=""><i class="bi bi-pencil-square" style="color: #000;"></i></a></td>
        
      </tr>
      <tr>
        <th scope="row">Active</th>
        <td>{{ $event->is_active === 1 ? "Yes" : "No" }}</td>
        <td><a href=""><i class="bi bi-pencil-square" style="color: #000;"></i></a></td>
        
      </tr>
    </tbody>
  </table>
  
  <div class="btn-group" role="group" aria-label="Basic example">
      <a class="page-link btn btn-primary" href="{{ route('admin.event.index') }}">Back</a>
      <a class="page-link btn btn-primary" href="{{ route('admin.event.edit', $event->id) }}">Edit</a>
      <form action="{{ route('admin.event.delete', $event->id) }}" method="post">
          @csrf
          @method('delete')
          <button type="button" class="btn btn-primary">Delete</button>
      </form>
  </div>

  <div>
    <h4 style = "text-align: center;"><b>Event Text</b></h4>
    <p class="text">{{ $event->info }}</p>
  </div>

  
  <div>
    <h4 style = "text-align: center;"><b>Event Image</b></h4>
    <img src="{{ asset('storage/' . $event->image) }}" class="event_img" alt="Event Image">
  </div>

  
  <div>
    <h4 style = "text-align: center;"><b>Weight Categories</b></h4>

    <div>

    <table class="table table-dark table-hover">
      <thead>
        <tr>
          <th class=""></th>
        </tr>
      </thead>
    </table>

    </div>
  </div>

  <div>
    <h4 style = "text-align: center;"><b>Event Fighters</b></h4>
      <div>
        
        <div class="searchForm">
          <button type="button" class="btn btn-success"><a href="{{ route('admin.event.addFighters', $event->id) }}" class="nav-link">Add Fighters</a></button>

          <form id="searchForm">
            <input type="search" class="form-control" id="searchInput" placeholder="Search by name..." onkeyup="filterFighters(0)">
          </form>
        </div>
          <div class="flex">
            <div class="team-nav">
              <ol class="list-group list-group-numbered">
                @foreach($event->teams as $team) 
                <li class="list-group-item d-flex justify-content-between align-items-start">
                  <div class="ms-2 me-auto">
                    <div class="fw-bold white">{{ $team->title }}</div>
                  </div>
                  <span class="badge bg-primary rounded-pill">{{ $team->fighters->count }}</span>
                </li>
                @endforeach
              </ol>
            </div>
          <table class="table table-dark table-hover" id="fightersTable">
              <thead>
                <tr>
                  <th style="cursor: pointer;" scope="col" onclick="sortTable(0)">#ID <span>🔼</span></th>
                  <th style="cursor: pointer;" scope="col" onclick="sortTable(1)">Name <span>🔼</span></th>
                  <th style="cursor: pointer;" scope="col" onclick="sortTable(2)">Age <span>🔼</span></th>
                  <th style="cursor: pointer;" scope="col" onclick="sortTable(3)">Grade <span>🔼</span></th>
                  <th style="cursor: pointer;" scope="col" onclick="sortTable(4)">Country <span>🔼</span></th>
                  <th style="cursor: pointer;" scope="col" onclick="sortTable(5)">Category <span>🔼</span></th>
                  <th style="cursor: pointer;" scope="col" onclick="sortTable(5)">Teams <span>🔼</span></th>
                </tr>
              </thead>

              <tbody id="fightersBody">
                @foreach($teams->fighters as $fighter)
                <tr>
                  <td scope="row">{{ $fighter->id }}</td>
                  <th>{{ $fighter->first_name }} {{ $fighter->last_name }}</th>
                  <td>{{ $fighter->birth_date }}</td>
                  <td>{{ $fighter->grade }}</td>
                  <td>{{ $fighter->country->title }}</td>
                  <td><a href="">{{ $fighter->category->title }}</a></td>
                  <td>{{ $fighter->team->title }}</td>
                </tr>
                @endforeach
              </tbody>
          </table>
          </div>
      </div>

  </div>

</div>

@endsection

@section('script')

<!-- FIGHTERS SORTING SCRIPT -->

<script>
    function sortTable(columnIndex) {
        let table = document.getElementById("fightersTable");
        let rows = Array.from(table.getElementsByTagName("tr")).slice(1); // Убираем заголовок
        let ascending = table.dataset.sortOrder !== "asc"; // Переключаем порядок
        let headerCells = table.getElementsByTagName("th");

        rows.sort((rowA, rowB) => {
            let cellA = rowA.cells[columnIndex].innerText.trim();
            let cellB = rowB.cells[columnIndex].innerText.trim();

            if (!isNaN(cellA) && !isNaN(cellB)) { // Если числа, сортируем как числа
                return ascending ? cellA - cellB : cellB - cellA;
            }
            return ascending ? cellA.localeCompare(cellB) : cellB.localeCompare(cellA);
        });

        rows.forEach(row => table.appendChild(row)); // Обновляем порядок строк
        table.dataset.sortOrder = ascending ? "asc" : "desc"; // Запоминаем порядок

        updateSortIcons(columnIndex, ascending, headerCells);
    }

    function updateSortIcons(columnIndex, ascending, headerCells) {
        for (let i = 0; i < headerCells.length; i++) {
            let icon = headerCells[i].querySelector("span");
            if (icon) icon.innerText = "🔼"; // Сбрасываем значки
        }

        let currentIcon = headerCells[columnIndex].querySelector("span");
        if (currentIcon) currentIcon.innerText = ascending ? "🔼" : "🔽";
    }
</script>

<!-- SEARCH FORM -->

<script>
    function filterFighters(x) {
        let input = document.getElementById("searchInput").value.toLowerCase();
        let table = document.getElementById("fightersBody");
        let rows = table.getElementsByTagName("tr");

        for (let i = 0; i < rows.length; i++) {
            let nameCell = rows[i].getElementsByTagName("th")[x]; // Имя бойца
            if (nameCell) {
                let nameText = nameCell.textContent || nameCell.innerText;
                rows[i].style.display = nameText.toLowerCase().includes(input) ? "" : "none";
            }
        }
    }
</script>


@endsection