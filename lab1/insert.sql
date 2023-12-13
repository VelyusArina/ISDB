INSERT INTO person (name_person, age, gender, characteristics)
VALUES 
  ('Иван Иванов', 25, 'Мужчина', 'Высокий, с карими глазами'),
  ('Мария Петрова', 30, 'Женщина', 'Худощавая, с длинными волосами'),
  ('Андрей Сидоров', 22, 'Мужчина', 'Имеет несколько татуировок');

INSERT INTO thing (name_thing, type_thing, color, size_thing)
VALUES 
  ('Футболка', 'Одежда', 'Красный', 42),
  ('Ноутбук', 'Электроника', 'Серый', NULL),
  ('Молоток', 'Инструмент', 'Черный', NULL);

INSERT INTO action (name_action, description_action, start_time, end_time)
VALUES 
  ('Встреча', 'Еженедельная встреча команды', '2023-01-01 09:00:00', '2023-01-01 10:00:00'),
  ('Отпуск', 'Отпуск на море', '2023-07-01 12:00:00', '2023-07-10 12:00:00');

INSERT INTO location (name_location, description_location)
VALUES 
  ('Офис', 'Главный офис компании'),
  ('Пляж', 'Курортный пляж'),
  ('Гараж', 'Место для хранения инструментов и транспорта');

INSERT INTO type_weather (name_weather)
VALUES 
  ('Солнечно'),
  ('Дождливо'),
  ('Снегопад');

INSERT INTO type_feeling (name_feeling, description_feeling)
VALUES 
  ('Счастье', 'Положительное эмоциональное состояние'),
  ('Грусть', 'Отрицательное эмоциональное состояние');

INSERT INTO weather (type_weather_id, location_id, temperature, precipitation, start_time, end_time)
VALUES 
  (1, 2, 30, 0, '2023-07-01 12:00:00', '2023-07-01 15:00:00'),
  (2, 3, 15, 10, '2023-01-05 08:00:00', '2023-01-05 10:00:00');

INSERT INTO feeling (person_id, type_feeling_id, start_time, end_time)
VALUES 
  (1, 1, '2023-01-01 10:00:00', '2023-01-01 11:00:00'),
  (2, 2, '2023-07-01 14:00:00', '2023-07-01 15:00:00');

INSERT INTO history_actions (action_id, person_id)
VALUES 
  (1, 1),
  (2, 2);

INSERT INTO presence (person_id, location_id, start_time, end_time)
VALUES 
  (1, 1, '2023-01-01 09:00:00', '2023-01-01 17:00:00'),
  (2, 2, '2023-07-01 12:00:00', '2023-07-10 12:00:00');

INSERT INTO possession (thing_id, person_id, start_time, end_time)
VALUES 
  (1, 1, '2023-01-01 09:00:00', NULL),
  (3, 3, '2023-01-05 08:00:00', NULL);
