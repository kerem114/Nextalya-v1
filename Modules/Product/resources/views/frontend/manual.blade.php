@extends('frontend.layouts.app')
@section('css')
    <link rel="stylesheet" href="{{ asset('frontend/css/add-post.css') }}">
        <link rel="stylesheet" href="{{ asset('frontend/css/search-page.css') }}">
@endsection
@section('content')
<div class="col-lg-6 offset-lg-3 col-md-12 add-post-area">
        <div class="search-page-container">
    <div class="product-link-edit-container">
        <div class="product-link-edit-card">
            <form id="product-link-form" method="POST" action="{{ route('product.manual.store') }}" enctype="multipart/form-data">
                @csrf
                <div class="product-link-form-group">
                    <label>Ürün linki:</label>
                    <input type="text" id="product-link-title" name="url" value="" >
                </div>

                <div class="product-link-form-group">
                    <label>Ürün Görseli:</label>
                    <input type="file" class="form-control" id="product-link-image-input" name="image" accept="image/*">
                    <img id="image-preview" src="" alt="Preview" style="max-width: 100%; margin-top: 10px; display: none;">
                </div>
                <div class="product-link-form-group">
                    <label>Kategori:</label>
                    <select name="topcat_id" class="form-control" id="">
                        @foreach ($topcat as $key)
                            <option value="{{ $key->id }}">{{ $key->title }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="product-link-form-group">
                    <label>Ürün Başlığı:</label>
                    <input type="text" id="product-link-title" name="title" value="" required>
                </div>

                <div class="product-link-form-group">
                    <label>Ürün Açıklaması:</label>
                    <textarea id="product-link-description" name="description" maxlength="300" rows="3" required></textarea>
                    <small id="char-count" style="display: block; margin-top: 5px;">Kalan karakter: 300</small>
                </div>

                <div class="product-link-form-group">
                    <label>Ürün Fiyatı:</label>
                    <input type="text" id="product-link-price" name="price" value="" required>
                </div>

               <div id="poll-options" class="poll-options-list ">
                    <label for="" style="font-weight: 600">Ürün özellikleri</label>
                    <div class="input-group mb-2">
                        <input type="text" name="features[]" class="form-control poll-option-input" placeholder="Özellik 1" required>
                    </div>
                    <div class="input-group mb-2">
                        <input type="text" name="features[]" class="form-control poll-option-input" placeholder="Özellik 2" required>
                        <button type="button" class="btn btn-outline-danger" onclick="this.parentElement.remove()">×</button>
                    </div>
                </div>

                <button type="button" id="add-option-btn" class="btn btn-light">+ Seçenek Ekle</button>

                <div class="product-link-actions">
                    <button type="submit" class="btn btn-warning">Paylaş</button>
                    <a href="{{ route('product.create') }}" class="btn btn-secondary">İptal</a>
                </div>
            </form>
        </div>
    </div>
    <livewire:product::productlist />
</div>
</div>

@section('js')
<script>
    const inputFile = document.getElementById('product-link-image-input');
    const imagePreview = document.getElementById('image-preview');

    inputFile.addEventListener('change', function() {
        const file = this.files[0];
        if (file) {
            const reader = new FileReader();

            reader.onload = function(e) {
                imagePreview.src = e.target.result;
                imagePreview.style.display = 'block';
            };

            reader.readAsDataURL(file);
        } else {
            imagePreview.src = '';
            imagePreview.style.display = 'none';
        }
    });
</script>
<script>
    const pollOptionsContainer = document.getElementById('poll-options');
    const addOptionBtn = document.getElementById('add-option-btn');

    addOptionBtn.addEventListener('click', () => {

        const optionCount = pollOptionsContainer.querySelectorAll('input[name="features[]"]').length;


        const newInputGroup = document.createElement('div');
        newInputGroup.classList.add('input-group', 'mb-2');


        const newInput = document.createElement('input');
        newInput.type = 'text';
        newInput.name = 'features[]';
        newInput.classList.add('form-control', 'poll-option-input');
        newInput.placeholder = `Özellik ${optionCount + 1}`;
        newInput.required = true;


        const removeBtn = document.createElement('button');
        removeBtn.type = 'button';
        removeBtn.classList.add('btn', 'btn-outline-danger');
        removeBtn.textContent = '×';
        removeBtn.onclick = function() {
            this.parentElement.remove();
            updatePlaceholders();
        };

        newInputGroup.appendChild(newInput);
        newInputGroup.appendChild(removeBtn);

        pollOptionsContainer.appendChild(newInputGroup);
    });


    function updatePlaceholders() {
        const inputs = pollOptionsContainer.querySelectorAll('input[name="features[]"]');
        inputs.forEach((input, idx) => {
            input.placeholder = `Özellik ${idx + 1}`;
        });
    }
</script>
<script>
    const textarea = document.getElementById('product-link-description');
    const charCount = document.getElementById('char-count');
    const maxLength = 300;

    textarea.addEventListener('input', () => {
        const remaining = maxLength - textarea.value.length;
        charCount.textContent = `Kalan karakter: ${remaining}`;
    });
</script>

@endsection
@endsection
