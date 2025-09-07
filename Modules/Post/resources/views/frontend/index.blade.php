@extends('frontend.layouts.app')
@section('css')
    <link rel="stylesheet" href="{{ asset('frontend/css/add-post.css') }}">
@endsection
@section('content')
            <div class="col-lg-6 offset-lg-3 col-md-12 add-post-area">
                <div class="product-entry-selection">

                    <div class="product-method-header">
                        <div class="product-method-icon">
                            <i class="bi bi-box-seam"></i>
                        </div>
                        <h2 class="product-method-title">Bir gönderi oluşturun</h2>
                        <p class="product-method-description">
                            En iyi değerlendirmelerini paylaş, deneyimlerini aktar ve topluluğumuzla bağlantı kur!
                        </p>
                    </div>
                    <div class="row">
                        <div class="col-md-4 mb-3">
                    <div class="product-entry-box">
                        <div class="product-entry-icon"><i class="bi bi-link-45deg"></i></div>
                        <h2 class="product-entry-title">Gönderi</h2>
                        <p class="product-entry-desc">
                           Ürünle ilgili düşüncelerini hızlıca paylaş.
                        </p>
                        <a href="{{ route('post.create') }}" class="product-entry-button gold">Hemen oluştur</a>
                    </div>
                        </div>
                        <div class="col-md-4 mb-3">
                    <div class="product-entry-box">
                        <div class="product-entry-icon"><i class="bi bi-plus-square"></i></div>
                        <h2 class="product-entry-title">Anket</h2>
                        <p class="product-entry-desc">
                            Ürünle ilgili kısa bir anket oluştur.
                        </p>
                        <a href="{{ route('poll.create') }}" class="product-entry-button black">Anketle sor</a>
                    </div>
                        </div>
                        <div class="col-md-4 mb-3">
                        <div class="product-entry-box">
                        <div class="product-entry-icon"><i class="bi bi-plus-square"></i></div>
                        <h2 class="product-entry-title">Tartışma</h2>
                        <p class="product-entry-desc">
                           Deneyimlerini paylaş, favori ürünlerini öne çıkar ve topluluğumuzun bir parçası ol!
                        </p>
                        <a href="{{ route('discussion.create') }}" class="product-entry-button black">Tartışma başlat</a>
                    </div>
                        </div>
                    </div>

                </div>
            </div>

@endsection
