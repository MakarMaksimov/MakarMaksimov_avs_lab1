#!/bin/bash
git init
mkdir lab0
cd lab0
mkdir claude_monet
echo "Вечерняя смена началась спокойно
На кухне обнаружилась пропажа продуктов
Баринов вызвал Сеню и Федю в кабинет" > evening_incident
cd claude_monet
mkdir kitchen
mkdir freezer
mkdir pantry
mkdir chef_office
mkdir staff_room
cd kitchen
mkdir hot_station
mkdir cold_station
cd hot_station
echo "Говядина для фирменного блюда получена
Сеня проверил мясо перед сменой
Одна упаковка колбасок оставлена на завтра" > senya_inventory
echo "Телятина для шефа
Фарш для котлет
Курица для банкета
Заказ должен принять Сеня" > meat_order
cd ..
cd cold_station
echo "Сибас доставлен утром
Федя проверил рыбный холодильник
Дорадо осталось четыре штуки" > fedya_inventory
echo "Лосось для холодной закуски
Тунец для специального заказа
Рыбные продукты передать Феде" > fish_order
cd ..
cd freezer
echo "Две утки для блюда Баринова
Коробка замороженных овощей
Запас мяса для большой компании" > reserve_list
cd ..
cd pantry
echo "Пропала упаковка дорогих колбасок
Не найден сыр из новой поставки
Сеня и Федя обещали всё объяснить
Баринов требует отчёт до открытия" > missing_products
cd ..
cd chef_office
echo "Сеня снова устроил розыгрыш на кухне
Федя помог спрятать продукты
Лёва должен проверить оба цеха
Шеф ждёт объяснительные после смены" > barinov_report
cd ..
cd staff_room
echo "Переставить коробки в кладовой
Сказать Лёве что поставку отменили
Успеть всё вернуть до прихода Баринова" > prank_plan
echo "Лёва заметил беспорядок в кладовой
Записи с кухни переданы шефу
Сеня и Федя останутся после смены" > leva_warning
cd ..
cd ..
chmod u=rwx,g=rx,o=rx claude_monet
chmod 644 evening_incident
cd claude_monet
chmod 750 kitchen
chmod u=rwx,g=rx,o= freezer
chmod 750 pantry
chmod 710 chef_office
chmod u=rwx,g=rx,o= staff_room
cd kitchen
chmod u=rwx,g=rwx,o= hot_station
chmod 750 cold_station
cd hot_station
chmod 640 senya_inventory
chmod u=rw,g=r,o=r meat_order
cd ..
cd cold_station
chmod u=rw,g=r,o= fedya_inventory
chmod 644 fish_order
cd ..
cd freezer
chmod 600 reserve_list
cd ..
cd pantry
chmod u=rw,g=r,o= missing_products
cd ..
cd chef_office
chmod u=r,g=r,o= barinov_report
cd ..
cd staff_room
chmod 600 prank_plan
chmod u=r,g=r,o= leva_warning
cd ..
cd ..
git add .
git commit -m "Lab1 2 Tasks Done"
git branch -M main
