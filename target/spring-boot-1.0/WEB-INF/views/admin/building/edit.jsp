<%--
  Created by IntelliJ IDEA.
  User: 84362
  Date: 09/25/2024
  Time: 2:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
  <head>
    <title>Thêm Tòa Nhà</title>
  </head>
  <body>
<%--  <div class="main-container" id="main-container">--%>
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
              Thêm Tòa Nhà
              <small>
                <i class="ace-icon fa fa-angle-double-right"></i>
                overview &amp; stats
              </small>
            </h1>
          </div><!-- /.page-header -->
          <div class="row">
            <div class="col-xs-12 ">

            </div>
          </div>

          <!-- bảng tòa nhà -->
          <div class="row" style="font-family: 'Times New Roman', Times, serif; font-size: 18px;">
            <form:form  modelAttribute="buildingEdit" method="get" id="listForm">
                <div class="col-xs-12">
              <form action="" class="form-horizontal" id="form-edit">
                <!-- 1 -->
                <div class="form-group">
                  <label for="" class="col-xs-3">Tên tòa nhà</label>
                  <div class="col-xs-8">
<%--                    <input type="text" class="form-control"  id="name" name="name" />--%>
                    <form:input class="form-control" path="name"/>
                  </div>
                </div>
                <!-- 2 -->
                <div class="form-group">
                  <label for="" class="col-xs-3">Quận</label>
                  <div class="col-xs-4">
                    <form:select  path="district" name="districtId" id="districtId"  class="form-control">
                      <form:option value="0">-----Chọn Quận -----</form:option>
                      <form:option value="1">----- Quận 1 -----</form:option>
                      <form:option value="2">----- Quận 2 -----</form:option>
                      <form:option value="3">----- Quận 3 -----</form:option>
                      <form:option value="4">----- Quận 4 -----</form:option>
                    </form:select>
                  </div>
                </div>
                <!-- 3 -->
                <div class="form-group">
                  <label for="" class="col-xs-3">Kết cấu</label>
                  <div class="col-xs-5">
                    <input type="text" class="form-control" id="structure" name="structure"/>
                    <form:input class="form-control" path=""/>
                  </div>
                </div>
                <!-- 4 -->
                <div class="form-group">
                  <label for="" class="col-xs-3">Phường</label>
                  <div class="col-xs-8">
                    <input type="text" class="form-control" id="ward" name="ward"/>
                    <form:input class="form-control" path="ward"/>
                  </div>
                </div>
                <!-- 5 -->
                <div class="form-group">
                  <label for="" class="col-xs-3">Đường</label>
                  <div class="col-xs-8">
                    <form:input class="form-control" path="street"/>
<%--                    <input type="text" class="form-control" id="street" name="street"/>--%>
                  </div>
                </div>
                <!-- 6 -->
                <div class="form-group">
                  <label for="" class="col-xs-3">Số tầng hầm</label>
                  <div class="col-xs-8">
<%--                    <input--%>
<%--                            type="number"--%>
<%--                            class="form-control"--%>
<%--                            id="numberOfBasement"--%>
<%--                            name="name"--%>
<%--                    />--%>
                    <form:input class="form-control" path="numberOfBasement"/>

                  </div>
                </div>
                <!-- 7 -->
                <div class="form-group">
                  <label for="" class="col-xs-3">Diện tích sàn</label>
                  <div class="col-xs-8">
<%--                    <input--%>
<%--                            type="number"--%>
<%--                            class="form-control"--%>
<%--                            id="floorArea"--%>
<%--                            name="floorArea"--%>
<%--                    />--%>
                    <form:input class="form-control" path="floorArea"/>

                  </div>
                </div>
                <!-- 8-->
                <div class="form-group">
                  <label for="" class="col-xs-3">Hướng</label>
                  <div class="col-xs-8">
<%--                    <input--%>
<%--                            type="text"--%>
<%--                            class="form-control"--%>
<%--                            id="direction"--%>
<%--                            name="direction"--%>
<%--                    />--%>
                    <form:input class="form-control" path="direction"/>
                  </div>
                </div>
                <!-- 9 -->
                <div class="form-group">
                  <label for="" class="col-xs-3">Hạng</label>
                  <div class="col-xs-8">
<%--                    <input--%>
<%--                            type="text"--%>
<%--                            class="form-control"--%>
<%--                            id="level"--%>
<%--                            name="level"--%>
<%--                    />--%>
                    <form:input class="form-control" path="level"/>
                  </div>
                </div>
                <!-- 10-->
                <div class="form-group">
                  <label for="" class="col-xs-3">Diện tích thuê</label>
                  <div class="col-xs-8">
                    <input
                            type="text"
                            class="form-control"
                            id="rentArea"
                            name="rentArea"
                    />
                  </div>
                </div>
                <!-- 11 -->
                <div class="form-group">
                  <label for="" class="col-xs-3">Giá thuê</label>
                  <div class="col-xs-8">
                    <input
                            type="number"
                            class="form-control"
                            id="rentPrice"
                            name="rentPrice"
                    />
                  </div>
                </div>
                <!-- 12 -->
                <div class="form-group">
                  <label for="" class="col-xs-3">Mô tả giá</label>
                  <div class="col-xs-8">
                    <input
                            type="text"
                            class="form-control"
                            id="rentPriceDescription"
                            name="rentPriceDescription"
                    />
                  </div>
                </div>
                <!-- 14 -->
                <div class="form-group">
                  <label for="" class="col-xs-3">Phí dịch vụ</label>
                  <div class="col-xs-8">
                    <input
                            type="text"
                            class="form-control"
                            id="serviceFee"
                            name="serviceFee"
                    />
                  </div>
                </div>
                <!-- 15 -->
                <div class="form-group">
                  <label for="" class="col-xs-3">Phí ô tô</label>
                  <div class="col-xs-8">
                    <input
                            type="text"
                            class="form-control"
                            id="carFee"
                            name="carFee"
                    />
                  </div>
                </div>
                <!-- 16 -->
                <div class="form-group">
                  <label for="" class="col-xs-3">Phí mô tô</label>
                  <div class="col-xs-8">
                    <input
                            type="text"
                            class="form-control"
                            id="motorbikeFee"
                            name="motorbikeFee"
                    />
                  </div>
                </div>
                <!-- 17 -->
                <div class="form-group">
                  <label for="" class="col-xs-3">Phí ngoài giờ</label>
                  <div class="col-xs-8">
                    <input
                            type="text"
                            class="form-control"
                            id="overTimeFee"
                            name="overTimeFee"
                    />
                  </div>
                </div>
                <!-- 18 -->
                <div class="form-group">
                  <label for="" class="col-xs-3">Tiền điên</label>
                  <div class="col-xs-8">
                    <input
                            type="text"
                            class="form-control"
                            id="electricityFee"
                            name="electricityFee"
                    />
                  </div>
                </div>
                <!-- 19-->
                <div class="form-group">
                  <label for="" class="col-xs-3">Đặt cọc</label>
                  <div class="col-xs-8">
                    <input
                            type="text"
                            class="form-control"
                            id="deposit"
                            name="deposit"
                    />
                  </div>
                </div>
                <!-- 20 -->
                <div class="form-group">
                  <label for="" class="col-xs-3">Thanh toán</label>
                  <div class="col-xs-8">
                    <input
                            type="text"
                            class="form-control"
                            id="payment"
                            name="payment"
                    />
                  </div>
                </div>
                <!-- 21 -->
                <div class="form-group">
                  <label for="" class="col-xs-3">Thời hạn thuê</label>
                  <div class="col-xs-8">
                    <input
                            type="text"
                            class="form-control"
                            id="rentTime"
                            name="rentTime"
                    />
                  </div>
                </div>
                <!-- 22 -->
                <div class="form-group">
                  <label for="" class="col-xs-3">Thời gian trang trí</label>
                  <div class="col-xs-8">
                    <input
                            type="text"
                            class="form-control"
                            id="decorationTime"
                            name="decorationTime"
                    />
                  </div>
                </div>
                <!-- 23 -->
                <div class="form-group">
                  <label for="" class="col-xs-3">Tên quản lý</label>
                  <div class="col-xs-8">
                    <input
                            type="text"
                            class="form-control"
                            id="managerName"
                            name="managerName"
                    />
                  </div>
                </div>
                <!-- 24 -->
                <div class="form-group">
                  <label for="" class="col-xs-3">SĐT quản lý</label>
                  <div class="col-xs-8">
                    <input
                            type="text"
                            class="form-control"
                            id="managerPhoneNumber"
                            name="managerPhoneNumber"
                    />
                  </div>
                </div>
                <!-- 25 -->
                <div class="form-group">
                  <label for="" class="col-xs-3">Phí môi giới</label>
                  <div class="col-xs-8">
                    <input
                            type="number"
                            class="form-control"
                            id="brokerageFee"
                            name="brokerageFee"
                    />
                  </div>
                </div>
                <!-- 26 -->
                <div class="form-group">
                  <label for="" class="col-xs-3">Loại tòa nhà</label>
                  <div class="col-xs-8">
                    <label for="" class="checkbox-inline">
                      <input
                              type="checkbox"
                              name="typeCode"
                              value="noi-that"
                              id="typeCode"
                      />
                      Nội Thất
                    </label>
                    <label for="" class="checkbox-inline">
                      <input
                              type="checkbox"
                              name="typeCode"
                              value="nguyen-can"
                              id="typeCode"
                      />
                      Nguyên Căn
                    </label>
                    <label for="" class="checkbox-inline">
                      <input
                              type="checkbox"
                              name="typeCode"
                              id="typeCode"
                              value="tang-tret"
                      />
                      Tầng Trệt
                    </label>
                  </div>
                </div>
                <!-- 27-->
                <div class="form-group">
                  <label for="" class="col-xs-3">Hình đại diện</label>
                  <div class="col-xs-3">
                    <input
                            type="file"
                            class="form-control"
                            id="name"
                            name="name"
                    />
                    <br />
                    <div class="">
									  <textarea
                                              class="form-control"
                                              placeholder="Không có tệp nào được chọn"
                                      ></textarea>
                    </div>
                    <br />
                  </div>
                </div>
                <!-- 28 -->
                <div class="form-group">
                  <div class="col-xs-12">
                    <label for="" class="col-xs-3"></label>
                    <div class="col-xs-9"></div>
                    <c:if  test="${not empty buildingEdit.id}">
                      <button  class="btn btn-success" id="btnAddBuilding"> Cập nhật tòa nhà </button>
                      <button
                            class="btn btn-success"
                            id="btnCancel">
                      Hủy thao tác
                    </button>
                    </c:if>
                    <c:if test="${empty buildingEdit.id}">
                      <button  class="btn btn-success" id="btnAddBuilding"> Thêm mới tòa nhà </button>
                       <button
                            class="btn btn-success"
                            id="btnCancel">
                      Hủy thao tác
                    </button>
                    </c:if>
                  </div>
                </div>
              </form>
            </div>
            </form:form>
          </div>

        </div><!-- /.page-content -->
      </div>
    </div><!-- /.main-content -->

<%--  </div><!-- /.main-container -->--%>
  </body>
</html>
