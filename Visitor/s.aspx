<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/VisitorMaster.master" AutoEventWireup="true" CodeFile="s.aspx.cs" Inherits="Visitor_s" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/ui-lightness/jquery-ui.css" />
  <link href="http://code.jquery.com/ui/1.11.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script type="text/javascript">
    $(function () {
        SearchText();
    });
    function SearchText() {
        $(".autosuggest").autocomplete({
            source: function (request, response) {
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "AutoCompleteService.asmx/GetAutoCompleteData",
                    data: "{'VendorServiceName':'" + $('#txtSearch').val() + "'}",
                    dataType: "json",
                    success: function (data) {
                        if (data.d.length > 0) {
                            response($.map(data.d, function (item) {
                                return {
                                    label: item.split('/')[0],
                                    val: item.split('/')[1]
                                }
                            }));
                        }
                        else {

                            response([{ label: 'No Records Found', val: -1}]);
                            $('#txtSearch').val('');
                        }
                    },
                    error: function (result) {
                        alert("Error");
                    }
                });
            },
            select: function (event, ui) {
                if (ui.item.val == -1) {
                    return false;
                }
                //Get Selected Value
                //alert(ui.item.val);
            }
        });
    }
</script>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="margin-top:160px">
<div class="ui-widget">
<label for="tbAuto">Enter UserName: </label>
<input type="text" id="txtSearch" class="autosuggest" />
</div>
    </div>
</asp:Content>

