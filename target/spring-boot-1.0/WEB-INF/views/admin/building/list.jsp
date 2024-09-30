<%--
  Created by IntelliJ IDEA.
  User: 84362
  Date: 09/25/2024
  Time: 2:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<c:url var="buildingListURL" value="/admin/building-list"/>
<html>
<head>
    <title>Danh Sách Tòa Nhà</title>
</head>
<body>

  <div class="main-content">
    <div class="main-content-inner">
      <div class="breadcrumbs" id="breadcrumbs">
        <script type="text/javascript">
          try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
        </script>

        <ul class="breadcrumb">
          <li>
            <i class="ace-icon fa fa-home home-icon"></i>
            <a href="#">Home</a>
          </li>
          <li class="active">Dashboard</li>
        </ul><!-- /.breadcrumb -->
      </div>

      <div class="page-content">
        <div class="page-header">
          <h1>
            Danh Sách Tòa Nhà
            <small>
              <i class="ace-icon fa fa-angle-double-right"></i>
              overview &amp; stats
            </small>
          </h1>
        </div><!-- /.page-header -->
        <div class="row">
          <div class="col-xs-12 widget-container-col ui-sortable">
            <div class="widget-box ui-sortable-handle">
              <div class="widget-header">
                <h5 class="widget-title">Tìm Kiếm</h5>
                <div class="widget-toolbar">
                  <a href="#" data-action="reload">
                    <i class="ace-icon fa fa-refresh"></i>
                  </a>

                  <a href="#" data-action="collapse">
                    <i class="ace-icon fa fa-chevron-up"></i>
                  </a>
                </div>
              </div>

              <div class="widget-body" style="font-family: Verdana, Geneva, Tahoma, sans-serif;">
                <div class="widget-main" >
                  <form:form id= "listForm" modelAttribute="modelSearch" action="${buildingListURL}" method="get" >
                    <div class="row">
                    <!-- dòng 1 -->
                      <div class="form-group">
                        <div class="col-xs-12">
                          <div class="col-xs-6">
                            <label for="">Tên tòa nhà</label>
<%--                            <input type="text" class="form-control" id="name"  name="name" value="${modelSearch.name}"/>--%>
                                <form:input type="text" class="form-control"  path="name"/>
                          </div>
                          <div class="col-xs-6">
                            <label for="">Diện tích sàn</label>
<%--                            <input type="number" class="form-control" name="floorArea" value="${modelSearch.floorArea}" />--%>
                            <form:input type="number" class="form-control"  path="floorArea"/>
                          </div>
                        </div>
                      </div>
                    <!-- dòng 2 -->
                      <div class="form-group">
                        <div class="col-xs-12">
                          <div class="col-xs-2">
                            <label for="">Quận</label>
                            <form:select  name="district" id="" class="form-control" path="district">
                              <form:option value="">-----Chọn Quận -----</form:option>
                              <form:option value="QUAN_1">----- Quận 1 -----</form:option>
                              <form:option value="QUAN_2">----- Quận 2 -----</form:option>
                              <form:option value="QUAN_3">----- Quận 3 -----</form:option>
                              <form:option value="QUAN_4">----- Quận 4 -----</form:option>
                            </form:select>
                          </div>
                          <div class="col-xs-5">
                            <label for=""> Phường</label>
                                 <form:input type="text" class="form-control"  path="ward"/>
<%--                            <input type="text" class="form-control" value="${modelSearch.ward}" name="ward" />--%>
                          </div>
                          <div class="col-xs-5">
                            <label for="">Đường</label>
                              <form:input type="text" class="form-control"  path="street"/>
<%--                             <input type="text" class="form-control" name="street" value="${modelSearch.street}" />--%>
                          </div>
                        </div>
                      </div>
                    <!-- dòng 3 -->
                      <div class="form-group">
                      <div class="col-xs-12">
                          <div class="col-xs-4">
                            <label for=""> Số tầng hầm</label>
<%--                            <input type="number" class="form-control" name="numberOfBasement" value="" />--%>
                            <form:input type="number" class="form-control"  path="numberOfBasement"/>
                          </div>
                          <div class="col-xs-4">
                            <label for=""> Hướng</label>
                            <form:input type="text" class="form-control"  path="direction"/>
<%--                            <input type="text" class="form-control" name="direction" value="" />--%>
                          </div>
                          <div class="col-xs-4">
                            <label for="">Hạng</label>
                            <form:input type="number" class="form-control"  path="level"/>
<%--                            <input type="number" class="form-control" name="level" value="" />--%>
                          </div>
                        </div>
                      </div>
                    <!-- dòng 4 -->
                      <div class="form-group">
                        <div class="col-xs-12">
                          <div class="col-xs-3">
                            <label for=""> Diện tích từ</label>
<%--                            <input type="number" class="form-control" name="areaFrom" value="" />--%>
                                <form:input type="number" class="form-control"  path="areaFrom"/>
                          </div>

                          <div class="col-xs-3">
                            <label for=""> Diện tích đến</label>
<%--                            <input type="number" class="form-control" name="areaTo" value="" />--%>
                            <form:input  class="form-control"  path="areaTo"/>
                          </div>
                          <div class="col-xs-3">
                            <label for="">Giá thuê từ</label>
                            <form:input type="number" class="form-control"  path="rentPriceFrom"/>
<%--                            <input type="number" class="form-control" name="rentPriceFrom" value="" />--%>
                          </div>
                          <div class="col-xs-3">
                            <label for="">Giá thuê đến</label>
                            <form:input type="number" class="form-control"  path="rentPriceTo"/>
<%--                            <input type="number" class="form-control" name="rentPriceTo" value=""/>--%>
                          </div>
                        </div>
                      </div>
                    <!-- dòng 5 -->
                      <div class="form-group">
                        <div class="col-xs-12" style="margin-bottom: 10px">
                          <div class="col-xs-5">
                            <label for="">Tên Quản lý</label>
<%--                            <input type="text" class="form-control" name="managerName" value="" />--%>
                            <form:input type="text" class="form-control"  path="managerName"/>
                          </div>
                          <div class="col-xs-5">
                            <label for="">Điện thoại quản lý</label>
<%--                            <input type="text" class="form-control" name="managerPhone"  value=""/>--%>
                            <form:input type="text" class="form-control"  path="managerPhone"/>
                          </div>
                          <div class="col-xs-2">
                            <label for="">Nhân viên phụ trách</label>
                            <form:select  path="staffId" class="form-control">
                              <option value="">
                                Tên Nhân viên
                              </option>
                              <form:option value="1">Bùi Khánh Linh</form:option>
                              <form:option value="2">Bùi Quang Minh</form:option>
                              <form:option value="3">Nhân viên 3</form:option>
                              <form:option value="4">Nhân Viên 4</form:option>
                            </form:select>
                          </div>
                        </div>
                      </div>
                    <!-- dòng 6 -->
                      <div class="form-group">
                        <div class="col-xs-12">
                          <div class="col-xs-9" style="padding: 5px;">
                            <label  style="margin-right: 15px" class="inline" for="">
<%--                              <input type="checkbox" name="typeCode" id="" value="noi-that"/> Nội thất--%>
                                  <form:checkbox path="typeCode" value="noi-that" /> Nội thất
                            </label>
                            <label style="margin-right: 15px" for="">
                            <form:checkbox path="typeCode" value="tang-tret" /> Tầng Trệt
<%--                              <input type="checkbox" name="typeCode" id="" value="tang-tret" /> Tầng Trệt--%>
                            </label>
                            <label style="margin-right: 15px" for="">
                            <form:checkbox path="typeCode" value="nguyen-can" /> Nguyên Căn
<%--                              <input type="checkbox" name="typeCode" id="" value="nguyen-can" /> Nguyên  Căn--%>
                            </label>
                          </div>
                        </div>
                      </div>
                    <!-- dòng 7 -->
                      <div class="form-group">
                        <div class="col-xs-12">
                          <div class="col-lg-6">
                            <button style="border-radius: 10px"
                                    type="button"
                                    class="btn btn-danger btn-sm"
                                    id="btnSearchBuilding"
                            >
                              <svg
                                      xmlns="http://www.w3.org/2000/svg"
                                      width="16"
                                      height="16"
                                      fill="currentColor"
                                      class="bi bi-search"
                                      viewBox="0 0 16 16"
                              >
                                <path
                                        d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"
                                ></path>
                              </svg>
                              Tìm Kiếm
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </form:form>

                </div>
              </div>
            </div>
            <div class="pull-right">
              <a href="/admin/building-edit">
                <button type="button" class="btn btn-success" title="thêm tòa nhà">
                  <svg
                          xmlns="http://www.w3.org/2000/svg"
                          width="16"
                          height="16"
                          fill="currentColor"
                          class="bi bi-building-fill-add"
                          viewBox="0 0 16 16"
                  >
                    <path
                            d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0"
                    ></path>
                    <path
                            d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v7.256A4.5 4.5 0 0 0 12.5 8a4.5 4.5 0 0 0-3.59 1.787A.5.5 0 0 0 9 9.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .39-.187A4.5 4.5 0 0 0 8.027 12H6.5a.5.5 0 0 0-.5.5V16H3a1 1 0 0 1-1-1zm2 1.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5m3 0v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5m3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zM4 5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5M7.5 5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm2.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5M4.5 8a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"
                    ></path>
                  </svg>
                </button>
              </a>
              <button type="button" class="btn btn-danger" title="xóa tòa nhà">
                <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width="16"
                        height="16"
                        fill="currentColor"
                        class="bi bi-building-dash"
                        viewBox="0 0 16 16"
                >
                  <path
                          d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7M11 12h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1 0-1"
                  ></path>
                  <path
                          d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z"
                  ></path>
                  <path
                          d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"
                  ></path>
                </svg>
              </button>
            </div>
          </div>
        </div>

        <!-- bảng ds -->

        <div style="margin-top: 80px"></div>
        <div class="row">
          <div class="col-xs-12">
            <table  id="simple-table" class="table table-striped table-bordered table-hover"
            >
              <thead>
              <tr>
                <th  class="center">
                  <label class="pos-rel">
                    <input type="checkbox" class="ace"  value="" name="checkList" />
                    <span class="lbl"></span>
                  </label>
                 </th>
                <th>Tên tòa nhà</th>
                <th>Địa chỉ</th>
                <th>số tầng hầm</th>
                <th>Tên quản lý</th>
                <th>số điện thoại quản lý</th>
                <th>diện tích sàn </th>
                <th>diện tích trống </th>
                <th>dt thuê</th>
                <th>Phí môi giới </th>
                <th>Thao tác</th>
              </tr>
              </thead>

              <tbody>
              <c:forEach var="item" items="${buildingList}" >
                <tr>
                <td class="center">
                  <label class="pos-rel">
                    <input type="checkbox" class="ace" name="checkList" value="${item.id}" />
                    <span class="lbl"></span>
                  </label>
                </td>

                <td>${item.name}</td>
                <td>${item.address}</td>
                <td>${item.numberOfBasement}</td>
                <td>${item.managerName}</td>
                <td>${item.managerPhone}</td>
                <td>${item.floorArea}</td>
                <td>${item.emptyArea}</td>
                <td>${item.rentArea}</td>
                <td>${item.brokerageFee}</td>
                <td>
                  <div class="hidden-sm hidden-xs btn-group">
                    <button
                            class="btn btn-xs btn-success"
                            title="Giao tòa nhà"
                            id="assignmentbuilding"
                            onclick="assignmentBuilding(${item.id})"
                    >
                      <i
                              class="ace-icon glyphicon glyphicon-list bigger-120"
                      ></i>
                    </button>

                    <a href="/admin/building-edit-${item.id}"  class="btn btn-xs btn-info" title="sửa tòa nhà">
                      <i class="ace-icon fa fa-pencil bigger-120"></i>
                    </a>

                    <button class="btn btn-xs btn-danger">
                      <i class="ace-icon fa fa-trash-o bigger-120"></i>
                    </button>
                  </div>
                </td>
              </tr>
              </c:forEach>
              </tbody>
            </table>
          </div>
          <!-- /.span -->
        </div>
      </div><!-- /.page-content -->
    </div>

  </div><!-- /.main-content -->

  <div class="modal fade" id="assignmentBuildingModal" role="dialog" style="font-family: 'Times New Roman', Times, serif;">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">
            &times;
          </button>
          <h4 class="modal-title">Danh sách nhân viên</h4>
        </div>
        <div class="modal-body">
          <table
                  id="staffList"
                  class="table table-striped table-bordered table-hover text-center"
          >
            <thead>
            <tr>
              <th class="center">chọn</th>
              <th class="text-center">Tên Nv</th>
            </tr>
            </thead>

            <tbody>
            <tr>
              <td class="center">
                <input type="checkbox" id="checkbox_1" value="1"  />
              </td>
              <td>Nv a</td>
            </tr>
            <tr>
              <td class="center">
                <input type="checkbox" id="checkbox_2" value="2" />
              </td>
              <td>Nv b</td>
            </tr>
            </tbody>
          </table>
          <input type="hidden" name="buildingId" id="buildingId" value="" />
        </div>
        <div class="modal-footer">
          <button
                  type="button"
                  class="btn btn-default"
                  id="btnAssignmentBuilding"
          >
            Giao Tòa Nhà
          </button>
          <button type="button" class="btn btn-default" data-dismiss="modal">
            Close
          </button>
        </div>
      </div>
    </div>
  </div>

  <script>
    function assignmentBuilding(buildingId){
      $('#assignmentBuildingModal').modal();
      $('#buildingId').val();
    }

    $('#btnAssignmentBuilding').click(function (e) {
      e.preventDefault();
      var data = {};
      data['buildingId'] = $('#buildingId').val();
      var staffs = $("#staffList")
              .find('tbody input[type = checkbox]:checked')
              .map(function () {
                return $(this).val();
              })
              .get();

      data["staffs"] = staffs;
      console.log("okee");
    });

    $('#btnSearchBuilding').click(function (e){
        e.preventDefault();
        $('#listForm').submit();
    });

  </script>

</body>
</html>
