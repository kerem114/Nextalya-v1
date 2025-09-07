<div>
    <div class="row">
        <input type="text" class="form-control mb-3" placeholder="Ürün Ara..." wire:model.live="search" />
        <div class="table-responsive">
            <table class="table table-striped " >
        <thead>
            <tr>
            <th style="font-weight: 600; border: 1px solid #ddd;" class="bg-head text-dark" scope="col">#</th>
            <th style="font-weight: 600; border: 1px solid #ddd;" class="bg-head text-dark" scope="col">Görsel</th>
            <th style="font-weight: 600; border: 1px solid #ddd;" class="bg-head text-dark" scope="col">Ürün adı</th>
            <th style="font-weight: 600; border: 1px solid #ddd;" class="bg-head text-dark" scope="col">Ürün link</th>
            <th style="font-weight: 600; border: 1px solid #ddd;" class="bg-head text-dark" scope="col">Fiyat</th>
            <th style="font-weight: 600; border: 1px solid #ddd;" class="bg-head text-dark" scope="col">İşlem</th>
            </tr>
        </thead>
        <tbody>
            @forelse ($data as $take)
            <tr>
                <th style="font-size:14px;font-weight:400;border: 1px solid #ddd;" class="bg-head text-dark">{{ $loop->iteration }}</th>
                <th style="font-size:14px;font-weight:400;border: 1px solid #ddd;" class="bg-head text-dark">
                      @if(Str::startsWith($take->image, 'http'))
                          <img style="width: 64px" src="{{ $take->image }}"  class="search-product-image" />
                      @else
                          <img style="width: 64px" src="{{ asset('storage/product/' . $take->image) }}"class="search-product-image" />
                      @endif
                </th>
                <th style="font-size:14px;font-weight:400;border: 1px solid #ddd;" class="bg-head text-dark">{{ $take->title }}</th>
                <th style="font-size:14px;font-weight:400;border: 1px solid #ddd;" class="bg-head text-dark">{{ $take->url }}</th>
                <th style="font-size:14px;font-weight:400;border: 1px solid #ddd;" class="bg-head text-dark">{{ $take->price }} TL</th>
                <th style="font-size:14px;font-weight:400;border: 1px solid #ddd;" class="bg-head text-dark"><a href="{{ route('product.edit',$take->id) }}"><i class="bi bi-pencil"></i></a></th>
            </tr>
            @empty
            <tr>
                <td colspan="6" class="text-center">Ürün bulunamadı!</td>
            </tr>
            @endforelse
        </tbody>
        </table>
        </div>

        {{ $data->links() }}
    </div>
</div>
