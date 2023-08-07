<script>
    $(document).ready(function() {
        $(".show_modal").click(function() {
            let id = $(this).data("id")
            let token = $("input[name=_token]").val();

            // $.ajax({
            //     type: "GET",
            //     url: "commodities/json/" + id,
            //     data: {
            //         id: id,
            //         _token: token
            //     },
            //     success: function(data) {

            //     }
            // })
        })



    })
</script>