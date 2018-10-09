USE adlister;
INSERT INTO `Users` (Email, Password)
     VALUES ('brittany@example.com', 'ilikecats'),
            ('hunter@example.com', 'ilikedogs'),
            ('patrick2example.com', 'ilikeoctupus');
INSERT INTO `Ads` (user_id, Title, Description)
     VALUES (1, 'Help Wanted', 'I need a developer!'),
            (1, 'Cat for sale', 'I have a cat for sale!'),
            (2, 'Dog for sale', 'I have a dog for sale!'),
            (3, 'Octupus for sale', 'I hava a octupus for sale!');
INSERT INTO `Categories` (Category)
     VALUES ('Job available'),
            ('Animal for Sale'),
            ('Furniture for Sale'),
            ('Car for Sale');
INSERT INTO `Joiner` (ad_id, category_id)
     VALUES (1, 1),
            (2, 1),
            (1, 2);
