// $(document).ready(function () {//全选改变单选
//     $(".checkall").change(function () {
//         $(".check,.checkall").prop("checked", $(this).prop("checked"));
//         getsum()
//     });
//
//     $(".check").change(function () {//单选全选时改变全选
//         if ($(".check:checked").length === $(".check").length) {
//             $(".checkall").prop("checked", true);
//         } else {
//             $(".checkall").prop("checked", false);
//         }
//         getsum()
//     });

    $(function () {
        $('#del').click(function () {
            if(this.checked){
                $("input[name='check']").attr("checked",true);
            }
            else {
                $("input[name='check']").attr("checked",false);
            }
        })

    })
// })