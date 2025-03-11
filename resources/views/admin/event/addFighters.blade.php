@extends('layouts.admin')
@section('content')

<div>
      
      <form action="{{ route('admin.event.storeFighters', $event->id) }}" method="post">
        @csrf
        @method('post')
          <div class="mb-3">
              <h1 for="fighters" class="form-label form-title mb-3">Event Fighters</h1>
              
              <div class="searchForm">
                  <div class="search-part">
                        <div class="">
                            <input class="form-control" type="text" placeholder="Name" id="searchInput" onkeyup="filterFighters(1)">
                        </div>
                    </div>

                    <div class="search-part">
                        <select class="search-select">
                            <option class="search-select-option" selected value="0">Country</option>
                            @foreach($countries as $country)
                                <option class="search-select-option" value="{{ $country->title }}" onkeyup="filterFighters(4)">{{ $country->title }}</option>
                            @endforeach
                        </select>
                    </div>
              </div>

              <table class="table table-dark" id="fightersTable">
                <thead>
                    
                <th style="cursor: pointer;" scope="col" onclick="sortTable(0)">#ID <span>🔼</span></th>
                <th style="cursor: pointer;" scope="col" onclick="sortTable(1)">Name <span>🔼</span></th>
                <th style="cursor: pointer;" scope="col" onclick="sortTable(2)">Age <span>🔼</span></th>
                <th style="cursor: pointer;" scope="col" onclick="sortTable(3)">Weight <span>🔼</span></th>
                <th style="cursor: pointer;" scope="col" onclick="sortTable(4)">Country <span>🔼</span></th>
                <th style="cursor: pointer;" scope="col" onclick="sortTable(5)">Checked <span>🔼</span></th>

                </thead>
                
                <tbody id="fightersBody">
                @foreach ($fighters as $fighter)

                    @php
                        $isChecked = $event->fighters->contains($fighter->id);
                    @endphp

                    <tr>
                        <th scope="row">{{ $fighter->id }}</th>
                        <th>{{ $fighter->f_name }} {{ $fighter->s_name }}</th>
                        <th>{{ $fighter->weight }}</th>
                        <th>{{ $fighter->age }}</th>
                        <th>{{ $fighter->country->title }}</th>
                        <th>
                            <input type="checkbox" name="fighters[{{ $fighter->id }}][status]" {{ $isChecked ? "checked" : "" }} value="participates">
                        </th>
                    </tr>
                @endforeach
                </tbody>
              </table>
            </div>
            
            <button type="submit" class="mt-3 btn btn-success">Add</button>
        </form>
        
</div>
@endsection

@section('script')

<script>
    function sortTable(columnIndex) {
        let table = document.getElementById("fightersTable");
        let rows = Array.from(table.getElementsByTagName("tr")).slice(1); // Убираем заголовок
        let ascending = table.dataset.sortOrder !== "asc"; // Переключаем порядок
        let headerCells = table.getElementsByTagName("th");

        rows.sort((rowA, rowB) => {
            let cellA = rowA.cells[columnIndex].innerText.trim();
            let cellB = rowB.cells[columnIndex].innerText.trim();

            if (columnIndex === 5) { // Сортировка для чекбоксов
                let checkedA = rowA.cells[columnIndex].querySelector("input").checked ? 1 : 0;
                let checkedB = rowB.cells[columnIndex].querySelector("input").checked ? 1 : 0;
                return ascending ? checkedB - checkedA : checkedA - checkedB;
            }

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

<script>
    function filterFighters(x) {
        let input = document.getElementById("searchInput").value.toLowerCase();
        let table = document.getElementById("fightersBody");
        let rows = table.getElementsByTagName("tr");

        for (let i = 0; i < rows.length; i++) {
            let nameCell = rows[i].getElementsByTagName("th")[x];
            if (nameCell) {
                let nameText = nameCell.textContent || nameCell.innerText;
                rows[i].style.display = nameText.toLowerCase().includes(input) ? "" : "none";
            }
        }
    }
</script>

@endsection