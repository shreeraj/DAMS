<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="index.html"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                        <!--
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Charts<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="flot.html">Flot Charts</a>
                                </li>
                                <li>
                                    <a href="morris.html">Morris.js Charts</a>
                                </li>
                            </ul>
                            
                        </li>
                        -->
                        <li>
                            <a href="<spring:url value='/admin/doctors' />"><i class="fa fa-table fa-fw"></i> Doctors</a>
                        </li>
                        <li>
                            <a href="<spring:url value='/admin/specialities' />"><i class="fa fa-table fa-fw"></i> Specialities</a>
                        </li>
                        <li>
                            <a href="<spring:url value='/admin/sliders' />"><i class="fa fa-list fa-fw"></i> Banner</a>
                        </li>
                        <!--
                        <li>
                            <a href="forms.html"><i class="fa fa-edit fa-fw"></i> Services</a>
                        </li>
                        -->
                        <li>
                            <a href="<spring:url value='/admin/inquiries' />"><i class="fa fa-envelope fa-fw"></i> Customer Inquiries</a>
                        </li>
                       
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->