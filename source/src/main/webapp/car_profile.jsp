<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <link href="https://fonts.googleapis.com/css?family=Spartan&display=swap" rel="stylesheet">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Добавить клиента</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <link href="<c:url value="/css/add_car.css" />" rel="stylesheet">
    <link href="<c:url value="/css/nav.css" />" rel="stylesheet">
    <link href="<c:url value="/css/background.css" />" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">Система проката авто</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item dropdown active">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    Клиенты
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <form class="form-inline my-2 my-lg-0 dropdown-item" action="<c:url value="/car_rental"/>" method="GET">
                        <input type="hidden" name="command" value="to_clients_list"/>
                        <button type="submit" class="btn btn-link btn-thin dropdown-item">Клиенты</button>
                    </form>
                    <form class="form-inline my-2 my-lg-0 dropdown-item" action="<c:url value="/car_rental"/>" method="GET">
                        <input type="hidden" name="command" value="to_add_client"/>
                        <button type="submit" class="btn btn-link btn-thin dropdown-item">Добавить клиента</button>
                    </form>
                </div>
            </li>
            <li class="nav-item dropdown active">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownCars" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    Машины
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownCars">
                    <form class="form-inline my-2 my-lg-0 dropdown-item" action="<c:url value="/car_rental"/>" method="GET">
                        <input type="hidden" name="command" value="to_cars_list"/>
                        <button type="submit" class="btn btn-link btn-thin dropdown-item">Список машин</button>
                    </form>
                    <form class="form-inline my-2 my-lg-0 dropdown-item" action="<c:url value="/car_rental"/>" method="GET">
                        <input type="hidden" name="command" value="to_add_car"/>
                        <button type="submit" class="btn btn-link btn-thin dropdown-item">Добавить машину</button>
                    </form>
                </div>
            </li>
            <li class="nav-item">
                <form class="form-inline my-2 my-lg-0" action="<c:url value="/car_rental"/>" method="GET">
                    <input type="hidden" name="command" value="to_orders_list"/>
                    <button type="submit" class="btn btn-link nav-link active">Заказы</button>
                </form>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0" action="<c:url value="/car_rental"/>" method="GET">
            <input type="hidden" name="command" value="logout"/>
            <button type="submit" class="btn btn-outline-light my-2 my-sm-0">Выйти из системы</button>
        </form>
    </div>
</nav>
<div class="card bg-dark text-white form-add-car">
    <div class="card-header">
        Обновить данные
    </div>
    <div class="card-body">
        <form action="<c:url value="/car_rental"/>" method="POST" class="needs-validation action-form"
              id="add_car"
              novalidate
              accept-charset="utf-8">

            <div class="form-group">

                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Модель</span>
                    </div>
                    <input type="text" class="form-control" value="${car.model}" required maxlength="50"
                           id="model"
                           name="model">
                </div>

                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">ID</span>
                    </div>
                    <input type="number" class="form-control" value="${car.makeId}" required
                           min="1" max="99"
                           id="make_id"
                           name="make_id">
                </div>

                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Регистрационный номер</span>
                    </div>
                    <input type="text" class="form-control" value="${car.registrationNumber}" required maxlength="50"
                           id="registration_number"
                           name="registration_number">
                </div>


                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Год</span>
                    </div>
                    <input type="number" class="form-control" value="${car.year}" required
                           min="1900" max="2099"
                           id="year"
                           name="year">
                </div>

                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Пробег</span>
                    </div>
                    <input type="number" class="form-control" value="${car.mileage}" required
                           min="0" max="1000000" step="100"
                           id="mileage"
                           name="mileage">
                </div>

                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Тип коробки передач</span>
                    </div>
                    <input type="number" class="form-control" value="${car.gearboxType}" required
                           min="1" max="2" step="1"
                           id="gearbox_type"
                           name="gearbox_type">
                </div>

                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Цена за день</span>
                    </div>
                    <input type="number" class="form-control" value="${car.pricePerDay}" required
                           min="0" max="100000" step="10.01"
                           id="price_per_day"
                           name="price_per_day">
                </div>

                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Цена за день (>7 дней)</span>
                    </div>
                    <input type="number" class="form-control" value="${car.pricePerDay2}" required
                           min="0" max="100000" step="10.01"
                           id="price_per_day_2"
                           name="price_per_day_2">
                </div>
    </div>
    <div class="form-group">
        <p style="color: red">${feedback}</p>
        <input type="hidden" name="command" value="update_car"/>
        <input type="hidden" name="car_id" value="${car.id}"/>
        <button type="submit" class="btn btn-light">Обновить данные</button>
    </div>
    </form>
</div>
</div>
</body>
</html>

<script src="<c:url value="/js/common.js" />"></script>

