@extends('layouts.stisla.index', ['title' => 'Halaman Data Transaksi', 'page_heading' => 'Daftar Transaksi'])

@section('content')
<div class="card">
    <div class="row">
        <!-- //filter tahun -->
        <div class="col-lg-12">
            <!-- //form  -->
            <form action="" method="get" id="filter" style="margin-left: 20px;margin-right: 20px;">
                <div class="form-group">
                    <label for="tahun">Tahun</label>
                    <select class="form-control" id="tahun" name="tahun">
                        <option value="">-- Pilih Tahun --</option>
                        @foreach($tahun as $t)
                        <option value="{{ $t->id }}" {{ $t->id == request()->get('tahun') ? 'selected' : '' }}>{{ $t->tahun }}</option>
                        @endforeach
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Filter</button>
            </form>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">


            <form action="{{ route('transaksi.menu') }}" method="POST">
                @csrf
                <input type="text" name="menu" id="menu" value="Test" hidden>
                <button type="submit" class="btn btn-primary float-right mt-3 mx-3">
                    Json Menu
                </button>
            </form>


            <!-- Json Transaksi  -->
            <form action="{{ route('transaksi.json') }}" method="POST">
                @csrf
                <input type="text" name="json" id="json" value="Test" hidden>
                <button type="submit" class="btn btn-primary float-right mt-3 mx-3">
                    Json Transaksi
                </button>
            </form>

        </div>
    </div>

    <!-- Modal -->


    <script>
        $(document).ready(function() {
            $('#datatable').DataTable();
        });



        // filter 
    </script>


    <script type="text/javascript">
        var frm = $('#filter');

        frm.submit(function(e) {

            e.preventDefault();
            var tahun = $('#tahun').val();
            console.log(tahun);
            $.ajax({
                type: frm.attr('method'),
                url: frm.attr('action'),
                data: frm.serialize(),
                success: function(data) {
                    console.log('Submission was successful.');
                    console.log(data);
                },
                error: function(data) {
                    console.log('An error occurred.');
                    console.log(data);
                },
            });
        });
    </script>

    <div class="row px-3 py-3">
        <div class="col-lg-12">
            <div class="table-responsive">
                <table class="table table-bordered table-hover" id="datatable">

                    <thead>
                        <thead>
                            <tr class="table-blue">
                                <th rowspan="2" style="text-align:center;vertical-align: middle;width: 250px;">Menu</th>
                                <th colspan="12" style="text-align: center;">Periode Pada 2021
                                </th>
                                <th rowspan="2" style="text-align:center;vertical-align: middle;width:75px">Total</th>
                            </tr>
                            <tr class="table-blue">
                                <th style="text-align: center;width: 75px;">Jan</th>
                                <th style="text-align: center;width: 75px;">Feb</th>
                                <th style="text-align: center;width: 75px;">Mar</th>
                                <th style="text-align: center;width: 75px;">Apr</th>
                                <th style="text-align: center;width: 75px;">Mei</th>
                                <th style="text-align: center;width: 75px;">Jun</th>
                                <th style="text-align: center;width: 75px;">Jul</th>
                                <th style="text-align: center;width: 75px;">Ags</th>
                                <th style="text-align: center;width: 75px;">Sep</th>
                                <th style="text-align: center;width: 75px;">Okt</th>
                                <th style="text-align: center;width: 75px;">Nov</th>
                                <th style="text-align: center;width: 75px;">Des</th>
                            </tr>
                        </thead>
                        <!-- <tr>
                            <th scope="col">#</th>
                            <th scope="col">Nama</th>
                            <th scope="col">Harga</th>
                            <th scope="col">Terjual</th>
                            <th scope="col">Tahun</th>
                            <th scope="col">Kategori</th>
                            <!-- <th scope="col">Aksi</th> -->
                        <!-- </tr>  -->
                    </thead>
                    <tbody>
                        @foreach($data as $data)
                        <tr>
                            <!-- <th scope="row">{{ $loop->iteration }}</th> -->
                            <td>{{ $data->nama }}</td>
                            <td>{{ $data->harga }}</td>
                            <td>{{ $data->terjual }}</td>
                            <td>{{ $data->tahun->tahun }}</td>
                            <td>{{ $data->kategori->nama_ketegori }}</td>
                            @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection

@push('modal')
@include('transaksi.modal.create')
@include('transaksi.modal.show')
@include('transaksi.modal.edit')
@endpush

@push('js')
@include('transaksi._script')
@endpush