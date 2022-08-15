
<div class="modal fade" id="mDelConf" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST" action="/residen/{{ $action }}/delete">
                @csrf
                <div class="modal-header">
                <h4 class="modal-title" id="defaultModalLabel">Konfirmasi hapus data</h4>
            </div>
            <div class="modal-body">
            Data ini akan dihapus, Anda yakin?
            <input type="hidden" id="mitem-id" name="{{ $itemname }}" value="" readonly>
            <input type="hidden" id="mres-id" name="res_id" value="" readonly>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success waves-effect" data-dismiss="modal"><i class="fa fa-window-close"></i> Batal</button>
                <button type="submit" class="btn btn-danger waves-effect"><i class="fa fa-check"></i> Ya, Hapus!</button>
            </div>
            </form>
        </div>
    </div>
</div>


@section('lastScript')
<script>
    $(document).on("click", "#delConf", function() {
        var ids = $(this).attr('data-item-id');
        var ris = $(this).attr('data-res-id');
        $('#mitem-id').val(ids);
        $('#mres-id').val(ris);
    });
</script>
@endsection