<%@ attribute name="id" required="true" %>
<%@ attribute name="label" required="true" %>
<label>${label}</label><input id="${id}" name="${id}" type="text">
<script>
  $("#${id}").datepicker({ dateFormat: "dd-mm-yy" });
</script>