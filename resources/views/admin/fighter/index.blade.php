@extends('layouts.admin')
@section('content')

<div>
    
        <section class="content-header">
            <div class="container-fluid">
              <div class="row mb-2">
                <div class="col-sm-6">
                  <h1>Fighters</h1>
                </div>
              </div>
            </div>
        </section>
        
        <div class="searchForm">
          
          <button type="button" class="mt-3 btn btn-success"><a href="/" class="nav-link">Add Fighters Now!</a></button>
          
          <form id="searchForm">
            <input type="search" class="form-control" id="searchInput" placeholder="Search by name..." onkeyup="filterFighters(1)">
          </form>
        </div>
        <table class="table table-dark table-hover" id="fightersTable">
            <thead>
              <tr>
                <th style="cursor: pointer;" scope="col" onclick="sortTable(0)">#ID <span>🔼</span></th>
                <th style="cursor: pointer;" scope="col" onclick="sortTable(1)">Name <span>🔼</span></th>
                <th style="cursor: pointer;" scope="col" onclick="sortTable(2)">Age <span>🔼</span></th>
                <th style="cursor: pointer;" scope="col" onclick="sortTable(3)">Weight <span>🔼</span></th>
                <th style="cursor: pointer;" scope="col" onclick="sortTable(4)">Country <span>🔼</span></th>
              </tr>
            </thead>
            <tbody id="fightersBody">
              @foreach($fighters as $fighter)
              <tr>
                <td scope="row">{{ $fighter->id }}</td>
                <th>{{ $fighter->first_name }} {{ $fighter->last_name }}</th>
                <td>{{ $fighter->age }} Years</td>
                <td>{{ $fighter->weight }} Kg</td>
                <td>{{ $fighter->country->title }}</td>
              </tr>
              @endforeach
            </tbody>
        </table>
    

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