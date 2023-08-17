<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<h3>Qual id do cliente que deseja deletar?</h3>
<div><input type="text" class="form-control" name="matricula" id="exampleInputEmail1" aria-describedby="emailHelp"></div>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const openButton = document.getElementById('openPopup');
            const closeButton = document.getElementById('closePopup');
            const popup = document.getElementById('popup');

            openButton.addEventListener('click', function() {
                popup.style.display = 'block';
            });

            closeButton.addEventListener('click', function() {
                popup.style.display = 'none';
            });
        });
    </script>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .popup {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 999;
        }
        .popup-content {
            background-color: white;
            width: 300px;
            padding: 20px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }
        .close {
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
        }
    </style>
</head>
<body>

<button id="openPopup">Salvar</button>

<div id="popup" class="popup">
    <div class="popup-content">
    <form method="post" action="index.jsp">
        <span class="close" id="closePopup">&times;</span>
        <p>Dados.........................</p>
        <button id="sim">Sim</button>
        <button id="não">Não</button>
    </div>
</div>

</body>
</html>