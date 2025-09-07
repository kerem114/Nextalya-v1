@extends('frontend.layouts.app')
@section('css')
    <link rel="stylesheet" href="{{ asset('frontend/css/search-page.css') }}">
@endsection
@section('content')
<div class="col-lg-6 offset-lg-3 col-md-12 add-post-area">

<div class="search-page-container">

                  <form action="{{ route('search.products') }}" method="GET" class="d-flex mx-auto" id="custom-search">
                        <input class="form-control me-2 d-md-none" type="search" name="q" placeholder="Ara" aria-label="Search" onkeydown="if(event.key === 'Enter'){ this.form.submit(); }">
                        <button type="submit" class="d-none">Ara</button> <!-- Gizli submit -->
                    </form>
      <div class="search-product-cards">

            <livewire:search::product/>

    </div>


    </div>
    </div>

@endsection
