<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
      <h1>作业执行状态轨迹 </h1>
  </section>
    
  <!-- Main content -->
  <section class="content">
    <div class="row">
        <div class="box box-info">
            <div class="box-body">
                <div id="jobExecStatusToolbar">
                    <div class="form-inline" role="form">
                        <div class="form-group toolbar">
                            <label for="jobName">作业名称:</label>
                            <input type="text" class="form-control" id="jobName" placeholder="">
                        </div>
                        <div class="form-group toolbar">
                            <label for="taskId">任务ID:</label>
                            <input type="text" class="form-control" size="54" id="taskId" placeholder="">
                        </div>
                        <br/>
                        <div class="form-group toolbar">
                            <label for="jobName">宿主机ID:</label>
                            <input type="text" class="form-control" id="slaveId" placeholder="">
                        </div>
                        <div class="form-group toolbar">
                            <label for="source">执行来源:</label>
                            <input type="text" class="form-control" id="source" placeholder="">
                        </div>
                        <div class="form-group toolbar">
                            <label for="executionType">执行类型:</label>
                            <input type="text" class="form-control" size="13" id="executionType" placeholder="">
                        </div>
                        <br/>
                        <div class="form-group toolbar">
                            <label for="state">状态:</label>
                            <input type="text" class="form-control" id="state" placeholder="">
                        </div>
                        <div class="form-group toolbar">
                            <label>创建时间:</label>
                            <input type="text" class="form-control pull-right custom-datepicker" id="startTime">
                        </div>
                        <div class="form-group toolbar">
                            <span>至</span>
                            <input type="text" class="form-control pull-right custom-datepicker" id="endTime">
                        </div>
                    </div>
                </div>
                <table id="jobExecStatusTable" 
                       data-show-refresh="true"
                       data-show-toggle="true"
                       data-striped="true"
                       data-toggle="table"
                       data-url="/job/events/statusTraces"
                       data-flat="true"
                       data-click-to-select="true"
                       data-row-style="rowStyle"
                       data-query-params="queryParams"
                       data-query-params-type="notLimit"
                       data-side-pagination="server"
                       data-pagination="true"
                       data-page-list="[10, 20, 50, 100]"
                       data-show-columns="true"
                       data-toolbar="#jobExecStatusToolbar">
                    <thead>
                    <tr>
                        <th data-field="jobName" data-sortable="true">作业名称</th>
                        <th data-field="taskId">任务ID</th>
                        <th data-field="slaveId" data-sortable="true">宿主机ID</th>
                        <th data-field="source" data-sortable="true">执行来源</th>
                        <th data-field="shardingItem">分片</th>
                        <th data-field="executionType" data-sortable="true">任务来源</th>
                        <th data-field="state" data-sortable="true">状态</th>
                        <th data-field="creationTime" data-sortable="true" data-formatter="dateTimeFormatter">创建时间</th>
                        <th data-field="message" data-formatter="largeContextFormatter">备注</th>
                    </tr>
                    </thead>
                </table>
            </div><!-- /.box-body -->
        </div><!-- /.box -->
     </div>
  </section><!-- /.content -->
</div>
    
<!-- daterangepicker -->
<script src="plugins/daterangepicker/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
    
<script src="js/common.js"></script>
<script src="js/job_exec_status.js"></script>