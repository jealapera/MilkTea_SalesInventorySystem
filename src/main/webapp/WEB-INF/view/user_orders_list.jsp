<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Milk Tea - Sales & Inventory System</title>

        <!-- Font Awesome -->
        <link
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
          rel="stylesheet"
        />
        <!-- Google Fonts -->
        <link
          href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
          rel="stylesheet"
        />
        <!-- MDB -->
        <link
          href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/5.0.0/mdb.min.css"
          rel="stylesheet"
        />

        <!-- MDB -->
        <script
          type="text/javascript"
          src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/5.0.0/mdb.min.js"
        ></script>
    </head>
    <body>
        <section class="w-100 p-4">
            <div id="datatable-fixed" data-mdb-max-height="460" data-mdb-fixed-header="true" class="datatable">
                <div class="datatable-inner table-responsive ps ps--active-y" style="overflow: auto; position: relative; max-height: 460px;">
                    <table class="table datatable-table">
                        <thead class="datatable-header">
                            <tr>
                                <th style="cursor: pointer;" scope="col" class="fixed-cell"><i data-mdb-sort="field_0" class="datatable-sort-icon fas fa-arrow-up" style="transform: rotate(0deg);"></i> Name</th>
                                <th style="cursor: pointer;" scope="col" class="fixed-cell"><i data-mdb-sort="field_1" class="datatable-sort-icon fas fa-arrow-up" style="transform: rotate(0deg);"></i> Position</th>
                                <th style="cursor: pointer;" scope="col" class="fixed-cell"><i data-mdb-sort="field_2" class="datatable-sort-icon fas fa-arrow-up" style="transform: rotate(0deg);"></i> Office</th>
                                <th style="cursor: pointer;" scope="col" class="fixed-cell"><i data-mdb-sort="field_3" class="datatable-sort-icon fas fa-arrow-up" style="transform: rotate(0deg);"></i> Age</th>
                                <th style="cursor: pointer;" scope="col" class="fixed-cell"><i data-mdb-sort="field_4" class="datatable-sort-icon fas fa-arrow-up active" style="transform: rotate(0deg);"></i> Start date</th>
                                <th style="cursor: pointer;" scope="col" class="fixed-cell"><i data-mdb-sort="field_5" class="datatable-sort-icon fas fa-arrow-up" style="transform: rotate(0deg);"></i> Salary</th>
                            </tr>
                        </thead>
                        <tbody class="datatable-body"><tr scope="row" data-mdb-index="12"><td style="" class="" data-mdb-field="field_0" false="">Charde Marshall</td><td style="" class="" data-mdb-field="field_1" false="">Regional Director</td><td style="" class="" data-mdb-field="field_2" false="">San Francisco</td><td style="" class="" data-mdb-field="field_3" false="">36</td><td style="" class="" data-mdb-field="field_4" false="">2008/10/16</td><td style="" class="" data-mdb-field="field_5" false="">$470,600</td></tr>
                            <tr scope="row" data-mdb-index="4"><td style="" class="" data-mdb-field="field_0" false="">Airi Satou</td><td style="" class="" data-mdb-field="field_1" false="">Accountant</td><td style="" class="" data-mdb-field="field_2" false="">Tokyo</td><td style="" class="" data-mdb-field="field_3" false="">33</td><td style="" class="" data-mdb-field="field_4" false="">2008/11/28</td><td style="" class="" data-mdb-field="field_5" false="">$162,700</td></tr>
                            <tr scope="row" data-mdb-index="9"><td style="" class="" data-mdb-field="field_0" false="">Sonya Frost</td><td style="" class="" data-mdb-field="field_1" false="">Software Engineer</td><td style="" class="" data-mdb-field="field_2" false="">Edinburgh</td><td style="" class="" data-mdb-field="field_3" false="">23</td><td style="" class="" data-mdb-field="field_4" false="">2008/12/13</td><td style="" class="" data-mdb-field="field_5" false="">$103,600</td></tr>
                            <tr scope="row" data-mdb-index="10"><td style="" class="" data-mdb-field="field_0" false="">Jena Gaines</td><td style="" class="" data-mdb-field="field_1" false="">Office Manager</td><td style="" class="" data-mdb-field="field_2" false="">London</td><td style="" class="" data-mdb-field="field_3" false="">30</td><td style="" class="" data-mdb-field="field_4" false="">2008/12/19</td><td style="" class="" data-mdb-field="field_5" false="">$90,560</td></tr>
                        </tbody>
                    </table>
                    <div class="ps__rail-x" style="left: 0px; bottom: -171px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 171px; height: 460px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 125px; height: 335px;"></div></div></div>

                    <div class="datatable-pagination">
                        <div class="datatable-select-wrapper">
                            <p class="datatable-select-text">Rows per page:</p>
                            <div id="select-wrapper-346131" class="select-wrapper"><div class="form-outline"><input class="form-control select-input placeholder-active active" type="text" role="listbox" aria-multiselectable="false" aria-disabled="false" aria-haspopup="true" aria-expanded="false" readonly="true"><span class="select-arrow"></span><div class="form-notch"><div class="form-notch-leading" style="width: 9px;"></div><div class="form-notch-middle" style="width: 0px;"></div><div class="form-notch-trailing"></div></div><div class="form-label select-fake-value">10</div></div><select name="entries" class="datatable-select select select-initialized">
                                <option value="10" selected="">10</option>
                                <option value="25">25</option>
                                <option value="50">50</option>
                                <option value="200">200</option>
                            </select>
                        </div>
                    </div>
                    <div class="datatable-pagination-nav">1 - 10 of 14</div>
                    <div class="datatable-pagination-buttons">
                        <button data-mdb-ripple-color="dark" class="btn btn-link datatable-pagination-button datatable-pagination-left ripple-surface-dark" disabled="true" style=""><i class="fa fa-chevron-left"></i></button>
                        <button data-mdb-ripple-color="dark" class="btn btn-link datatable-pagination-button datatable-pagination-right ripple-surface-dark" style=""><i class="fa fa-chevron-right"></i></button>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>