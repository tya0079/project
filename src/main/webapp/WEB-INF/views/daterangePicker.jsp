<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" type="text/css" media="all" href="${cpath }/resources/stylecss/daterangepicker.css" />

      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>

      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.1/moment.min.js"></script>

      <script type="text/javascript" src="${cpath }/resources/js/daterangepicker.js"></script>

</head>
<body>
<body style="margin: 60px 0">

      <div class="container">
	<div class="hidden">
        <h1 style="margin: 0 0 20px 0">Configuration Builder</h1>

        <div class="well configurator">
           
          <form>
          <div class="row">

            <div class="col-md-4">

              <div class="form-group">
                <label for="parentEl">parentEl</label>
                <input type="text" class="form-control" id="parentEl" value="" placeholder="body">
              </div>

              <div class="form-group">
                <label for="startDate">startDate</label>
                <input type="text" class="form-control" id="startDate" value="07/01/2015">
              </div>

              <div class="form-group">
                <label for="endDate">endDate</label>
                <input type="text" class="form-control" id="endDate" value="07/15/2015">
              </div>

              <div class="form-group">
                <label for="minDate">minDate</label>
                <input type="text" class="form-control" id="minDate" value="" placeholder="MM/DD/YYYY">
              </div>

              <div class="form-group">
                <label for="maxDate">maxDate</label>
                <input type="text" class="form-control" id="maxDate" value="" placeholder="MM/DD/YYYY">
              </div>

            </div>
            <div class="col-md-4">

              <div class="checkbox">
                <label>
                  <input type="checkbox" id="autoApply"> autoApply
                </label>
              </div>

              <div class="checkbox">
                <label>
                  <input type="checkbox" id="singleDatePicker"> singleDatePicker
                </label>
              </div>

              <div class="checkbox">
                <label>
                  <input type="checkbox" id="showDropdowns"> showDropdowns
                </label>
              </div>

              <div class="checkbox">
                <label>
                  <input type="checkbox" id="showWeekNumbers"> showWeekNumbers
                </label>
              </div>

              <div class="checkbox">
                <label>
                  <input type="checkbox" id="showISOWeekNumbers"> showISOWeekNumbers
                </label>
              </div>

              <div class="checkbox">
                <label>
                  <input type="checkbox" id="timePicker" checked="checked"> timePicker
                </label>
              </div>

              <div class="checkbox">
                <label>
                  <input type="checkbox" id="timePicker24Hour"> timePicker24Hour
                </label>
              </div>

              <div class="form-group">
                <label for="timePickerIncrement">timePickerIncrement (in minutes)</label>
                <input type="text" class="form-control" id="timePickerIncrement" value="1">
              </div>

              <div class="checkbox">
                <label>
                  <input type="checkbox" id="timePickerSeconds"> timePickerSeconds
                </label>
              </div>

              <div class="checkbox">
                <label>
                  <input type="checkbox" id="dateLimit"> dateLimit (with example date range span)
                </label>
              </div>

              <div class="checkbox">
                <label>
                  <input type="checkbox" id="ranges" checked="checked"> ranges (with example predefined ranges)
                </label>
              </div>

              <div class="checkbox">
                <label>
                  <input type="checkbox" id="locale"> locale (with example settings)
                </label>
                <label id="rtl-wrap">
                  <input type="checkbox" id="rtl"> RTL (right-to-left)
                </label>
              </div>

              <div class="checkbox">
                <label>
                  <input type="checkbox" id="alwaysShowCalendars"> alwaysShowCalendars
                </label>
              </div>

            </div>
            <div class="col-md-4">

              <div class="checkbox">
                <label>
                  <input type="checkbox" id="linkedCalendars" checked="checked"> linkedCalendars
                </label>
              </div>

              <div class="checkbox">
                <label>
                  <input type="checkbox" id="autoUpdateInput" checked="checked"> autoUpdateInput
                </label>
              </div>

              <div class="checkbox">
                <label>
                  <input type="checkbox" id="showCustomRangeLabel" checked="checked"> showCustomRangeLabel
                </label>
              </div>

              <div class="form-group">
                <label for="opens">opens</label>
                <select id="opens" class="form-control">
                  <option value="right" selected>right</option>
                  <option value="left">left</option>
                  <option value="center">center</option>
                </select>
              </div>

              <div class="form-group">
                <label for="drops">drops</label>
                <select id="drops" class="form-control">
                  <option value="down" selected>down</option>
                  <option value="up">up</option>
                </select>
              </div>

              <div class="form-group">
                <label for="buttonClasses">buttonClasses</label>
                <input type="text" class="form-control" id="buttonClasses" value="btn btn-sm">
              </div>

              <div class="form-group">
                <label for="applyClass">applyClass</label>
                <input type="text" class="form-control" id="applyClass" value="btn-success">
              </div>

              <div class="form-group">
                <label for="cancelClass">cancelClass</label>
                <input type="text" class="form-control" id="cancelClass" value="btn-default">
              </div>

            </div>

          </div>
          </form>

        </div>
	</div>
        <div class="row">

          <div class="col-md-4 col-md-offset-2 demo">
            <h4>Your Date Range Picker</h4>
            <center>
              <input type="text" id="config-demo" class="form-control">
            </center>
          </div>

         

        </div>

      </div>

      <style type="text/css">
      .demo { position: relative; }
      .demo i {
        position: absolute; bottom: 10px; right: 24px; top: auto; cursor: pointer;
      }
      </style>

      <script type="text/javascript">
      $(document).ready(function() {

        $('#config-text').keyup(function() {
          eval($(this).val());
        });
        
        $('.configurator input, .configurator select').change(function() {
          updateConfig();
        });

        $('.demo i').click(function() {
          $(this).parent().find('input').click();
        });

        $('#startDate').daterangepicker({
          singleDatePicker: true,
          startDate: moment().subtract(6, 'days')
        });

        $('#endDate').daterangepicker({
          singleDatePicker: true,
          startDate: moment()
        });

        updateConfig();

        function updateConfig() {
          var options = {};

          if ($('#singleDatePicker').is(':checked'))
            options.singleDatePicker = true;
          
          if ($('#showDropdowns').is(':checked'))
            options.showDropdowns = true;

          if ($('#showWeekNumbers').is(':checked'))
            options.showWeekNumbers = true;

          if ($('#showISOWeekNumbers').is(':checked'))
            options.showISOWeekNumbers = true;

          if ($('#timePicker').is(':checked'))
            options.timePicker = true;
          
          if ($('#timePicker24Hour').is(':checked'))
            options.timePicker24Hour = true;

          if ($('#timePickerIncrement').val().length && $('#timePickerIncrement').val() != 1)
            options.timePickerIncrement = parseInt($('#timePickerIncrement').val(), 10);

          if ($('#timePickerSeconds').is(':checked'))
            options.timePickerSeconds = true;
          
          if ($('#autoApply').is(':checked'))
            options.autoApply = true;

          if ($('#dateLimit').is(':checked'))
            options.dateLimit = { days: 7 };

          if ($('#ranges').is(':checked')) {
            options.ranges = {
              '오늘': [moment(), moment()],
              '어제': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
              '최근 일주일': [moment().subtract(6, 'days'), moment()],
              '최근 한달': [moment().subtract(29, 'days'), moment()],
              '이번달': [moment().startOf('month'), moment().endOf('month')],
              '지난달': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
            };
          }

          if ($('#locale').is(':checked')) {
            $('#rtl-wrap').show();
            options.locale = {
              direction: $('#rtl').is(':checked') ? 'rtl' : 'ltr',
              format: 'MM/DD/YYYY HH:mm',
              separator: ' - ',
              applyLabel: '설정',
              cancelLabel: '취소',
              fromLabel: 'From',
              toLabel: 'To',
              customRangeLabel: 'Custom',
              daysOfWeek: ['일', '월', '화', '수', '목', '금','토'],
              monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
              firstDay: 1,
              
            };
          } else {
            $('#rtl-wrap').hide();
          }

          if (!$('#linkedCalendars').is(':checked'))
            options.linkedCalendars = false;

          if (!$('#autoUpdateInput').is(':checked'))
            options.autoUpdateInput = false;

          if (!$('#showCustomRangeLabel').is(':checked'))
            options.showCustomRangeLabel = false;

          if ($('#alwaysShowCalendars').is(':checked'))
            options.alwaysShowCalendars = true;

          if ($('#parentEl').val().length)
            options.parentEl = $('#parentEl').val();

          if ($('#startDate').val().length) 
            options.startDate = $('#startDate').val();

          if ($('#endDate').val().length)
            options.endDate = $('#endDate').val();
          
          if ($('#minDate').val().length)
            options.minDate = $('#minDate').val();

          if ($('#maxDate').val().length)
            options.maxDate = $('#maxDate').val();

          if ($('#opens').val().length && $('#opens').val() != 'right')
            options.opens = $('#opens').val();

          if ($('#drops').val().length && $('#drops').val() != 'down')
            options.drops = $('#drops').val();

          if ($('#buttonClasses').val().length && $('#buttonClasses').val() != 'btn btn-sm')
            options.buttonClasses = $('#buttonClasses').val();

          if ($('#applyClass').val().length && $('#applyClass').val() != 'btn-success')
            options.applyClass = $('#applyClass').val();

          if ($('#cancelClass').val().length && $('#cancelClass').val() != 'btn-default')
            options.cancelClass = $('#cancelClass').val();

          $('#config-text').val("$('#demo').daterangepicker(" + JSON.stringify(options, null, '    ') + ", function(start, end, label) {\n  console.log(\"New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')\");\n});");

          $('#config-demo').daterangepicker(options, function(start, end, label) { console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')'); }).click();;
          
        }

      });
      </script>
</body>
</html>