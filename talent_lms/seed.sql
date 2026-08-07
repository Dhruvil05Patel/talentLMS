-- Clear existing data and restart ID sequences
TRUNCATE TABLE learners, employers RESTART IDENTITY CASCADE;

-- Insert 100 Employers
INSERT INTO employers (id, name, email, domain) VALUES
  (1, 'Bruen - Brakus', 'contact@awful-ignorance.biz', 'awful-ignorance.biz'),
  (2, 'Prohaska, Deckow and Dooley', 'contact@tiny-cork.biz', 'tiny-cork.biz'),
  (3, 'Johns LLC', 'contact@inferior-stool.net', 'inferior-stool.net'),
  (4, 'Romaguera Group', 'contact@carefree-eternity.net', 'carefree-eternity.net'),
  (5, 'Mertz - Crooks', 'contact@royal-armchair.org', 'royal-armchair.org'),
  (6, 'Auer - Collier', 'contact@slushy-finding.name', 'slushy-finding.name'),
  (7, 'Sawayn and Sons', 'contact@majestic-nephew.org', 'majestic-nephew.org'),
  (8, 'Franecki, Daniel and Hodkiewicz', 'contact@ripe-signature.net', 'ripe-signature.net'),
  (9, 'Sanford Inc', 'contact@excellent-sandbar.name', 'excellent-sandbar.name'),
  (10, 'Kulas, Rosenbaum and Bruen', 'contact@realistic-monocle.com', 'realistic-monocle.com'),
  (11, 'Boyer, Gerhold and Effertz', 'contact@hateful-juggernaut.info', 'hateful-juggernaut.info'),
  (12, 'Champlin Group', 'contact@elliptical-haircut.net', 'elliptical-haircut.net'),
  (13, 'Koss, Hartmann and Lubowitz-Nolan', 'contact@minty-backburn.name', 'minty-backburn.name'),
  (14, 'Boyle - Feeney', 'contact@mad-comestible.name', 'mad-comestible.name'),
  (15, 'Lowe LLC', 'contact@grubby-flight.name', 'grubby-flight.name'),
  (16, 'Gerlach, Schuppe and VonRueden', 'contact@delirious-velocity.biz', 'delirious-velocity.biz'),
  (17, 'Wilderman, Borer and Thiel', 'contact@ajar-cow.biz', 'ajar-cow.biz'),
  (18, 'Bartoletti - Murazik', 'contact@upbeat-castanet.name', 'upbeat-castanet.name'),
  (19, 'Boyer Inc', 'contact@firsthand-stay.net', 'firsthand-stay.net'),
  (20, 'Senger - West', 'contact@silent-ruin.net', 'silent-ruin.net'),
  (21, 'Stehr, Ortiz and Erdman', 'contact@stupendous-scrap.name', 'stupendous-scrap.name'),
  (22, 'Flatley - McGlynn', 'contact@unselfish-oil.info', 'unselfish-oil.info'),
  (23, 'Aufderhar LLC', 'contact@multicolored-labourer.net', 'multicolored-labourer.net'),
  (24, 'Swift, Pacocha and Mraz', 'contact@everlasting-hydrolyze.name', 'everlasting-hydrolyze.name'),
  (25, 'Miller, Mills and Blanda', 'contact@obvious-nougat.biz', 'obvious-nougat.biz'),
  (26, 'Gerlach Inc', 'contact@mealy-necklace.name', 'mealy-necklace.name'),
  (27, 'Dickens Group', 'contact@meager-stitcher.biz', 'meager-stitcher.biz'),
  (28, 'Hermann LLC', 'contact@cuddly-lotion.net', 'cuddly-lotion.net'),
  (29, 'Sauer Inc', 'contact@scared-negotiation.com', 'scared-negotiation.com'),
  (30, 'Wehner Inc', 'contact@negligible-fireplace.org', 'negligible-fireplace.org'),
  (31, 'Douglas LLC', 'contact@massive-junior.com', 'massive-junior.com'),
  (32, 'Rice Group', 'contact@peaceful-monster.biz', 'peaceful-monster.biz'),
  (33, 'Quitzon-Ritchie - Stiedemann', 'contact@ill-fated-tray.biz', 'ill-fated-tray.biz'),
  (34, 'Bosco and Sons', 'contact@merry-interviewer.net', 'merry-interviewer.net'),
  (35, 'Howe, Bernhard and Ullrich', 'contact@scratchy-obesity.net', 'scratchy-obesity.net'),
  (36, 'Raynor - Bechtelar', 'contact@outrageous-cleaner.net', 'outrageous-cleaner.net'),
  (37, 'O''Connell Group', 'contact@frightened-making.org', 'frightened-making.org'),
  (38, 'Schaden and Sons', 'contact@functional-mathematics.name', 'functional-mathematics.name'),
  (39, 'Jerde, Mann and Harvey-Schmidt', 'contact@diligent-haircut.info', 'diligent-haircut.info'),
  (40, 'Kshlerin, Fahey and Stamm', 'contact@favorite-grandpa.org', 'favorite-grandpa.org'),
  (41, 'Dicki-McDermott, Davis and Moore', 'contact@jaunty-exhaust.net', 'jaunty-exhaust.net'),
  (42, 'Rippin LLC', 'contact@ill-fated-harp.net', 'ill-fated-harp.net'),
  (43, 'O''Hara - Bosco', 'contact@skeletal-luck.biz', 'skeletal-luck.biz'),
  (44, 'Kertzmann Group', 'contact@variable-scholarship.net', 'variable-scholarship.net'),
  (45, 'Anderson - Huel', 'contact@gracious-fat.biz', 'gracious-fat.biz'),
  (46, 'Kohler, Barrows and Klein', 'contact@cultivated-receptor.biz', 'cultivated-receptor.biz'),
  (47, 'Schmeler - Mante', 'contact@pointed-arcade.biz', 'pointed-arcade.biz'),
  (48, 'Emmerich - Adams', 'contact@querulous-thongs.org', 'querulous-thongs.org'),
  (49, 'Swift - Robel', 'contact@well-off-millet.org', 'well-off-millet.org'),
  (50, 'Yundt, Hane and Schamberger', 'contact@upright-taro.biz', 'upright-taro.biz'),
  (51, 'O''Reilly - Wisoky', 'contact@pure-cope.net', 'pure-cope.net'),
  (52, 'Toy, Dickens and Deckow', 'contact@hospitable-assist.org', 'hospitable-assist.org'),
  (53, 'Kuphal - Pouros', 'contact@frivolous-sunbeam.info', 'frivolous-sunbeam.info'),
  (54, 'Carter Group', 'contact@energetic-scholarship.biz', 'energetic-scholarship.biz'),
  (55, 'King, Wuckert and Hartmann', 'contact@moist-devastation.name', 'moist-devastation.name'),
  (56, 'Gerlach Group', 'contact@cautious-nerve.org', 'cautious-nerve.org'),
  (57, 'Corwin - Kohler', 'contact@favorite-cutover.net', 'favorite-cutover.net'),
  (58, 'Hamill, Bernier and Heller', 'contact@juvenile-disadvantage.net', 'juvenile-disadvantage.net'),
  (59, 'Okuneva - Cormier', 'contact@far-hoof.name', 'far-hoof.name'),
  (60, 'Hoppe - Thompson-Botsford', 'contact@selfish-providence.org', 'selfish-providence.org'),
  (61, 'Kemmer, Nader and Kerluke', 'contact@lean-hovercraft.org', 'lean-hovercraft.org'),
  (62, 'Rath - Murazik', 'contact@which-soup.com', 'which-soup.com'),
  (63, 'Graham and Sons', 'contact@angelic-tentacle.org', 'angelic-tentacle.org'),
  (64, 'Crist, Konopelski and Metz', 'contact@friendly-coil.biz', 'friendly-coil.biz'),
  (65, 'Corkery - Stokes', 'contact@obvious-expense.biz', 'obvious-expense.biz'),
  (66, 'Morissette Inc', 'contact@impressive-tooth.net', 'impressive-tooth.net'),
  (67, 'Johnson - Kuhlman', 'contact@haunting-makeover.biz', 'haunting-makeover.biz'),
  (68, 'McGlynn, Schaefer and Reinger-Kreiger', 'contact@creative-order.com', 'creative-order.com'),
  (69, 'Collier - Hansen', 'contact@suburban-yarmulke.org', 'suburban-yarmulke.org'),
  (70, 'Padberg-King, Barton and Beatty', 'contact@handy-corral.org', 'handy-corral.org'),
  (71, 'Lakin-Schoen and Sons', 'contact@unselfish-suspension.biz', 'unselfish-suspension.biz'),
  (72, 'Shanahan and Sons', 'contact@unwieldy-character.name', 'unwieldy-character.name'),
  (73, 'Walsh-Kozey, Smith and Auer', 'contact@heavenly-eyebrow.net', 'heavenly-eyebrow.net'),
  (74, 'McKenzie, O''Connell and Ullrich', 'contact@granular-cleaner.biz', 'granular-cleaner.biz'),
  (75, 'Reynolds - Gottlieb', 'contact@granular-forage.org', 'granular-forage.org'),
  (76, 'Beer, Walter and Yundt', 'contact@acceptable-integer.net', 'acceptable-integer.net'),
  (77, 'Dach LLC', 'contact@remorseful-reboot.info', 'remorseful-reboot.info'),
  (78, 'Anderson - Stamm', 'contact@untrue-smoke.net', 'untrue-smoke.net'),
  (79, 'Prosacco-Lebsack, Bernhard-Wunsch and Berge', 'contact@pretty-toothbrush.net', 'pretty-toothbrush.net'),
  (80, 'Leffler - Pfannerstill', 'contact@unimportant-skyscraper.org', 'unimportant-skyscraper.org'),
  (81, 'Jenkins and Sons', 'contact@nice-vein.org', 'nice-vein.org'),
  (82, 'Collier, Becker and O''Connell', 'contact@peppery-understanding.org', 'peppery-understanding.org'),
  (83, 'Morar - Oberbrunner', 'contact@victorious-conservative.name', 'victorious-conservative.name'),
  (84, 'Pacocha and Sons', 'contact@tangible-lotion.com', 'tangible-lotion.com'),
  (85, 'Berge Group', 'contact@peppery-gown.biz', 'peppery-gown.biz'),
  (86, 'Lockman and Sons', 'contact@smoggy-sauerkraut.info', 'smoggy-sauerkraut.info'),
  (87, 'Harris, Brown and Boyer', 'contact@dearest-premise.net', 'dearest-premise.net'),
  (88, 'Ferry Inc', 'contact@those-surface.com', 'those-surface.com'),
  (89, 'Bashirian - Tromp', 'contact@focused-shore.net', 'focused-shore.net'),
  (90, 'Bailey - Mertz', 'contact@ajar-swath.com', 'ajar-swath.com'),
  (91, 'Grant - Gulgowski', 'contact@potable-swim.net', 'potable-swim.net'),
  (92, 'Feest, Schmitt and Hettinger', 'contact@nimble-dividend.net', 'nimble-dividend.net'),
  (93, 'Mayer - Spinka', 'contact@musty-hippodrome.name', 'musty-hippodrome.name'),
  (94, 'Heidenreich - Schulist', 'contact@black-molasses.biz', 'black-molasses.biz'),
  (95, 'Schoen - Gottlieb', 'contact@frivolous-ceramics.com', 'frivolous-ceramics.com'),
  (96, 'Spinka - Weissnat', 'contact@aggravating-mountain.info', 'aggravating-mountain.info'),
  (97, 'McDermott, Kutch and Gislason', 'contact@familiar-arcade.org', 'familiar-arcade.org'),
  (98, 'Schowalter Inc', 'contact@clueless-jacket.net', 'clueless-jacket.net'),
  (99, 'Skiles, Kuvalis and Lesch', 'contact@experienced-drug.info', 'experienced-drug.info'),
  (100, 'Schoen - VonRueden', 'contact@rigid-lender.biz', 'rigid-lender.biz');

-- Insert 1000 Learners
INSERT INTO learners (
  user_id, name, email, avatar_url, course_id, course_name, group_name,
  enrolled_at, completion_pct, last_active, time_spent_mins, quiz_avg_pct,
  deadline, risk_status, summary, employer_id
) VALUES
  (
    1, 'Mandy Schmidt', 'mandy.schmidt@gmail.com', 'https://avatars.githubusercontent.com/u/68704513',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2026-02-23 07:17:29', 70, 'Today', 1673, 97,
    '2026-03-31', 'Medium', 'Mandy Schmidt is currently enrolled in Workplace Ethics & Code of Conduct. 70% complete. Performance is 97% on average for quizzes. Risk level is evaluated as Medium.', 9
  ),
  (
    2, 'Pam Klocko', 'pam.klocko@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/95.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2026-01-17 19:12:06', 62, '2 days ago', 1935, 68,
    '2026-03-02', 'Low', 'Pam Klocko is currently enrolled in Workplace Ethics & Code of Conduct. 62% complete. Performance is 68% on average for quizzes. Risk level is evaluated as Low.', 29
  ),
  (
    3, 'Margarete Olson', 'margarete.olson81@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/31.jpg',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2025-12-21 03:30:56', 81, '2 weeks ago', 575, 100,
    '2026-03-19', 'High', 'Margarete Olson is currently enrolled in Cloud Computing Fundamentals. 81% complete. Performance is 100% on average for quizzes. Risk level is evaluated as High.', 87
  ),
  (
    4, 'Rosemary Hartmann', 'rosemary.hartmann9@gmail.com', 'https://avatars.githubusercontent.com/u/3683669',
    6, 'Advanced Sales Techniques', 'Marketing',
    '2025-11-07 02:04:01', 89, '1 week ago', 1108, 66,
    '2026-01-13', 'Medium', 'Rosemary Hartmann is currently enrolled in Advanced Sales Techniques. 89% complete. Performance is 66% on average for quizzes. Risk level is evaluated as Medium.', 33
  ),
  (
    5, 'Karolann Kirlin', 'karolann_kirlin90@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/49.jpg',
    4, 'Leadership & Management', 'Sales',
    '2025-10-22 19:26:56', 46, 'Yesterday', 1966, 40,
    '2025-11-21', 'Low', 'Karolann Kirlin is currently enrolled in Leadership & Management. 46% complete. Performance is 40% on average for quizzes. Risk level is evaluated as Low.', 11
  ),
  (
    6, 'Niko Crooks-Becker', 'niko_crooks-becker@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/61.jpg',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2025-09-21 02:35:40', 88, '2 days ago', 1553, 76,
    '2025-11-01', 'Low', 'Niko Crooks-Becker is currently enrolled in Cloud Computing Fundamentals. 88% complete. Performance is 76% on average for quizzes. Risk level is evaluated as Low.', 96
  ),
  (
    7, 'Rickey Koelpin', 'rickey_koelpin61@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/5.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Marketing',
    '2025-08-18 18:31:17', 65, 'Today', 171, 88,
    '2025-09-20', 'High', 'Rickey Koelpin is currently enrolled in Diversity and Inclusion in the Workplace. 65% complete. Performance is 88% on average for quizzes. Risk level is evaluated as High.', 34
  ),
  (
    8, 'Alexandro Dibbert', 'alexandro_dibbert98@hotmail.com', 'https://avatars.githubusercontent.com/u/48230077',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2026-03-18 12:51:20', 45, '2 weeks ago', 1530, 98,
    '2026-06-05', 'Medium', 'Alexandro Dibbert is currently enrolled in Workplace Ethics & Code of Conduct. 45% complete. Performance is 98% on average for quizzes. Risk level is evaluated as Medium.', 66
  ),
  (
    9, 'Rickey Howe-Homenick', 'rickey.howe-homenick46@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/30.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2026-07-12 16:56:46', 66, 'Today', 950, 61,
    '2026-09-03', 'Medium', 'Rickey Howe-Homenick is currently enrolled in Diversity and Inclusion in the Workplace. 66% complete. Performance is 61% on average for quizzes. Risk level is evaluated as Medium.', 38
  ),
  (
    10, 'Jeffry Veum', 'jeffry.veum32@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/62.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2026-08-06 01:34:55', 38, '2 days ago', 52, 73,
    '2026-09-17', 'Medium', 'Jeffry Veum is currently enrolled in Workplace Ethics & Code of Conduct. 38% complete. Performance is 73% on average for quizzes. Risk level is evaluated as Medium.', 99
  ),
  (
    11, 'Deborah Will-Hammes', 'deborah.will-hammes88@yahoo.com', 'https://avatars.githubusercontent.com/u/87257814',
    7, 'Cloud Computing Fundamentals', 'Marketing',
    '2026-06-22 12:46:16', 80, '1 week ago', 1384, 63,
    '2026-08-22', 'Medium', 'Deborah Will-Hammes is currently enrolled in Cloud Computing Fundamentals. 80% complete. Performance is 63% on average for quizzes. Risk level is evaluated as Medium.', 71
  ),
  (
    12, 'Avery Denesik', 'avery.denesik32@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/38.jpg',
    1, 'Cybersecurity Awareness', 'Operations',
    '2025-09-20 02:45:23', 100, '2 weeks ago', 340, 95,
    '2025-12-14', 'High', 'Avery Denesik is currently enrolled in Cybersecurity Awareness. 100% complete. Performance is 95% on average for quizzes. Risk level is evaluated as High.', 32
  ),
  (
    13, 'Garfield Beatty', 'garfield.beatty55@gmail.com', 'https://avatars.githubusercontent.com/u/74668015',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2026-07-05 11:43:35', 30, '2 weeks ago', 788, 97,
    '2026-09-28', 'Medium', 'Garfield Beatty is currently enrolled in Cloud Computing Fundamentals. 30% complete. Performance is 97% on average for quizzes. Risk level is evaluated as Medium.', 77
  ),
  (
    14, 'Alisha Ortiz', 'alisha.ortiz52@hotmail.com', 'https://avatars.githubusercontent.com/u/6129800',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2026-05-21 00:22:27', 9, '3 days ago', 1667, 65,
    '2026-08-06', 'Low', 'Alisha Ortiz is currently enrolled in Diversity and Inclusion in the Workplace. 9% complete. Performance is 65% on average for quizzes. Risk level is evaluated as Low.', 15
  ),
  (
    15, 'Kevin Little', 'kevin.little89@hotmail.com', 'https://avatars.githubusercontent.com/u/54714984',
    6, 'Advanced Sales Techniques', 'Sales',
    '2026-02-17 23:15:45', 31, '2 weeks ago', 1769, 95,
    '2026-05-18', 'Medium', 'Kevin Little is currently enrolled in Advanced Sales Techniques. 31% complete. Performance is 95% on average for quizzes. Risk level is evaluated as Medium.', 29
  ),
  (
    16, 'Lea Kunde', 'lea_kunde45@yahoo.com', 'https://avatars.githubusercontent.com/u/93862805',
    6, 'Advanced Sales Techniques', 'Operations',
    '2026-04-30 15:27:20', 61, '3 days ago', 1456, 45,
    '2026-07-13', 'Low', 'Lea Kunde is currently enrolled in Advanced Sales Techniques. 61% complete. Performance is 45% on average for quizzes. Risk level is evaluated as Low.', 85
  ),
  (
    17, 'Grayson Ziemann', 'grayson.ziemann@hotmail.com', 'https://avatars.githubusercontent.com/u/71724746',
    3, 'Data Privacy and GDPR', 'Operations',
    '2025-10-16 18:34:36', 75, 'Yesterday', 643, 95,
    '2025-11-16', 'Low', 'Grayson Ziemann is currently enrolled in Data Privacy and GDPR. 75% complete. Performance is 95% on average for quizzes. Risk level is evaluated as Low.', 6
  ),
  (
    18, 'Ron Halvorson', 'ron.halvorson90@hotmail.com', 'https://avatars.githubusercontent.com/u/23874272',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2026-04-21 21:28:54', 35, '2 weeks ago', 1153, 68,
    '2026-06-14', 'Medium', 'Ron Halvorson is currently enrolled in Workplace Ethics & Code of Conduct. 35% complete. Performance is 68% on average for quizzes. Risk level is evaluated as Medium.', 45
  ),
  (
    19, 'Tate Jacobi', 'tate_jacobi51@gmail.com', 'https://avatars.githubusercontent.com/u/45529123',
    2, 'Workplace Ethics & Code of Conduct', 'Engineering',
    '2026-04-19 17:59:51', 22, '3 days ago', 1439, 79,
    '2026-07-14', 'Medium', 'Tate Jacobi is currently enrolled in Workplace Ethics & Code of Conduct. 22% complete. Performance is 79% on average for quizzes. Risk level is evaluated as Medium.', 10
  ),
  (
    20, 'Byron Bergstrom', 'byron.bergstrom26@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/85.jpg',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2026-05-10 17:05:12', 18, 'Yesterday', 1381, 98,
    '2026-08-07', 'Low', 'Byron Bergstrom is currently enrolled in Data Privacy and GDPR. 18% complete. Performance is 98% on average for quizzes. Risk level is evaluated as Low.', 95
  ),
  (
    21, 'Dion Harber', 'dion_harber@hotmail.com', 'https://avatars.githubusercontent.com/u/98743135',
    6, 'Advanced Sales Techniques', 'Marketing',
    '2026-06-18 12:51:35', 34, '3 days ago', 1510, 100,
    '2026-09-03', 'Low', 'Dion Harber is currently enrolled in Advanced Sales Techniques. 34% complete. Performance is 100% on average for quizzes. Risk level is evaluated as Low.', 88
  ),
  (
    22, 'Shad O''Conner', 'shad_oconner21@hotmail.com', 'https://avatars.githubusercontent.com/u/77820451',
    2, 'Workplace Ethics & Code of Conduct', 'Engineering',
    '2026-05-14 23:22:59', 42, 'Yesterday', 1027, 66,
    '2026-07-13', 'Low', 'Shad O''Conner is currently enrolled in Workplace Ethics & Code of Conduct. 42% complete. Performance is 66% on average for quizzes. Risk level is evaluated as Low.', 13
  ),
  (
    23, 'Emely Hagenes', 'emely.hagenes28@gmail.com', 'https://avatars.githubusercontent.com/u/94859784',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2026-04-20 21:41:14', 12, '2 days ago', 1386, 83,
    '2026-07-14', 'Low', 'Emely Hagenes is currently enrolled in Workplace Ethics & Code of Conduct. 12% complete. Performance is 83% on average for quizzes. Risk level is evaluated as Low.', 27
  ),
  (
    24, 'Newton VonRueden', 'newton_vonrueden47@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/98.jpg',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2025-10-12 04:01:33', 72, 'Yesterday', 389, 44,
    '2025-11-16', 'Low', 'Newton VonRueden is currently enrolled in Cloud Computing Fundamentals. 72% complete. Performance is 44% on average for quizzes. Risk level is evaluated as Low.', 95
  ),
  (
    25, 'Megan White', 'megan.white@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/71.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2026-05-25 08:42:48', 80, 'Today', 1111, 94,
    '2026-08-02', 'Low', 'Megan White is currently enrolled in Diversity and Inclusion in the Workplace. 80% complete. Performance is 94% on average for quizzes. Risk level is evaluated as Low.', 14
  ),
  (
    26, 'Kenny Fritsch', 'kenny.fritsch66@yahoo.com', 'https://avatars.githubusercontent.com/u/45465664',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2025-09-18 08:25:51', 82, '3 days ago', 850, 84,
    '2025-11-29', 'Medium', 'Kenny Fritsch is currently enrolled in Cybersecurity Awareness. 82% complete. Performance is 84% on average for quizzes. Risk level is evaluated as Medium.', 51
  ),
  (
    27, 'Fernando Fahey', 'fernando_fahey42@gmail.com', 'https://avatars.githubusercontent.com/u/75040856',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2025-12-08 12:31:48', 10, 'Yesterday', 1495, 69,
    '2026-01-26', 'Medium', 'Fernando Fahey is currently enrolled in Cloud Computing Fundamentals. 10% complete. Performance is 69% on average for quizzes. Risk level is evaluated as Medium.', 67
  ),
  (
    28, 'Marie Paucek', 'marie_paucek@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/19.jpg',
    7, 'Cloud Computing Fundamentals', 'Marketing',
    '2026-07-17 07:29:09', 77, 'Yesterday', 1822, 41,
    '2026-09-04', 'Medium', 'Marie Paucek is currently enrolled in Cloud Computing Fundamentals. 77% complete. Performance is 41% on average for quizzes. Risk level is evaluated as Medium.', 71
  ),
  (
    29, 'Simon Padberg', 'simon_padberg39@gmail.com', 'https://avatars.githubusercontent.com/u/78633309',
    6, 'Advanced Sales Techniques', 'Customer Support',
    '2025-08-31 20:18:16', 65, '1 week ago', 424, 47,
    '2025-11-20', 'Medium', 'Simon Padberg is currently enrolled in Advanced Sales Techniques. 65% complete. Performance is 47% on average for quizzes. Risk level is evaluated as Medium.', 97
  ),
  (
    30, 'Colin Hand', 'colin.hand15@hotmail.com', 'https://avatars.githubusercontent.com/u/89767866',
    7, 'Cloud Computing Fundamentals', 'Sales',
    '2026-01-28 05:24:30', 77, '2 days ago', 206, 50,
    '2026-04-26', 'Low', 'Colin Hand is currently enrolled in Cloud Computing Fundamentals. 77% complete. Performance is 50% on average for quizzes. Risk level is evaluated as Low.', 14
  ),
  (
    31, 'Crawford Osinski', 'crawford_osinski53@hotmail.com', 'https://avatars.githubusercontent.com/u/8272652',
    6, 'Advanced Sales Techniques', 'Engineering',
    '2026-07-30 11:55:58', 42, '3 days ago', 488, 79,
    '2026-09-01', 'Medium', 'Crawford Osinski is currently enrolled in Advanced Sales Techniques. 42% complete. Performance is 79% on average for quizzes. Risk level is evaluated as Medium.', 13
  ),
  (
    32, 'Forrest Treutel', 'forrest.treutel60@gmail.com', 'https://avatars.githubusercontent.com/u/71009029',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2025-12-15 05:35:30', 62, '1 week ago', 1091, 51,
    '2026-01-19', 'Medium', 'Forrest Treutel is currently enrolled in Cloud Computing Fundamentals. 62% complete. Performance is 51% on average for quizzes. Risk level is evaluated as Medium.', 51
  ),
  (
    33, 'Cedric Nader', 'cedric_nader67@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/29.jpg',
    4, 'Leadership & Management', 'Customer Support',
    '2026-01-22 03:46:52', 30, 'Today', 1266, 94,
    '2026-04-11', 'Medium', 'Cedric Nader is currently enrolled in Leadership & Management. 30% complete. Performance is 94% on average for quizzes. Risk level is evaluated as Medium.', 12
  ),
  (
    34, 'Kaylah Wintheiser', 'kaylah_wintheiser47@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/71.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2026-03-31 18:06:01', 68, '3 days ago', 1036, 63,
    '2026-05-13', 'Low', 'Kaylah Wintheiser is currently enrolled in Diversity and Inclusion in the Workplace. 68% complete. Performance is 63% on average for quizzes. Risk level is evaluated as Low.', 65
  ),
  (
    35, 'Amanda Collier', 'amanda.collier50@gmail.com', 'https://avatars.githubusercontent.com/u/43342554',
    4, 'Leadership & Management', 'Engineering',
    '2026-03-20 18:48:11', 0, '2 weeks ago', 1012, 45,
    '2026-05-04', 'Low', 'Amanda Collier is currently enrolled in Leadership & Management. 0% complete. Performance is 45% on average for quizzes. Risk level is evaluated as Low.', 90
  ),
  (
    36, 'Amira Monahan', 'amira.monahan@gmail.com', 'https://avatars.githubusercontent.com/u/58497807',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2026-04-15 16:35:56', 36, '2 weeks ago', 387, 71,
    '2026-06-11', 'Medium', 'Amira Monahan is currently enrolled in Data Privacy and GDPR. 36% complete. Performance is 71% on average for quizzes. Risk level is evaluated as Medium.', 22
  ),
  (
    37, 'Finn Cassin', 'finn.cassin@yahoo.com', 'https://avatars.githubusercontent.com/u/25033318',
    5, 'Diversity and Inclusion in the Workplace', 'Marketing',
    '2026-04-17 06:32:45', 25, 'Today', 1333, 71,
    '2026-07-13', 'Low', 'Finn Cassin is currently enrolled in Diversity and Inclusion in the Workplace. 25% complete. Performance is 71% on average for quizzes. Risk level is evaluated as Low.', 50
  ),
  (
    38, 'Reece Cruickshank', 'reece.cruickshank@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/21.jpg',
    6, 'Advanced Sales Techniques', 'Customer Support',
    '2026-03-20 11:33:48', 67, 'Today', 1158, 41,
    '2026-04-29', 'Low', 'Reece Cruickshank is currently enrolled in Advanced Sales Techniques. 67% complete. Performance is 41% on average for quizzes. Risk level is evaluated as Low.', 79
  ),
  (
    39, 'Omar Hirthe', 'omar.hirthe59@gmail.com', 'https://avatars.githubusercontent.com/u/37433126',
    4, 'Leadership & Management', 'Sales',
    '2025-11-15 01:15:00', 68, 'Today', 353, 89,
    '2026-01-06', 'Low', 'Omar Hirthe is currently enrolled in Leadership & Management. 68% complete. Performance is 89% on average for quizzes. Risk level is evaluated as Low.', 77
  ),
  (
    40, 'Ara Kilback', 'ara_kilback52@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/23.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Customer Support',
    '2026-04-25 05:37:40', 16, '1 week ago', 706, 81,
    '2026-06-06', 'Low', 'Ara Kilback is currently enrolled in Diversity and Inclusion in the Workplace. 16% complete. Performance is 81% on average for quizzes. Risk level is evaluated as Low.', 60
  ),
  (
    41, 'Lorraine Rolfson-Yost', 'lorraine_rolfson-yost@hotmail.com', 'https://avatars.githubusercontent.com/u/51705261',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2025-08-18 12:48:52', 61, '1 week ago', 1764, 64,
    '2025-10-27', 'Medium', 'Lorraine Rolfson-Yost is currently enrolled in Workplace Ethics & Code of Conduct. 61% complete. Performance is 64% on average for quizzes. Risk level is evaluated as Medium.', 47
  ),
  (
    42, 'Derick Stracke', 'derick.stracke35@hotmail.com', 'https://avatars.githubusercontent.com/u/46088811',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2025-10-21 15:44:04', 82, '2 days ago', 1246, 40,
    '2025-12-27', 'Low', 'Derick Stracke is currently enrolled in Cloud Computing Fundamentals. 82% complete. Performance is 40% on average for quizzes. Risk level is evaluated as Low.', 99
  ),
  (
    43, 'Hyman Johns', 'hyman_johns6@hotmail.com', 'https://avatars.githubusercontent.com/u/21145718',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2026-06-26 07:58:51', 14, 'Yesterday', 1071, 77,
    '2026-08-10', 'Low', 'Hyman Johns is currently enrolled in Workplace Ethics & Code of Conduct. 14% complete. Performance is 77% on average for quizzes. Risk level is evaluated as Low.', 63
  ),
  (
    44, 'Annamae Veum', 'annamae_veum@yahoo.com', 'https://avatars.githubusercontent.com/u/41596981',
    1, 'Cybersecurity Awareness', 'Sales',
    '2026-06-15 18:58:18', 77, '1 week ago', 1852, 78,
    '2026-09-01', 'Low', 'Annamae Veum is currently enrolled in Cybersecurity Awareness. 77% complete. Performance is 78% on average for quizzes. Risk level is evaluated as Low.', 56
  ),
  (
    45, 'Vicki Jones', 'vicki_jones@gmail.com', 'https://avatars.githubusercontent.com/u/75964864',
    3, 'Data Privacy and GDPR', 'Finance',
    '2026-04-06 19:56:36', 76, '2 weeks ago', 1984, 52,
    '2026-05-09', 'High', 'Vicki Jones is currently enrolled in Data Privacy and GDPR. 76% complete. Performance is 52% on average for quizzes. Risk level is evaluated as High.', 83
  ),
  (
    46, 'Myrna Aufderhar', 'myrna_aufderhar@hotmail.com', 'https://avatars.githubusercontent.com/u/93273434',
    1, 'Cybersecurity Awareness', 'Sales',
    '2026-01-15 05:23:26', 77, '3 days ago', 664, 74,
    '2026-03-06', 'Medium', 'Myrna Aufderhar is currently enrolled in Cybersecurity Awareness. 77% complete. Performance is 74% on average for quizzes. Risk level is evaluated as Medium.', 12
  ),
  (
    47, 'Carroll Sawayn', 'carroll_sawayn32@yahoo.com', 'https://avatars.githubusercontent.com/u/93147961',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2026-05-04 07:48:38', 49, 'Yesterday', 1819, 93,
    '2026-07-05', 'High', 'Carroll Sawayn is currently enrolled in Workplace Ethics & Code of Conduct. 49% complete. Performance is 93% on average for quizzes. Risk level is evaluated as High.', 45
  ),
  (
    48, 'Jarrell Herzog', 'jarrell.herzog@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/79.jpg',
    6, 'Advanced Sales Techniques', 'Human Resources',
    '2025-12-05 23:14:54', 26, '3 days ago', 254, 70,
    '2026-02-01', 'Low', 'Jarrell Herzog is currently enrolled in Advanced Sales Techniques. 26% complete. Performance is 70% on average for quizzes. Risk level is evaluated as Low.', 77
  ),
  (
    49, 'Boyd O''Conner', 'boyd.oconner24@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/96.jpg',
    1, 'Cybersecurity Awareness', 'Engineering',
    '2025-09-24 12:43:14', 87, 'Yesterday', 1904, 62,
    '2025-11-29', 'Low', 'Boyd O''Conner is currently enrolled in Cybersecurity Awareness. 87% complete. Performance is 62% on average for quizzes. Risk level is evaluated as Low.', 46
  ),
  (
    50, 'Derek Welch', 'derek_welch68@yahoo.com', 'https://avatars.githubusercontent.com/u/62429974',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2026-03-07 17:56:52', 76, '1 week ago', 1277, 73,
    '2026-06-02', 'Low', 'Derek Welch is currently enrolled in Cybersecurity Awareness. 76% complete. Performance is 73% on average for quizzes. Risk level is evaluated as Low.', 70
  ),
  (
    51, 'Katlynn Kassulke', 'katlynn.kassulke@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/37.jpg',
    6, 'Advanced Sales Techniques', 'Finance',
    '2026-01-13 05:54:20', 15, '1 month ago', 1060, 71,
    '2026-03-23', 'Medium', 'Katlynn Kassulke is currently enrolled in Advanced Sales Techniques. 15% complete. Performance is 71% on average for quizzes. Risk level is evaluated as Medium.', 29
  ),
  (
    52, 'Marc Franey', 'marc.franey@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/65.jpg',
    1, 'Cybersecurity Awareness', 'Operations',
    '2025-10-14 06:13:19', 65, '1 month ago', 1137, 94,
    '2025-12-14', 'High', 'Marc Franey is currently enrolled in Cybersecurity Awareness. 65% complete. Performance is 94% on average for quizzes. Risk level is evaluated as High.', 49
  ),
  (
    53, 'Deja Hilpert', 'deja_hilpert11@yahoo.com', 'https://avatars.githubusercontent.com/u/95901945',
    6, 'Advanced Sales Techniques', 'Sales',
    '2026-01-01 07:30:27', 55, '2 days ago', 14, 57,
    '2026-03-22', 'Low', 'Deja Hilpert is currently enrolled in Advanced Sales Techniques. 55% complete. Performance is 57% on average for quizzes. Risk level is evaluated as Low.', 39
  ),
  (
    54, 'Erik Lemke', 'erik_lemke67@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/90.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2025-11-24 16:30:56', 28, '2 weeks ago', 289, 51,
    '2026-02-05', 'Medium', 'Erik Lemke is currently enrolled in Diversity and Inclusion in the Workplace. 28% complete. Performance is 51% on average for quizzes. Risk level is evaluated as Medium.', 67
  ),
  (
    55, 'Christop Cormier', 'christop_cormier18@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/62.jpg',
    6, 'Advanced Sales Techniques', 'Finance',
    '2025-12-23 01:21:33', 48, '2 weeks ago', 1457, 68,
    '2026-02-07', 'Low', 'Christop Cormier is currently enrolled in Advanced Sales Techniques. 48% complete. Performance is 68% on average for quizzes. Risk level is evaluated as Low.', 31
  ),
  (
    56, 'Devyn Mante', 'devyn_mante22@yahoo.com', 'https://avatars.githubusercontent.com/u/70213716',
    6, 'Advanced Sales Techniques', 'Customer Support',
    '2025-10-10 15:12:57', 91, 'Today', 1432, 72,
    '2025-12-01', 'Low', 'Devyn Mante is currently enrolled in Advanced Sales Techniques. 91% complete. Performance is 72% on average for quizzes. Risk level is evaluated as Low.', 95
  ),
  (
    57, 'Sammy Ondricka', 'sammy_ondricka74@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/74.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2025-11-20 13:17:32', 69, '2 weeks ago', 148, 88,
    '2026-02-14', 'Low', 'Sammy Ondricka is currently enrolled in Diversity and Inclusion in the Workplace. 69% complete. Performance is 88% on average for quizzes. Risk level is evaluated as Low.', 81
  ),
  (
    58, 'Pamela Zboncak', 'pamela_zboncak@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/4.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Operations',
    '2026-02-09 09:58:54', 38, '3 days ago', 1697, 78,
    '2026-03-20', 'Low', 'Pamela Zboncak is currently enrolled in Workplace Ethics & Code of Conduct. 38% complete. Performance is 78% on average for quizzes. Risk level is evaluated as Low.', 7
  ),
  (
    59, 'Jerrold Mayer', 'jerrold_mayer@gmail.com', 'https://avatars.githubusercontent.com/u/25541237',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2025-08-27 10:37:51', 72, '2 days ago', 1940, 58,
    '2025-10-30', 'Medium', 'Jerrold Mayer is currently enrolled in Data Privacy and GDPR. 72% complete. Performance is 58% on average for quizzes. Risk level is evaluated as Medium.', 68
  ),
  (
    60, 'Duane Bergstrom', 'duane.bergstrom86@hotmail.com', 'https://avatars.githubusercontent.com/u/20623528',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2025-11-05 03:10:04', 89, 'Today', 1800, 88,
    '2025-12-05', 'Medium', 'Duane Bergstrom is currently enrolled in Cybersecurity Awareness. 89% complete. Performance is 88% on average for quizzes. Risk level is evaluated as Medium.', 59
  ),
  (
    61, 'Tevin Kuhic', 'tevin.kuhic@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/9.jpg',
    4, 'Leadership & Management', 'Marketing',
    '2025-11-23 14:26:35', 93, '1 week ago', 395, 53,
    '2026-01-31', 'Medium', 'Tevin Kuhic is currently enrolled in Leadership & Management. 93% complete. Performance is 53% on average for quizzes. Risk level is evaluated as Medium.', 77
  ),
  (
    62, 'Madeline Marks', 'madeline_marks@gmail.com', 'https://avatars.githubusercontent.com/u/23163097',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2026-04-16 04:55:36', 35, '1 week ago', 490, 79,
    '2026-06-15', 'Medium', 'Madeline Marks is currently enrolled in Cybersecurity Awareness. 35% complete. Performance is 79% on average for quizzes. Risk level is evaluated as Medium.', 22
  ),
  (
    63, 'Roderick Senger', 'roderick.senger21@hotmail.com', 'https://avatars.githubusercontent.com/u/5717325',
    2, 'Workplace Ethics & Code of Conduct', 'Sales',
    '2026-01-11 08:17:49', 65, '2 weeks ago', 1778, 75,
    '2026-04-03', 'Low', 'Roderick Senger is currently enrolled in Workplace Ethics & Code of Conduct. 65% complete. Performance is 75% on average for quizzes. Risk level is evaluated as Low.', 24
  ),
  (
    64, 'Genevieve Trantow-Will', 'genevieve.trantow-will62@hotmail.com', 'https://avatars.githubusercontent.com/u/93845646',
    2, 'Workplace Ethics & Code of Conduct', 'Sales',
    '2026-06-07 16:50:40', 43, 'Yesterday', 694, 82,
    '2026-07-30', 'Low', 'Genevieve Trantow-Will is currently enrolled in Workplace Ethics & Code of Conduct. 43% complete. Performance is 82% on average for quizzes. Risk level is evaluated as Low.', 57
  ),
  (
    65, 'Colin Runolfsson', 'colin_runolfsson@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/29.jpg',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2026-01-19 23:24:37', 22, '1 week ago', 796, 67,
    '2026-03-30', 'Medium', 'Colin Runolfsson is currently enrolled in Cloud Computing Fundamentals. 22% complete. Performance is 67% on average for quizzes. Risk level is evaluated as Medium.', 68
  ),
  (
    66, 'Edwin Carroll', 'edwin_carroll42@gmail.com', 'https://avatars.githubusercontent.com/u/19923562',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2026-02-06 16:26:32', 30, '1 month ago', 1143, 61,
    '2026-04-07', 'Low', 'Edwin Carroll is currently enrolled in Diversity and Inclusion in the Workplace. 30% complete. Performance is 61% on average for quizzes. Risk level is evaluated as Low.', 7
  ),
  (
    67, 'Lydia Nader', 'lydia.nader@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/63.jpg',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2026-02-21 07:56:59', 26, '2 weeks ago', 1114, 85,
    '2026-05-11', 'Low', 'Lydia Nader is currently enrolled in Cybersecurity Awareness. 26% complete. Performance is 85% on average for quizzes. Risk level is evaluated as Low.', 37
  ),
  (
    68, 'Jerry Price', 'jerry_price23@yahoo.com', 'https://avatars.githubusercontent.com/u/86259772',
    2, 'Workplace Ethics & Code of Conduct', 'Operations',
    '2026-06-08 02:54:50', 8, '1 month ago', 26, 86,
    '2026-07-20', 'Low', 'Jerry Price is currently enrolled in Workplace Ethics & Code of Conduct. 8% complete. Performance is 86% on average for quizzes. Risk level is evaluated as Low.', 92
  ),
  (
    69, 'Sue Franecki', 'sue.franecki@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/87.jpg',
    3, 'Data Privacy and GDPR', 'Customer Support',
    '2026-06-19 20:19:43', 88, '2 weeks ago', 1656, 76,
    '2026-07-21', 'Medium', 'Sue Franecki is currently enrolled in Data Privacy and GDPR. 88% complete. Performance is 76% on average for quizzes. Risk level is evaluated as Medium.', 62
  ),
  (
    70, 'Mattie Heaney', 'mattie_heaney@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/41.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2026-06-09 08:57:22', 87, '2 weeks ago', 1938, 75,
    '2026-08-12', 'Low', 'Mattie Heaney is currently enrolled in Diversity and Inclusion in the Workplace. 87% complete. Performance is 75% on average for quizzes. Risk level is evaluated as Low.', 58
  ),
  (
    71, 'Albin Spinka', 'albin.spinka@gmail.com', 'https://avatars.githubusercontent.com/u/93344169',
    4, 'Leadership & Management', 'Sales',
    '2025-10-15 09:48:09', 88, '2 weeks ago', 1693, 91,
    '2025-12-27', 'Medium', 'Albin Spinka is currently enrolled in Leadership & Management. 88% complete. Performance is 91% on average for quizzes. Risk level is evaluated as Medium.', 6
  ),
  (
    72, 'Adell Osinski', 'adell.osinski@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/29.jpg',
    4, 'Leadership & Management', 'Operations',
    '2026-05-05 16:25:55', 96, '2 weeks ago', 420, 60,
    '2026-07-13', 'Medium', 'Adell Osinski is currently enrolled in Leadership & Management. 96% complete. Performance is 60% on average for quizzes. Risk level is evaluated as Medium.', 27
  ),
  (
    73, 'Adrain Kris', 'adrain.kris@hotmail.com', 'https://avatars.githubusercontent.com/u/33449990',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2026-02-22 05:48:22', 43, 'Today', 858, 54,
    '2026-04-16', 'Low', 'Adrain Kris is currently enrolled in Diversity and Inclusion in the Workplace. 43% complete. Performance is 54% on average for quizzes. Risk level is evaluated as Low.', 30
  ),
  (
    74, 'Maiya Parisian', 'maiya_parisian@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/46.jpg',
    1, 'Cybersecurity Awareness', 'Finance',
    '2026-04-30 20:18:01', 35, '3 days ago', 572, 89,
    '2026-07-01', 'Medium', 'Maiya Parisian is currently enrolled in Cybersecurity Awareness. 35% complete. Performance is 89% on average for quizzes. Risk level is evaluated as Medium.', 63
  ),
  (
    75, 'Erika Kuhn', 'erika.kuhn@yahoo.com', 'https://avatars.githubusercontent.com/u/24508697',
    4, 'Leadership & Management', 'Engineering',
    '2026-06-08 07:37:47', 14, 'Yesterday', 118, 70,
    '2026-08-03', 'Low', 'Erika Kuhn is currently enrolled in Leadership & Management. 14% complete. Performance is 70% on average for quizzes. Risk level is evaluated as Low.', 100
  ),
  (
    76, 'Gabriel Rowe', 'gabriel.rowe31@gmail.com', 'https://avatars.githubusercontent.com/u/36304586',
    2, 'Workplace Ethics & Code of Conduct', 'Engineering',
    '2025-12-03 21:50:41', 5, '2 weeks ago', 317, 69,
    '2026-02-04', 'Medium', 'Gabriel Rowe is currently enrolled in Workplace Ethics & Code of Conduct. 5% complete. Performance is 69% on average for quizzes. Risk level is evaluated as Medium.', 35
  ),
  (
    77, 'Francesco Gulgowski', 'francesco_gulgowski@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/32.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2026-02-16 21:39:36', 13, '3 days ago', 366, 51,
    '2026-05-17', 'High', 'Francesco Gulgowski is currently enrolled in Diversity and Inclusion in the Workplace. 13% complete. Performance is 51% on average for quizzes. Risk level is evaluated as High.', 62
  ),
  (
    78, 'Debra D''Amore', 'debra.damore@hotmail.com', 'https://avatars.githubusercontent.com/u/4895928',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2026-04-21 22:04:17', 91, '2 days ago', 1452, 93,
    '2026-05-27', 'Low', 'Debra D''Amore is currently enrolled in Data Privacy and GDPR. 91% complete. Performance is 93% on average for quizzes. Risk level is evaluated as Low.', 59
  ),
  (
    79, 'Natalie Roberts-Lemke', 'natalie.roberts-lemke@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/83.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Sales',
    '2026-06-21 16:10:12', 12, 'Yesterday', 739, 46,
    '2026-08-22', 'Low', 'Natalie Roberts-Lemke is currently enrolled in Workplace Ethics & Code of Conduct. 12% complete. Performance is 46% on average for quizzes. Risk level is evaluated as Low.', 47
  ),
  (
    80, 'Seth Jast', 'seth.jast@gmail.com', 'https://avatars.githubusercontent.com/u/12823172',
    7, 'Cloud Computing Fundamentals', 'Operations',
    '2026-08-03 00:38:25', 65, '3 days ago', 1501, 70,
    '2026-10-03', 'Medium', 'Seth Jast is currently enrolled in Cloud Computing Fundamentals. 65% complete. Performance is 70% on average for quizzes. Risk level is evaluated as Medium.', 60
  ),
  (
    81, 'Enrico Swaniawski', 'enrico.swaniawski@gmail.com', 'https://avatars.githubusercontent.com/u/58793039',
    3, 'Data Privacy and GDPR', 'Operations',
    '2025-08-20 08:10:26', 24, '3 days ago', 1128, 69,
    '2025-10-04', 'High', 'Enrico Swaniawski is currently enrolled in Data Privacy and GDPR. 24% complete. Performance is 69% on average for quizzes. Risk level is evaluated as High.', 76
  ),
  (
    82, 'Clara Konopelski', 'clara_konopelski@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/47.jpg',
    3, 'Data Privacy and GDPR', 'Finance',
    '2025-11-04 07:58:46', 5, '1 week ago', 595, 71,
    '2026-01-30', 'Low', 'Clara Konopelski is currently enrolled in Data Privacy and GDPR. 5% complete. Performance is 71% on average for quizzes. Risk level is evaluated as Low.', 16
  ),
  (
    83, 'Daisha Sauer', 'daisha_sauer@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/54.jpg',
    4, 'Leadership & Management', 'Operations',
    '2026-08-07 13:22:47', 86, 'Yesterday', 1491, 96,
    '2026-10-05', 'Medium', 'Daisha Sauer is currently enrolled in Leadership & Management. 86% complete. Performance is 96% on average for quizzes. Risk level is evaluated as Medium.', 10
  ),
  (
    84, 'Madisyn Witting', 'madisyn_witting73@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/7.jpg',
    1, 'Cybersecurity Awareness', 'Operations',
    '2025-08-19 21:07:21', 100, '2 days ago', 1377, 94,
    '2025-11-09', 'Low', 'Madisyn Witting is currently enrolled in Cybersecurity Awareness. 100% complete. Performance is 94% on average for quizzes. Risk level is evaluated as Low.', 70
  ),
  (
    85, 'Clark Muller', 'clark_muller63@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/58.jpg',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2025-09-09 00:11:22', 90, '2 weeks ago', 494, 98,
    '2025-11-16', 'High', 'Clark Muller is currently enrolled in Cloud Computing Fundamentals. 90% complete. Performance is 98% on average for quizzes. Risk level is evaluated as High.', 61
  ),
  (
    86, 'Guillermo Fadel', 'guillermo.fadel@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/2.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Operations',
    '2026-05-18 01:41:26', 13, '1 month ago', 438, 57,
    '2026-06-29', 'Low', 'Guillermo Fadel is currently enrolled in Workplace Ethics & Code of Conduct. 13% complete. Performance is 57% on average for quizzes. Risk level is evaluated as Low.', 37
  ),
  (
    87, 'Gonzalo Murphy', 'gonzalo.murphy@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/55.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Operations',
    '2025-10-14 09:34:40', 5, 'Yesterday', 1096, 80,
    '2025-11-28', 'Low', 'Gonzalo Murphy is currently enrolled in Workplace Ethics & Code of Conduct. 5% complete. Performance is 80% on average for quizzes. Risk level is evaluated as Low.', 2
  ),
  (
    88, 'Trevor MacGyver', 'trevor.macgyver5@hotmail.com', 'https://avatars.githubusercontent.com/u/24332790',
    3, 'Data Privacy and GDPR', 'Sales',
    '2025-09-02 07:08:18', 35, '2 weeks ago', 220, 82,
    '2025-11-22', 'Low', 'Trevor MacGyver is currently enrolled in Data Privacy and GDPR. 35% complete. Performance is 82% on average for quizzes. Risk level is evaluated as Low.', 75
  ),
  (
    89, 'Natasha Reilly', 'natasha.reilly@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/53.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2025-12-11 12:21:46', 96, 'Today', 537, 99,
    '2026-01-23', 'High', 'Natasha Reilly is currently enrolled in Workplace Ethics & Code of Conduct. 96% complete. Performance is 99% on average for quizzes. Risk level is evaluated as High.', 24
  ),
  (
    90, 'Adolfo O''Reilly', 'adolfo.oreilly91@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/93.jpg',
    3, 'Data Privacy and GDPR', 'Marketing',
    '2026-08-06 05:43:35', 99, '3 days ago', 1628, 89,
    '2026-09-19', 'Medium', 'Adolfo O''Reilly is currently enrolled in Data Privacy and GDPR. 99% complete. Performance is 89% on average for quizzes. Risk level is evaluated as Medium.', 39
  ),
  (
    91, 'Tristian Jaskolski', 'tristian_jaskolski74@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/29.jpg',
    6, 'Advanced Sales Techniques', 'Finance',
    '2026-06-26 06:39:04', 56, '2 weeks ago', 130, 66,
    '2026-07-26', 'Low', 'Tristian Jaskolski is currently enrolled in Advanced Sales Techniques. 56% complete. Performance is 66% on average for quizzes. Risk level is evaluated as Low.', 86
  ),
  (
    92, 'Lila Durgan', 'lila.durgan@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/60.jpg',
    3, 'Data Privacy and GDPR', 'Marketing',
    '2026-04-24 14:37:06', 98, '3 days ago', 1424, 62,
    '2026-07-22', 'Medium', 'Lila Durgan is currently enrolled in Data Privacy and GDPR. 98% complete. Performance is 62% on average for quizzes. Risk level is evaluated as Medium.', 32
  ),
  (
    93, 'Kenyatta Anderson', 'kenyatta.anderson@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/6.jpg',
    3, 'Data Privacy and GDPR', 'Finance',
    '2026-07-06 06:57:50', 70, 'Today', 1769, 93,
    '2026-09-25', 'Low', 'Kenyatta Anderson is currently enrolled in Data Privacy and GDPR. 70% complete. Performance is 93% on average for quizzes. Risk level is evaluated as Low.', 72
  ),
  (
    94, 'Zachary Hodkiewicz', 'zachary_hodkiewicz@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/2.jpg',
    4, 'Leadership & Management', 'Operations',
    '2025-11-14 01:56:50', 25, '3 days ago', 1044, 71,
    '2026-02-01', 'Low', 'Zachary Hodkiewicz is currently enrolled in Leadership & Management. 25% complete. Performance is 71% on average for quizzes. Risk level is evaluated as Low.', 57
  ),
  (
    95, 'Aurelia Goodwin', 'aurelia.goodwin82@gmail.com', 'https://avatars.githubusercontent.com/u/12141118',
    4, 'Leadership & Management', 'Finance',
    '2026-02-24 05:33:53', 59, '3 days ago', 765, 53,
    '2026-04-01', 'Low', 'Aurelia Goodwin is currently enrolled in Leadership & Management. 59% complete. Performance is 53% on average for quizzes. Risk level is evaluated as Low.', 50
  ),
  (
    96, 'Lionel Labadie', 'lionel.labadie42@gmail.com', 'https://avatars.githubusercontent.com/u/16593588',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2025-12-23 19:26:22', 30, '2 weeks ago', 1248, 70,
    '2026-03-17', 'Medium', 'Lionel Labadie is currently enrolled in Cloud Computing Fundamentals. 30% complete. Performance is 70% on average for quizzes. Risk level is evaluated as Medium.', 51
  ),
  (
    97, 'Forrest Batz', 'forrest_batz@hotmail.com', 'https://avatars.githubusercontent.com/u/90830183',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2025-11-01 07:45:45', 58, '1 month ago', 957, 97,
    '2025-12-05', 'Low', 'Forrest Batz is currently enrolled in Cloud Computing Fundamentals. 58% complete. Performance is 97% on average for quizzes. Risk level is evaluated as Low.', 26
  ),
  (
    98, 'Dwayne Walter', 'dwayne.walter@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/58.jpg',
    6, 'Advanced Sales Techniques', 'Customer Support',
    '2026-05-09 01:19:26', 34, '2 days ago', 1873, 81,
    '2026-07-08', 'Medium', 'Dwayne Walter is currently enrolled in Advanced Sales Techniques. 34% complete. Performance is 81% on average for quizzes. Risk level is evaluated as Medium.', 33
  ),
  (
    99, 'Doyle Crona', 'doyle_crona12@yahoo.com', 'https://avatars.githubusercontent.com/u/62920286',
    5, 'Diversity and Inclusion in the Workplace', 'Sales',
    '2025-09-23 21:22:49', 52, '1 week ago', 58, 73,
    '2025-10-26', 'Medium', 'Doyle Crona is currently enrolled in Diversity and Inclusion in the Workplace. 52% complete. Performance is 73% on average for quizzes. Risk level is evaluated as Medium.', 72
  ),
  (
    100, 'Rosie Rowe', 'rosie.rowe3@hotmail.com', 'https://avatars.githubusercontent.com/u/59438576',
    3, 'Data Privacy and GDPR', 'Sales',
    '2026-04-28 02:24:57', 80, '1 month ago', 592, 70,
    '2026-06-15', 'Low', 'Rosie Rowe is currently enrolled in Data Privacy and GDPR. 80% complete. Performance is 70% on average for quizzes. Risk level is evaluated as Low.', 44
  ),
  (
    101, 'Janessa Haley', 'janessa.haley@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/50.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Engineering',
    '2026-07-21 07:00:50', 88, '1 week ago', 739, 48,
    '2026-10-04', 'Low', 'Janessa Haley is currently enrolled in Workplace Ethics & Code of Conduct. 88% complete. Performance is 48% on average for quizzes. Risk level is evaluated as Low.', 94
  ),
  (
    102, 'Lana Schuppe', 'lana.schuppe98@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/65.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Marketing',
    '2026-02-24 12:29:08', 20, '3 days ago', 1773, 47,
    '2026-04-14', 'Medium', 'Lana Schuppe is currently enrolled in Workplace Ethics & Code of Conduct. 20% complete. Performance is 47% on average for quizzes. Risk level is evaluated as Medium.', 17
  ),
  (
    103, 'Terri Langosh', 'terri.langosh@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/94.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2025-10-29 07:59:03', 12, 'Today', 1225, 97,
    '2026-01-15', 'Low', 'Terri Langosh is currently enrolled in Diversity and Inclusion in the Workplace. 12% complete. Performance is 97% on average for quizzes. Risk level is evaluated as Low.', 72
  ),
  (
    104, 'Jonatan Leuschke', 'jonatan_leuschke92@gmail.com', 'https://avatars.githubusercontent.com/u/42625352',
    1, 'Cybersecurity Awareness', 'Sales',
    '2026-06-05 10:54:28', 67, '1 month ago', 796, 69,
    '2026-07-31', 'High', 'Jonatan Leuschke is currently enrolled in Cybersecurity Awareness. 67% complete. Performance is 69% on average for quizzes. Risk level is evaluated as High.', 4
  ),
  (
    105, 'Rodney Satterfield', 'rodney_satterfield8@gmail.com', 'https://avatars.githubusercontent.com/u/78050675',
    1, 'Cybersecurity Awareness', 'Sales',
    '2026-03-04 00:34:15', 86, '1 month ago', 1541, 74,
    '2026-05-31', 'Medium', 'Rodney Satterfield is currently enrolled in Cybersecurity Awareness. 86% complete. Performance is 74% on average for quizzes. Risk level is evaluated as Medium.', 53
  ),
  (
    106, 'Melody Dare', 'melody.dare@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/42.jpg',
    4, 'Leadership & Management', 'Customer Support',
    '2025-08-19 20:05:34', 6, '3 days ago', 1185, 93,
    '2025-11-16', 'High', 'Melody Dare is currently enrolled in Leadership & Management. 6% complete. Performance is 93% on average for quizzes. Risk level is evaluated as High.', 94
  ),
  (
    107, 'Tad McCullough-Cremin', 'tad_mccullough-cremin46@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/44.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Marketing',
    '2025-09-04 12:40:15', 48, 'Today', 76, 89,
    '2025-11-03', 'Low', 'Tad McCullough-Cremin is currently enrolled in Diversity and Inclusion in the Workplace. 48% complete. Performance is 89% on average for quizzes. Risk level is evaluated as Low.', 9
  ),
  (
    108, 'Theo Funk', 'theo_funk@hotmail.com', 'https://avatars.githubusercontent.com/u/74621113',
    7, 'Cloud Computing Fundamentals', 'Operations',
    '2026-07-30 11:46:29', 35, 'Today', 1913, 71,
    '2026-09-13', 'Low', 'Theo Funk is currently enrolled in Cloud Computing Fundamentals. 35% complete. Performance is 71% on average for quizzes. Risk level is evaluated as Low.', 30
  ),
  (
    109, 'Arch Weber', 'arch_weber10@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/10.jpg',
    3, 'Data Privacy and GDPR', 'Customer Support',
    '2026-03-05 22:11:40', 28, 'Today', 948, 95,
    '2026-05-06', 'Low', 'Arch Weber is currently enrolled in Data Privacy and GDPR. 28% complete. Performance is 95% on average for quizzes. Risk level is evaluated as Low.', 50
  ),
  (
    110, 'Jacinto Kris', 'jacinto.kris@hotmail.com', 'https://avatars.githubusercontent.com/u/74039256',
    6, 'Advanced Sales Techniques', 'Finance',
    '2026-08-03 12:49:11', 68, '1 week ago', 99, 69,
    '2026-09-27', 'Low', 'Jacinto Kris is currently enrolled in Advanced Sales Techniques. 68% complete. Performance is 69% on average for quizzes. Risk level is evaluated as Low.', 87
  ),
  (
    111, 'Domenick Grady', 'domenick_grady@yahoo.com', 'https://avatars.githubusercontent.com/u/92383890',
    1, 'Cybersecurity Awareness', 'Sales',
    '2026-04-07 12:58:54', 65, '2 weeks ago', 99, 65,
    '2026-07-03', 'Medium', 'Domenick Grady is currently enrolled in Cybersecurity Awareness. 65% complete. Performance is 65% on average for quizzes. Risk level is evaluated as Medium.', 90
  ),
  (
    112, 'Louisa Stiedemann', 'louisa.stiedemann93@hotmail.com', 'https://avatars.githubusercontent.com/u/73550512',
    2, 'Workplace Ethics & Code of Conduct', 'Engineering',
    '2026-06-14 17:46:04', 23, 'Today', 1091, 93,
    '2026-09-04', 'Medium', 'Louisa Stiedemann is currently enrolled in Workplace Ethics & Code of Conduct. 23% complete. Performance is 93% on average for quizzes. Risk level is evaluated as Medium.', 88
  ),
  (
    113, 'Lonny Mohr', 'lonny_mohr92@gmail.com', 'https://avatars.githubusercontent.com/u/72928435',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2026-01-07 12:23:06', 82, 'Today', 1687, 71,
    '2026-04-04', 'Low', 'Lonny Mohr is currently enrolled in Data Privacy and GDPR. 82% complete. Performance is 71% on average for quizzes. Risk level is evaluated as Low.', 41
  ),
  (
    114, 'Lorenza McKenzie', 'lorenza_mckenzie@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/73.jpg',
    6, 'Advanced Sales Techniques', 'Engineering',
    '2025-09-07 10:53:21', 5, '3 days ago', 247, 40,
    '2025-11-26', 'High', 'Lorenza McKenzie is currently enrolled in Advanced Sales Techniques. 5% complete. Performance is 40% on average for quizzes. Risk level is evaluated as High.', 68
  ),
  (
    115, 'Dejon Effertz', 'dejon_effertz48@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/39.jpg',
    4, 'Leadership & Management', 'Operations',
    '2025-10-07 04:43:26', 85, '1 month ago', 190, 44,
    '2025-11-09', 'Medium', 'Dejon Effertz is currently enrolled in Leadership & Management. 85% complete. Performance is 44% on average for quizzes. Risk level is evaluated as Medium.', 67
  ),
  (
    116, 'Cheyanne Kuhlman', 'cheyanne.kuhlman87@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/12.jpg',
    1, 'Cybersecurity Awareness', 'Finance',
    '2026-04-04 15:33:02', 60, '3 days ago', 1628, 73,
    '2026-06-27', 'Low', 'Cheyanne Kuhlman is currently enrolled in Cybersecurity Awareness. 60% complete. Performance is 73% on average for quizzes. Risk level is evaluated as Low.', 6
  ),
  (
    117, 'Taya Ullrich', 'taya_ullrich@yahoo.com', 'https://avatars.githubusercontent.com/u/30348609',
    4, 'Leadership & Management', 'Sales',
    '2025-10-09 11:01:42', 85, 'Yesterday', 1557, 83,
    '2025-12-06', 'Medium', 'Taya Ullrich is currently enrolled in Leadership & Management. 85% complete. Performance is 83% on average for quizzes. Risk level is evaluated as Medium.', 10
  ),
  (
    118, 'Jovani Bernhard', 'jovani.bernhard49@yahoo.com', 'https://avatars.githubusercontent.com/u/51414959',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2026-07-16 22:02:23', 27, 'Yesterday', 299, 44,
    '2026-08-30', 'Low', 'Jovani Bernhard is currently enrolled in Workplace Ethics & Code of Conduct. 27% complete. Performance is 44% on average for quizzes. Risk level is evaluated as Low.', 23
  ),
  (
    119, 'Mercedes Schroeder', 'mercedes.schroeder@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/20.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2026-01-05 08:29:35', 36, 'Yesterday', 304, 40,
    '2026-03-03', 'Low', 'Mercedes Schroeder is currently enrolled in Diversity and Inclusion in the Workplace. 36% complete. Performance is 40% on average for quizzes. Risk level is evaluated as Low.', 46
  ),
  (
    120, 'Jessica Gusikowski', 'jessica_gusikowski22@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/18.jpg',
    6, 'Advanced Sales Techniques', 'Operations',
    '2025-09-24 08:07:59', 39, 'Yesterday', 987, 82,
    '2025-11-01', 'Low', 'Jessica Gusikowski is currently enrolled in Advanced Sales Techniques. 39% complete. Performance is 82% on average for quizzes. Risk level is evaluated as Low.', 53
  ),
  (
    121, 'Lola Wehner', 'lola_wehner@hotmail.com', 'https://avatars.githubusercontent.com/u/55922073',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2025-10-05 14:45:38', 99, 'Today', 535, 77,
    '2025-12-08', 'Medium', 'Lola Wehner is currently enrolled in Workplace Ethics & Code of Conduct. 99% complete. Performance is 77% on average for quizzes. Risk level is evaluated as Medium.', 63
  ),
  (
    122, 'Mona Batz', 'mona_batz89@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/23.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Sales',
    '2025-08-07 23:22:09', 32, '1 week ago', 237, 84,
    '2025-11-03', 'Medium', 'Mona Batz is currently enrolled in Diversity and Inclusion in the Workplace. 32% complete. Performance is 84% on average for quizzes. Risk level is evaluated as Medium.', 49
  ),
  (
    123, 'Lauryn Hansen-Wyman', 'lauryn_hansen-wyman@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/25.jpg',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2026-03-21 01:34:09', 88, '1 month ago', 817, 44,
    '2026-05-11', 'Low', 'Lauryn Hansen-Wyman is currently enrolled in Cybersecurity Awareness. 88% complete. Performance is 44% on average for quizzes. Risk level is evaluated as Low.', 92
  ),
  (
    124, 'Burdette Greenholt', 'burdette.greenholt@hotmail.com', 'https://avatars.githubusercontent.com/u/43358200',
    6, 'Advanced Sales Techniques', 'Marketing',
    '2026-01-07 06:29:14', 77, '1 month ago', 837, 83,
    '2026-02-13', 'Low', 'Burdette Greenholt is currently enrolled in Advanced Sales Techniques. 77% complete. Performance is 83% on average for quizzes. Risk level is evaluated as Low.', 99
  ),
  (
    125, 'Josh Hessel', 'josh_hessel@gmail.com', 'https://avatars.githubusercontent.com/u/72138157',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2025-10-27 13:14:09', 97, 'Yesterday', 1759, 86,
    '2025-12-26', 'Low', 'Josh Hessel is currently enrolled in Cybersecurity Awareness. 97% complete. Performance is 86% on average for quizzes. Risk level is evaluated as Low.', 90
  ),
  (
    126, 'Gladyce Hackett', 'gladyce.hackett@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/18.jpg',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2025-11-23 01:10:05', 3, '1 month ago', 1982, 89,
    '2026-02-20', 'Medium', 'Gladyce Hackett is currently enrolled in Cybersecurity Awareness. 3% complete. Performance is 89% on average for quizzes. Risk level is evaluated as Medium.', 40
  ),
  (
    127, 'Inez Conn', 'inez_conn@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/51.jpg',
    6, 'Advanced Sales Techniques', 'Marketing',
    '2025-10-14 14:21:16', 67, '3 days ago', 1845, 48,
    '2025-12-15', 'Low', 'Inez Conn is currently enrolled in Advanced Sales Techniques. 67% complete. Performance is 48% on average for quizzes. Risk level is evaluated as Low.', 50
  ),
  (
    128, 'Lonnie Jast', 'lonnie_jast@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/86.jpg',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2026-05-22 15:38:28', 45, '3 days ago', 1996, 48,
    '2026-06-25', 'Medium', 'Lonnie Jast is currently enrolled in Cybersecurity Awareness. 45% complete. Performance is 48% on average for quizzes. Risk level is evaluated as Medium.', 80
  ),
  (
    129, 'Lorena Hyatt', 'lorena.hyatt15@yahoo.com', 'https://avatars.githubusercontent.com/u/35662334',
    1, 'Cybersecurity Awareness', 'Sales',
    '2026-08-05 23:06:13', 12, '1 month ago', 948, 60,
    '2026-09-20', 'Medium', 'Lorena Hyatt is currently enrolled in Cybersecurity Awareness. 12% complete. Performance is 60% on average for quizzes. Risk level is evaluated as Medium.', 62
  ),
  (
    130, 'Wilma Schultz', 'wilma.schultz@gmail.com', 'https://avatars.githubusercontent.com/u/38263802',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2026-03-10 17:31:45', 47, 'Yesterday', 158, 90,
    '2026-04-09', 'High', 'Wilma Schultz is currently enrolled in Workplace Ethics & Code of Conduct. 47% complete. Performance is 90% on average for quizzes. Risk level is evaluated as High.', 67
  ),
  (
    131, 'Rosemary Lueilwitz', 'rosemary.lueilwitz91@gmail.com', 'https://avatars.githubusercontent.com/u/46228534',
    1, 'Cybersecurity Awareness', 'Finance',
    '2026-01-03 09:00:13', 65, 'Today', 437, 56,
    '2026-03-27', 'Low', 'Rosemary Lueilwitz is currently enrolled in Cybersecurity Awareness. 65% complete. Performance is 56% on average for quizzes. Risk level is evaluated as Low.', 60
  ),
  (
    132, 'Harold Runolfsdottir', 'harold_runolfsdottir@hotmail.com', 'https://avatars.githubusercontent.com/u/46485484',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2026-07-20 14:55:26', 49, '2 days ago', 1849, 62,
    '2026-10-13', 'Low', 'Harold Runolfsdottir is currently enrolled in Data Privacy and GDPR. 49% complete. Performance is 62% on average for quizzes. Risk level is evaluated as Low.', 96
  ),
  (
    133, 'Joan Kuphal-Fahey', 'joan_kuphal-fahey@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/83.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Human Resources',
    '2025-09-06 03:48:35', 11, '3 days ago', 942, 70,
    '2025-10-26', 'Low', 'Joan Kuphal-Fahey is currently enrolled in Diversity and Inclusion in the Workplace. 11% complete. Performance is 70% on average for quizzes. Risk level is evaluated as Low.', 45
  ),
  (
    134, 'Grady Osinski', 'grady.osinski97@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/10.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2026-01-01 18:40:08', 96, '2 weeks ago', 967, 81,
    '2026-03-19', 'High', 'Grady Osinski is currently enrolled in Diversity and Inclusion in the Workplace. 96% complete. Performance is 81% on average for quizzes. Risk level is evaluated as High.', 83
  ),
  (
    135, 'Danyka Altenwerth', 'danyka.altenwerth21@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/60.jpg',
    3, 'Data Privacy and GDPR', 'Finance',
    '2026-04-18 03:19:34', 6, '1 month ago', 296, 78,
    '2026-06-27', 'Medium', 'Danyka Altenwerth is currently enrolled in Data Privacy and GDPR. 6% complete. Performance is 78% on average for quizzes. Risk level is evaluated as Medium.', 83
  ),
  (
    136, 'Santos Littel', 'santos.littel72@gmail.com', 'https://avatars.githubusercontent.com/u/83987662',
    1, 'Cybersecurity Awareness', 'Operations',
    '2026-03-21 17:07:22', 19, 'Today', 1235, 40,
    '2026-05-03', 'Medium', 'Santos Littel is currently enrolled in Cybersecurity Awareness. 19% complete. Performance is 40% on average for quizzes. Risk level is evaluated as Medium.', 91
  ),
  (
    137, 'Jayde Windler', 'jayde_windler1@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/97.jpg',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2026-05-19 03:42:48', 9, 'Yesterday', 609, 100,
    '2026-08-12', 'High', 'Jayde Windler is currently enrolled in Cybersecurity Awareness. 9% complete. Performance is 100% on average for quizzes. Risk level is evaluated as High.', 55
  ),
  (
    138, 'Citlalli Carroll', 'citlalli_carroll22@hotmail.com', 'https://avatars.githubusercontent.com/u/94967559',
    5, 'Diversity and Inclusion in the Workplace', 'Customer Support',
    '2026-04-09 23:26:43', 8, 'Yesterday', 1539, 92,
    '2026-06-11', 'Low', 'Citlalli Carroll is currently enrolled in Diversity and Inclusion in the Workplace. 8% complete. Performance is 92% on average for quizzes. Risk level is evaluated as Low.', 22
  ),
  (
    139, 'Gertrude Mohr', 'gertrude.mohr@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/37.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Sales',
    '2025-09-04 00:04:47', 86, '2 days ago', 1033, 69,
    '2025-11-30', 'Low', 'Gertrude Mohr is currently enrolled in Diversity and Inclusion in the Workplace. 86% complete. Performance is 69% on average for quizzes. Risk level is evaluated as Low.', 82
  ),
  (
    140, 'Mohamed Bogan', 'mohamed_bogan@yahoo.com', 'https://avatars.githubusercontent.com/u/60404576',
    6, 'Advanced Sales Techniques', 'Engineering',
    '2026-04-22 09:14:49', 36, '2 days ago', 1860, 93,
    '2026-06-08', 'Medium', 'Mohamed Bogan is currently enrolled in Advanced Sales Techniques. 36% complete. Performance is 93% on average for quizzes. Risk level is evaluated as Medium.', 16
  ),
  (
    141, 'Brooke Abshire', 'brooke_abshire96@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/31.jpg',
    3, 'Data Privacy and GDPR', 'Customer Support',
    '2026-01-01 00:26:56', 75, '3 days ago', 1490, 69,
    '2026-03-31', 'Medium', 'Brooke Abshire is currently enrolled in Data Privacy and GDPR. 75% complete. Performance is 69% on average for quizzes. Risk level is evaluated as Medium.', 65
  ),
  (
    142, 'Adrian Ortiz', 'adrian_ortiz89@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/89.jpg',
    6, 'Advanced Sales Techniques', 'Customer Support',
    '2026-03-07 04:06:18', 92, '2 weeks ago', 332, 51,
    '2026-06-01', 'Medium', 'Adrian Ortiz is currently enrolled in Advanced Sales Techniques. 92% complete. Performance is 51% on average for quizzes. Risk level is evaluated as Medium.', 73
  ),
  (
    143, 'Maeve Powlowski', 'maeve.powlowski87@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/30.jpg',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2026-05-14 16:40:50', 68, '1 month ago', 287, 64,
    '2026-06-20', 'High', 'Maeve Powlowski is currently enrolled in Cloud Computing Fundamentals. 68% complete. Performance is 64% on average for quizzes. Risk level is evaluated as High.', 17
  ),
  (
    144, 'Name Schroeder', 'name.schroeder46@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/17.jpg',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2026-07-09 21:11:26', 47, '2 days ago', 1491, 61,
    '2026-08-24', 'Medium', 'Name Schroeder is currently enrolled in Cybersecurity Awareness. 47% complete. Performance is 61% on average for quizzes. Risk level is evaluated as Medium.', 27
  ),
  (
    145, 'Suzanne Howe', 'suzanne.howe50@yahoo.com', 'https://avatars.githubusercontent.com/u/22338839',
    7, 'Cloud Computing Fundamentals', 'Finance',
    '2026-06-23 15:23:57', 49, '1 week ago', 498, 84,
    '2026-09-21', 'High', 'Suzanne Howe is currently enrolled in Cloud Computing Fundamentals. 49% complete. Performance is 84% on average for quizzes. Risk level is evaluated as High.', 23
  ),
  (
    146, 'Maxime Buckridge', 'maxime.buckridge@yahoo.com', 'https://avatars.githubusercontent.com/u/88591449',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2026-02-05 14:27:31', 47, '1 week ago', 84, 89,
    '2026-03-07', 'Low', 'Maxime Buckridge is currently enrolled in Data Privacy and GDPR. 47% complete. Performance is 89% on average for quizzes. Risk level is evaluated as Low.', 16
  ),
  (
    147, 'Margot McCullough', 'margot_mccullough@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/5.jpg',
    6, 'Advanced Sales Techniques', 'Operations',
    '2026-01-30 22:26:53', 77, 'Yesterday', 1354, 68,
    '2026-03-11', 'Medium', 'Margot McCullough is currently enrolled in Advanced Sales Techniques. 77% complete. Performance is 68% on average for quizzes. Risk level is evaluated as Medium.', 8
  ),
  (
    148, 'Harmon Leannon', 'harmon.leannon93@gmail.com', 'https://avatars.githubusercontent.com/u/83630206',
    7, 'Cloud Computing Fundamentals', 'Finance',
    '2025-12-12 06:10:09', 7, 'Yesterday', 178, 68,
    '2026-02-15', 'Low', 'Harmon Leannon is currently enrolled in Cloud Computing Fundamentals. 7% complete. Performance is 68% on average for quizzes. Risk level is evaluated as Low.', 38
  ),
  (
    149, 'Daisy Balistreri', 'daisy_balistreri10@yahoo.com', 'https://avatars.githubusercontent.com/u/45391235',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2025-10-02 20:24:07', 100, 'Today', 348, 85,
    '2025-11-24', 'Medium', 'Daisy Balistreri is currently enrolled in Diversity and Inclusion in the Workplace. 100% complete. Performance is 85% on average for quizzes. Risk level is evaluated as Medium.', 50
  ),
  (
    150, 'Mckayla Emmerich', 'mckayla_emmerich@gmail.com', 'https://avatars.githubusercontent.com/u/71932842',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2025-09-13 18:14:31', 65, '2 weeks ago', 1366, 63,
    '2025-11-22', 'Medium', 'Mckayla Emmerich is currently enrolled in Diversity and Inclusion in the Workplace. 65% complete. Performance is 63% on average for quizzes. Risk level is evaluated as Medium.', 87
  ),
  (
    151, 'Maryann Wiza', 'maryann_wiza76@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/93.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2026-07-05 11:36:20', 67, 'Today', 281, 50,
    '2026-08-27', 'Medium', 'Maryann Wiza is currently enrolled in Diversity and Inclusion in the Workplace. 67% complete. Performance is 50% on average for quizzes. Risk level is evaluated as Medium.', 26
  ),
  (
    152, 'Peter Jenkins', 'peter.jenkins@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/73.jpg',
    3, 'Data Privacy and GDPR', 'Customer Support',
    '2026-05-21 08:51:32', 97, '1 month ago', 174, 77,
    '2026-08-11', 'Low', 'Peter Jenkins is currently enrolled in Data Privacy and GDPR. 97% complete. Performance is 77% on average for quizzes. Risk level is evaluated as Low.', 32
  ),
  (
    153, 'Micheal Koepp', 'micheal.koepp@gmail.com', 'https://avatars.githubusercontent.com/u/55301873',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2026-06-21 14:20:27', 67, '2 days ago', 104, 86,
    '2026-09-01', 'Low', 'Micheal Koepp is currently enrolled in Workplace Ethics & Code of Conduct. 67% complete. Performance is 86% on average for quizzes. Risk level is evaluated as Low.', 82
  ),
  (
    154, 'Margarett Ryan', 'margarett_ryan27@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/41.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2025-11-14 23:56:40', 94, '2 weeks ago', 858, 65,
    '2026-01-02', 'Medium', 'Margarett Ryan is currently enrolled in Workplace Ethics & Code of Conduct. 94% complete. Performance is 65% on average for quizzes. Risk level is evaluated as Medium.', 88
  ),
  (
    155, 'Bryant Glover', 'bryant.glover97@hotmail.com', 'https://avatars.githubusercontent.com/u/5843049',
    1, 'Cybersecurity Awareness', 'Finance',
    '2026-01-08 00:20:28', 70, '2 weeks ago', 1430, 40,
    '2026-03-24', 'Medium', 'Bryant Glover is currently enrolled in Cybersecurity Awareness. 70% complete. Performance is 40% on average for quizzes. Risk level is evaluated as Medium.', 51
  ),
  (
    156, 'Newton Casper', 'newton.casper40@yahoo.com', 'https://avatars.githubusercontent.com/u/54471984',
    7, 'Cloud Computing Fundamentals', 'Operations',
    '2026-06-28 04:45:47', 27, '2 days ago', 351, 83,
    '2026-08-22', 'Low', 'Newton Casper is currently enrolled in Cloud Computing Fundamentals. 27% complete. Performance is 83% on average for quizzes. Risk level is evaluated as Low.', 48
  ),
  (
    157, 'Octavia Barrows', 'octavia_barrows@yahoo.com', 'https://avatars.githubusercontent.com/u/11589411',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2026-02-05 06:09:10', 11, 'Today', 1602, 76,
    '2026-04-16', 'Low', 'Octavia Barrows is currently enrolled in Data Privacy and GDPR. 11% complete. Performance is 76% on average for quizzes. Risk level is evaluated as Low.', 23
  ),
  (
    158, 'Doyle Goyette', 'doyle.goyette42@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/17.jpg',
    1, 'Cybersecurity Awareness', 'Sales',
    '2026-07-20 22:14:39', 22, '2 days ago', 1357, 42,
    '2026-10-14', 'Low', 'Doyle Goyette is currently enrolled in Cybersecurity Awareness. 22% complete. Performance is 42% on average for quizzes. Risk level is evaluated as Low.', 33
  ),
  (
    159, 'Francis Lind', 'francis_lind@yahoo.com', 'https://avatars.githubusercontent.com/u/77623563',
    1, 'Cybersecurity Awareness', 'Human Resources',
    '2025-12-22 17:08:39', 26, '3 days ago', 1757, 78,
    '2026-03-17', 'Low', 'Francis Lind is currently enrolled in Cybersecurity Awareness. 26% complete. Performance is 78% on average for quizzes. Risk level is evaluated as Low.', 66
  ),
  (
    160, 'Flavie Carter', 'flavie.carter@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/23.jpg',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2026-07-07 23:27:13', 48, '2 weeks ago', 1017, 46,
    '2026-08-17', 'Medium', 'Flavie Carter is currently enrolled in Data Privacy and GDPR. 48% complete. Performance is 46% on average for quizzes. Risk level is evaluated as Medium.', 3
  ),
  (
    161, 'Judith Skiles', 'judith_skiles16@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/13.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Marketing',
    '2025-12-01 19:14:07', 27, '2 weeks ago', 295, 57,
    '2026-02-17', 'Low', 'Judith Skiles is currently enrolled in Workplace Ethics & Code of Conduct. 27% complete. Performance is 57% on average for quizzes. Risk level is evaluated as Low.', 4
  ),
  (
    162, 'Vanessa Weber-Moore', 'vanessa.weber-moore@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/84.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Human Resources',
    '2025-12-06 13:26:49', 42, 'Yesterday', 1913, 91,
    '2026-01-06', 'Medium', 'Vanessa Weber-Moore is currently enrolled in Diversity and Inclusion in the Workplace. 42% complete. Performance is 91% on average for quizzes. Risk level is evaluated as Medium.', 93
  ),
  (
    163, 'Eduardo Hahn', 'eduardo.hahn@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/62.jpg',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2026-05-03 03:00:14', 73, '2 weeks ago', 685, 83,
    '2026-07-15', 'High', 'Eduardo Hahn is currently enrolled in Cloud Computing Fundamentals. 73% complete. Performance is 83% on average for quizzes. Risk level is evaluated as High.', 34
  ),
  (
    164, 'Meghan Larson', 'meghan.larson@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/39.jpg',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2026-05-01 07:47:11', 14, '1 week ago', 907, 43,
    '2026-06-17', 'Medium', 'Meghan Larson is currently enrolled in Data Privacy and GDPR. 14% complete. Performance is 43% on average for quizzes. Risk level is evaluated as Medium.', 50
  ),
  (
    165, 'Genoveva Dach', 'genoveva_dach@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/16.jpg',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2025-09-10 19:09:34', 11, '3 days ago', 291, 68,
    '2025-11-09', 'Medium', 'Genoveva Dach is currently enrolled in Data Privacy and GDPR. 11% complete. Performance is 68% on average for quizzes. Risk level is evaluated as Medium.', 69
  ),
  (
    166, 'Chester White', 'chester_white@hotmail.com', 'https://avatars.githubusercontent.com/u/5730483',
    5, 'Diversity and Inclusion in the Workplace', 'Sales',
    '2026-02-04 17:17:13', 75, '2 days ago', 1956, 74,
    '2026-03-17', 'Low', 'Chester White is currently enrolled in Diversity and Inclusion in the Workplace. 75% complete. Performance is 74% on average for quizzes. Risk level is evaluated as Low.', 16
  ),
  (
    167, 'Dino Zulauf-Steuber', 'dino.zulauf-steuber31@gmail.com', 'https://avatars.githubusercontent.com/u/39310550',
    4, 'Leadership & Management', 'Human Resources',
    '2026-04-10 03:47:22', 34, 'Yesterday', 1917, 83,
    '2026-06-18', 'Medium', 'Dino Zulauf-Steuber is currently enrolled in Leadership & Management. 34% complete. Performance is 83% on average for quizzes. Risk level is evaluated as Medium.', 60
  ),
  (
    168, 'Henrietta Sauer', 'henrietta.sauer63@hotmail.com', 'https://avatars.githubusercontent.com/u/37662009',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2025-08-23 18:24:06', 83, '2 days ago', 1474, 100,
    '2025-10-06', 'Medium', 'Henrietta Sauer is currently enrolled in Workplace Ethics & Code of Conduct. 83% complete. Performance is 100% on average for quizzes. Risk level is evaluated as Medium.', 10
  ),
  (
    169, 'Annette Larkin', 'annette_larkin52@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/1.jpg',
    4, 'Leadership & Management', 'Marketing',
    '2026-05-02 15:43:26', 82, '2 weeks ago', 1804, 72,
    '2026-06-05', 'Low', 'Annette Larkin is currently enrolled in Leadership & Management. 82% complete. Performance is 72% on average for quizzes. Risk level is evaluated as Low.', 91
  ),
  (
    170, 'Angelina Wolf', 'angelina_wolf@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/39.jpg',
    3, 'Data Privacy and GDPR', 'Customer Support',
    '2026-01-21 13:18:51', 34, 'Today', 616, 97,
    '2026-04-05', 'Low', 'Angelina Wolf is currently enrolled in Data Privacy and GDPR. 34% complete. Performance is 97% on average for quizzes. Risk level is evaluated as Low.', 99
  ),
  (
    171, 'Jayden Okuneva', 'jayden.okuneva@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/54.jpg',
    6, 'Advanced Sales Techniques', 'Finance',
    '2025-08-15 08:27:08', 65, '1 month ago', 75, 73,
    '2025-10-30', 'Low', 'Jayden Okuneva is currently enrolled in Advanced Sales Techniques. 65% complete. Performance is 73% on average for quizzes. Risk level is evaluated as Low.', 87
  ),
  (
    172, 'Kaylie Koelpin', 'kaylie.koelpin@hotmail.com', 'https://avatars.githubusercontent.com/u/59881244',
    4, 'Leadership & Management', 'Sales',
    '2025-10-15 06:23:11', 11, '1 month ago', 38, 82,
    '2025-11-21', 'Medium', 'Kaylie Koelpin is currently enrolled in Leadership & Management. 11% complete. Performance is 82% on average for quizzes. Risk level is evaluated as Medium.', 82
  ),
  (
    173, 'Peter West', 'peter.west@yahoo.com', 'https://avatars.githubusercontent.com/u/61878109',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2026-05-13 06:46:44', 37, 'Today', 1652, 91,
    '2026-06-15', 'High', 'Peter West is currently enrolled in Cloud Computing Fundamentals. 37% complete. Performance is 91% on average for quizzes. Risk level is evaluated as High.', 15
  ),
  (
    174, 'Mauricio Murray', 'mauricio.murray@yahoo.com', 'https://avatars.githubusercontent.com/u/29608905',
    5, 'Diversity and Inclusion in the Workplace', 'Customer Support',
    '2026-05-21 22:15:01', 55, 'Today', 1204, 69,
    '2026-07-12', 'Medium', 'Mauricio Murray is currently enrolled in Diversity and Inclusion in the Workplace. 55% complete. Performance is 69% on average for quizzes. Risk level is evaluated as Medium.', 55
  ),
  (
    175, 'Nash Mills', 'nash.mills@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/2.jpg',
    1, 'Cybersecurity Awareness', 'Operations',
    '2026-02-04 00:05:31', 3, '2 days ago', 791, 53,
    '2026-05-05', 'Low', 'Nash Mills is currently enrolled in Cybersecurity Awareness. 3% complete. Performance is 53% on average for quizzes. Risk level is evaluated as Low.', 10
  ),
  (
    176, 'Deja Kuhn', 'deja.kuhn76@gmail.com', 'https://avatars.githubusercontent.com/u/80344137',
    3, 'Data Privacy and GDPR', 'Customer Support',
    '2025-12-11 22:27:11', 17, '1 month ago', 1291, 71,
    '2026-02-08', 'Medium', 'Deja Kuhn is currently enrolled in Data Privacy and GDPR. 17% complete. Performance is 71% on average for quizzes. Risk level is evaluated as Medium.', 36
  ),
  (
    177, 'Orion Dicki', 'orion.dicki@yahoo.com', 'https://avatars.githubusercontent.com/u/27169462',
    3, 'Data Privacy and GDPR', 'Operations',
    '2026-01-03 01:23:57', 89, '1 week ago', 344, 67,
    '2026-03-18', 'Medium', 'Orion Dicki is currently enrolled in Data Privacy and GDPR. 89% complete. Performance is 67% on average for quizzes. Risk level is evaluated as Medium.', 67
  ),
  (
    178, 'Reuben Kulas', 'reuben.kulas@hotmail.com', 'https://avatars.githubusercontent.com/u/95127577',
    3, 'Data Privacy and GDPR', 'Marketing',
    '2026-01-12 20:19:17', 80, '1 week ago', 443, 91,
    '2026-02-11', 'Low', 'Reuben Kulas is currently enrolled in Data Privacy and GDPR. 80% complete. Performance is 91% on average for quizzes. Risk level is evaluated as Low.', 5
  ),
  (
    179, 'Keon Larson', 'keon.larson@hotmail.com', 'https://avatars.githubusercontent.com/u/36834467',
    6, 'Advanced Sales Techniques', 'Engineering',
    '2026-07-06 21:13:30', 36, 'Yesterday', 1311, 84,
    '2026-09-11', 'Medium', 'Keon Larson is currently enrolled in Advanced Sales Techniques. 36% complete. Performance is 84% on average for quizzes. Risk level is evaluated as Medium.', 21
  ),
  (
    180, 'Ruthe Rippin', 'ruthe_rippin39@yahoo.com', 'https://avatars.githubusercontent.com/u/82184754',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2025-08-24 14:08:44', 24, '2 weeks ago', 1909, 79,
    '2025-11-19', 'Low', 'Ruthe Rippin is currently enrolled in Cloud Computing Fundamentals. 24% complete. Performance is 79% on average for quizzes. Risk level is evaluated as Low.', 66
  ),
  (
    181, 'Jo Jakubowski', 'jo.jakubowski53@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/33.jpg',
    4, 'Leadership & Management', 'Human Resources',
    '2026-01-19 12:10:24', 25, '2 weeks ago', 624, 46,
    '2026-04-16', 'High', 'Jo Jakubowski is currently enrolled in Leadership & Management. 25% complete. Performance is 46% on average for quizzes. Risk level is evaluated as High.', 92
  ),
  (
    182, 'Corey Reichel', 'corey_reichel14@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/22.jpg',
    6, 'Advanced Sales Techniques', 'Finance',
    '2025-10-29 08:54:51', 6, '2 days ago', 325, 50,
    '2026-01-08', 'Medium', 'Corey Reichel is currently enrolled in Advanced Sales Techniques. 6% complete. Performance is 50% on average for quizzes. Risk level is evaluated as Medium.', 60
  ),
  (
    183, 'Alejandrin Bauch', 'alejandrin_bauch@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/36.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2026-01-16 16:43:30', 70, '3 days ago', 1665, 83,
    '2026-04-09', 'Medium', 'Alejandrin Bauch is currently enrolled in Workplace Ethics & Code of Conduct. 70% complete. Performance is 83% on average for quizzes. Risk level is evaluated as Medium.', 76
  ),
  (
    184, 'Joshua Powlowski', 'joshua.powlowski98@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/66.jpg',
    7, 'Cloud Computing Fundamentals', 'Finance',
    '2026-01-27 14:13:42', 71, '1 month ago', 381, 78,
    '2026-03-30', 'Medium', 'Joshua Powlowski is currently enrolled in Cloud Computing Fundamentals. 71% complete. Performance is 78% on average for quizzes. Risk level is evaluated as Medium.', 96
  ),
  (
    185, 'Ernestina Medhurst', 'ernestina.medhurst94@hotmail.com', 'https://avatars.githubusercontent.com/u/52336513',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2026-07-23 15:55:05', 25, '2 days ago', 625, 99,
    '2026-09-24', 'Low', 'Ernestina Medhurst is currently enrolled in Data Privacy and GDPR. 25% complete. Performance is 99% on average for quizzes. Risk level is evaluated as Low.', 83
  ),
  (
    186, 'Trudie Keebler', 'trudie.keebler@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/99.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2026-01-29 13:55:34', 48, '1 week ago', 918, 77,
    '2026-03-13', 'Low', 'Trudie Keebler is currently enrolled in Workplace Ethics & Code of Conduct. 48% complete. Performance is 77% on average for quizzes. Risk level is evaluated as Low.', 58
  ),
  (
    187, 'Daisha Conroy', 'daisha_conroy@gmail.com', 'https://avatars.githubusercontent.com/u/57648796',
    4, 'Leadership & Management', 'Operations',
    '2026-07-19 03:18:44', 48, '1 month ago', 851, 65,
    '2026-09-10', 'Medium', 'Daisha Conroy is currently enrolled in Leadership & Management. 48% complete. Performance is 65% on average for quizzes. Risk level is evaluated as Medium.', 100
  ),
  (
    188, 'Guadalupe Kreiger', 'guadalupe.kreiger69@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/94.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2025-08-18 23:39:13', 38, '1 week ago', 265, 71,
    '2025-11-16', 'Low', 'Guadalupe Kreiger is currently enrolled in Workplace Ethics & Code of Conduct. 38% complete. Performance is 71% on average for quizzes. Risk level is evaluated as Low.', 27
  ),
  (
    189, 'Colt Parker', 'colt.parker@gmail.com', 'https://avatars.githubusercontent.com/u/66403790',
    6, 'Advanced Sales Techniques', 'Engineering',
    '2025-12-11 12:58:16', 95, '1 week ago', 806, 52,
    '2026-02-26', 'Low', 'Colt Parker is currently enrolled in Advanced Sales Techniques. 95% complete. Performance is 52% on average for quizzes. Risk level is evaluated as Low.', 70
  ),
  (
    190, 'Crystel Yundt', 'crystel.yundt@hotmail.com', 'https://avatars.githubusercontent.com/u/85970881',
    6, 'Advanced Sales Techniques', 'Finance',
    '2026-02-21 06:01:38', 36, '2 days ago', 1472, 52,
    '2026-03-24', 'High', 'Crystel Yundt is currently enrolled in Advanced Sales Techniques. 36% complete. Performance is 52% on average for quizzes. Risk level is evaluated as High.', 15
  ),
  (
    191, 'Grant Welch', 'grant.welch30@hotmail.com', 'https://avatars.githubusercontent.com/u/73627531',
    4, 'Leadership & Management', 'Human Resources',
    '2026-01-31 13:50:50', 96, '1 week ago', 1462, 62,
    '2026-03-14', 'Low', 'Grant Welch is currently enrolled in Leadership & Management. 96% complete. Performance is 62% on average for quizzes. Risk level is evaluated as Low.', 6
  ),
  (
    192, 'Jessica Kunde', 'jessica_kunde13@gmail.com', 'https://avatars.githubusercontent.com/u/94996987',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2025-08-08 11:47:56', 13, '3 days ago', 1519, 74,
    '2025-10-06', 'Low', 'Jessica Kunde is currently enrolled in Cloud Computing Fundamentals. 13% complete. Performance is 74% on average for quizzes. Risk level is evaluated as Low.', 10
  ),
  (
    193, 'Shelly Stamm', 'shelly.stamm96@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/64.jpg',
    3, 'Data Privacy and GDPR', 'Customer Support',
    '2026-02-22 00:05:45', 42, '2 weeks ago', 1651, 99,
    '2026-05-17', 'Medium', 'Shelly Stamm is currently enrolled in Data Privacy and GDPR. 42% complete. Performance is 99% on average for quizzes. Risk level is evaluated as Medium.', 35
  ),
  (
    194, 'Kenyatta Wisoky', 'kenyatta_wisoky@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/54.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Marketing',
    '2025-12-13 23:55:03', 33, '3 days ago', 972, 64,
    '2026-03-03', 'High', 'Kenyatta Wisoky is currently enrolled in Workplace Ethics & Code of Conduct. 33% complete. Performance is 64% on average for quizzes. Risk level is evaluated as High.', 41
  ),
  (
    195, 'Perry Macejkovic', 'perry.macejkovic@gmail.com', 'https://avatars.githubusercontent.com/u/94508187',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2026-04-25 18:25:52', 94, 'Today', 1016, 92,
    '2026-05-30', 'Medium', 'Perry Macejkovic is currently enrolled in Data Privacy and GDPR. 94% complete. Performance is 92% on average for quizzes. Risk level is evaluated as Medium.', 25
  ),
  (
    196, 'Louvenia Rohan', 'louvenia.rohan@yahoo.com', 'https://avatars.githubusercontent.com/u/70018176',
    2, 'Workplace Ethics & Code of Conduct', 'Operations',
    '2026-05-22 12:58:05', 92, '3 days ago', 1474, 60,
    '2026-08-06', 'Low', 'Louvenia Rohan is currently enrolled in Workplace Ethics & Code of Conduct. 92% complete. Performance is 60% on average for quizzes. Risk level is evaluated as Low.', 34
  ),
  (
    197, 'Grayson Bailey', 'grayson_bailey@hotmail.com', 'https://avatars.githubusercontent.com/u/83497491',
    4, 'Leadership & Management', 'Engineering',
    '2026-07-04 21:04:09', 26, '3 days ago', 24, 50,
    '2026-08-19', 'Low', 'Grayson Bailey is currently enrolled in Leadership & Management. 26% complete. Performance is 50% on average for quizzes. Risk level is evaluated as Low.', 37
  ),
  (
    198, 'Orlando Adams', 'orlando_adams78@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/46.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2025-08-21 21:06:35', 27, '3 days ago', 25, 66,
    '2025-10-24', 'Low', 'Orlando Adams is currently enrolled in Diversity and Inclusion in the Workplace. 27% complete. Performance is 66% on average for quizzes. Risk level is evaluated as Low.', 55
  ),
  (
    199, 'Quinton Schaden', 'quinton_schaden52@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/56.jpg',
    6, 'Advanced Sales Techniques', 'Finance',
    '2025-10-29 16:03:52', 88, '1 month ago', 399, 77,
    '2026-01-19', 'High', 'Quinton Schaden is currently enrolled in Advanced Sales Techniques. 88% complete. Performance is 77% on average for quizzes. Risk level is evaluated as High.', 88
  ),
  (
    200, 'Eva Kuhlman', 'eva_kuhlman79@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/93.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Marketing',
    '2025-08-21 01:25:39', 18, '2 days ago', 987, 71,
    '2025-10-29', 'High', 'Eva Kuhlman is currently enrolled in Workplace Ethics & Code of Conduct. 18% complete. Performance is 71% on average for quizzes. Risk level is evaluated as High.', 93
  ),
  (
    201, 'Leland Bartell', 'leland.bartell@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/5.jpg',
    3, 'Data Privacy and GDPR', 'Sales',
    '2026-06-08 17:31:03', 11, '2 weeks ago', 1527, 95,
    '2026-09-03', 'Low', 'Leland Bartell is currently enrolled in Data Privacy and GDPR. 11% complete. Performance is 95% on average for quizzes. Risk level is evaluated as Low.', 75
  ),
  (
    202, 'Carolyn Kunde', 'carolyn_kunde@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/16.jpg',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2026-05-13 08:41:42', 7, 'Yesterday', 1787, 55,
    '2026-07-30', 'Low', 'Carolyn Kunde is currently enrolled in Cybersecurity Awareness. 7% complete. Performance is 55% on average for quizzes. Risk level is evaluated as Low.', 37
  ),
  (
    203, 'Lucie Gerhold', 'lucie.gerhold@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/42.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Marketing',
    '2026-01-26 21:13:51', 16, 'Yesterday', 1333, 80,
    '2026-03-11', 'Low', 'Lucie Gerhold is currently enrolled in Workplace Ethics & Code of Conduct. 16% complete. Performance is 80% on average for quizzes. Risk level is evaluated as Low.', 93
  ),
  (
    204, 'Mindy Nikolaus', 'mindy_nikolaus16@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/46.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2026-06-30 20:47:58', 31, 'Today', 1780, 42,
    '2026-08-02', 'Low', 'Mindy Nikolaus is currently enrolled in Diversity and Inclusion in the Workplace. 31% complete. Performance is 42% on average for quizzes. Risk level is evaluated as Low.', 22
  ),
  (
    205, 'Alf Jakubowski', 'alf.jakubowski@hotmail.com', 'https://avatars.githubusercontent.com/u/67291486',
    6, 'Advanced Sales Techniques', 'Marketing',
    '2026-04-03 12:43:15', 72, '1 week ago', 1724, 96,
    '2026-05-30', 'Medium', 'Alf Jakubowski is currently enrolled in Advanced Sales Techniques. 72% complete. Performance is 96% on average for quizzes. Risk level is evaluated as Medium.', 9
  ),
  (
    206, 'Dameon Trantow', 'dameon.trantow15@gmail.com', 'https://avatars.githubusercontent.com/u/77407811',
    5, 'Diversity and Inclusion in the Workplace', 'Sales',
    '2026-07-12 23:58:23', 27, '1 month ago', 300, 69,
    '2026-09-19', 'Low', 'Dameon Trantow is currently enrolled in Diversity and Inclusion in the Workplace. 27% complete. Performance is 69% on average for quizzes. Risk level is evaluated as Low.', 84
  ),
  (
    207, 'Doug Dietrich', 'doug.dietrich36@yahoo.com', 'https://avatars.githubusercontent.com/u/72179939',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2026-03-17 14:12:40', 99, '2 weeks ago', 1633, 85,
    '2026-06-03', 'Medium', 'Doug Dietrich is currently enrolled in Diversity and Inclusion in the Workplace. 99% complete. Performance is 85% on average for quizzes. Risk level is evaluated as Medium.', 73
  ),
  (
    208, 'Stefan Langosh', 'stefan_langosh@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/95.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Human Resources',
    '2026-01-07 08:35:29', 98, 'Today', 1416, 94,
    '2026-03-16', 'Low', 'Stefan Langosh is currently enrolled in Diversity and Inclusion in the Workplace. 98% complete. Performance is 94% on average for quizzes. Risk level is evaluated as Low.', 86
  ),
  (
    209, 'Rachael Fritsch', 'rachael_fritsch61@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/54.jpg',
    4, 'Leadership & Management', 'Finance',
    '2025-10-17 11:47:13', 51, 'Today', 588, 63,
    '2025-11-16', 'High', 'Rachael Fritsch is currently enrolled in Leadership & Management. 51% complete. Performance is 63% on average for quizzes. Risk level is evaluated as High.', 71
  ),
  (
    210, 'Megane Yost', 'megane.yost@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/30.jpg',
    3, 'Data Privacy and GDPR', 'Customer Support',
    '2026-06-24 12:40:59', 54, 'Today', 1090, 46,
    '2026-08-23', 'Medium', 'Megane Yost is currently enrolled in Data Privacy and GDPR. 54% complete. Performance is 46% on average for quizzes. Risk level is evaluated as Medium.', 42
  ),
  (
    211, 'Sally Simonis', 'sally_simonis93@gmail.com', 'https://avatars.githubusercontent.com/u/6285789',
    4, 'Leadership & Management', 'Human Resources',
    '2025-10-19 03:40:39', 75, '2 weeks ago', 299, 94,
    '2025-11-28', 'Medium', 'Sally Simonis is currently enrolled in Leadership & Management. 75% complete. Performance is 94% on average for quizzes. Risk level is evaluated as Medium.', 8
  ),
  (
    212, 'Naomi Kertzmann', 'naomi.kertzmann9@hotmail.com', 'https://avatars.githubusercontent.com/u/40302586',
    7, 'Cloud Computing Fundamentals', 'Marketing',
    '2026-03-21 23:19:33', 91, '1 month ago', 1616, 43,
    '2026-04-30', 'Low', 'Naomi Kertzmann is currently enrolled in Cloud Computing Fundamentals. 91% complete. Performance is 43% on average for quizzes. Risk level is evaluated as Low.', 62
  ),
  (
    213, 'Nigel Pagac', 'nigel.pagac@yahoo.com', 'https://avatars.githubusercontent.com/u/3363161',
    6, 'Advanced Sales Techniques', 'Finance',
    '2026-02-27 01:21:29', 30, '1 week ago', 1747, 81,
    '2026-05-16', 'Low', 'Nigel Pagac is currently enrolled in Advanced Sales Techniques. 30% complete. Performance is 81% on average for quizzes. Risk level is evaluated as Low.', 92
  ),
  (
    214, 'Wm Keeling', 'wm_keeling33@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/14.jpg',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2025-09-20 08:35:16', 93, '3 days ago', 118, 82,
    '2025-12-04', 'Low', 'Wm Keeling is currently enrolled in Cybersecurity Awareness. 93% complete. Performance is 82% on average for quizzes. Risk level is evaluated as Low.', 36
  ),
  (
    215, 'Cary Fahey', 'cary_fahey23@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/5.jpg',
    1, 'Cybersecurity Awareness', 'Operations',
    '2026-02-01 06:45:17', 47, 'Today', 855, 40,
    '2026-03-21', 'Low', 'Cary Fahey is currently enrolled in Cybersecurity Awareness. 47% complete. Performance is 40% on average for quizzes. Risk level is evaluated as Low.', 17
  ),
  (
    216, 'Dell Bashirian', 'dell.bashirian@hotmail.com', 'https://avatars.githubusercontent.com/u/17167803',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2025-12-19 21:00:17', 0, '2 days ago', 503, 58,
    '2026-02-07', 'Low', 'Dell Bashirian is currently enrolled in Cloud Computing Fundamentals. 0% complete. Performance is 58% on average for quizzes. Risk level is evaluated as Low.', 22
  ),
  (
    217, 'Julianne Huel', 'julianne_huel@yahoo.com', 'https://avatars.githubusercontent.com/u/9887119',
    4, 'Leadership & Management', 'Finance',
    '2026-07-24 04:18:03', 50, '2 weeks ago', 589, 72,
    '2026-10-13', 'Low', 'Julianne Huel is currently enrolled in Leadership & Management. 50% complete. Performance is 72% on average for quizzes. Risk level is evaluated as Low.', 57
  ),
  (
    218, 'Esperanza Dooley-Feeney', 'esperanza.dooley-feeney93@yahoo.com', 'https://avatars.githubusercontent.com/u/32455874',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2025-10-10 01:57:18', 51, 'Today', 1028, 85,
    '2025-11-15', 'High', 'Esperanza Dooley-Feeney is currently enrolled in Cybersecurity Awareness. 51% complete. Performance is 85% on average for quizzes. Risk level is evaluated as High.', 56
  ),
  (
    219, 'Hunter Mayer', 'hunter_mayer60@yahoo.com', 'https://avatars.githubusercontent.com/u/18066059',
    1, 'Cybersecurity Awareness', 'Sales',
    '2026-08-05 04:31:31', 82, '2 days ago', 880, 68,
    '2026-10-13', 'Low', 'Hunter Mayer is currently enrolled in Cybersecurity Awareness. 82% complete. Performance is 68% on average for quizzes. Risk level is evaluated as Low.', 66
  ),
  (
    220, 'Jeremy Carroll', 'jeremy.carroll94@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/4.jpg',
    1, 'Cybersecurity Awareness', 'Human Resources',
    '2025-11-14 02:05:04', 72, '1 month ago', 1656, 69,
    '2025-12-31', 'Low', 'Jeremy Carroll is currently enrolled in Cybersecurity Awareness. 72% complete. Performance is 69% on average for quizzes. Risk level is evaluated as Low.', 47
  ),
  (
    221, 'Martin Reinger', 'martin.reinger42@yahoo.com', 'https://avatars.githubusercontent.com/u/13971544',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2025-11-08 12:18:47', 69, '1 month ago', 690, 72,
    '2026-01-07', 'Low', 'Martin Reinger is currently enrolled in Cloud Computing Fundamentals. 69% complete. Performance is 72% on average for quizzes. Risk level is evaluated as Low.', 16
  ),
  (
    222, 'Kevin West', 'kevin.west@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/86.jpg',
    6, 'Advanced Sales Techniques', 'Operations',
    '2025-12-09 19:57:55', 31, '2 weeks ago', 1439, 58,
    '2026-01-16', 'High', 'Kevin West is currently enrolled in Advanced Sales Techniques. 31% complete. Performance is 58% on average for quizzes. Risk level is evaluated as High.', 94
  ),
  (
    223, 'Emmie Farrell', 'emmie_farrell2@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/12.jpg',
    4, 'Leadership & Management', 'Operations',
    '2025-08-12 14:35:33', 40, '1 week ago', 1749, 86,
    '2025-10-06', 'High', 'Emmie Farrell is currently enrolled in Leadership & Management. 40% complete. Performance is 86% on average for quizzes. Risk level is evaluated as High.', 12
  ),
  (
    224, 'Bessie Rodriguez', 'bessie_rodriguez@hotmail.com', 'https://avatars.githubusercontent.com/u/75941319',
    7, 'Cloud Computing Fundamentals', 'Marketing',
    '2025-10-10 05:23:58', 85, 'Yesterday', 813, 62,
    '2025-12-06', 'Medium', 'Bessie Rodriguez is currently enrolled in Cloud Computing Fundamentals. 85% complete. Performance is 62% on average for quizzes. Risk level is evaluated as Medium.', 65
  ),
  (
    225, 'Rudy Schinner', 'rudy_schinner@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/42.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Human Resources',
    '2026-06-24 21:52:58', 34, 'Yesterday', 1733, 67,
    '2026-09-20', 'Low', 'Rudy Schinner is currently enrolled in Diversity and Inclusion in the Workplace. 34% complete. Performance is 67% on average for quizzes. Risk level is evaluated as Low.', 26
  ),
  (
    226, 'Garrett Gusikowski', 'garrett.gusikowski87@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/71.jpg',
    6, 'Advanced Sales Techniques', 'Engineering',
    '2025-09-18 19:39:57', 66, '1 month ago', 259, 62,
    '2025-12-17', 'High', 'Garrett Gusikowski is currently enrolled in Advanced Sales Techniques. 66% complete. Performance is 62% on average for quizzes. Risk level is evaluated as High.', 71
  ),
  (
    227, 'Geraldine Greenfelder', 'geraldine.greenfelder@yahoo.com', 'https://avatars.githubusercontent.com/u/45332029',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2026-06-06 17:43:50', 43, 'Today', 803, 76,
    '2026-08-16', 'Medium', 'Geraldine Greenfelder is currently enrolled in Diversity and Inclusion in the Workplace. 43% complete. Performance is 76% on average for quizzes. Risk level is evaluated as Medium.', 7
  ),
  (
    228, 'Louisa Medhurst', 'louisa.medhurst@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/82.jpg',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2026-06-05 21:52:50', 71, 'Today', 1140, 40,
    '2026-07-30', 'High', 'Louisa Medhurst is currently enrolled in Cybersecurity Awareness. 71% complete. Performance is 40% on average for quizzes. Risk level is evaluated as High.', 88
  ),
  (
    229, 'Ron McClure', 'ron_mcclure@yahoo.com', 'https://avatars.githubusercontent.com/u/69473366',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2026-01-03 08:01:27', 7, 'Today', 89, 82,
    '2026-03-19', 'Medium', 'Ron McClure is currently enrolled in Cybersecurity Awareness. 7% complete. Performance is 82% on average for quizzes. Risk level is evaluated as Medium.', 5
  ),
  (
    230, 'Adela MacGyver', 'adela_macgyver@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/65.jpg',
    1, 'Cybersecurity Awareness', 'Finance',
    '2026-07-24 21:56:55', 33, '1 week ago', 1256, 59,
    '2026-09-29', 'High', 'Adela MacGyver is currently enrolled in Cybersecurity Awareness. 33% complete. Performance is 59% on average for quizzes. Risk level is evaluated as High.', 7
  ),
  (
    231, 'Jeannette Stehr', 'jeannette_stehr39@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/67.jpg',
    3, 'Data Privacy and GDPR', 'Marketing',
    '2025-12-18 21:30:16', 98, 'Yesterday', 1716, 98,
    '2026-03-07', 'Low', 'Jeannette Stehr is currently enrolled in Data Privacy and GDPR. 98% complete. Performance is 98% on average for quizzes. Risk level is evaluated as Low.', 18
  ),
  (
    232, 'Cody Gutmann', 'cody_gutmann37@hotmail.com', 'https://avatars.githubusercontent.com/u/43775613',
    6, 'Advanced Sales Techniques', 'Engineering',
    '2026-03-15 14:21:24', 28, '1 week ago', 1060, 59,
    '2026-05-03', 'Low', 'Cody Gutmann is currently enrolled in Advanced Sales Techniques. 28% complete. Performance is 59% on average for quizzes. Risk level is evaluated as Low.', 87
  ),
  (
    233, 'Lisandro Koss', 'lisandro_koss@yahoo.com', 'https://avatars.githubusercontent.com/u/96236812',
    7, 'Cloud Computing Fundamentals', 'Operations',
    '2026-04-26 19:12:44', 72, 'Today', 1854, 88,
    '2026-07-21', 'High', 'Lisandro Koss is currently enrolled in Cloud Computing Fundamentals. 72% complete. Performance is 88% on average for quizzes. Risk level is evaluated as High.', 1
  ),
  (
    234, 'Stanley Koch', 'stanley_koch@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/54.jpg',
    4, 'Leadership & Management', 'Engineering',
    '2026-02-07 23:39:32', 15, 'Today', 1271, 45,
    '2026-03-30', 'Medium', 'Stanley Koch is currently enrolled in Leadership & Management. 15% complete. Performance is 45% on average for quizzes. Risk level is evaluated as Medium.', 32
  ),
  (
    235, 'Bryan Harris', 'bryan.harris85@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/88.jpg',
    6, 'Advanced Sales Techniques', 'Marketing',
    '2025-08-21 20:23:50', 89, '1 month ago', 381, 94,
    '2025-10-16', 'Low', 'Bryan Harris is currently enrolled in Advanced Sales Techniques. 89% complete. Performance is 94% on average for quizzes. Risk level is evaluated as Low.', 72
  ),
  (
    236, 'Javon Swift', 'javon_swift66@yahoo.com', 'https://avatars.githubusercontent.com/u/30964132',
    1, 'Cybersecurity Awareness', 'Sales',
    '2025-10-31 00:42:01', 34, '1 week ago', 1987, 92,
    '2025-12-27', 'Low', 'Javon Swift is currently enrolled in Cybersecurity Awareness. 34% complete. Performance is 92% on average for quizzes. Risk level is evaluated as Low.', 45
  ),
  (
    237, 'Christie Mayert', 'christie_mayert@yahoo.com', 'https://avatars.githubusercontent.com/u/89557270',
    1, 'Cybersecurity Awareness', 'Operations',
    '2026-05-30 00:27:06', 0, 'Today', 917, 46,
    '2026-08-16', 'Low', 'Christie Mayert is currently enrolled in Cybersecurity Awareness. 0% complete. Performance is 46% on average for quizzes. Risk level is evaluated as Low.', 8
  ),
  (
    238, 'Jeannette Dietrich', 'jeannette.dietrich@hotmail.com', 'https://avatars.githubusercontent.com/u/44478735',
    3, 'Data Privacy and GDPR', 'Marketing',
    '2025-12-21 20:29:20', 81, '3 days ago', 1709, 71,
    '2026-03-09', 'Medium', 'Jeannette Dietrich is currently enrolled in Data Privacy and GDPR. 81% complete. Performance is 71% on average for quizzes. Risk level is evaluated as Medium.', 17
  ),
  (
    239, 'Fred Braun', 'fred.braun@gmail.com', 'https://avatars.githubusercontent.com/u/91012987',
    4, 'Leadership & Management', 'Engineering',
    '2025-10-27 05:53:53', 61, '1 week ago', 682, 95,
    '2025-12-06', 'Medium', 'Fred Braun is currently enrolled in Leadership & Management. 61% complete. Performance is 95% on average for quizzes. Risk level is evaluated as Medium.', 26
  ),
  (
    240, 'Dan Cremin-Jones', 'dan.cremin-jones@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/71.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2026-01-23 14:48:07', 78, 'Today', 1961, 97,
    '2026-04-18', 'Medium', 'Dan Cremin-Jones is currently enrolled in Workplace Ethics & Code of Conduct. 78% complete. Performance is 97% on average for quizzes. Risk level is evaluated as Medium.', 87
  ),
  (
    241, 'Faith Little', 'faith_little@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/49.jpg',
    3, 'Data Privacy and GDPR', 'Finance',
    '2026-01-26 14:57:14', 93, '3 days ago', 1331, 71,
    '2026-03-05', 'Medium', 'Faith Little is currently enrolled in Data Privacy and GDPR. 93% complete. Performance is 71% on average for quizzes. Risk level is evaluated as Medium.', 15
  ),
  (
    242, 'Glenn Conroy', 'glenn.conroy14@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/92.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Human Resources',
    '2025-09-20 05:44:50', 62, '1 month ago', 1085, 41,
    '2025-12-02', 'Low', 'Glenn Conroy is currently enrolled in Diversity and Inclusion in the Workplace. 62% complete. Performance is 41% on average for quizzes. Risk level is evaluated as Low.', 5
  ),
  (
    243, 'Ricardo Treutel', 'ricardo.treutel@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/0.jpg',
    6, 'Advanced Sales Techniques', 'Sales',
    '2025-11-13 07:15:23', 64, '2 days ago', 94, 84,
    '2025-12-15', 'High', 'Ricardo Treutel is currently enrolled in Advanced Sales Techniques. 64% complete. Performance is 84% on average for quizzes. Risk level is evaluated as High.', 33
  ),
  (
    244, 'Aylin Kshlerin', 'aylin.kshlerin@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/45.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Sales',
    '2026-06-16 02:36:12', 68, 'Yesterday', 1213, 75,
    '2026-08-05', 'Low', 'Aylin Kshlerin is currently enrolled in Workplace Ethics & Code of Conduct. 68% complete. Performance is 75% on average for quizzes. Risk level is evaluated as Low.', 53
  ),
  (
    245, 'Emiliano Rau', 'emiliano.rau34@gmail.com', 'https://avatars.githubusercontent.com/u/95174800',
    2, 'Workplace Ethics & Code of Conduct', 'Sales',
    '2026-07-04 00:55:11', 24, 'Yesterday', 1843, 40,
    '2026-09-10', 'Low', 'Emiliano Rau is currently enrolled in Workplace Ethics & Code of Conduct. 24% complete. Performance is 40% on average for quizzes. Risk level is evaluated as Low.', 1
  ),
  (
    246, 'Peggy Wilderman', 'peggy.wilderman33@gmail.com', 'https://avatars.githubusercontent.com/u/54694814',
    1, 'Cybersecurity Awareness', 'Human Resources',
    '2026-08-01 15:46:47', 7, '3 days ago', 1249, 74,
    '2026-10-01', 'Medium', 'Peggy Wilderman is currently enrolled in Cybersecurity Awareness. 7% complete. Performance is 74% on average for quizzes. Risk level is evaluated as Medium.', 6
  ),
  (
    247, 'Brandon Mosciski', 'brandon.mosciski19@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/33.jpg',
    3, 'Data Privacy and GDPR', 'Marketing',
    '2026-01-03 14:06:46', 9, 'Yesterday', 621, 64,
    '2026-02-13', 'Medium', 'Brandon Mosciski is currently enrolled in Data Privacy and GDPR. 9% complete. Performance is 64% on average for quizzes. Risk level is evaluated as Medium.', 17
  ),
  (
    248, 'Claudine Stiedemann', 'claudine.stiedemann15@gmail.com', 'https://avatars.githubusercontent.com/u/43761477',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2025-11-19 13:11:20', 65, '2 weeks ago', 1878, 90,
    '2025-12-28', 'Low', 'Claudine Stiedemann is currently enrolled in Diversity and Inclusion in the Workplace. 65% complete. Performance is 90% on average for quizzes. Risk level is evaluated as Low.', 21
  ),
  (
    249, 'Oscar Nicolas', 'oscar.nicolas@hotmail.com', 'https://avatars.githubusercontent.com/u/92770125',
    3, 'Data Privacy and GDPR', 'Customer Support',
    '2026-01-10 15:11:31', 4, '2 days ago', 950, 41,
    '2026-04-03', 'Medium', 'Oscar Nicolas is currently enrolled in Data Privacy and GDPR. 4% complete. Performance is 41% on average for quizzes. Risk level is evaluated as Medium.', 12
  ),
  (
    250, 'Brannon Bernhard', 'brannon_bernhard8@hotmail.com', 'https://avatars.githubusercontent.com/u/52859289',
    5, 'Diversity and Inclusion in the Workplace', 'Marketing',
    '2026-05-24 17:28:59', 72, '2 days ago', 47, 44,
    '2026-07-07', 'Low', 'Brannon Bernhard is currently enrolled in Diversity and Inclusion in the Workplace. 72% complete. Performance is 44% on average for quizzes. Risk level is evaluated as Low.', 51
  ),
  (
    251, 'Joana Metz', 'joana_metz@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/50.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Sales',
    '2026-01-01 05:49:55', 53, '1 week ago', 1218, 75,
    '2026-02-10', 'Low', 'Joana Metz is currently enrolled in Workplace Ethics & Code of Conduct. 53% complete. Performance is 75% on average for quizzes. Risk level is evaluated as Low.', 6
  ),
  (
    252, 'Harrison Cremin', 'harrison_cremin@yahoo.com', 'https://avatars.githubusercontent.com/u/51337470',
    4, 'Leadership & Management', 'Finance',
    '2026-05-17 17:53:53', 84, 'Yesterday', 1214, 47,
    '2026-07-11', 'Low', 'Harrison Cremin is currently enrolled in Leadership & Management. 84% complete. Performance is 47% on average for quizzes. Risk level is evaluated as Low.', 96
  ),
  (
    253, 'Marianne Friesen', 'marianne_friesen93@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/6.jpg',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2025-09-29 12:16:00', 65, '2 days ago', 1840, 42,
    '2025-11-24', 'Low', 'Marianne Friesen is currently enrolled in Data Privacy and GDPR. 65% complete. Performance is 42% on average for quizzes. Risk level is evaluated as Low.', 97
  ),
  (
    254, 'Zita Hilpert', 'zita.hilpert@gmail.com', 'https://avatars.githubusercontent.com/u/93408691',
    6, 'Advanced Sales Techniques', 'Customer Support',
    '2026-07-30 17:30:57', 63, '1 month ago', 1350, 69,
    '2026-10-11', 'Low', 'Zita Hilpert is currently enrolled in Advanced Sales Techniques. 63% complete. Performance is 69% on average for quizzes. Risk level is evaluated as Low.', 78
  ),
  (
    255, 'Marguerite Berge', 'marguerite_berge@gmail.com', 'https://avatars.githubusercontent.com/u/66778603',
    5, 'Diversity and Inclusion in the Workplace', 'Marketing',
    '2025-09-08 15:02:50', 28, '2 days ago', 825, 44,
    '2025-10-29', 'Low', 'Marguerite Berge is currently enrolled in Diversity and Inclusion in the Workplace. 28% complete. Performance is 44% on average for quizzes. Risk level is evaluated as Low.', 67
  ),
  (
    256, 'Amir Witting', 'amir.witting61@yahoo.com', 'https://avatars.githubusercontent.com/u/44005210',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2025-12-16 22:46:50', 34, '3 days ago', 921, 58,
    '2026-02-13', 'High', 'Amir Witting is currently enrolled in Workplace Ethics & Code of Conduct. 34% complete. Performance is 58% on average for quizzes. Risk level is evaluated as High.', 90
  ),
  (
    257, 'Marcella Schneider-Gutkowski', 'marcella.schneider-gutkowski@yahoo.com', 'https://avatars.githubusercontent.com/u/67463178',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2026-03-29 16:42:38', 95, 'Today', 72, 91,
    '2026-05-08', 'Medium', 'Marcella Schneider-Gutkowski is currently enrolled in Cloud Computing Fundamentals. 95% complete. Performance is 91% on average for quizzes. Risk level is evaluated as Medium.', 3
  ),
  (
    258, 'Howard Haley', 'howard_haley@hotmail.com', 'https://avatars.githubusercontent.com/u/57447384',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2026-01-24 08:49:43', 13, '2 weeks ago', 1474, 60,
    '2026-03-08', 'Low', 'Howard Haley is currently enrolled in Data Privacy and GDPR. 13% complete. Performance is 60% on average for quizzes. Risk level is evaluated as Low.', 63
  ),
  (
    259, 'Jayson Terry', 'jayson.terry9@yahoo.com', 'https://avatars.githubusercontent.com/u/4992539',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2026-02-01 00:25:35', 29, '2 weeks ago', 1200, 69,
    '2026-04-19', 'Low', 'Jayson Terry is currently enrolled in Data Privacy and GDPR. 29% complete. Performance is 69% on average for quizzes. Risk level is evaluated as Low.', 73
  ),
  (
    260, 'Teresa Ortiz', 'teresa.ortiz73@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/32.jpg',
    4, 'Leadership & Management', 'Finance',
    '2026-01-17 00:44:58', 57, 'Today', 1488, 99,
    '2026-03-01', 'Low', 'Teresa Ortiz is currently enrolled in Leadership & Management. 57% complete. Performance is 99% on average for quizzes. Risk level is evaluated as Low.', 75
  ),
  (
    261, 'Isidro Smitham', 'isidro_smitham48@gmail.com', 'https://avatars.githubusercontent.com/u/27844697',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2025-09-17 14:21:10', 96, '1 week ago', 510, 67,
    '2025-12-08', 'Low', 'Isidro Smitham is currently enrolled in Cybersecurity Awareness. 96% complete. Performance is 67% on average for quizzes. Risk level is evaluated as Low.', 59
  ),
  (
    262, 'Keshawn Lemke', 'keshawn_lemke7@hotmail.com', 'https://avatars.githubusercontent.com/u/29971263',
    4, 'Leadership & Management', 'Finance',
    '2026-03-20 13:44:13', 79, '2 days ago', 65, 83,
    '2026-05-12', 'High', 'Keshawn Lemke is currently enrolled in Leadership & Management. 79% complete. Performance is 83% on average for quizzes. Risk level is evaluated as High.', 7
  ),
  (
    263, 'Tomas Boyer', 'tomas.boyer@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/64.jpg',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2026-05-25 22:08:32', 21, '2 weeks ago', 1215, 79,
    '2026-07-21', 'Medium', 'Tomas Boyer is currently enrolled in Cybersecurity Awareness. 21% complete. Performance is 79% on average for quizzes. Risk level is evaluated as Medium.', 78
  ),
  (
    264, 'Vicki Sawayn', 'vicki_sawayn@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/65.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2026-01-11 19:43:42', 44, '3 days ago', 1083, 67,
    '2026-02-11', 'Medium', 'Vicki Sawayn is currently enrolled in Diversity and Inclusion in the Workplace. 44% complete. Performance is 67% on average for quizzes. Risk level is evaluated as Medium.', 42
  ),
  (
    265, 'Grant Schroeder', 'grant.schroeder@gmail.com', 'https://avatars.githubusercontent.com/u/28609016',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2026-05-13 09:20:48', 17, '2 weeks ago', 1002, 66,
    '2026-07-12', 'Low', 'Grant Schroeder is currently enrolled in Cybersecurity Awareness. 17% complete. Performance is 66% on average for quizzes. Risk level is evaluated as Low.', 43
  ),
  (
    266, 'Freeda Wiegand', 'freeda.wiegand@hotmail.com', 'https://avatars.githubusercontent.com/u/83112777',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2026-05-17 20:51:26', 33, '1 week ago', 582, 63,
    '2026-07-30', 'Low', 'Freeda Wiegand is currently enrolled in Cloud Computing Fundamentals. 33% complete. Performance is 63% on average for quizzes. Risk level is evaluated as Low.', 39
  ),
  (
    267, 'Darin Kuhlman', 'darin_kuhlman@hotmail.com', 'https://avatars.githubusercontent.com/u/55720551',
    3, 'Data Privacy and GDPR', 'Customer Support',
    '2026-02-23 20:51:52', 16, '1 month ago', 1407, 63,
    '2026-04-09', 'Low', 'Darin Kuhlman is currently enrolled in Data Privacy and GDPR. 16% complete. Performance is 63% on average for quizzes. Risk level is evaluated as Low.', 77
  ),
  (
    268, 'Lenny Gottlieb', 'lenny_gottlieb@gmail.com', 'https://avatars.githubusercontent.com/u/35974371',
    6, 'Advanced Sales Techniques', 'Engineering',
    '2026-03-20 09:12:00', 45, '3 days ago', 621, 61,
    '2026-05-16', 'Medium', 'Lenny Gottlieb is currently enrolled in Advanced Sales Techniques. 45% complete. Performance is 61% on average for quizzes. Risk level is evaluated as Medium.', 30
  ),
  (
    269, 'Ezra DuBuque', 'ezra.dubuque80@gmail.com', 'https://avatars.githubusercontent.com/u/46230679',
    3, 'Data Privacy and GDPR', 'Operations',
    '2026-07-18 10:02:20', 43, '1 month ago', 841, 80,
    '2026-09-22', 'Low', 'Ezra DuBuque is currently enrolled in Data Privacy and GDPR. 43% complete. Performance is 80% on average for quizzes. Risk level is evaluated as Low.', 6
  ),
  (
    270, 'Lula Purdy', 'lula_purdy@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/1.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Marketing',
    '2026-05-10 02:33:24', 69, '3 days ago', 1940, 60,
    '2026-06-30', 'High', 'Lula Purdy is currently enrolled in Workplace Ethics & Code of Conduct. 69% complete. Performance is 60% on average for quizzes. Risk level is evaluated as High.', 89
  ),
  (
    271, 'Elza Funk', 'elza_funk89@yahoo.com', 'https://avatars.githubusercontent.com/u/10359547',
    4, 'Leadership & Management', 'Engineering',
    '2025-11-06 02:02:47', 41, '2 weeks ago', 930, 53,
    '2026-02-01', 'Low', 'Elza Funk is currently enrolled in Leadership & Management. 41% complete. Performance is 53% on average for quizzes. Risk level is evaluated as Low.', 74
  ),
  (
    272, 'Dangelo Schmidt-Jacobs', 'dangelo_schmidt-jacobs7@yahoo.com', 'https://avatars.githubusercontent.com/u/63996445',
    6, 'Advanced Sales Techniques', 'Engineering',
    '2026-05-24 01:44:22', 35, 'Yesterday', 1764, 87,
    '2026-08-16', 'Medium', 'Dangelo Schmidt-Jacobs is currently enrolled in Advanced Sales Techniques. 35% complete. Performance is 87% on average for quizzes. Risk level is evaluated as Medium.', 8
  ),
  (
    273, 'Brandi Hyatt', 'brandi_hyatt@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/27.jpg',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2026-01-22 07:43:10', 57, '2 weeks ago', 279, 91,
    '2026-04-01', 'Low', 'Brandi Hyatt is currently enrolled in Cybersecurity Awareness. 57% complete. Performance is 91% on average for quizzes. Risk level is evaluated as Low.', 9
  ),
  (
    274, 'Belle Larson', 'belle.larson@hotmail.com', 'https://avatars.githubusercontent.com/u/14420243',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2026-01-01 13:56:12', 92, '2 days ago', 269, 59,
    '2026-03-08', 'Low', 'Belle Larson is currently enrolled in Workplace Ethics & Code of Conduct. 92% complete. Performance is 59% on average for quizzes. Risk level is evaluated as Low.', 85
  ),
  (
    275, 'Larry Tillman', 'larry.tillman63@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/45.jpg',
    4, 'Leadership & Management', 'Engineering',
    '2026-07-25 19:17:02', 45, 'Today', 419, 97,
    '2026-10-09', 'Medium', 'Larry Tillman is currently enrolled in Leadership & Management. 45% complete. Performance is 97% on average for quizzes. Risk level is evaluated as Medium.', 61
  ),
  (
    276, 'Darren Aufderhar', 'darren.aufderhar21@gmail.com', 'https://avatars.githubusercontent.com/u/45051811',
    6, 'Advanced Sales Techniques', 'Engineering',
    '2025-09-08 05:36:16', 79, '2 weeks ago', 297, 77,
    '2025-11-11', 'Medium', 'Darren Aufderhar is currently enrolled in Advanced Sales Techniques. 79% complete. Performance is 77% on average for quizzes. Risk level is evaluated as Medium.', 89
  ),
  (
    277, 'Ricky Stroman', 'ricky.stroman@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/49.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2026-05-31 13:34:57', 97, '1 month ago', 916, 52,
    '2026-07-14', 'Low', 'Ricky Stroman is currently enrolled in Diversity and Inclusion in the Workplace. 97% complete. Performance is 52% on average for quizzes. Risk level is evaluated as Low.', 39
  ),
  (
    278, 'Deanna Zieme', 'deanna.zieme29@gmail.com', 'https://avatars.githubusercontent.com/u/47531875',
    4, 'Leadership & Management', 'Customer Support',
    '2026-04-02 18:39:12', 30, '1 month ago', 1495, 79,
    '2026-05-24', 'Medium', 'Deanna Zieme is currently enrolled in Leadership & Management. 30% complete. Performance is 79% on average for quizzes. Risk level is evaluated as Medium.', 43
  ),
  (
    279, 'Allan Effertz', 'allan.effertz4@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/50.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Customer Support',
    '2025-11-23 14:24:14', 24, '1 month ago', 611, 76,
    '2026-01-25', 'High', 'Allan Effertz is currently enrolled in Diversity and Inclusion in the Workplace. 24% complete. Performance is 76% on average for quizzes. Risk level is evaluated as High.', 21
  ),
  (
    280, 'Aurelie Schuster', 'aurelie.schuster78@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/18.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2026-01-21 05:20:03', 98, '3 days ago', 968, 91,
    '2026-03-29', 'High', 'Aurelie Schuster is currently enrolled in Diversity and Inclusion in the Workplace. 98% complete. Performance is 91% on average for quizzes. Risk level is evaluated as High.', 79
  ),
  (
    281, 'Matthew Stamm-Spencer', 'matthew_stamm-spencer@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/82.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2026-06-13 21:59:21', 35, '3 days ago', 822, 46,
    '2026-07-30', 'Medium', 'Matthew Stamm-Spencer is currently enrolled in Diversity and Inclusion in the Workplace. 35% complete. Performance is 46% on average for quizzes. Risk level is evaluated as Medium.', 7
  ),
  (
    282, 'Julia Funk', 'julia_funk@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/90.jpg',
    6, 'Advanced Sales Techniques', 'Human Resources',
    '2026-01-12 00:39:48', 23, '2 weeks ago', 1288, 66,
    '2026-02-27', 'Low', 'Julia Funk is currently enrolled in Advanced Sales Techniques. 23% complete. Performance is 66% on average for quizzes. Risk level is evaluated as Low.', 57
  ),
  (
    283, 'Julianne Waelchi', 'julianne.waelchi@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/74.jpg',
    6, 'Advanced Sales Techniques', 'Engineering',
    '2026-02-14 11:29:42', 71, '1 week ago', 31, 82,
    '2026-03-21', 'Medium', 'Julianne Waelchi is currently enrolled in Advanced Sales Techniques. 71% complete. Performance is 82% on average for quizzes. Risk level is evaluated as Medium.', 17
  ),
  (
    284, 'Judson Lubowitz', 'judson_lubowitz22@hotmail.com', 'https://avatars.githubusercontent.com/u/81120643',
    7, 'Cloud Computing Fundamentals', 'Finance',
    '2026-03-14 17:04:03', 7, '3 days ago', 166, 59,
    '2026-06-12', 'Medium', 'Judson Lubowitz is currently enrolled in Cloud Computing Fundamentals. 7% complete. Performance is 59% on average for quizzes. Risk level is evaluated as Medium.', 71
  ),
  (
    285, 'Ernest Gulgowski', 'ernest_gulgowski15@hotmail.com', 'https://avatars.githubusercontent.com/u/59492633',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2025-11-04 14:03:12', 10, '2 days ago', 62, 54,
    '2025-12-07', 'Medium', 'Ernest Gulgowski is currently enrolled in Cybersecurity Awareness. 10% complete. Performance is 54% on average for quizzes. Risk level is evaluated as Medium.', 37
  ),
  (
    286, 'Roy Wisozk', 'roy_wisozk@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/34.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2025-11-22 12:10:09', 36, '1 month ago', 1881, 43,
    '2026-02-10', 'Low', 'Roy Wisozk is currently enrolled in Diversity and Inclusion in the Workplace. 36% complete. Performance is 43% on average for quizzes. Risk level is evaluated as Low.', 60
  ),
  (
    287, 'Jeff Tillman', 'jeff_tillman@yahoo.com', 'https://avatars.githubusercontent.com/u/18907213',
    6, 'Advanced Sales Techniques', 'Engineering',
    '2026-07-23 08:57:04', 39, 'Today', 201, 46,
    '2026-10-20', 'Medium', 'Jeff Tillman is currently enrolled in Advanced Sales Techniques. 39% complete. Performance is 46% on average for quizzes. Risk level is evaluated as Medium.', 64
  ),
  (
    288, 'Bradly McCullough', 'bradly_mccullough@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/55.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2026-01-22 11:25:06', 38, '1 month ago', 503, 58,
    '2026-04-11', 'Low', 'Bradly McCullough is currently enrolled in Diversity and Inclusion in the Workplace. 38% complete. Performance is 58% on average for quizzes. Risk level is evaluated as Low.', 83
  ),
  (
    289, 'Cristina Koelpin', 'cristina_koelpin@yahoo.com', 'https://avatars.githubusercontent.com/u/94576804',
    4, 'Leadership & Management', 'Human Resources',
    '2026-02-09 10:47:06', 63, '2 weeks ago', 167, 65,
    '2026-03-11', 'Low', 'Cristina Koelpin is currently enrolled in Leadership & Management. 63% complete. Performance is 65% on average for quizzes. Risk level is evaluated as Low.', 74
  ),
  (
    290, 'Geraldine Macejkovic-Collier', 'geraldine_macejkovic-collier77@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/18.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2026-01-08 14:56:04', 1, '3 days ago', 800, 100,
    '2026-02-19', 'Low', 'Geraldine Macejkovic-Collier is currently enrolled in Diversity and Inclusion in the Workplace. 1% complete. Performance is 100% on average for quizzes. Risk level is evaluated as Low.', 25
  ),
  (
    291, 'Dianne Morissette', 'dianne_morissette92@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/37.jpg',
    3, 'Data Privacy and GDPR', 'Finance',
    '2026-07-16 11:10:19', 19, 'Today', 1974, 48,
    '2026-08-24', 'Low', 'Dianne Morissette is currently enrolled in Data Privacy and GDPR. 19% complete. Performance is 48% on average for quizzes. Risk level is evaluated as Low.', 77
  ),
  (
    292, 'Judy Greenholt', 'judy.greenholt55@gmail.com', 'https://avatars.githubusercontent.com/u/24422861',
    6, 'Advanced Sales Techniques', 'Human Resources',
    '2026-04-16 15:58:00', 99, '2 weeks ago', 1807, 80,
    '2026-06-06', 'Low', 'Judy Greenholt is currently enrolled in Advanced Sales Techniques. 99% complete. Performance is 80% on average for quizzes. Risk level is evaluated as Low.', 27
  ),
  (
    293, 'Jameson Walter', 'jameson_walter73@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/35.jpg',
    4, 'Leadership & Management', 'Sales',
    '2026-04-30 15:03:49', 14, '1 month ago', 1312, 74,
    '2026-06-11', 'Medium', 'Jameson Walter is currently enrolled in Leadership & Management. 14% complete. Performance is 74% on average for quizzes. Risk level is evaluated as Medium.', 22
  ),
  (
    294, 'Easter Tromp', 'easter_tromp@yahoo.com', 'https://avatars.githubusercontent.com/u/8059957',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2026-04-10 15:48:00', 29, '1 month ago', 1140, 70,
    '2026-05-28', 'High', 'Easter Tromp is currently enrolled in Cloud Computing Fundamentals. 29% complete. Performance is 70% on average for quizzes. Risk level is evaluated as High.', 65
  ),
  (
    295, 'Daniel Carter', 'daniel.carter32@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/71.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2025-12-21 04:56:57', 27, '2 weeks ago', 897, 52,
    '2026-02-27', 'Medium', 'Daniel Carter is currently enrolled in Diversity and Inclusion in the Workplace. 27% complete. Performance is 52% on average for quizzes. Risk level is evaluated as Medium.', 52
  ),
  (
    296, 'Heidi Robel', 'heidi.robel19@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/23.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2025-12-22 10:24:27', 50, '1 week ago', 556, 58,
    '2026-03-12', 'Low', 'Heidi Robel is currently enrolled in Workplace Ethics & Code of Conduct. 50% complete. Performance is 58% on average for quizzes. Risk level is evaluated as Low.', 79
  ),
  (
    297, 'Elisa Schoen', 'elisa.schoen18@yahoo.com', 'https://avatars.githubusercontent.com/u/31696552',
    5, 'Diversity and Inclusion in the Workplace', 'Marketing',
    '2026-07-13 19:47:25', 70, 'Today', 405, 62,
    '2026-08-22', 'Low', 'Elisa Schoen is currently enrolled in Diversity and Inclusion in the Workplace. 70% complete. Performance is 62% on average for quizzes. Risk level is evaluated as Low.', 26
  ),
  (
    298, 'Clara Lang', 'clara_lang@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/32.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2025-12-26 05:41:10', 43, 'Today', 491, 50,
    '2026-03-20', 'Low', 'Clara Lang is currently enrolled in Diversity and Inclusion in the Workplace. 43% complete. Performance is 50% on average for quizzes. Risk level is evaluated as Low.', 69
  ),
  (
    299, 'Christian Mayert', 'christian.mayert34@yahoo.com', 'https://avatars.githubusercontent.com/u/84964661',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2026-07-08 11:20:48', 93, '1 month ago', 1083, 59,
    '2026-08-18', 'Medium', 'Christian Mayert is currently enrolled in Diversity and Inclusion in the Workplace. 93% complete. Performance is 59% on average for quizzes. Risk level is evaluated as Medium.', 57
  ),
  (
    300, 'Vickie Dare', 'vickie_dare68@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/47.jpg',
    7, 'Cloud Computing Fundamentals', 'Finance',
    '2026-02-18 20:49:06', 43, '1 week ago', 1081, 41,
    '2026-05-10', 'Medium', 'Vickie Dare is currently enrolled in Cloud Computing Fundamentals. 43% complete. Performance is 41% on average for quizzes. Risk level is evaluated as Medium.', 99
  ),
  (
    301, 'Lupe McGlynn', 'lupe_mcglynn@hotmail.com', 'https://avatars.githubusercontent.com/u/31709610',
    6, 'Advanced Sales Techniques', 'Engineering',
    '2026-01-04 11:41:17', 27, 'Today', 430, 61,
    '2026-02-09', 'Low', 'Lupe McGlynn is currently enrolled in Advanced Sales Techniques. 27% complete. Performance is 61% on average for quizzes. Risk level is evaluated as Low.', 41
  ),
  (
    302, 'Queenie Schiller', 'queenie.schiller86@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/87.jpg',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2026-07-19 02:00:52', 3, '1 month ago', 1996, 63,
    '2026-08-31', 'Low', 'Queenie Schiller is currently enrolled in Cloud Computing Fundamentals. 3% complete. Performance is 63% on average for quizzes. Risk level is evaluated as Low.', 78
  ),
  (
    303, 'Marlon McGlynn', 'marlon_mcglynn36@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/20.jpg',
    4, 'Leadership & Management', 'Finance',
    '2026-03-13 08:27:18', 46, 'Yesterday', 90, 42,
    '2026-04-13', 'Low', 'Marlon McGlynn is currently enrolled in Leadership & Management. 46% complete. Performance is 42% on average for quizzes. Risk level is evaluated as Low.', 5
  ),
  (
    304, 'Lia Grimes', 'lia_grimes40@yahoo.com', 'https://avatars.githubusercontent.com/u/60218438',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2025-09-05 21:46:39', 70, '1 month ago', 1978, 83,
    '2025-10-23', 'Low', 'Lia Grimes is currently enrolled in Cloud Computing Fundamentals. 70% complete. Performance is 83% on average for quizzes. Risk level is evaluated as Low.', 100
  ),
  (
    305, 'Maxwell Kuhic', 'maxwell_kuhic74@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/28.jpg',
    6, 'Advanced Sales Techniques', 'Finance',
    '2026-04-05 15:45:25', 95, 'Today', 1852, 58,
    '2026-05-28', 'High', 'Maxwell Kuhic is currently enrolled in Advanced Sales Techniques. 95% complete. Performance is 58% on average for quizzes. Risk level is evaluated as High.', 83
  ),
  (
    306, 'Delpha Buckridge', 'delpha.buckridge22@hotmail.com', 'https://avatars.githubusercontent.com/u/33832750',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2025-12-13 02:08:05', 46, '1 month ago', 1730, 47,
    '2026-02-08', 'Medium', 'Delpha Buckridge is currently enrolled in Cloud Computing Fundamentals. 46% complete. Performance is 47% on average for quizzes. Risk level is evaluated as Medium.', 97
  ),
  (
    307, 'Lindsay Davis', 'lindsay_davis@hotmail.com', 'https://avatars.githubusercontent.com/u/78073457',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2025-08-13 19:02:15', 88, 'Today', 498, 87,
    '2025-09-16', 'High', 'Lindsay Davis is currently enrolled in Data Privacy and GDPR. 88% complete. Performance is 87% on average for quizzes. Risk level is evaluated as High.', 73
  ),
  (
    308, 'Rahsaan Auer', 'rahsaan.auer@hotmail.com', 'https://avatars.githubusercontent.com/u/50455953',
    3, 'Data Privacy and GDPR', 'Sales',
    '2026-07-02 16:33:59', 99, '2 days ago', 1694, 93,
    '2026-09-06', 'Low', 'Rahsaan Auer is currently enrolled in Data Privacy and GDPR. 99% complete. Performance is 93% on average for quizzes. Risk level is evaluated as Low.', 37
  ),
  (
    309, 'Noel Greenholt', 'noel.greenholt@yahoo.com', 'https://avatars.githubusercontent.com/u/47034529',
    4, 'Leadership & Management', 'Customer Support',
    '2025-08-08 01:48:44', 47, 'Today', 168, 60,
    '2025-09-09', 'Low', 'Noel Greenholt is currently enrolled in Leadership & Management. 47% complete. Performance is 60% on average for quizzes. Risk level is evaluated as Low.', 15
  ),
  (
    310, 'Leonel Littel', 'leonel_littel@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/50.jpg',
    7, 'Cloud Computing Fundamentals', 'Marketing',
    '2026-03-11 03:00:05', 50, 'Yesterday', 854, 91,
    '2026-05-05', 'Low', 'Leonel Littel is currently enrolled in Cloud Computing Fundamentals. 50% complete. Performance is 91% on average for quizzes. Risk level is evaluated as Low.', 8
  ),
  (
    311, 'Tressa Keeling', 'tressa_keeling76@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/93.jpg',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2025-11-29 14:31:47', 55, '1 week ago', 1343, 60,
    '2026-02-03', 'Medium', 'Tressa Keeling is currently enrolled in Cloud Computing Fundamentals. 55% complete. Performance is 60% on average for quizzes. Risk level is evaluated as Medium.', 84
  ),
  (
    312, 'Pink Roberts', 'pink.roberts4@yahoo.com', 'https://avatars.githubusercontent.com/u/44456085',
    6, 'Advanced Sales Techniques', 'Marketing',
    '2025-09-25 05:09:11', 60, '1 week ago', 1359, 67,
    '2025-12-09', 'Low', 'Pink Roberts is currently enrolled in Advanced Sales Techniques. 60% complete. Performance is 67% on average for quizzes. Risk level is evaluated as Low.', 48
  ),
  (
    313, 'Estrella Rath', 'estrella.rath@yahoo.com', 'https://avatars.githubusercontent.com/u/87790862',
    6, 'Advanced Sales Techniques', 'Operations',
    '2026-08-03 08:31:09', 81, '2 weeks ago', 1990, 70,
    '2026-09-26', 'Medium', 'Estrella Rath is currently enrolled in Advanced Sales Techniques. 81% complete. Performance is 70% on average for quizzes. Risk level is evaluated as Medium.', 73
  ),
  (
    314, 'Lindsey Johns', 'lindsey_johns@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/39.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Sales',
    '2026-02-24 17:46:57', 78, '1 week ago', 951, 79,
    '2026-04-22', 'Medium', 'Lindsey Johns is currently enrolled in Workplace Ethics & Code of Conduct. 78% complete. Performance is 79% on average for quizzes. Risk level is evaluated as Medium.', 7
  ),
  (
    315, 'Joe Bosco', 'joe.bosco73@gmail.com', 'https://avatars.githubusercontent.com/u/77807471',
    3, 'Data Privacy and GDPR', 'Operations',
    '2025-11-25 11:52:04', 63, '3 days ago', 814, 44,
    '2026-02-07', 'Medium', 'Joe Bosco is currently enrolled in Data Privacy and GDPR. 63% complete. Performance is 44% on average for quizzes. Risk level is evaluated as Medium.', 20
  ),
  (
    316, 'Eloise Cassin', 'eloise_cassin24@hotmail.com', 'https://avatars.githubusercontent.com/u/70037456',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2025-11-02 15:29:25', 57, '3 days ago', 974, 47,
    '2025-12-24', 'Low', 'Eloise Cassin is currently enrolled in Workplace Ethics & Code of Conduct. 57% complete. Performance is 47% on average for quizzes. Risk level is evaluated as Low.', 33
  ),
  (
    317, 'Omar Boyer', 'omar_boyer86@yahoo.com', 'https://avatars.githubusercontent.com/u/51273793',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2025-12-27 19:32:17', 77, '1 month ago', 820, 94,
    '2026-03-16', 'Medium', 'Omar Boyer is currently enrolled in Diversity and Inclusion in the Workplace. 77% complete. Performance is 94% on average for quizzes. Risk level is evaluated as Medium.', 44
  ),
  (
    318, 'Amos Lubowitz', 'amos.lubowitz@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/26.jpg',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2026-07-03 10:14:22', 29, '2 days ago', 870, 66,
    '2026-08-04', 'Medium', 'Amos Lubowitz is currently enrolled in Data Privacy and GDPR. 29% complete. Performance is 66% on average for quizzes. Risk level is evaluated as Medium.', 76
  ),
  (
    319, 'Ben Ullrich', 'ben_ullrich74@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/91.jpg',
    4, 'Leadership & Management', 'Marketing',
    '2026-04-06 11:03:42', 37, '2 weeks ago', 1847, 52,
    '2026-06-24', 'High', 'Ben Ullrich is currently enrolled in Leadership & Management. 37% complete. Performance is 52% on average for quizzes. Risk level is evaluated as High.', 49
  ),
  (
    320, 'Silvia Bogisich', 'silvia_bogisich76@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/29.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Human Resources',
    '2025-09-09 01:41:16', 36, '1 week ago', 54, 40,
    '2025-11-26', 'Low', 'Silvia Bogisich is currently enrolled in Diversity and Inclusion in the Workplace. 36% complete. Performance is 40% on average for quizzes. Risk level is evaluated as Low.', 49
  ),
  (
    321, 'Gordon Okuneva', 'gordon_okuneva37@hotmail.com', 'https://avatars.githubusercontent.com/u/728932',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2026-02-13 13:20:36', 57, '2 days ago', 1579, 79,
    '2026-05-10', 'Low', 'Gordon Okuneva is currently enrolled in Data Privacy and GDPR. 57% complete. Performance is 79% on average for quizzes. Risk level is evaluated as Low.', 14
  ),
  (
    322, 'Jill Bode', 'jill_bode@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/41.jpg',
    6, 'Advanced Sales Techniques', 'Finance',
    '2026-04-02 07:45:47', 25, '2 weeks ago', 1167, 63,
    '2026-05-03', 'Medium', 'Jill Bode is currently enrolled in Advanced Sales Techniques. 25% complete. Performance is 63% on average for quizzes. Risk level is evaluated as Medium.', 44
  ),
  (
    323, 'Blaze Nicolas', 'blaze_nicolas@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/57.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Sales',
    '2026-05-19 00:10:16', 66, '2 days ago', 676, 60,
    '2026-07-17', 'Medium', 'Blaze Nicolas is currently enrolled in Diversity and Inclusion in the Workplace. 66% complete. Performance is 60% on average for quizzes. Risk level is evaluated as Medium.', 33
  ),
  (
    324, 'Marques Klein', 'marques_klein@gmail.com', 'https://avatars.githubusercontent.com/u/32342221',
    5, 'Diversity and Inclusion in the Workplace', 'Sales',
    '2025-12-25 12:33:37', 60, 'Today', 420, 46,
    '2026-02-22', 'Low', 'Marques Klein is currently enrolled in Diversity and Inclusion in the Workplace. 60% complete. Performance is 46% on average for quizzes. Risk level is evaluated as Low.', 90
  ),
  (
    325, 'Kevin Rodriguez', 'kevin.rodriguez@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/45.jpg',
    6, 'Advanced Sales Techniques', 'Sales',
    '2026-04-13 02:20:20', 24, '1 month ago', 924, 100,
    '2026-05-30', 'Low', 'Kevin Rodriguez is currently enrolled in Advanced Sales Techniques. 24% complete. Performance is 100% on average for quizzes. Risk level is evaluated as Low.', 99
  ),
  (
    326, 'Cathy Vandervort', 'cathy.vandervort@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/47.jpg',
    4, 'Leadership & Management', 'Operations',
    '2026-01-13 13:33:30', 53, '2 days ago', 1829, 64,
    '2026-04-13', 'Medium', 'Cathy Vandervort is currently enrolled in Leadership & Management. 53% complete. Performance is 64% on average for quizzes. Risk level is evaluated as Medium.', 68
  ),
  (
    327, 'Neil Nolan', 'neil_nolan48@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/19.jpg',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2025-11-10 01:37:22', 25, '3 days ago', 917, 43,
    '2025-12-10', 'High', 'Neil Nolan is currently enrolled in Cybersecurity Awareness. 25% complete. Performance is 43% on average for quizzes. Risk level is evaluated as High.', 70
  ),
  (
    328, 'Vickie Muller', 'vickie_muller90@hotmail.com', 'https://avatars.githubusercontent.com/u/99972815',
    6, 'Advanced Sales Techniques', 'Customer Support',
    '2025-10-10 23:04:52', 91, '1 week ago', 147, 84,
    '2025-12-20', 'High', 'Vickie Muller is currently enrolled in Advanced Sales Techniques. 91% complete. Performance is 84% on average for quizzes. Risk level is evaluated as High.', 61
  ),
  (
    329, 'Myrtle Raynor-Rau', 'myrtle_raynor-rau@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/83.jpg',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2026-01-28 02:51:00', 31, '2 weeks ago', 1923, 51,
    '2026-04-08', 'Medium', 'Myrtle Raynor-Rau is currently enrolled in Cybersecurity Awareness. 31% complete. Performance is 51% on average for quizzes. Risk level is evaluated as Medium.', 71
  ),
  (
    330, 'Tracey Fadel', 'tracey.fadel@yahoo.com', 'https://avatars.githubusercontent.com/u/56393594',
    2, 'Workplace Ethics & Code of Conduct', 'Operations',
    '2026-04-30 19:26:52', 55, '2 weeks ago', 1518, 63,
    '2026-07-22', 'Low', 'Tracey Fadel is currently enrolled in Workplace Ethics & Code of Conduct. 55% complete. Performance is 63% on average for quizzes. Risk level is evaluated as Low.', 80
  ),
  (
    331, 'Leroy Howe', 'leroy.howe28@yahoo.com', 'https://avatars.githubusercontent.com/u/49442074',
    4, 'Leadership & Management', 'Marketing',
    '2025-11-12 17:17:26', 41, '1 month ago', 1164, 80,
    '2026-02-10', 'High', 'Leroy Howe is currently enrolled in Leadership & Management. 41% complete. Performance is 80% on average for quizzes. Risk level is evaluated as High.', 10
  ),
  (
    332, 'Angela Johnston', 'angela_johnston@hotmail.com', 'https://avatars.githubusercontent.com/u/49428064',
    7, 'Cloud Computing Fundamentals', 'Sales',
    '2025-11-01 06:10:46', 60, 'Today', 880, 87,
    '2026-01-19', 'Low', 'Angela Johnston is currently enrolled in Cloud Computing Fundamentals. 60% complete. Performance is 87% on average for quizzes. Risk level is evaluated as Low.', 1
  ),
  (
    333, 'Rashawn Mann', 'rashawn_mann57@yahoo.com', 'https://avatars.githubusercontent.com/u/31691652',
    4, 'Leadership & Management', 'Operations',
    '2026-01-14 23:11:00', 12, 'Yesterday', 1869, 98,
    '2026-03-26', 'Low', 'Rashawn Mann is currently enrolled in Leadership & Management. 12% complete. Performance is 98% on average for quizzes. Risk level is evaluated as Low.', 84
  ),
  (
    334, 'Rodolfo Koelpin', 'rodolfo.koelpin@gmail.com', 'https://avatars.githubusercontent.com/u/79576595',
    2, 'Workplace Ethics & Code of Conduct', 'Sales',
    '2025-10-03 20:36:32', 73, '2 weeks ago', 1192, 68,
    '2025-11-16', 'High', 'Rodolfo Koelpin is currently enrolled in Workplace Ethics & Code of Conduct. 73% complete. Performance is 68% on average for quizzes. Risk level is evaluated as High.', 53
  ),
  (
    335, 'Ephraim Walter-Ortiz', 'ephraim.walter-ortiz@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/9.jpg',
    6, 'Advanced Sales Techniques', 'Engineering',
    '2026-01-05 20:08:41', 0, 'Today', 500, 48,
    '2026-02-09', 'Low', 'Ephraim Walter-Ortiz is currently enrolled in Advanced Sales Techniques. 0% complete. Performance is 48% on average for quizzes. Risk level is evaluated as Low.', 5
  ),
  (
    336, 'Mona Beer', 'mona.beer54@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/32.jpg',
    7, 'Cloud Computing Fundamentals', 'Sales',
    '2026-04-07 11:37:49', 11, '2 days ago', 755, 68,
    '2026-05-16', 'Medium', 'Mona Beer is currently enrolled in Cloud Computing Fundamentals. 11% complete. Performance is 68% on average for quizzes. Risk level is evaluated as Medium.', 78
  ),
  (
    337, 'Donald Corkery', 'donald_corkery68@gmail.com', 'https://avatars.githubusercontent.com/u/69731776',
    3, 'Data Privacy and GDPR', 'Operations',
    '2025-08-08 07:28:47', 82, 'Yesterday', 709, 61,
    '2025-10-22', 'Low', 'Donald Corkery is currently enrolled in Data Privacy and GDPR. 82% complete. Performance is 61% on average for quizzes. Risk level is evaluated as Low.', 97
  ),
  (
    338, 'Otilia Wiza', 'otilia_wiza42@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/9.jpg',
    6, 'Advanced Sales Techniques', 'Human Resources',
    '2025-11-23 22:15:27', 100, 'Yesterday', 1297, 71,
    '2026-01-18', 'Medium', 'Otilia Wiza is currently enrolled in Advanced Sales Techniques. 100% complete. Performance is 71% on average for quizzes. Risk level is evaluated as Medium.', 38
  ),
  (
    339, 'Marguerite Rohan', 'marguerite_rohan59@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/33.jpg',
    3, 'Data Privacy and GDPR', 'Operations',
    '2026-01-17 00:00:15', 55, 'Yesterday', 1720, 88,
    '2026-04-02', 'Medium', 'Marguerite Rohan is currently enrolled in Data Privacy and GDPR. 55% complete. Performance is 88% on average for quizzes. Risk level is evaluated as Medium.', 40
  ),
  (
    340, 'Olive Osinski', 'olive_osinski91@yahoo.com', 'https://avatars.githubusercontent.com/u/61566799',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2026-02-20 09:36:27', 4, '1 week ago', 1960, 51,
    '2026-04-09', 'Medium', 'Olive Osinski is currently enrolled in Cloud Computing Fundamentals. 4% complete. Performance is 51% on average for quizzes. Risk level is evaluated as Medium.', 16
  ),
  (
    341, 'Allene Ziemann', 'allene_ziemann@gmail.com', 'https://avatars.githubusercontent.com/u/38273523',
    1, 'Cybersecurity Awareness', 'Finance',
    '2025-08-13 08:52:29', 19, '2 days ago', 1781, 65,
    '2025-10-15', 'Low', 'Allene Ziemann is currently enrolled in Cybersecurity Awareness. 19% complete. Performance is 65% on average for quizzes. Risk level is evaluated as Low.', 5
  ),
  (
    342, 'Henrietta Cormier', 'henrietta.cormier@yahoo.com', 'https://avatars.githubusercontent.com/u/97487003',
    1, 'Cybersecurity Awareness', 'Operations',
    '2025-09-03 15:17:44', 92, '1 month ago', 126, 55,
    '2025-11-08', 'Medium', 'Henrietta Cormier is currently enrolled in Cybersecurity Awareness. 92% complete. Performance is 55% on average for quizzes. Risk level is evaluated as Medium.', 36
  ),
  (
    343, 'Rene Kiehn', 'rene.kiehn10@yahoo.com', 'https://avatars.githubusercontent.com/u/49573549',
    7, 'Cloud Computing Fundamentals', 'Marketing',
    '2026-03-12 06:55:29', 64, '1 month ago', 752, 42,
    '2026-04-21', 'Low', 'Rene Kiehn is currently enrolled in Cloud Computing Fundamentals. 64% complete. Performance is 42% on average for quizzes. Risk level is evaluated as Low.', 44
  ),
  (
    344, 'Janick Hauck', 'janick.hauck@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/2.jpg',
    3, 'Data Privacy and GDPR', 'Finance',
    '2026-01-13 06:41:26', 33, '1 month ago', 149, 59,
    '2026-03-18', 'Low', 'Janick Hauck is currently enrolled in Data Privacy and GDPR. 33% complete. Performance is 59% on average for quizzes. Risk level is evaluated as Low.', 14
  ),
  (
    345, 'Alexander Parker', 'alexander_parker14@gmail.com', 'https://avatars.githubusercontent.com/u/1137982',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2026-06-13 23:34:59', 3, '3 days ago', 628, 69,
    '2026-07-13', 'Medium', 'Alexander Parker is currently enrolled in Workplace Ethics & Code of Conduct. 3% complete. Performance is 69% on average for quizzes. Risk level is evaluated as Medium.', 100
  ),
  (
    346, 'Nick Hickle', 'nick_hickle11@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/4.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2025-11-07 01:17:02', 34, 'Yesterday', 449, 48,
    '2026-02-02', 'Low', 'Nick Hickle is currently enrolled in Workplace Ethics & Code of Conduct. 34% complete. Performance is 48% on average for quizzes. Risk level is evaluated as Low.', 73
  ),
  (
    347, 'Shawna Gleichner', 'shawna_gleichner@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/80.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Engineering',
    '2025-09-24 03:57:11', 30, '3 days ago', 538, 43,
    '2025-12-01', 'Medium', 'Shawna Gleichner is currently enrolled in Workplace Ethics & Code of Conduct. 30% complete. Performance is 43% on average for quizzes. Risk level is evaluated as Medium.', 41
  ),
  (
    348, 'Mario Rau', 'mario_rau13@gmail.com', 'https://avatars.githubusercontent.com/u/29027988',
    3, 'Data Privacy and GDPR', 'Sales',
    '2025-09-08 22:08:48', 2, '1 month ago', 1851, 40,
    '2025-11-20', 'Low', 'Mario Rau is currently enrolled in Data Privacy and GDPR. 2% complete. Performance is 40% on average for quizzes. Risk level is evaluated as Low.', 41
  ),
  (
    349, 'Vernon Langosh-Kub', 'vernon_langosh-kub@yahoo.com', 'https://avatars.githubusercontent.com/u/80432289',
    3, 'Data Privacy and GDPR', 'Operations',
    '2025-08-11 22:25:02', 8, '2 days ago', 222, 43,
    '2025-10-05', 'Low', 'Vernon Langosh-Kub is currently enrolled in Data Privacy and GDPR. 8% complete. Performance is 43% on average for quizzes. Risk level is evaluated as Low.', 60
  ),
  (
    350, 'Esperanza Runolfsson', 'esperanza.runolfsson@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/53.jpg',
    4, 'Leadership & Management', 'Finance',
    '2026-01-20 07:23:01', 10, '2 days ago', 1473, 47,
    '2026-04-15', 'High', 'Esperanza Runolfsson is currently enrolled in Leadership & Management. 10% complete. Performance is 47% on average for quizzes. Risk level is evaluated as High.', 66
  ),
  (
    351, 'Lily Torphy', 'lily_torphy48@gmail.com', 'https://avatars.githubusercontent.com/u/75792337',
    2, 'Workplace Ethics & Code of Conduct', 'Engineering',
    '2026-07-05 18:47:11', 72, '3 days ago', 1077, 61,
    '2026-08-13', 'High', 'Lily Torphy is currently enrolled in Workplace Ethics & Code of Conduct. 72% complete. Performance is 61% on average for quizzes. Risk level is evaluated as High.', 34
  ),
  (
    352, 'Kirk Cartwright', 'kirk_cartwright@yahoo.com', 'https://avatars.githubusercontent.com/u/78794250',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2026-06-02 21:34:50', 89, 'Yesterday', 1409, 41,
    '2026-07-22', 'Low', 'Kirk Cartwright is currently enrolled in Cloud Computing Fundamentals. 89% complete. Performance is 41% on average for quizzes. Risk level is evaluated as Low.', 41
  ),
  (
    353, 'Emanuel Paucek', 'emanuel_paucek24@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/80.jpg',
    6, 'Advanced Sales Techniques', 'Sales',
    '2026-05-27 08:16:44', 51, 'Yesterday', 1056, 62,
    '2026-08-04', 'Low', 'Emanuel Paucek is currently enrolled in Advanced Sales Techniques. 51% complete. Performance is 62% on average for quizzes. Risk level is evaluated as Low.', 5
  ),
  (
    354, 'Shad Nicolas', 'shad_nicolas@hotmail.com', 'https://avatars.githubusercontent.com/u/21979065',
    2, 'Workplace Ethics & Code of Conduct', 'Engineering',
    '2025-09-13 03:35:37', 35, '2 days ago', 252, 86,
    '2025-12-07', 'Low', 'Shad Nicolas is currently enrolled in Workplace Ethics & Code of Conduct. 35% complete. Performance is 86% on average for quizzes. Risk level is evaluated as Low.', 86
  ),
  (
    355, 'Vanessa Funk', 'vanessa_funk29@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/90.jpg',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2026-05-22 01:50:41', 19, '2 weeks ago', 1358, 94,
    '2026-07-01', 'Medium', 'Vanessa Funk is currently enrolled in Cybersecurity Awareness. 19% complete. Performance is 94% on average for quizzes. Risk level is evaluated as Medium.', 17
  ),
  (
    356, 'Hans Kemmer', 'hans.kemmer94@yahoo.com', 'https://avatars.githubusercontent.com/u/18070309',
    5, 'Diversity and Inclusion in the Workplace', 'Sales',
    '2025-09-17 13:02:23', 46, '3 days ago', 1932, 76,
    '2025-10-20', 'Medium', 'Hans Kemmer is currently enrolled in Diversity and Inclusion in the Workplace. 46% complete. Performance is 76% on average for quizzes. Risk level is evaluated as Medium.', 49
  ),
  (
    357, 'Ladarius Prohaska', 'ladarius_prohaska13@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/91.jpg',
    4, 'Leadership & Management', 'Marketing',
    '2026-02-09 18:09:41', 28, '2 weeks ago', 201, 43,
    '2026-03-29', 'High', 'Ladarius Prohaska is currently enrolled in Leadership & Management. 28% complete. Performance is 43% on average for quizzes. Risk level is evaluated as High.', 80
  ),
  (
    358, 'Tyrone Bradtke', 'tyrone_bradtke21@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/7.jpg',
    4, 'Leadership & Management', 'Human Resources',
    '2025-11-24 13:12:07', 84, '1 month ago', 139, 58,
    '2026-01-25', 'Medium', 'Tyrone Bradtke is currently enrolled in Leadership & Management. 84% complete. Performance is 58% on average for quizzes. Risk level is evaluated as Medium.', 29
  ),
  (
    359, 'Jessyca Morissette', 'jessyca.morissette16@gmail.com', 'https://avatars.githubusercontent.com/u/43206375',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2026-07-27 17:59:51', 88, '3 days ago', 316, 65,
    '2026-09-08', 'Medium', 'Jessyca Morissette is currently enrolled in Data Privacy and GDPR. 88% complete. Performance is 65% on average for quizzes. Risk level is evaluated as Medium.', 31
  ),
  (
    360, 'Patricia Bradtke', 'patricia.bradtke46@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/95.jpg',
    7, 'Cloud Computing Fundamentals', 'Finance',
    '2025-12-15 18:16:01', 89, '2 days ago', 530, 71,
    '2026-02-22', 'High', 'Patricia Bradtke is currently enrolled in Cloud Computing Fundamentals. 89% complete. Performance is 71% on average for quizzes. Risk level is evaluated as High.', 47
  ),
  (
    361, 'Jerod Harvey', 'jerod.harvey62@yahoo.com', 'https://avatars.githubusercontent.com/u/26149008',
    1, 'Cybersecurity Awareness', 'Operations',
    '2026-03-16 16:19:06', 28, '2 weeks ago', 1181, 76,
    '2026-05-28', 'Low', 'Jerod Harvey is currently enrolled in Cybersecurity Awareness. 28% complete. Performance is 76% on average for quizzes. Risk level is evaluated as Low.', 69
  ),
  (
    362, 'Denise Shields', 'denise.shields80@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/55.jpg',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2025-11-30 10:52:08', 80, '2 weeks ago', 308, 71,
    '2026-02-05', 'High', 'Denise Shields is currently enrolled in Data Privacy and GDPR. 80% complete. Performance is 71% on average for quizzes. Risk level is evaluated as High.', 37
  ),
  (
    363, 'Jimmy Bednar', 'jimmy_bednar@yahoo.com', 'https://avatars.githubusercontent.com/u/5819263',
    4, 'Leadership & Management', 'Sales',
    '2026-03-28 10:42:51', 25, 'Yesterday', 1920, 47,
    '2026-06-22', 'Low', 'Jimmy Bednar is currently enrolled in Leadership & Management. 25% complete. Performance is 47% on average for quizzes. Risk level is evaluated as Low.', 92
  ),
  (
    364, 'Yolanda Botsford', 'yolanda.botsford33@yahoo.com', 'https://avatars.githubusercontent.com/u/11617427',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2026-04-03 06:59:44', 32, '2 days ago', 527, 54,
    '2026-06-19', 'Medium', 'Yolanda Botsford is currently enrolled in Cloud Computing Fundamentals. 32% complete. Performance is 54% on average for quizzes. Risk level is evaluated as Medium.', 19
  ),
  (
    365, 'Ola Mayer', 'ola.mayer23@hotmail.com', 'https://avatars.githubusercontent.com/u/97941098',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2026-01-27 02:18:59', 5, '1 week ago', 599, 65,
    '2026-03-15', 'Low', 'Ola Mayer is currently enrolled in Cybersecurity Awareness. 5% complete. Performance is 65% on average for quizzes. Risk level is evaluated as Low.', 36
  ),
  (
    366, 'Cletus Buckridge', 'cletus_buckridge93@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/53.jpg',
    1, 'Cybersecurity Awareness', 'Operations',
    '2025-09-07 08:40:44', 40, '3 days ago', 1325, 91,
    '2025-12-06', 'Medium', 'Cletus Buckridge is currently enrolled in Cybersecurity Awareness. 40% complete. Performance is 91% on average for quizzes. Risk level is evaluated as Medium.', 51
  ),
  (
    367, 'Gaetano Rodriguez', 'gaetano.rodriguez@hotmail.com', 'https://avatars.githubusercontent.com/u/43484286',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2025-10-28 04:40:11', 40, '1 week ago', 322, 72,
    '2026-01-22', 'Medium', 'Gaetano Rodriguez is currently enrolled in Cybersecurity Awareness. 40% complete. Performance is 72% on average for quizzes. Risk level is evaluated as Medium.', 43
  ),
  (
    368, 'Lou Thiel', 'lou.thiel32@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/16.jpg',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2026-06-28 22:10:26', 50, 'Yesterday', 1764, 68,
    '2026-09-07', 'High', 'Lou Thiel is currently enrolled in Cloud Computing Fundamentals. 50% complete. Performance is 68% on average for quizzes. Risk level is evaluated as High.', 4
  ),
  (
    369, 'Emanuel Becker', 'emanuel.becker@hotmail.com', 'https://avatars.githubusercontent.com/u/37327604',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2025-10-12 03:55:52', 54, 'Yesterday', 1688, 57,
    '2025-12-20', 'Low', 'Emanuel Becker is currently enrolled in Workplace Ethics & Code of Conduct. 54% complete. Performance is 57% on average for quizzes. Risk level is evaluated as Low.', 54
  ),
  (
    370, 'Joann Ledner', 'joann.ledner@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/51.jpg',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2026-03-19 05:03:00', 43, '2 weeks ago', 1188, 90,
    '2026-06-12', 'Low', 'Joann Ledner is currently enrolled in Cybersecurity Awareness. 43% complete. Performance is 90% on average for quizzes. Risk level is evaluated as Low.', 3
  ),
  (
    371, 'Molly Rau', 'molly.rau22@hotmail.com', 'https://avatars.githubusercontent.com/u/11896594',
    5, 'Diversity and Inclusion in the Workplace', 'Marketing',
    '2025-11-09 16:42:15', 16, '2 days ago', 1621, 55,
    '2026-01-01', 'Low', 'Molly Rau is currently enrolled in Diversity and Inclusion in the Workplace. 16% complete. Performance is 55% on average for quizzes. Risk level is evaluated as Low.', 82
  ),
  (
    372, 'Elna Krajcik', 'elna_krajcik75@gmail.com', 'https://avatars.githubusercontent.com/u/97707550',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2026-05-23 03:55:24', 76, '1 week ago', 145, 53,
    '2026-07-24', 'Medium', 'Elna Krajcik is currently enrolled in Workplace Ethics & Code of Conduct. 76% complete. Performance is 53% on average for quizzes. Risk level is evaluated as Medium.', 87
  ),
  (
    373, 'Jerry Douglas', 'jerry_douglas81@yahoo.com', 'https://avatars.githubusercontent.com/u/21838197',
    2, 'Workplace Ethics & Code of Conduct', 'Engineering',
    '2025-08-14 01:41:10', 52, '1 month ago', 725, 55,
    '2025-10-18', 'High', 'Jerry Douglas is currently enrolled in Workplace Ethics & Code of Conduct. 52% complete. Performance is 55% on average for quizzes. Risk level is evaluated as High.', 38
  ),
  (
    374, 'Veda Wolf', 'veda_wolf58@hotmail.com', 'https://avatars.githubusercontent.com/u/53526938',
    2, 'Workplace Ethics & Code of Conduct', 'Engineering',
    '2026-05-05 00:58:59', 17, '2 weeks ago', 1323, 53,
    '2026-07-02', 'Low', 'Veda Wolf is currently enrolled in Workplace Ethics & Code of Conduct. 17% complete. Performance is 53% on average for quizzes. Risk level is evaluated as Low.', 96
  ),
  (
    375, 'Everette Nienow', 'everette.nienow72@gmail.com', 'https://avatars.githubusercontent.com/u/99118702',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2026-07-31 18:47:27', 70, '3 days ago', 1378, 65,
    '2026-09-04', 'Medium', 'Everette Nienow is currently enrolled in Cybersecurity Awareness. 70% complete. Performance is 65% on average for quizzes. Risk level is evaluated as Medium.', 38
  ),
  (
    376, 'Gregorio Kohler', 'gregorio.kohler85@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/4.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Engineering',
    '2026-01-03 23:55:34', 60, '2 weeks ago', 519, 74,
    '2026-03-15', 'High', 'Gregorio Kohler is currently enrolled in Workplace Ethics & Code of Conduct. 60% complete. Performance is 74% on average for quizzes. Risk level is evaluated as High.', 54
  ),
  (
    377, 'Elsie Haley', 'elsie_haley55@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/97.jpg',
    7, 'Cloud Computing Fundamentals', 'Operations',
    '2026-04-06 04:11:37', 4, '3 days ago', 993, 66,
    '2026-05-15', 'Low', 'Elsie Haley is currently enrolled in Cloud Computing Fundamentals. 4% complete. Performance is 66% on average for quizzes. Risk level is evaluated as Low.', 97
  ),
  (
    378, 'Tony Corwin', 'tony.corwin@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/84.jpg',
    3, 'Data Privacy and GDPR', 'Sales',
    '2025-09-20 00:29:26', 85, 'Today', 565, 43,
    '2025-11-16', 'Low', 'Tony Corwin is currently enrolled in Data Privacy and GDPR. 85% complete. Performance is 43% on average for quizzes. Risk level is evaluated as Low.', 87
  ),
  (
    379, 'Delphine Bayer', 'delphine.bayer@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/10.jpg',
    7, 'Cloud Computing Fundamentals', 'Finance',
    '2025-08-31 08:48:45', 62, '3 days ago', 165, 58,
    '2025-11-14', 'Low', 'Delphine Bayer is currently enrolled in Cloud Computing Fundamentals. 62% complete. Performance is 58% on average for quizzes. Risk level is evaluated as Low.', 9
  ),
  (
    380, 'Walker Jast-Erdman', 'walker.jast-erdman2@hotmail.com', 'https://avatars.githubusercontent.com/u/4247938',
    7, 'Cloud Computing Fundamentals', 'Operations',
    '2026-06-28 09:45:19', 61, 'Today', 1545, 51,
    '2026-09-11', 'Low', 'Walker Jast-Erdman is currently enrolled in Cloud Computing Fundamentals. 61% complete. Performance is 51% on average for quizzes. Risk level is evaluated as Low.', 3
  ),
  (
    381, 'Georgiana Raynor', 'georgiana_raynor45@hotmail.com', 'https://avatars.githubusercontent.com/u/2402040',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2026-06-03 04:06:21', 43, '2 days ago', 600, 93,
    '2026-08-04', 'Medium', 'Georgiana Raynor is currently enrolled in Cloud Computing Fundamentals. 43% complete. Performance is 93% on average for quizzes. Risk level is evaluated as Medium.', 36
  ),
  (
    382, 'Amanda Armstrong', 'amanda_armstrong70@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/49.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2025-09-14 19:44:28', 84, '3 days ago', 1703, 84,
    '2025-10-20', 'Low', 'Amanda Armstrong is currently enrolled in Diversity and Inclusion in the Workplace. 84% complete. Performance is 84% on average for quizzes. Risk level is evaluated as Low.', 83
  ),
  (
    383, 'Johnson Schumm', 'johnson.schumm35@yahoo.com', 'https://avatars.githubusercontent.com/u/72254021',
    4, 'Leadership & Management', 'Sales',
    '2026-01-23 07:57:59', 47, '3 days ago', 1615, 46,
    '2026-03-09', 'Low', 'Johnson Schumm is currently enrolled in Leadership & Management. 47% complete. Performance is 46% on average for quizzes. Risk level is evaluated as Low.', 30
  ),
  (
    384, 'Akeem Brakus', 'akeem_brakus51@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/75.jpg',
    4, 'Leadership & Management', 'Engineering',
    '2025-11-14 22:21:02', 19, '1 week ago', 1963, 93,
    '2026-01-05', 'Medium', 'Akeem Brakus is currently enrolled in Leadership & Management. 19% complete. Performance is 93% on average for quizzes. Risk level is evaluated as Medium.', 88
  ),
  (
    385, 'Marjorie Mitchell', 'marjorie_mitchell33@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/6.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2026-04-05 05:07:47', 1, 'Today', 1600, 70,
    '2026-07-02', 'High', 'Marjorie Mitchell is currently enrolled in Diversity and Inclusion in the Workplace. 1% complete. Performance is 70% on average for quizzes. Risk level is evaluated as High.', 17
  ),
  (
    386, 'Sheryl Kuhlman', 'sheryl_kuhlman@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/58.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2025-08-29 12:19:33', 63, '3 days ago', 1911, 96,
    '2025-10-11', 'Medium', 'Sheryl Kuhlman is currently enrolled in Diversity and Inclusion in the Workplace. 63% complete. Performance is 96% on average for quizzes. Risk level is evaluated as Medium.', 90
  ),
  (
    387, 'Rey Sauer', 'rey.sauer@hotmail.com', 'https://avatars.githubusercontent.com/u/19426625',
    3, 'Data Privacy and GDPR', 'Finance',
    '2025-09-02 21:41:34', 52, '2 days ago', 1014, 63,
    '2025-10-19', 'High', 'Rey Sauer is currently enrolled in Data Privacy and GDPR. 52% complete. Performance is 63% on average for quizzes. Risk level is evaluated as High.', 90
  ),
  (
    388, 'Rosalee Auer', 'rosalee.auer@hotmail.com', 'https://avatars.githubusercontent.com/u/39448429',
    4, 'Leadership & Management', 'Customer Support',
    '2026-07-13 14:52:50', 66, 'Today', 568, 47,
    '2026-09-08', 'Medium', 'Rosalee Auer is currently enrolled in Leadership & Management. 66% complete. Performance is 47% on average for quizzes. Risk level is evaluated as Medium.', 28
  ),
  (
    389, 'Vanessa Kuphal', 'vanessa_kuphal@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/47.jpg',
    1, 'Cybersecurity Awareness', 'Sales',
    '2026-07-10 03:37:27', 21, 'Today', 1293, 92,
    '2026-08-11', 'High', 'Vanessa Kuphal is currently enrolled in Cybersecurity Awareness. 21% complete. Performance is 92% on average for quizzes. Risk level is evaluated as High.', 32
  ),
  (
    390, 'Ira Hessel', 'ira.hessel@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/96.jpg',
    7, 'Cloud Computing Fundamentals', 'Finance',
    '2025-12-11 05:09:21', 58, 'Today', 241, 76,
    '2026-02-26', 'Medium', 'Ira Hessel is currently enrolled in Cloud Computing Fundamentals. 58% complete. Performance is 76% on average for quizzes. Risk level is evaluated as Medium.', 18
  ),
  (
    391, 'Carolyn Rosenbaum', 'carolyn_rosenbaum32@hotmail.com', 'https://avatars.githubusercontent.com/u/39411613',
    6, 'Advanced Sales Techniques', 'Customer Support',
    '2026-05-03 23:05:17', 100, '1 month ago', 526, 72,
    '2026-07-11', 'Medium', 'Carolyn Rosenbaum is currently enrolled in Advanced Sales Techniques. 100% complete. Performance is 72% on average for quizzes. Risk level is evaluated as Medium.', 62
  ),
  (
    392, 'Lindsey Schneider-Schinner', 'lindsey_schneider-schinner17@hotmail.com', 'https://avatars.githubusercontent.com/u/98811298',
    1, 'Cybersecurity Awareness', 'Sales',
    '2025-09-26 16:00:17', 58, '1 week ago', 1907, 61,
    '2025-12-15', 'Medium', 'Lindsey Schneider-Schinner is currently enrolled in Cybersecurity Awareness. 58% complete. Performance is 61% on average for quizzes. Risk level is evaluated as Medium.', 15
  ),
  (
    393, 'Luis Thompson', 'luis.thompson54@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/24.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Marketing',
    '2026-04-16 02:42:58', 97, '1 month ago', 1713, 41,
    '2026-07-05', 'Low', 'Luis Thompson is currently enrolled in Diversity and Inclusion in the Workplace. 97% complete. Performance is 41% on average for quizzes. Risk level is evaluated as Low.', 89
  ),
  (
    394, 'Lorena Tromp', 'lorena_tromp39@gmail.com', 'https://avatars.githubusercontent.com/u/44517698',
    6, 'Advanced Sales Techniques', 'Operations',
    '2026-05-23 06:19:12', 2, '2 weeks ago', 92, 54,
    '2026-08-07', 'Medium', 'Lorena Tromp is currently enrolled in Advanced Sales Techniques. 2% complete. Performance is 54% on average for quizzes. Risk level is evaluated as Medium.', 30
  ),
  (
    395, 'Omar Padberg', 'omar.padberg64@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/25.jpg',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2026-04-08 06:10:36', 20, '2 weeks ago', 236, 87,
    '2026-05-24', 'Medium', 'Omar Padberg is currently enrolled in Cloud Computing Fundamentals. 20% complete. Performance is 87% on average for quizzes. Risk level is evaluated as Medium.', 52
  ),
  (
    396, 'Melissa Hettinger', 'melissa_hettinger@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/36.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Sales',
    '2025-10-01 21:53:03', 10, 'Yesterday', 1420, 48,
    '2025-11-18', 'Low', 'Melissa Hettinger is currently enrolled in Workplace Ethics & Code of Conduct. 10% complete. Performance is 48% on average for quizzes. Risk level is evaluated as Low.', 55
  ),
  (
    397, 'Jay Parisian', 'jay.parisian29@gmail.com', 'https://avatars.githubusercontent.com/u/53078088',
    5, 'Diversity and Inclusion in the Workplace', 'Marketing',
    '2025-12-23 10:58:57', 75, '2 days ago', 158, 76,
    '2026-02-25', 'Medium', 'Jay Parisian is currently enrolled in Diversity and Inclusion in the Workplace. 75% complete. Performance is 76% on average for quizzes. Risk level is evaluated as Medium.', 81
  ),
  (
    398, 'Bob Heathcote', 'bob_heathcote80@hotmail.com', 'https://avatars.githubusercontent.com/u/24066485',
    1, 'Cybersecurity Awareness', 'Sales',
    '2026-03-14 15:08:37', 100, '1 month ago', 533, 86,
    '2026-05-14', 'Low', 'Bob Heathcote is currently enrolled in Cybersecurity Awareness. 100% complete. Performance is 86% on average for quizzes. Risk level is evaluated as Low.', 63
  ),
  (
    399, 'Rebecca Glover', 'rebecca_glover80@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/46.jpg',
    3, 'Data Privacy and GDPR', 'Marketing',
    '2026-07-01 20:01:32', 99, '2 days ago', 1507, 95,
    '2026-08-21', 'Medium', 'Rebecca Glover is currently enrolled in Data Privacy and GDPR. 99% complete. Performance is 95% on average for quizzes. Risk level is evaluated as Medium.', 7
  ),
  (
    400, 'Madeline Klein', 'madeline_klein60@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/43.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2026-03-25 05:35:33', 12, '3 days ago', 837, 66,
    '2026-05-17', 'High', 'Madeline Klein is currently enrolled in Workplace Ethics & Code of Conduct. 12% complete. Performance is 66% on average for quizzes. Risk level is evaluated as High.', 68
  ),
  (
    401, 'Peter Pacocha', 'peter_pacocha22@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/39.jpg',
    7, 'Cloud Computing Fundamentals', 'Finance',
    '2026-06-19 06:39:19', 51, '1 month ago', 76, 93,
    '2026-08-31', 'Low', 'Peter Pacocha is currently enrolled in Cloud Computing Fundamentals. 51% complete. Performance is 93% on average for quizzes. Risk level is evaluated as Low.', 91
  ),
  (
    402, 'Alysson Watsica', 'alysson_watsica63@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/98.jpg',
    7, 'Cloud Computing Fundamentals', 'Marketing',
    '2026-03-17 22:18:16', 1, '3 days ago', 1420, 49,
    '2026-06-07', 'Low', 'Alysson Watsica is currently enrolled in Cloud Computing Fundamentals. 1% complete. Performance is 49% on average for quizzes. Risk level is evaluated as Low.', 82
  ),
  (
    403, 'Emily Wuckert', 'emily.wuckert10@hotmail.com', 'https://avatars.githubusercontent.com/u/5032650',
    1, 'Cybersecurity Awareness', 'Operations',
    '2026-08-06 10:02:24', 88, 'Today', 1178, 83,
    '2026-09-27', 'Low', 'Emily Wuckert is currently enrolled in Cybersecurity Awareness. 88% complete. Performance is 83% on average for quizzes. Risk level is evaluated as Low.', 71
  ),
  (
    404, 'Grayce Schuster', 'grayce.schuster66@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/3.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2026-03-30 16:01:15', 22, '2 weeks ago', 286, 96,
    '2026-05-23', 'Medium', 'Grayce Schuster is currently enrolled in Workplace Ethics & Code of Conduct. 22% complete. Performance is 96% on average for quizzes. Risk level is evaluated as Medium.', 65
  ),
  (
    405, 'Ervin Bogisich', 'ervin_bogisich9@hotmail.com', 'https://avatars.githubusercontent.com/u/29862916',
    1, 'Cybersecurity Awareness', 'Sales',
    '2026-06-19 11:45:05', 80, 'Yesterday', 223, 48,
    '2026-09-12', 'High', 'Ervin Bogisich is currently enrolled in Cybersecurity Awareness. 80% complete. Performance is 48% on average for quizzes. Risk level is evaluated as High.', 74
  ),
  (
    406, 'Vanessa Price', 'vanessa_price19@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/13.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Operations',
    '2025-10-21 02:52:06', 64, 'Today', 893, 45,
    '2025-12-07', 'Low', 'Vanessa Price is currently enrolled in Workplace Ethics & Code of Conduct. 64% complete. Performance is 45% on average for quizzes. Risk level is evaluated as Low.', 96
  ),
  (
    407, 'Shane Lemke', 'shane_lemke@hotmail.com', 'https://avatars.githubusercontent.com/u/66218064',
    6, 'Advanced Sales Techniques', 'Sales',
    '2025-10-03 12:38:05', 88, '1 month ago', 299, 83,
    '2025-12-05', 'Low', 'Shane Lemke is currently enrolled in Advanced Sales Techniques. 88% complete. Performance is 83% on average for quizzes. Risk level is evaluated as Low.', 90
  ),
  (
    408, 'Cory Schroeder', 'cory.schroeder@hotmail.com', 'https://avatars.githubusercontent.com/u/6273314',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2026-06-09 08:51:37', 13, 'Yesterday', 82, 53,
    '2026-07-25', 'High', 'Cory Schroeder is currently enrolled in Workplace Ethics & Code of Conduct. 13% complete. Performance is 53% on average for quizzes. Risk level is evaluated as High.', 5
  ),
  (
    409, 'Maximillia Kohler', 'maximillia.kohler14@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/34.jpg',
    7, 'Cloud Computing Fundamentals', 'Operations',
    '2026-02-25 18:45:45', 96, '3 days ago', 991, 61,
    '2026-05-14', 'High', 'Maximillia Kohler is currently enrolled in Cloud Computing Fundamentals. 96% complete. Performance is 61% on average for quizzes. Risk level is evaluated as High.', 71
  ),
  (
    410, 'Noah Kozey', 'noah_kozey18@hotmail.com', 'https://avatars.githubusercontent.com/u/86664225',
    4, 'Leadership & Management', 'Human Resources',
    '2026-05-16 06:16:10', 68, '3 days ago', 1883, 97,
    '2026-08-13', 'High', 'Noah Kozey is currently enrolled in Leadership & Management. 68% complete. Performance is 97% on average for quizzes. Risk level is evaluated as High.', 32
  ),
  (
    411, 'Creola Collier', 'creola.collier21@gmail.com', 'https://avatars.githubusercontent.com/u/86604534',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2026-02-18 22:22:35', 4, '1 week ago', 1117, 71,
    '2026-03-21', 'Medium', 'Creola Collier is currently enrolled in Diversity and Inclusion in the Workplace. 4% complete. Performance is 71% on average for quizzes. Risk level is evaluated as Medium.', 66
  ),
  (
    412, 'Justen Swaniawski', 'justen_swaniawski@gmail.com', 'https://avatars.githubusercontent.com/u/43267776',
    6, 'Advanced Sales Techniques', 'Operations',
    '2026-01-04 05:21:56', 91, '1 month ago', 284, 41,
    '2026-03-13', 'High', 'Justen Swaniawski is currently enrolled in Advanced Sales Techniques. 91% complete. Performance is 41% on average for quizzes. Risk level is evaluated as High.', 68
  ),
  (
    413, 'Velma Trantow', 'velma.trantow56@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/66.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2025-08-12 19:38:31', 18, '2 weeks ago', 370, 69,
    '2025-10-21', 'Low', 'Velma Trantow is currently enrolled in Workplace Ethics & Code of Conduct. 18% complete. Performance is 69% on average for quizzes. Risk level is evaluated as Low.', 90
  ),
  (
    414, 'Beau Crona', 'beau_crona83@yahoo.com', 'https://avatars.githubusercontent.com/u/9247150',
    6, 'Advanced Sales Techniques', 'Finance',
    '2026-03-15 06:20:33', 99, '1 month ago', 1706, 93,
    '2026-04-17', 'High', 'Beau Crona is currently enrolled in Advanced Sales Techniques. 99% complete. Performance is 93% on average for quizzes. Risk level is evaluated as High.', 6
  ),
  (
    415, 'Aniyah Kling', 'aniyah.kling89@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/31.jpg',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2026-03-29 03:59:44', 78, '1 week ago', 526, 76,
    '2026-05-19', 'Medium', 'Aniyah Kling is currently enrolled in Data Privacy and GDPR. 78% complete. Performance is 76% on average for quizzes. Risk level is evaluated as Medium.', 58
  ),
  (
    416, 'Felix Weissnat', 'felix_weissnat90@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/70.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2026-03-30 08:37:41', 92, '3 days ago', 848, 60,
    '2026-06-10', 'Low', 'Felix Weissnat is currently enrolled in Workplace Ethics & Code of Conduct. 92% complete. Performance is 60% on average for quizzes. Risk level is evaluated as Low.', 80
  ),
  (
    417, 'Cedric Lowe', 'cedric_lowe60@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/72.jpg',
    1, 'Cybersecurity Awareness', 'Engineering',
    '2025-10-18 19:09:07', 94, '3 days ago', 1763, 78,
    '2025-11-19', 'Low', 'Cedric Lowe is currently enrolled in Cybersecurity Awareness. 94% complete. Performance is 78% on average for quizzes. Risk level is evaluated as Low.', 21
  ),
  (
    418, 'Elmer Stamm', 'elmer_stamm@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/25.jpg',
    1, 'Cybersecurity Awareness', 'Human Resources',
    '2025-10-16 23:53:49', 17, 'Yesterday', 424, 49,
    '2025-12-26', 'High', 'Elmer Stamm is currently enrolled in Cybersecurity Awareness. 17% complete. Performance is 49% on average for quizzes. Risk level is evaluated as High.', 24
  ),
  (
    419, 'Stuart Krajcik', 'stuart_krajcik@yahoo.com', 'https://avatars.githubusercontent.com/u/528692',
    6, 'Advanced Sales Techniques', 'Human Resources',
    '2026-02-04 08:07:55', 20, 'Yesterday', 1104, 91,
    '2026-03-18', 'Low', 'Stuart Krajcik is currently enrolled in Advanced Sales Techniques. 20% complete. Performance is 91% on average for quizzes. Risk level is evaluated as Low.', 59
  ),
  (
    420, 'Laney Huels', 'laney.huels21@gmail.com', 'https://avatars.githubusercontent.com/u/90993497',
    2, 'Workplace Ethics & Code of Conduct', 'Engineering',
    '2026-07-03 14:05:41', 2, '1 month ago', 1654, 81,
    '2026-09-25', 'Low', 'Laney Huels is currently enrolled in Workplace Ethics & Code of Conduct. 2% complete. Performance is 81% on average for quizzes. Risk level is evaluated as Low.', 17
  ),
  (
    421, 'Leopold Powlowski', 'leopold.powlowski@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/70.jpg',
    7, 'Cloud Computing Fundamentals', 'Finance',
    '2026-07-13 21:39:48', 100, 'Today', 557, 90,
    '2026-09-03', 'High', 'Leopold Powlowski is currently enrolled in Cloud Computing Fundamentals. 100% complete. Performance is 90% on average for quizzes. Risk level is evaluated as High.', 28
  ),
  (
    422, 'Samantha Considine', 'samantha.considine24@yahoo.com', 'https://avatars.githubusercontent.com/u/55258637',
    1, 'Cybersecurity Awareness', 'Sales',
    '2026-05-26 08:49:06', 81, '2 days ago', 1756, 77,
    '2026-07-12', 'Low', 'Samantha Considine is currently enrolled in Cybersecurity Awareness. 81% complete. Performance is 77% on average for quizzes. Risk level is evaluated as Low.', 11
  ),
  (
    423, 'Darla Sporer', 'darla.sporer@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/94.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2025-11-27 08:26:45', 45, '3 days ago', 1371, 46,
    '2026-02-12', 'Medium', 'Darla Sporer is currently enrolled in Diversity and Inclusion in the Workplace. 45% complete. Performance is 46% on average for quizzes. Risk level is evaluated as Medium.', 34
  ),
  (
    424, 'Wm Lubowitz', 'wm.lubowitz13@hotmail.com', 'https://avatars.githubusercontent.com/u/2917841',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2025-08-26 01:37:11', 45, 'Yesterday', 147, 99,
    '2025-11-24', 'Low', 'Wm Lubowitz is currently enrolled in Diversity and Inclusion in the Workplace. 45% complete. Performance is 99% on average for quizzes. Risk level is evaluated as Low.', 23
  ),
  (
    425, 'Markus Purdy', 'markus.purdy91@hotmail.com', 'https://avatars.githubusercontent.com/u/99554819',
    4, 'Leadership & Management', 'Finance',
    '2026-01-01 07:21:52', 78, '3 days ago', 1574, 40,
    '2026-02-17', 'Medium', 'Markus Purdy is currently enrolled in Leadership & Management. 78% complete. Performance is 40% on average for quizzes. Risk level is evaluated as Medium.', 8
  ),
  (
    426, 'Annette Nolan', 'annette_nolan32@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/14.jpg',
    7, 'Cloud Computing Fundamentals', 'Marketing',
    '2026-02-28 02:34:36', 47, '1 month ago', 130, 85,
    '2026-04-05', 'High', 'Annette Nolan is currently enrolled in Cloud Computing Fundamentals. 47% complete. Performance is 85% on average for quizzes. Risk level is evaluated as High.', 97
  ),
  (
    427, 'Horacio DuBuque', 'horacio_dubuque69@hotmail.com', 'https://avatars.githubusercontent.com/u/8594494',
    2, 'Workplace Ethics & Code of Conduct', 'Operations',
    '2026-01-04 19:24:34', 76, '2 weeks ago', 506, 51,
    '2026-03-06', 'Low', 'Horacio DuBuque is currently enrolled in Workplace Ethics & Code of Conduct. 76% complete. Performance is 51% on average for quizzes. Risk level is evaluated as Low.', 85
  ),
  (
    428, 'June O''Kon', 'june_okon50@gmail.com', 'https://avatars.githubusercontent.com/u/87566561',
    5, 'Diversity and Inclusion in the Workplace', 'Marketing',
    '2025-08-24 07:38:58', 4, '2 weeks ago', 1902, 54,
    '2025-10-20', 'Medium', 'June O''Kon is currently enrolled in Diversity and Inclusion in the Workplace. 4% complete. Performance is 54% on average for quizzes. Risk level is evaluated as Medium.', 1
  ),
  (
    429, 'Sylvan Koepp', 'sylvan.koepp@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/59.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Operations',
    '2026-03-25 18:19:09', 100, '3 days ago', 630, 92,
    '2026-05-31', 'Medium', 'Sylvan Koepp is currently enrolled in Workplace Ethics & Code of Conduct. 100% complete. Performance is 92% on average for quizzes. Risk level is evaluated as Medium.', 48
  ),
  (
    430, 'Kane Christiansen-Stoltenberg', 'kane.christiansen-stoltenberg38@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/59.jpg',
    4, 'Leadership & Management', 'Engineering',
    '2025-11-25 05:46:37', 52, '2 weeks ago', 234, 50,
    '2026-01-05', 'Medium', 'Kane Christiansen-Stoltenberg is currently enrolled in Leadership & Management. 52% complete. Performance is 50% on average for quizzes. Risk level is evaluated as Medium.', 6
  ),
  (
    431, 'Ike Osinski', 'ike_osinski82@gmail.com', 'https://avatars.githubusercontent.com/u/47211500',
    4, 'Leadership & Management', 'Engineering',
    '2025-10-09 17:11:14', 31, '1 month ago', 212, 45,
    '2025-12-12', 'Low', 'Ike Osinski is currently enrolled in Leadership & Management. 31% complete. Performance is 45% on average for quizzes. Risk level is evaluated as Low.', 26
  ),
  (
    432, 'Lucy Fadel', 'lucy_fadel@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/58.jpg',
    6, 'Advanced Sales Techniques', 'Customer Support',
    '2026-04-05 19:02:48', 58, '2 weeks ago', 2000, 73,
    '2026-05-31', 'Medium', 'Lucy Fadel is currently enrolled in Advanced Sales Techniques. 58% complete. Performance is 73% on average for quizzes. Risk level is evaluated as Medium.', 18
  ),
  (
    433, 'Kirk Conroy', 'kirk_conroy@yahoo.com', 'https://avatars.githubusercontent.com/u/24103417',
    6, 'Advanced Sales Techniques', 'Customer Support',
    '2026-04-21 07:30:23', 85, '2 weeks ago', 929, 100,
    '2026-06-23', 'High', 'Kirk Conroy is currently enrolled in Advanced Sales Techniques. 85% complete. Performance is 100% on average for quizzes. Risk level is evaluated as High.', 77
  ),
  (
    434, 'Pauline West', 'pauline.west50@gmail.com', 'https://avatars.githubusercontent.com/u/26921307',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2026-07-24 17:20:51', 59, '3 days ago', 1454, 90,
    '2026-09-25', 'Low', 'Pauline West is currently enrolled in Data Privacy and GDPR. 59% complete. Performance is 90% on average for quizzes. Risk level is evaluated as Low.', 22
  ),
  (
    435, 'Johnathon Kunze', 'johnathon.kunze7@gmail.com', 'https://avatars.githubusercontent.com/u/26087564',
    1, 'Cybersecurity Awareness', 'Human Resources',
    '2026-05-01 21:48:16', 56, '1 month ago', 611, 74,
    '2026-07-29', 'Low', 'Johnathon Kunze is currently enrolled in Cybersecurity Awareness. 56% complete. Performance is 74% on average for quizzes. Risk level is evaluated as Low.', 93
  ),
  (
    436, 'Ernesto Renner', 'ernesto_renner@yahoo.com', 'https://avatars.githubusercontent.com/u/1417909',
    1, 'Cybersecurity Awareness', 'Sales',
    '2025-08-20 00:22:10', 85, '1 month ago', 134, 72,
    '2025-11-06', 'Medium', 'Ernesto Renner is currently enrolled in Cybersecurity Awareness. 85% complete. Performance is 72% on average for quizzes. Risk level is evaluated as Medium.', 44
  ),
  (
    437, 'Shanie Johns', 'shanie_johns@gmail.com', 'https://avatars.githubusercontent.com/u/92483471',
    3, 'Data Privacy and GDPR', 'Marketing',
    '2026-01-01 12:32:34', 30, 'Yesterday', 638, 45,
    '2026-03-12', 'High', 'Shanie Johns is currently enrolled in Data Privacy and GDPR. 30% complete. Performance is 45% on average for quizzes. Risk level is evaluated as High.', 24
  ),
  (
    438, 'Olga Williamson', 'olga_williamson@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/27.jpg',
    3, 'Data Privacy and GDPR', 'Finance',
    '2026-02-07 16:36:21', 7, '1 month ago', 1434, 50,
    '2026-04-28', 'Low', 'Olga Williamson is currently enrolled in Data Privacy and GDPR. 7% complete. Performance is 50% on average for quizzes. Risk level is evaluated as Low.', 74
  ),
  (
    439, 'Richard Hodkiewicz', 'richard_hodkiewicz79@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/55.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2026-07-18 01:26:04', 94, 'Today', 306, 96,
    '2026-09-05', 'Low', 'Richard Hodkiewicz is currently enrolled in Diversity and Inclusion in the Workplace. 94% complete. Performance is 96% on average for quizzes. Risk level is evaluated as Low.', 1
  ),
  (
    440, 'Zita Borer', 'zita.borer77@hotmail.com', 'https://avatars.githubusercontent.com/u/70918065',
    5, 'Diversity and Inclusion in the Workplace', 'Customer Support',
    '2025-09-12 14:41:35', 5, '2 days ago', 1082, 89,
    '2025-10-14', 'Low', 'Zita Borer is currently enrolled in Diversity and Inclusion in the Workplace. 5% complete. Performance is 89% on average for quizzes. Risk level is evaluated as Low.', 10
  ),
  (
    441, 'Alonzo Hauck', 'alonzo.hauck@yahoo.com', 'https://avatars.githubusercontent.com/u/60799945',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2025-11-30 05:41:33', 17, '2 days ago', 308, 51,
    '2026-02-10', 'Low', 'Alonzo Hauck is currently enrolled in Cybersecurity Awareness. 17% complete. Performance is 51% on average for quizzes. Risk level is evaluated as Low.', 5
  ),
  (
    442, 'Rasheed Torp', 'rasheed_torp36@yahoo.com', 'https://avatars.githubusercontent.com/u/11567200',
    5, 'Diversity and Inclusion in the Workplace', 'Customer Support',
    '2026-08-02 08:29:52', 91, '1 month ago', 157, 68,
    '2026-09-11', 'Medium', 'Rasheed Torp is currently enrolled in Diversity and Inclusion in the Workplace. 91% complete. Performance is 68% on average for quizzes. Risk level is evaluated as Medium.', 55
  ),
  (
    443, 'Anya Kozey', 'anya.kozey83@yahoo.com', 'https://avatars.githubusercontent.com/u/39577468',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2025-11-21 19:34:58', 6, '1 week ago', 1566, 52,
    '2026-01-02', 'Low', 'Anya Kozey is currently enrolled in Data Privacy and GDPR. 6% complete. Performance is 52% on average for quizzes. Risk level is evaluated as Low.', 91
  ),
  (
    444, 'Elena Tillman-Weissnat', 'elena_tillman-weissnat98@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/75.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Marketing',
    '2026-01-09 10:49:25', 97, 'Yesterday', 123, 43,
    '2026-03-18', 'Medium', 'Elena Tillman-Weissnat is currently enrolled in Diversity and Inclusion in the Workplace. 97% complete. Performance is 43% on average for quizzes. Risk level is evaluated as Medium.', 95
  ),
  (
    445, 'Everardo Wunsch', 'everardo_wunsch56@gmail.com', 'https://avatars.githubusercontent.com/u/58815130',
    3, 'Data Privacy and GDPR', 'Finance',
    '2026-04-27 13:29:01', 65, '3 days ago', 1208, 43,
    '2026-06-21', 'Low', 'Everardo Wunsch is currently enrolled in Data Privacy and GDPR. 65% complete. Performance is 43% on average for quizzes. Risk level is evaluated as Low.', 73
  ),
  (
    446, 'Eva Medhurst', 'eva_medhurst37@gmail.com', 'https://avatars.githubusercontent.com/u/49795987',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2025-08-26 19:20:30', 7, '1 week ago', 901, 49,
    '2025-10-09', 'Medium', 'Eva Medhurst is currently enrolled in Data Privacy and GDPR. 7% complete. Performance is 49% on average for quizzes. Risk level is evaluated as Medium.', 48
  ),
  (
    447, 'Samantha Rau', 'samantha.rau22@gmail.com', 'https://avatars.githubusercontent.com/u/67540613',
    6, 'Advanced Sales Techniques', 'Finance',
    '2026-05-01 13:41:28', 34, '3 days ago', 505, 61,
    '2026-06-27', 'Medium', 'Samantha Rau is currently enrolled in Advanced Sales Techniques. 34% complete. Performance is 61% on average for quizzes. Risk level is evaluated as Medium.', 1
  ),
  (
    448, 'Gudrun Halvorson', 'gudrun.halvorson60@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/13.jpg',
    1, 'Cybersecurity Awareness', 'Finance',
    '2026-05-25 15:23:13', 79, '1 month ago', 1427, 46,
    '2026-08-02', 'Medium', 'Gudrun Halvorson is currently enrolled in Cybersecurity Awareness. 79% complete. Performance is 46% on average for quizzes. Risk level is evaluated as Medium.', 19
  ),
  (
    449, 'Myrl Bednar', 'myrl.bednar@yahoo.com', 'https://avatars.githubusercontent.com/u/39571332',
    6, 'Advanced Sales Techniques', 'Marketing',
    '2026-05-05 21:54:22', 36, '3 days ago', 1638, 76,
    '2026-06-22', 'Low', 'Myrl Bednar is currently enrolled in Advanced Sales Techniques. 36% complete. Performance is 76% on average for quizzes. Risk level is evaluated as Low.', 66
  ),
  (
    450, 'Tomas Conroy', 'tomas.conroy@yahoo.com', 'https://avatars.githubusercontent.com/u/37681682',
    5, 'Diversity and Inclusion in the Workplace', 'Sales',
    '2026-02-26 05:10:54', 64, 'Today', 823, 58,
    '2026-05-11', 'Medium', 'Tomas Conroy is currently enrolled in Diversity and Inclusion in the Workplace. 64% complete. Performance is 58% on average for quizzes. Risk level is evaluated as Medium.', 41
  ),
  (
    451, 'Wesley Jacobi', 'wesley.jacobi@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/20.jpg',
    3, 'Data Privacy and GDPR', 'Marketing',
    '2025-08-18 10:35:15', 39, 'Yesterday', 1404, 43,
    '2025-10-17', 'High', 'Wesley Jacobi is currently enrolled in Data Privacy and GDPR. 39% complete. Performance is 43% on average for quizzes. Risk level is evaluated as High.', 51
  ),
  (
    452, 'Lou Borer', 'lou_borer10@yahoo.com', 'https://avatars.githubusercontent.com/u/98552286',
    4, 'Leadership & Management', 'Customer Support',
    '2026-07-07 01:59:27', 34, '2 days ago', 759, 82,
    '2026-08-06', 'Low', 'Lou Borer is currently enrolled in Leadership & Management. 34% complete. Performance is 82% on average for quizzes. Risk level is evaluated as Low.', 7
  ),
  (
    453, 'Ed Grimes', 'ed.grimes43@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/13.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2026-05-25 06:03:36', 64, 'Yesterday', 604, 77,
    '2026-08-19', 'Low', 'Ed Grimes is currently enrolled in Workplace Ethics & Code of Conduct. 64% complete. Performance is 77% on average for quizzes. Risk level is evaluated as Low.', 56
  ),
  (
    454, 'Milo Collier', 'milo_collier73@hotmail.com', 'https://avatars.githubusercontent.com/u/87498408',
    4, 'Leadership & Management', 'Operations',
    '2026-05-16 07:35:54', 18, '2 weeks ago', 507, 81,
    '2026-07-24', 'Low', 'Milo Collier is currently enrolled in Leadership & Management. 18% complete. Performance is 81% on average for quizzes. Risk level is evaluated as Low.', 92
  ),
  (
    455, 'Chad Lockman', 'chad.lockman48@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/89.jpg',
    4, 'Leadership & Management', 'Operations',
    '2026-08-03 07:41:42', 0, 'Today', 363, 99,
    '2026-09-10', 'Medium', 'Chad Lockman is currently enrolled in Leadership & Management. 0% complete. Performance is 99% on average for quizzes. Risk level is evaluated as Medium.', 51
  ),
  (
    456, 'Kellie Marvin', 'kellie.marvin@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/0.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2026-07-20 11:47:47', 45, '2 weeks ago', 871, 86,
    '2026-10-08', 'Medium', 'Kellie Marvin is currently enrolled in Workplace Ethics & Code of Conduct. 45% complete. Performance is 86% on average for quizzes. Risk level is evaluated as Medium.', 20
  ),
  (
    457, 'Helene Dooley', 'helene.dooley4@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/98.jpg',
    7, 'Cloud Computing Fundamentals', 'Operations',
    '2025-09-30 23:02:13', 32, 'Yesterday', 988, 88,
    '2025-11-25', 'Medium', 'Helene Dooley is currently enrolled in Cloud Computing Fundamentals. 32% complete. Performance is 88% on average for quizzes. Risk level is evaluated as Medium.', 18
  ),
  (
    458, 'Carroll Yundt', 'carroll_yundt46@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/45.jpg',
    6, 'Advanced Sales Techniques', 'Sales',
    '2025-10-16 22:37:57', 50, '1 month ago', 1965, 75,
    '2025-12-15', 'Low', 'Carroll Yundt is currently enrolled in Advanced Sales Techniques. 50% complete. Performance is 75% on average for quizzes. Risk level is evaluated as Low.', 17
  ),
  (
    459, 'Amber Gorczany', 'amber_gorczany33@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/52.jpg',
    3, 'Data Privacy and GDPR', 'Sales',
    '2026-04-01 12:41:27', 82, '3 days ago', 216, 76,
    '2026-06-04', 'Low', 'Amber Gorczany is currently enrolled in Data Privacy and GDPR. 82% complete. Performance is 76% on average for quizzes. Risk level is evaluated as Low.', 85
  ),
  (
    460, 'Norris Hansen', 'norris_hansen6@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/91.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2025-11-11 18:31:10', 12, '3 days ago', 288, 52,
    '2025-12-26', 'High', 'Norris Hansen is currently enrolled in Diversity and Inclusion in the Workplace. 12% complete. Performance is 52% on average for quizzes. Risk level is evaluated as High.', 75
  ),
  (
    461, 'Geneva Rice', 'geneva.rice86@hotmail.com', 'https://avatars.githubusercontent.com/u/50746785',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2026-03-16 14:49:13', 23, '2 days ago', 487, 49,
    '2026-05-09', 'Low', 'Geneva Rice is currently enrolled in Cloud Computing Fundamentals. 23% complete. Performance is 49% on average for quizzes. Risk level is evaluated as Low.', 88
  ),
  (
    462, 'Kole Toy', 'kole_toy@yahoo.com', 'https://avatars.githubusercontent.com/u/5500746',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2026-07-09 16:38:27', 55, '3 days ago', 127, 59,
    '2026-08-21', 'Low', 'Kole Toy is currently enrolled in Diversity and Inclusion in the Workplace. 55% complete. Performance is 59% on average for quizzes. Risk level is evaluated as Low.', 52
  ),
  (
    463, 'Einar Connelly', 'einar_connelly@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/83.jpg',
    3, 'Data Privacy and GDPR', 'Finance',
    '2025-08-27 09:57:34', 10, 'Today', 1256, 78,
    '2025-11-22', 'Low', 'Einar Connelly is currently enrolled in Data Privacy and GDPR. 10% complete. Performance is 78% on average for quizzes. Risk level is evaluated as Low.', 23
  ),
  (
    464, 'Jaime Stanton', 'jaime_stanton@gmail.com', 'https://avatars.githubusercontent.com/u/63223795',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2025-09-05 18:33:27', 76, '1 month ago', 1446, 54,
    '2025-11-17', 'Low', 'Jaime Stanton is currently enrolled in Workplace Ethics & Code of Conduct. 76% complete. Performance is 54% on average for quizzes. Risk level is evaluated as Low.', 93
  ),
  (
    465, 'Adell Zemlak', 'adell_zemlak@yahoo.com', 'https://avatars.githubusercontent.com/u/68381215',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2025-08-13 01:21:55', 39, '1 month ago', 909, 81,
    '2025-09-26', 'Low', 'Adell Zemlak is currently enrolled in Cybersecurity Awareness. 39% complete. Performance is 81% on average for quizzes. Risk level is evaluated as Low.', 30
  ),
  (
    466, 'Sonja Dibbert', 'sonja_dibbert@gmail.com', 'https://avatars.githubusercontent.com/u/4937402',
    4, 'Leadership & Management', 'Human Resources',
    '2025-12-15 04:40:19', 83, 'Today', 175, 47,
    '2026-03-08', 'Low', 'Sonja Dibbert is currently enrolled in Leadership & Management. 83% complete. Performance is 47% on average for quizzes. Risk level is evaluated as Low.', 39
  ),
  (
    467, 'Harriet Bruen', 'harriet_bruen@hotmail.com', 'https://avatars.githubusercontent.com/u/83217672',
    7, 'Cloud Computing Fundamentals', 'Operations',
    '2026-03-18 17:48:59', 74, 'Yesterday', 1112, 84,
    '2026-06-09', 'High', 'Harriet Bruen is currently enrolled in Cloud Computing Fundamentals. 74% complete. Performance is 84% on average for quizzes. Risk level is evaluated as High.', 3
  ),
  (
    468, 'Sandy Beahan', 'sandy_beahan@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/50.jpg',
    4, 'Leadership & Management', 'Marketing',
    '2025-08-28 13:41:36', 64, 'Yesterday', 1993, 79,
    '2025-11-22', 'Low', 'Sandy Beahan is currently enrolled in Leadership & Management. 64% complete. Performance is 79% on average for quizzes. Risk level is evaluated as Low.', 94
  ),
  (
    469, 'Lillian Heller', 'lillian.heller@gmail.com', 'https://avatars.githubusercontent.com/u/5033274',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2025-09-14 20:20:17', 46, '1 month ago', 1081, 57,
    '2025-11-24', 'High', 'Lillian Heller is currently enrolled in Diversity and Inclusion in the Workplace. 46% complete. Performance is 57% on average for quizzes. Risk level is evaluated as High.', 37
  ),
  (
    470, 'Jo Feest', 'jo_feest39@hotmail.com', 'https://avatars.githubusercontent.com/u/10063360',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2026-01-04 09:53:08', 66, '2 days ago', 50, 62,
    '2026-02-03', 'Low', 'Jo Feest is currently enrolled in Cloud Computing Fundamentals. 66% complete. Performance is 62% on average for quizzes. Risk level is evaluated as Low.', 58
  ),
  (
    471, 'Dudley Kovacek', 'dudley.kovacek14@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/9.jpg',
    3, 'Data Privacy and GDPR', 'Sales',
    '2025-12-13 00:59:50', 33, '1 week ago', 477, 73,
    '2026-02-25', 'Medium', 'Dudley Kovacek is currently enrolled in Data Privacy and GDPR. 33% complete. Performance is 73% on average for quizzes. Risk level is evaluated as Medium.', 81
  ),
  (
    472, 'Reina Fay', 'reina.fay@gmail.com', 'https://avatars.githubusercontent.com/u/71025171',
    2, 'Workplace Ethics & Code of Conduct', 'Marketing',
    '2026-07-01 09:56:19', 65, '1 month ago', 513, 66,
    '2026-09-19', 'High', 'Reina Fay is currently enrolled in Workplace Ethics & Code of Conduct. 65% complete. Performance is 66% on average for quizzes. Risk level is evaluated as High.', 97
  ),
  (
    473, 'Janice Lowe-Nader', 'janice.lowe-nader99@gmail.com', 'https://avatars.githubusercontent.com/u/45196657',
    1, 'Cybersecurity Awareness', 'Sales',
    '2026-02-15 19:24:02', 3, '2 weeks ago', 1107, 93,
    '2026-04-14', 'Low', 'Janice Lowe-Nader is currently enrolled in Cybersecurity Awareness. 3% complete. Performance is 93% on average for quizzes. Risk level is evaluated as Low.', 50
  ),
  (
    474, 'Jazlyn Weimann', 'jazlyn.weimann@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/42.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Marketing',
    '2026-05-24 20:09:47', 43, '1 month ago', 1327, 51,
    '2026-07-13', 'Low', 'Jazlyn Weimann is currently enrolled in Workplace Ethics & Code of Conduct. 43% complete. Performance is 51% on average for quizzes. Risk level is evaluated as Low.', 24
  ),
  (
    475, 'Jennifer Daugherty', 'jennifer_daugherty92@hotmail.com', 'https://avatars.githubusercontent.com/u/1899900',
    1, 'Cybersecurity Awareness', 'Engineering',
    '2026-05-25 15:13:14', 89, '2 days ago', 169, 44,
    '2026-08-06', 'Low', 'Jennifer Daugherty is currently enrolled in Cybersecurity Awareness. 89% complete. Performance is 44% on average for quizzes. Risk level is evaluated as Low.', 90
  ),
  (
    476, 'Alta Dickinson-Hane', 'alta.dickinson-hane68@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/0.jpg',
    4, 'Leadership & Management', 'Human Resources',
    '2025-10-28 00:39:08', 9, '2 weeks ago', 405, 63,
    '2026-01-05', 'Low', 'Alta Dickinson-Hane is currently enrolled in Leadership & Management. 9% complete. Performance is 63% on average for quizzes. Risk level is evaluated as Low.', 27
  ),
  (
    477, 'Jose Weimann', 'jose_weimann@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/28.jpg',
    1, 'Cybersecurity Awareness', 'Finance',
    '2025-10-07 02:54:24', 77, '1 week ago', 1926, 64,
    '2025-12-09', 'Low', 'Jose Weimann is currently enrolled in Cybersecurity Awareness. 77% complete. Performance is 64% on average for quizzes. Risk level is evaluated as Low.', 96
  ),
  (
    478, 'Filiberto Kertzmann', 'filiberto.kertzmann@gmail.com', 'https://avatars.githubusercontent.com/u/41416237',
    4, 'Leadership & Management', 'Operations',
    '2026-01-02 09:47:18', 98, 'Today', 1045, 92,
    '2026-02-24', 'Low', 'Filiberto Kertzmann is currently enrolled in Leadership & Management. 98% complete. Performance is 92% on average for quizzes. Risk level is evaluated as Low.', 72
  ),
  (
    479, 'Loretta Hamill', 'loretta.hamill7@hotmail.com', 'https://avatars.githubusercontent.com/u/85376452',
    4, 'Leadership & Management', 'Operations',
    '2026-03-31 21:24:56', 44, 'Yesterday', 1831, 63,
    '2026-05-10', 'Low', 'Loretta Hamill is currently enrolled in Leadership & Management. 44% complete. Performance is 63% on average for quizzes. Risk level is evaluated as Low.', 6
  ),
  (
    480, 'Misty Will', 'misty_will@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/39.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Engineering',
    '2026-04-15 15:30:07', 6, '2 days ago', 1491, 47,
    '2026-06-14', 'Medium', 'Misty Will is currently enrolled in Workplace Ethics & Code of Conduct. 6% complete. Performance is 47% on average for quizzes. Risk level is evaluated as Medium.', 2
  ),
  (
    481, 'Milan Bashirian', 'milan.bashirian@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/50.jpg',
    7, 'Cloud Computing Fundamentals', 'Sales',
    '2025-11-01 10:33:24', 83, 'Today', 1212, 69,
    '2026-01-08', 'High', 'Milan Bashirian is currently enrolled in Cloud Computing Fundamentals. 83% complete. Performance is 69% on average for quizzes. Risk level is evaluated as High.', 98
  ),
  (
    482, 'Giovanna Bogisich', 'giovanna.bogisich@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/38.jpg',
    1, 'Cybersecurity Awareness', 'Operations',
    '2026-07-29 16:00:26', 70, '1 month ago', 1394, 52,
    '2026-09-10', 'Low', 'Giovanna Bogisich is currently enrolled in Cybersecurity Awareness. 70% complete. Performance is 52% on average for quizzes. Risk level is evaluated as Low.', 86
  ),
  (
    483, 'Bradford Durgan', 'bradford.durgan95@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/27.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Marketing',
    '2026-06-02 21:30:11', 37, '1 month ago', 1005, 81,
    '2026-07-23', 'Low', 'Bradford Durgan is currently enrolled in Diversity and Inclusion in the Workplace. 37% complete. Performance is 81% on average for quizzes. Risk level is evaluated as Low.', 12
  ),
  (
    484, 'Maggie Corwin', 'maggie_corwin@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/60.jpg',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2026-02-21 11:51:37', 51, '2 days ago', 1856, 60,
    '2026-03-28', 'Medium', 'Maggie Corwin is currently enrolled in Cybersecurity Awareness. 51% complete. Performance is 60% on average for quizzes. Risk level is evaluated as Medium.', 59
  ),
  (
    485, 'Lorna Swift', 'lorna.swift@gmail.com', 'https://avatars.githubusercontent.com/u/22639513',
    6, 'Advanced Sales Techniques', 'Human Resources',
    '2026-07-09 12:59:33', 96, 'Today', 1729, 58,
    '2026-08-23', 'Low', 'Lorna Swift is currently enrolled in Advanced Sales Techniques. 96% complete. Performance is 58% on average for quizzes. Risk level is evaluated as Low.', 71
  ),
  (
    486, 'Adalberto McGlynn', 'adalberto.mcglynn10@gmail.com', 'https://avatars.githubusercontent.com/u/16729720',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2025-11-21 17:37:21', 2, '2 weeks ago', 1510, 97,
    '2026-02-07', 'High', 'Adalberto McGlynn is currently enrolled in Cloud Computing Fundamentals. 2% complete. Performance is 97% on average for quizzes. Risk level is evaluated as High.', 67
  ),
  (
    487, 'Desiree Bosco', 'desiree.bosco64@yahoo.com', 'https://avatars.githubusercontent.com/u/87063406',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2026-02-28 21:42:58', 1, '2 days ago', 412, 51,
    '2026-04-04', 'Low', 'Desiree Bosco is currently enrolled in Cloud Computing Fundamentals. 1% complete. Performance is 51% on average for quizzes. Risk level is evaluated as Low.', 74
  ),
  (
    488, 'Alivia Kiehn', 'alivia.kiehn60@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/90.jpg',
    3, 'Data Privacy and GDPR', 'Finance',
    '2026-02-14 16:11:09', 28, '3 days ago', 1027, 77,
    '2026-05-08', 'Low', 'Alivia Kiehn is currently enrolled in Data Privacy and GDPR. 28% complete. Performance is 77% on average for quizzes. Risk level is evaluated as Low.', 56
  ),
  (
    489, 'Bart Streich', 'bart_streich@hotmail.com', 'https://avatars.githubusercontent.com/u/83001553',
    4, 'Leadership & Management', 'Sales',
    '2026-07-19 08:15:05', 49, '3 days ago', 1649, 92,
    '2026-09-26', 'Medium', 'Bart Streich is currently enrolled in Leadership & Management. 49% complete. Performance is 92% on average for quizzes. Risk level is evaluated as Medium.', 93
  ),
  (
    490, 'Savannah Bradtke', 'savannah.bradtke71@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/63.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2026-07-14 11:43:05', 74, '1 week ago', 956, 66,
    '2026-08-30', 'Low', 'Savannah Bradtke is currently enrolled in Diversity and Inclusion in the Workplace. 74% complete. Performance is 66% on average for quizzes. Risk level is evaluated as Low.', 46
  ),
  (
    491, 'Malcolm Crist', 'malcolm_crist@gmail.com', 'https://avatars.githubusercontent.com/u/56236180',
    7, 'Cloud Computing Fundamentals', 'Sales',
    '2025-11-14 11:05:43', 67, 'Today', 1288, 47,
    '2026-01-31', 'Medium', 'Malcolm Crist is currently enrolled in Cloud Computing Fundamentals. 67% complete. Performance is 47% on average for quizzes. Risk level is evaluated as Medium.', 96
  ),
  (
    492, 'Edwin Dare', 'edwin_dare14@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/29.jpg',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2025-09-08 02:27:34', 19, '1 week ago', 1471, 95,
    '2025-11-15', 'Medium', 'Edwin Dare is currently enrolled in Cloud Computing Fundamentals. 19% complete. Performance is 95% on average for quizzes. Risk level is evaluated as Medium.', 87
  ),
  (
    493, 'Harley Koelpin', 'harley_koelpin@gmail.com', 'https://avatars.githubusercontent.com/u/59765231',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2025-11-20 06:21:56', 78, '1 month ago', 256, 67,
    '2025-12-25', 'Medium', 'Harley Koelpin is currently enrolled in Diversity and Inclusion in the Workplace. 78% complete. Performance is 67% on average for quizzes. Risk level is evaluated as Medium.', 21
  ),
  (
    494, 'Consuelo Feeney', 'consuelo.feeney@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/39.jpg',
    4, 'Leadership & Management', 'Sales',
    '2025-08-18 16:21:39', 83, 'Yesterday', 947, 56,
    '2025-10-16', 'Medium', 'Consuelo Feeney is currently enrolled in Leadership & Management. 83% complete. Performance is 56% on average for quizzes. Risk level is evaluated as Medium.', 44
  ),
  (
    495, 'Jermaine Krajcik', 'jermaine.krajcik79@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/37.jpg',
    4, 'Leadership & Management', 'Marketing',
    '2026-01-02 14:45:46', 44, '1 month ago', 1107, 60,
    '2026-02-19', 'Low', 'Jermaine Krajcik is currently enrolled in Leadership & Management. 44% complete. Performance is 60% on average for quizzes. Risk level is evaluated as Low.', 72
  ),
  (
    496, 'Essie Muller', 'essie_muller@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/27.jpg',
    1, 'Cybersecurity Awareness', 'Sales',
    '2025-11-01 11:41:42', 73, '2 days ago', 823, 67,
    '2025-12-07', 'Low', 'Essie Muller is currently enrolled in Cybersecurity Awareness. 73% complete. Performance is 67% on average for quizzes. Risk level is evaluated as Low.', 76
  ),
  (
    497, 'Edwin Vandervort', 'edwin_vandervort@hotmail.com', 'https://avatars.githubusercontent.com/u/9430391',
    4, 'Leadership & Management', 'Engineering',
    '2026-02-02 04:32:33', 12, '2 weeks ago', 593, 70,
    '2026-03-26', 'Low', 'Edwin Vandervort is currently enrolled in Leadership & Management. 12% complete. Performance is 70% on average for quizzes. Risk level is evaluated as Low.', 75
  ),
  (
    498, 'Marjory Thompson', 'marjory.thompson@hotmail.com', 'https://avatars.githubusercontent.com/u/44334285',
    7, 'Cloud Computing Fundamentals', 'Finance',
    '2025-08-14 09:34:31', 4, '2 weeks ago', 1564, 94,
    '2025-10-28', 'Low', 'Marjory Thompson is currently enrolled in Cloud Computing Fundamentals. 4% complete. Performance is 94% on average for quizzes. Risk level is evaluated as Low.', 44
  ),
  (
    499, 'Dewey Tillman', 'dewey.tillman67@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/60.jpg',
    6, 'Advanced Sales Techniques', 'Customer Support',
    '2025-09-11 01:15:36', 32, '2 weeks ago', 280, 81,
    '2025-11-30', 'Medium', 'Dewey Tillman is currently enrolled in Advanced Sales Techniques. 32% complete. Performance is 81% on average for quizzes. Risk level is evaluated as Medium.', 94
  ),
  (
    500, 'Alison Kulas', 'alison_kulas@gmail.com', 'https://avatars.githubusercontent.com/u/81795338',
    1, 'Cybersecurity Awareness', 'Sales',
    '2026-06-14 01:33:18', 97, '3 days ago', 1478, 50,
    '2026-07-23', 'Low', 'Alison Kulas is currently enrolled in Cybersecurity Awareness. 97% complete. Performance is 50% on average for quizzes. Risk level is evaluated as Low.', 35
  ),
  (
    501, 'Enid Pagac', 'enid.pagac42@hotmail.com', 'https://avatars.githubusercontent.com/u/72987749',
    5, 'Diversity and Inclusion in the Workplace', 'Customer Support',
    '2025-10-29 13:12:24', 55, '1 month ago', 1271, 76,
    '2025-12-22', 'Low', 'Enid Pagac is currently enrolled in Diversity and Inclusion in the Workplace. 55% complete. Performance is 76% on average for quizzes. Risk level is evaluated as Low.', 60
  ),
  (
    502, 'Cheryl Ebert', 'cheryl_ebert2@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/84.jpg',
    1, 'Cybersecurity Awareness', 'Engineering',
    '2025-11-10 22:19:54', 8, 'Today', 1443, 69,
    '2026-01-01', 'Low', 'Cheryl Ebert is currently enrolled in Cybersecurity Awareness. 8% complete. Performance is 69% on average for quizzes. Risk level is evaluated as Low.', 46
  ),
  (
    503, 'Colin Wunsch', 'colin.wunsch@gmail.com', 'https://avatars.githubusercontent.com/u/21211708',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2026-01-25 13:10:16', 84, '1 week ago', 1221, 74,
    '2026-03-30', 'Medium', 'Colin Wunsch is currently enrolled in Cybersecurity Awareness. 84% complete. Performance is 74% on average for quizzes. Risk level is evaluated as Medium.', 100
  ),
  (
    504, 'Stephanie Murphy', 'stephanie_murphy15@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/90.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Human Resources',
    '2026-04-25 18:46:44', 27, 'Yesterday', 1227, 40,
    '2026-07-11', 'Medium', 'Stephanie Murphy is currently enrolled in Diversity and Inclusion in the Workplace. 27% complete. Performance is 40% on average for quizzes. Risk level is evaluated as Medium.', 77
  ),
  (
    505, 'Hugh Moen', 'hugh.moen@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/49.jpg',
    3, 'Data Privacy and GDPR', 'Customer Support',
    '2026-05-03 21:06:35', 82, '3 days ago', 79, 48,
    '2026-06-08', 'High', 'Hugh Moen is currently enrolled in Data Privacy and GDPR. 82% complete. Performance is 48% on average for quizzes. Risk level is evaluated as High.', 100
  ),
  (
    506, 'Amani Roob-Stokes', 'amani_roob-stokes8@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/93.jpg',
    1, 'Cybersecurity Awareness', 'Human Resources',
    '2025-08-08 03:55:41', 98, '2 weeks ago', 649, 49,
    '2025-10-29', 'Medium', 'Amani Roob-Stokes is currently enrolled in Cybersecurity Awareness. 98% complete. Performance is 49% on average for quizzes. Risk level is evaluated as Medium.', 98
  ),
  (
    507, 'Ruthie Gleason', 'ruthie.gleason76@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/75.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Sales',
    '2026-01-22 18:16:55', 26, '1 month ago', 1868, 99,
    '2026-04-17', 'Low', 'Ruthie Gleason is currently enrolled in Diversity and Inclusion in the Workplace. 26% complete. Performance is 99% on average for quizzes. Risk level is evaluated as Low.', 67
  ),
  (
    508, 'Annalise Wiza', 'annalise_wiza@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/93.jpg',
    4, 'Leadership & Management', 'Engineering',
    '2025-11-15 19:55:57', 18, '3 days ago', 1254, 46,
    '2026-01-07', 'High', 'Annalise Wiza is currently enrolled in Leadership & Management. 18% complete. Performance is 46% on average for quizzes. Risk level is evaluated as High.', 43
  ),
  (
    509, 'Janis Cummings', 'janis.cummings15@yahoo.com', 'https://avatars.githubusercontent.com/u/21347615',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2026-05-31 21:53:02', 70, 'Today', 399, 74,
    '2026-07-08', 'Low', 'Janis Cummings is currently enrolled in Data Privacy and GDPR. 70% complete. Performance is 74% on average for quizzes. Risk level is evaluated as Low.', 80
  ),
  (
    510, 'Eric Senger', 'eric_senger@gmail.com', 'https://avatars.githubusercontent.com/u/33912571',
    6, 'Advanced Sales Techniques', 'Human Resources',
    '2026-05-14 01:09:16', 58, '1 month ago', 1481, 61,
    '2026-07-17', 'High', 'Eric Senger is currently enrolled in Advanced Sales Techniques. 58% complete. Performance is 61% on average for quizzes. Risk level is evaluated as High.', 38
  ),
  (
    511, 'Robyn Spencer', 'robyn_spencer@hotmail.com', 'https://avatars.githubusercontent.com/u/98454942',
    1, 'Cybersecurity Awareness', 'Operations',
    '2026-06-12 18:26:37', 94, '2 days ago', 941, 84,
    '2026-08-21', 'Low', 'Robyn Spencer is currently enrolled in Cybersecurity Awareness. 94% complete. Performance is 84% on average for quizzes. Risk level is evaluated as Low.', 67
  ),
  (
    512, 'Jodi Flatley', 'jodi.flatley@gmail.com', 'https://avatars.githubusercontent.com/u/15301502',
    3, 'Data Privacy and GDPR', 'Customer Support',
    '2025-10-25 07:28:40', 1, '1 month ago', 791, 76,
    '2026-01-07', 'High', 'Jodi Flatley is currently enrolled in Data Privacy and GDPR. 1% complete. Performance is 76% on average for quizzes. Risk level is evaluated as High.', 50
  ),
  (
    513, 'Hector Champlin', 'hector_champlin91@hotmail.com', 'https://avatars.githubusercontent.com/u/58792912',
    4, 'Leadership & Management', 'Engineering',
    '2026-02-05 10:46:17', 57, '2 weeks ago', 1578, 67,
    '2026-03-14', 'Medium', 'Hector Champlin is currently enrolled in Leadership & Management. 57% complete. Performance is 67% on average for quizzes. Risk level is evaluated as Medium.', 63
  ),
  (
    514, 'Mary Robel', 'mary.robel84@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/80.jpg',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2025-12-31 23:43:40', 44, 'Yesterday', 1909, 96,
    '2026-02-10', 'Low', 'Mary Robel is currently enrolled in Data Privacy and GDPR. 44% complete. Performance is 96% on average for quizzes. Risk level is evaluated as Low.', 56
  ),
  (
    515, 'Evie Metz', 'evie.metz34@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/51.jpg',
    1, 'Cybersecurity Awareness', 'Operations',
    '2025-11-16 03:00:43', 14, 'Today', 262, 96,
    '2026-02-09', 'Low', 'Evie Metz is currently enrolled in Cybersecurity Awareness. 14% complete. Performance is 96% on average for quizzes. Risk level is evaluated as Low.', 75
  ),
  (
    516, 'Landen Dicki', 'landen.dicki@yahoo.com', 'https://avatars.githubusercontent.com/u/71137790',
    1, 'Cybersecurity Awareness', 'Operations',
    '2026-03-11 23:39:19', 65, '1 month ago', 1046, 66,
    '2026-05-21', 'Low', 'Landen Dicki is currently enrolled in Cybersecurity Awareness. 65% complete. Performance is 66% on average for quizzes. Risk level is evaluated as Low.', 27
  ),
  (
    517, 'Dexter Cummerata', 'dexter_cummerata49@hotmail.com', 'https://avatars.githubusercontent.com/u/62813959',
    1, 'Cybersecurity Awareness', 'Engineering',
    '2025-09-23 15:58:45', 25, '2 days ago', 1820, 43,
    '2025-12-03', 'Low', 'Dexter Cummerata is currently enrolled in Cybersecurity Awareness. 25% complete. Performance is 43% on average for quizzes. Risk level is evaluated as Low.', 58
  ),
  (
    518, 'Demetrius Hamill', 'demetrius_hamill45@gmail.com', 'https://avatars.githubusercontent.com/u/73588008',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2025-09-20 21:48:33', 45, '1 week ago', 489, 68,
    '2025-11-18', 'Medium', 'Demetrius Hamill is currently enrolled in Data Privacy and GDPR. 45% complete. Performance is 68% on average for quizzes. Risk level is evaluated as Medium.', 60
  ),
  (
    519, 'Mabel Botsford', 'mabel.botsford@hotmail.com', 'https://avatars.githubusercontent.com/u/47806218',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2026-04-13 01:05:58', 1, 'Today', 1657, 64,
    '2026-05-23', 'Medium', 'Mabel Botsford is currently enrolled in Workplace Ethics & Code of Conduct. 1% complete. Performance is 64% on average for quizzes. Risk level is evaluated as Medium.', 89
  ),
  (
    520, 'Silvia Lynch', 'silvia.lynch@hotmail.com', 'https://avatars.githubusercontent.com/u/19415853',
    4, 'Leadership & Management', 'Finance',
    '2026-07-28 05:21:07', 14, '3 days ago', 155, 90,
    '2026-09-12', 'Low', 'Silvia Lynch is currently enrolled in Leadership & Management. 14% complete. Performance is 90% on average for quizzes. Risk level is evaluated as Low.', 75
  ),
  (
    521, 'Florian Muller', 'florian_muller10@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/58.jpg',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2025-10-22 17:56:49', 41, '2 weeks ago', 766, 98,
    '2025-12-05', 'Low', 'Florian Muller is currently enrolled in Cloud Computing Fundamentals. 41% complete. Performance is 98% on average for quizzes. Risk level is evaluated as Low.', 94
  ),
  (
    522, 'Sean Conn', 'sean_conn61@gmail.com', 'https://avatars.githubusercontent.com/u/54051875',
    6, 'Advanced Sales Techniques', 'Marketing',
    '2025-12-21 20:53:15', 10, 'Today', 319, 81,
    '2026-03-01', 'Low', 'Sean Conn is currently enrolled in Advanced Sales Techniques. 10% complete. Performance is 81% on average for quizzes. Risk level is evaluated as Low.', 66
  ),
  (
    523, 'Jennifer Turner', 'jennifer.turner@hotmail.com', 'https://avatars.githubusercontent.com/u/83958568',
    4, 'Leadership & Management', 'Human Resources',
    '2026-05-23 17:08:49', 66, '1 week ago', 1265, 95,
    '2026-08-04', 'Medium', 'Jennifer Turner is currently enrolled in Leadership & Management. 66% complete. Performance is 95% on average for quizzes. Risk level is evaluated as Medium.', 95
  ),
  (
    524, 'Wm Swift', 'wm.swift@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/99.jpg',
    4, 'Leadership & Management', 'Marketing',
    '2026-04-05 09:13:19', 68, 'Today', 1228, 52,
    '2026-06-29', 'Medium', 'Wm Swift is currently enrolled in Leadership & Management. 68% complete. Performance is 52% on average for quizzes. Risk level is evaluated as Medium.', 44
  ),
  (
    525, 'Tina Marks', 'tina.marks13@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/44.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Marketing',
    '2026-03-08 12:12:57', 86, '2 days ago', 45, 77,
    '2026-04-17', 'Low', 'Tina Marks is currently enrolled in Workplace Ethics & Code of Conduct. 86% complete. Performance is 77% on average for quizzes. Risk level is evaluated as Low.', 21
  ),
  (
    526, 'Issac Bruen', 'issac_bruen@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/38.jpg',
    1, 'Cybersecurity Awareness', 'Human Resources',
    '2026-02-18 15:42:27', 70, '1 week ago', 396, 63,
    '2026-04-04', 'Medium', 'Issac Bruen is currently enrolled in Cybersecurity Awareness. 70% complete. Performance is 63% on average for quizzes. Risk level is evaluated as Medium.', 78
  ),
  (
    527, 'Olin Bruen', 'olin.bruen47@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/33.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2026-02-01 04:48:39', 70, '1 week ago', 20, 81,
    '2026-03-21', 'Low', 'Olin Bruen is currently enrolled in Diversity and Inclusion in the Workplace. 70% complete. Performance is 81% on average for quizzes. Risk level is evaluated as Low.', 86
  ),
  (
    528, 'Emily O''Connell', 'emily.oconnell67@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/42.jpg',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2026-01-27 07:45:29', 82, '3 days ago', 751, 58,
    '2026-03-07', 'Low', 'Emily O''Connell is currently enrolled in Cloud Computing Fundamentals. 82% complete. Performance is 58% on average for quizzes. Risk level is evaluated as Low.', 25
  ),
  (
    529, 'Dorian Zboncak', 'dorian_zboncak@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/74.jpg',
    1, 'Cybersecurity Awareness', 'Operations',
    '2025-08-30 17:22:38', 14, 'Yesterday', 756, 71,
    '2025-11-01', 'Low', 'Dorian Zboncak is currently enrolled in Cybersecurity Awareness. 14% complete. Performance is 71% on average for quizzes. Risk level is evaluated as Low.', 67
  ),
  (
    530, 'Alberto Botsford', 'alberto_botsford@gmail.com', 'https://avatars.githubusercontent.com/u/65595006',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2025-09-12 04:39:12', 76, '3 days ago', 1380, 94,
    '2025-12-08', 'Low', 'Alberto Botsford is currently enrolled in Cloud Computing Fundamentals. 76% complete. Performance is 94% on average for quizzes. Risk level is evaluated as Low.', 24
  ),
  (
    531, 'Bryana Christiansen', 'bryana.christiansen62@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/10.jpg',
    1, 'Cybersecurity Awareness', 'Human Resources',
    '2026-01-05 10:05:51', 34, '1 month ago', 111, 89,
    '2026-03-23', 'High', 'Bryana Christiansen is currently enrolled in Cybersecurity Awareness. 34% complete. Performance is 89% on average for quizzes. Risk level is evaluated as High.', 66
  ),
  (
    532, 'Janice Bednar', 'janice.bednar83@yahoo.com', 'https://avatars.githubusercontent.com/u/61755170',
    4, 'Leadership & Management', 'Human Resources',
    '2025-12-18 05:03:11', 52, 'Today', 17, 45,
    '2026-02-18', 'Medium', 'Janice Bednar is currently enrolled in Leadership & Management. 52% complete. Performance is 45% on average for quizzes. Risk level is evaluated as Medium.', 8
  ),
  (
    533, 'Dwight Beahan', 'dwight_beahan@hotmail.com', 'https://avatars.githubusercontent.com/u/80169248',
    6, 'Advanced Sales Techniques', 'Engineering',
    '2026-07-02 17:21:38', 81, 'Today', 882, 93,
    '2026-08-29', 'Low', 'Dwight Beahan is currently enrolled in Advanced Sales Techniques. 81% complete. Performance is 93% on average for quizzes. Risk level is evaluated as Low.', 39
  ),
  (
    534, 'Taylor Raynor', 'taylor_raynor19@hotmail.com', 'https://avatars.githubusercontent.com/u/27076036',
    2, 'Workplace Ethics & Code of Conduct', 'Marketing',
    '2025-11-01 23:32:03', 65, '2 weeks ago', 844, 64,
    '2026-01-02', 'High', 'Taylor Raynor is currently enrolled in Workplace Ethics & Code of Conduct. 65% complete. Performance is 64% on average for quizzes. Risk level is evaluated as High.', 5
  ),
  (
    535, 'Janis Rempel', 'janis_rempel@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/2.jpg',
    4, 'Leadership & Management', 'Engineering',
    '2025-12-07 04:48:40', 92, 'Today', 327, 58,
    '2026-01-21', 'Low', 'Janis Rempel is currently enrolled in Leadership & Management. 92% complete. Performance is 58% on average for quizzes. Risk level is evaluated as Low.', 24
  ),
  (
    536, 'Derick Schoen', 'derick_schoen25@yahoo.com', 'https://avatars.githubusercontent.com/u/96836586',
    4, 'Leadership & Management', 'Finance',
    '2026-02-28 16:00:02', 54, 'Yesterday', 1509, 40,
    '2026-05-24', 'Medium', 'Derick Schoen is currently enrolled in Leadership & Management. 54% complete. Performance is 40% on average for quizzes. Risk level is evaluated as Medium.', 7
  ),
  (
    537, 'Rita Oberbrunner', 'rita_oberbrunner43@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/94.jpg',
    7, 'Cloud Computing Fundamentals', 'Marketing',
    '2025-11-08 13:29:43', 53, '1 month ago', 233, 91,
    '2026-01-16', 'Low', 'Rita Oberbrunner is currently enrolled in Cloud Computing Fundamentals. 53% complete. Performance is 91% on average for quizzes. Risk level is evaluated as Low.', 69
  ),
  (
    538, 'Clovis Botsford', 'clovis.botsford97@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/0.jpg',
    6, 'Advanced Sales Techniques', 'Finance',
    '2025-12-12 12:27:15', 10, 'Today', 174, 63,
    '2026-01-30', 'Medium', 'Clovis Botsford is currently enrolled in Advanced Sales Techniques. 10% complete. Performance is 63% on average for quizzes. Risk level is evaluated as Medium.', 62
  ),
  (
    539, 'Steven Rath', 'steven_rath@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/67.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Engineering',
    '2026-01-18 21:44:57', 4, '3 days ago', 665, 66,
    '2026-03-26', 'Low', 'Steven Rath is currently enrolled in Workplace Ethics & Code of Conduct. 4% complete. Performance is 66% on average for quizzes. Risk level is evaluated as Low.', 82
  ),
  (
    540, 'Ruth Barrows', 'ruth_barrows55@gmail.com', 'https://avatars.githubusercontent.com/u/65826402',
    6, 'Advanced Sales Techniques', 'Customer Support',
    '2026-05-20 16:57:29', 25, 'Yesterday', 437, 81,
    '2026-08-11', 'Medium', 'Ruth Barrows is currently enrolled in Advanced Sales Techniques. 25% complete. Performance is 81% on average for quizzes. Risk level is evaluated as Medium.', 73
  ),
  (
    541, 'Minerva Conroy', 'minerva_conroy@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/23.jpg',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2026-05-26 11:09:07', 99, '1 week ago', 1597, 41,
    '2026-07-16', 'Medium', 'Minerva Conroy is currently enrolled in Cloud Computing Fundamentals. 99% complete. Performance is 41% on average for quizzes. Risk level is evaluated as Medium.', 53
  ),
  (
    542, 'Blanca Ritchie', 'blanca.ritchie@yahoo.com', 'https://avatars.githubusercontent.com/u/64293231',
    5, 'Diversity and Inclusion in the Workplace', 'Sales',
    '2025-10-20 13:22:58', 53, 'Today', 1685, 56,
    '2025-12-14', 'Low', 'Blanca Ritchie is currently enrolled in Diversity and Inclusion in the Workplace. 53% complete. Performance is 56% on average for quizzes. Risk level is evaluated as Low.', 24
  ),
  (
    543, 'Constance Mitchell', 'constance.mitchell90@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/5.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2026-01-08 04:00:15', 28, '2 weeks ago', 225, 99,
    '2026-03-18', 'Medium', 'Constance Mitchell is currently enrolled in Workplace Ethics & Code of Conduct. 28% complete. Performance is 99% on average for quizzes. Risk level is evaluated as Medium.', 18
  ),
  (
    544, 'Maxine Mayert', 'maxine.mayert60@gmail.com', 'https://avatars.githubusercontent.com/u/91512742',
    4, 'Leadership & Management', 'Sales',
    '2025-12-24 07:44:36', 7, '2 weeks ago', 272, 93,
    '2026-02-19', 'Low', 'Maxine Mayert is currently enrolled in Leadership & Management. 7% complete. Performance is 93% on average for quizzes. Risk level is evaluated as Low.', 35
  ),
  (
    545, 'Hugh Rippin-Marks', 'hugh_rippin-marks@yahoo.com', 'https://avatars.githubusercontent.com/u/75885176',
    7, 'Cloud Computing Fundamentals', 'Marketing',
    '2026-01-03 19:56:33', 18, '1 week ago', 1960, 47,
    '2026-02-13', 'Low', 'Hugh Rippin-Marks is currently enrolled in Cloud Computing Fundamentals. 18% complete. Performance is 47% on average for quizzes. Risk level is evaluated as Low.', 86
  ),
  (
    546, 'Mariah Bechtelar-Murazik', 'mariah_bechtelar-murazik73@hotmail.com', 'https://avatars.githubusercontent.com/u/33340727',
    1, 'Cybersecurity Awareness', 'Engineering',
    '2025-09-24 13:51:10', 2, 'Yesterday', 241, 89,
    '2025-11-19', 'Medium', 'Mariah Bechtelar-Murazik is currently enrolled in Cybersecurity Awareness. 2% complete. Performance is 89% on average for quizzes. Risk level is evaluated as Medium.', 21
  ),
  (
    547, 'Myles Mitchell', 'myles_mitchell57@hotmail.com', 'https://avatars.githubusercontent.com/u/81439382',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2025-08-30 10:39:32', 16, '2 days ago', 672, 77,
    '2025-10-23', 'Low', 'Myles Mitchell is currently enrolled in Workplace Ethics & Code of Conduct. 16% complete. Performance is 77% on average for quizzes. Risk level is evaluated as Low.', 36
  ),
  (
    548, 'Joy McGlynn', 'joy_mcglynn78@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/56.jpg',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2026-01-21 01:17:39', 23, '3 days ago', 443, 65,
    '2026-04-14', 'Low', 'Joy McGlynn is currently enrolled in Data Privacy and GDPR. 23% complete. Performance is 65% on average for quizzes. Risk level is evaluated as Low.', 29
  ),
  (
    549, 'Greg Stokes', 'greg_stokes@gmail.com', 'https://avatars.githubusercontent.com/u/95758114',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2025-09-01 10:16:18', 25, '2 days ago', 237, 46,
    '2025-11-02', 'High', 'Greg Stokes is currently enrolled in Diversity and Inclusion in the Workplace. 25% complete. Performance is 46% on average for quizzes. Risk level is evaluated as High.', 46
  ),
  (
    550, 'Friedrich Pfeffer', 'friedrich_pfeffer20@hotmail.com', 'https://avatars.githubusercontent.com/u/38651603',
    7, 'Cloud Computing Fundamentals', 'Marketing',
    '2025-10-09 00:33:20', 52, 'Today', 245, 82,
    '2025-12-26', 'Medium', 'Friedrich Pfeffer is currently enrolled in Cloud Computing Fundamentals. 52% complete. Performance is 82% on average for quizzes. Risk level is evaluated as Medium.', 69
  ),
  (
    551, 'Keagan Franey', 'keagan_franey@yahoo.com', 'https://avatars.githubusercontent.com/u/53811085',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2025-10-09 16:31:19', 73, 'Yesterday', 809, 77,
    '2026-01-06', 'Medium', 'Keagan Franey is currently enrolled in Cybersecurity Awareness. 73% complete. Performance is 77% on average for quizzes. Risk level is evaluated as Medium.', 87
  ),
  (
    552, 'Rosalind Schneider', 'rosalind.schneider@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/16.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Marketing',
    '2026-07-18 21:49:21', 7, 'Yesterday', 1735, 74,
    '2026-08-28', 'Medium', 'Rosalind Schneider is currently enrolled in Workplace Ethics & Code of Conduct. 7% complete. Performance is 74% on average for quizzes. Risk level is evaluated as Medium.', 73
  ),
  (
    553, 'Kylie Cremin', 'kylie.cremin42@hotmail.com', 'https://avatars.githubusercontent.com/u/89347315',
    4, 'Leadership & Management', 'Sales',
    '2026-02-26 00:14:47', 23, 'Today', 141, 92,
    '2026-03-29', 'High', 'Kylie Cremin is currently enrolled in Leadership & Management. 23% complete. Performance is 92% on average for quizzes. Risk level is evaluated as High.', 73
  ),
  (
    554, 'Kelsie Koch', 'kelsie.koch96@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/76.jpg',
    4, 'Leadership & Management', 'Finance',
    '2025-10-30 10:58:26', 99, '3 days ago', 288, 58,
    '2026-01-11', 'Low', 'Kelsie Koch is currently enrolled in Leadership & Management. 99% complete. Performance is 58% on average for quizzes. Risk level is evaluated as Low.', 54
  ),
  (
    555, 'Shakira Zieme-Hansen', 'shakira_zieme-hansen67@yahoo.com', 'https://avatars.githubusercontent.com/u/93372346',
    6, 'Advanced Sales Techniques', 'Marketing',
    '2026-01-22 13:44:17', 29, '1 month ago', 1917, 42,
    '2026-04-19', 'Low', 'Shakira Zieme-Hansen is currently enrolled in Advanced Sales Techniques. 29% complete. Performance is 42% on average for quizzes. Risk level is evaluated as Low.', 44
  ),
  (
    556, 'Diana Wilkinson', 'diana_wilkinson@gmail.com', 'https://avatars.githubusercontent.com/u/9964335',
    5, 'Diversity and Inclusion in the Workplace', 'Customer Support',
    '2026-01-31 06:10:41', 50, '1 week ago', 1162, 53,
    '2026-03-17', 'Medium', 'Diana Wilkinson is currently enrolled in Diversity and Inclusion in the Workplace. 50% complete. Performance is 53% on average for quizzes. Risk level is evaluated as Medium.', 76
  ),
  (
    557, 'Tim Gerlach', 'tim_gerlach@hotmail.com', 'https://avatars.githubusercontent.com/u/66933928',
    3, 'Data Privacy and GDPR', 'Operations',
    '2026-05-15 05:21:14', 45, 'Today', 386, 43,
    '2026-06-30', 'Low', 'Tim Gerlach is currently enrolled in Data Privacy and GDPR. 45% complete. Performance is 43% on average for quizzes. Risk level is evaluated as Low.', 74
  ),
  (
    558, 'Ima Mraz', 'ima.mraz@hotmail.com', 'https://avatars.githubusercontent.com/u/11681753',
    3, 'Data Privacy and GDPR', 'Customer Support',
    '2025-10-23 06:17:02', 38, '1 month ago', 880, 82,
    '2025-11-22', 'Medium', 'Ima Mraz is currently enrolled in Data Privacy and GDPR. 38% complete. Performance is 82% on average for quizzes. Risk level is evaluated as Medium.', 79
  ),
  (
    559, 'Duane Hoppe', 'duane_hoppe@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/59.jpg',
    1, 'Cybersecurity Awareness', 'Engineering',
    '2025-10-26 03:20:40', 56, '1 month ago', 492, 63,
    '2025-12-30', 'Medium', 'Duane Hoppe is currently enrolled in Cybersecurity Awareness. 56% complete. Performance is 63% on average for quizzes. Risk level is evaluated as Medium.', 26
  ),
  (
    560, 'Moriah Smitham', 'moriah.smitham@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/26.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Human Resources',
    '2025-11-21 12:03:50', 86, '3 days ago', 640, 61,
    '2026-01-16', 'Low', 'Moriah Smitham is currently enrolled in Diversity and Inclusion in the Workplace. 86% complete. Performance is 61% on average for quizzes. Risk level is evaluated as Low.', 28
  ),
  (
    561, 'Reginald Harvey', 'reginald.harvey@gmail.com', 'https://avatars.githubusercontent.com/u/40254567',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2026-02-24 07:49:53', 72, '1 month ago', 1933, 56,
    '2026-03-27', 'Low', 'Reginald Harvey is currently enrolled in Workplace Ethics & Code of Conduct. 72% complete. Performance is 56% on average for quizzes. Risk level is evaluated as Low.', 40
  ),
  (
    562, 'Willard Nienow', 'willard.nienow93@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/97.jpg',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2026-01-23 02:02:37', 60, '2 weeks ago', 513, 97,
    '2026-03-27', 'High', 'Willard Nienow is currently enrolled in Cybersecurity Awareness. 60% complete. Performance is 97% on average for quizzes. Risk level is evaluated as High.', 30
  ),
  (
    563, 'Teresa Graham', 'teresa_graham51@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/26.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2025-11-23 20:10:28', 2, '1 month ago', 1404, 81,
    '2025-12-27', 'Low', 'Teresa Graham is currently enrolled in Workplace Ethics & Code of Conduct. 2% complete. Performance is 81% on average for quizzes. Risk level is evaluated as Low.', 51
  ),
  (
    564, 'Bryce Wiza', 'bryce_wiza@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/6.jpg',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2026-04-08 10:51:53', 26, 'Yesterday', 174, 76,
    '2026-06-18', 'Medium', 'Bryce Wiza is currently enrolled in Cybersecurity Awareness. 26% complete. Performance is 76% on average for quizzes. Risk level is evaluated as Medium.', 6
  ),
  (
    565, 'Darrick Hickle', 'darrick_hickle@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/69.jpg',
    6, 'Advanced Sales Techniques', 'Finance',
    '2026-07-05 22:59:05', 70, 'Today', 638, 67,
    '2026-08-10', 'Medium', 'Darrick Hickle is currently enrolled in Advanced Sales Techniques. 70% complete. Performance is 67% on average for quizzes. Risk level is evaluated as Medium.', 72
  ),
  (
    566, 'Kaden Donnelly', 'kaden_donnelly17@hotmail.com', 'https://avatars.githubusercontent.com/u/41106146',
    4, 'Leadership & Management', 'Finance',
    '2026-02-19 06:40:02', 14, 'Today', 1931, 93,
    '2026-04-16', 'Medium', 'Kaden Donnelly is currently enrolled in Leadership & Management. 14% complete. Performance is 93% on average for quizzes. Risk level is evaluated as Medium.', 34
  ),
  (
    567, 'Marguerite Greenholt', 'marguerite_greenholt@yahoo.com', 'https://avatars.githubusercontent.com/u/58425609',
    3, 'Data Privacy and GDPR', 'Marketing',
    '2026-05-15 03:44:50', 6, '2 days ago', 1687, 100,
    '2026-06-29', 'Low', 'Marguerite Greenholt is currently enrolled in Data Privacy and GDPR. 6% complete. Performance is 100% on average for quizzes. Risk level is evaluated as Low.', 25
  ),
  (
    568, 'Jon Osinski', 'jon_osinski@hotmail.com', 'https://avatars.githubusercontent.com/u/15106700',
    4, 'Leadership & Management', 'Engineering',
    '2026-04-14 08:50:29', 40, 'Today', 1986, 44,
    '2026-05-20', 'Medium', 'Jon Osinski is currently enrolled in Leadership & Management. 40% complete. Performance is 44% on average for quizzes. Risk level is evaluated as Medium.', 26
  ),
  (
    569, 'Daniel Nitzsche', 'daniel_nitzsche57@gmail.com', 'https://avatars.githubusercontent.com/u/18405719',
    4, 'Leadership & Management', 'Engineering',
    '2026-07-10 06:45:05', 99, '1 month ago', 533, 62,
    '2026-08-26', 'Medium', 'Daniel Nitzsche is currently enrolled in Leadership & Management. 99% complete. Performance is 62% on average for quizzes. Risk level is evaluated as Medium.', 82
  ),
  (
    570, 'Juan Heller', 'juan.heller@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/85.jpg',
    3, 'Data Privacy and GDPR', 'Operations',
    '2026-01-30 23:42:32', 87, '3 days ago', 547, 70,
    '2026-03-07', 'Medium', 'Juan Heller is currently enrolled in Data Privacy and GDPR. 87% complete. Performance is 70% on average for quizzes. Risk level is evaluated as Medium.', 53
  ),
  (
    571, 'Nadine Denesik', 'nadine_denesik47@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/74.jpg',
    3, 'Data Privacy and GDPR', 'Sales',
    '2025-08-19 12:31:12', 29, '1 week ago', 15, 93,
    '2025-10-31', 'High', 'Nadine Denesik is currently enrolled in Data Privacy and GDPR. 29% complete. Performance is 93% on average for quizzes. Risk level is evaluated as High.', 24
  ),
  (
    572, 'Laurie Bartoletti', 'laurie.bartoletti15@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/89.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Marketing',
    '2025-11-28 23:07:55', 4, '3 days ago', 1910, 77,
    '2026-01-10', 'High', 'Laurie Bartoletti is currently enrolled in Diversity and Inclusion in the Workplace. 4% complete. Performance is 77% on average for quizzes. Risk level is evaluated as High.', 35
  ),
  (
    573, 'Joanne Sipes', 'joanne.sipes@yahoo.com', 'https://avatars.githubusercontent.com/u/86502232',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2026-04-01 23:26:08', 95, '1 month ago', 1077, 77,
    '2026-06-09', 'Medium', 'Joanne Sipes is currently enrolled in Workplace Ethics & Code of Conduct. 95% complete. Performance is 77% on average for quizzes. Risk level is evaluated as Medium.', 96
  ),
  (
    574, 'Emiliano McDermott-Boehm', 'emiliano_mcdermott-boehm53@hotmail.com', 'https://avatars.githubusercontent.com/u/59532954',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2026-01-04 06:12:19', 93, '2 days ago', 855, 45,
    '2026-03-07', 'Medium', 'Emiliano McDermott-Boehm is currently enrolled in Cloud Computing Fundamentals. 93% complete. Performance is 45% on average for quizzes. Risk level is evaluated as Medium.', 42
  ),
  (
    575, 'Mathew Bailey', 'mathew.bailey34@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/63.jpg',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2025-08-14 00:37:43', 27, '2 days ago', 132, 80,
    '2025-10-05', 'Low', 'Mathew Bailey is currently enrolled in Data Privacy and GDPR. 27% complete. Performance is 80% on average for quizzes. Risk level is evaluated as Low.', 65
  ),
  (
    576, 'Frieda Collier', 'frieda_collier49@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/10.jpg',
    1, 'Cybersecurity Awareness', 'Human Resources',
    '2025-11-08 06:38:37', 17, '2 days ago', 658, 86,
    '2025-12-09', 'High', 'Frieda Collier is currently enrolled in Cybersecurity Awareness. 17% complete. Performance is 86% on average for quizzes. Risk level is evaluated as High.', 90
  ),
  (
    577, 'Madeline Ankunding', 'madeline.ankunding30@gmail.com', 'https://avatars.githubusercontent.com/u/64417598',
    3, 'Data Privacy and GDPR', 'Finance',
    '2026-02-17 00:06:55', 60, 'Today', 1560, 65,
    '2026-05-16', 'Medium', 'Madeline Ankunding is currently enrolled in Data Privacy and GDPR. 60% complete. Performance is 65% on average for quizzes. Risk level is evaluated as Medium.', 87
  ),
  (
    578, 'Terence Fay', 'terence_fay8@hotmail.com', 'https://avatars.githubusercontent.com/u/97310861',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2026-05-16 23:09:18', 55, '2 days ago', 1113, 96,
    '2026-07-11', 'Low', 'Terence Fay is currently enrolled in Cybersecurity Awareness. 55% complete. Performance is 96% on average for quizzes. Risk level is evaluated as Low.', 76
  ),
  (
    579, 'Ricky Morissette', 'ricky.morissette@hotmail.com', 'https://avatars.githubusercontent.com/u/23959929',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2025-12-23 06:54:47', 89, '3 days ago', 1457, 50,
    '2026-02-03', 'Low', 'Ricky Morissette is currently enrolled in Workplace Ethics & Code of Conduct. 89% complete. Performance is 50% on average for quizzes. Risk level is evaluated as Low.', 60
  ),
  (
    580, 'Braxton Jerde', 'braxton.jerde@hotmail.com', 'https://avatars.githubusercontent.com/u/83648608',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2026-04-02 11:38:42', 16, 'Today', 1388, 65,
    '2026-06-26', 'High', 'Braxton Jerde is currently enrolled in Diversity and Inclusion in the Workplace. 16% complete. Performance is 65% on average for quizzes. Risk level is evaluated as High.', 34
  ),
  (
    581, 'Alene Denesik', 'alene_denesik@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/73.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2026-06-23 05:42:10', 60, '3 days ago', 669, 49,
    '2026-08-31', 'Low', 'Alene Denesik is currently enrolled in Workplace Ethics & Code of Conduct. 60% complete. Performance is 49% on average for quizzes. Risk level is evaluated as Low.', 72
  ),
  (
    582, 'Harry Wilkinson', 'harry.wilkinson@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/94.jpg',
    4, 'Leadership & Management', 'Operations',
    '2026-06-05 18:13:33', 12, '1 week ago', 500, 48,
    '2026-09-01', 'Medium', 'Harry Wilkinson is currently enrolled in Leadership & Management. 12% complete. Performance is 48% on average for quizzes. Risk level is evaluated as Medium.', 83
  ),
  (
    583, 'Robin Schultz', 'robin_schultz@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/33.jpg',
    3, 'Data Privacy and GDPR', 'Sales',
    '2026-03-31 03:44:35', 55, '3 days ago', 985, 56,
    '2026-05-28', 'Low', 'Robin Schultz is currently enrolled in Data Privacy and GDPR. 55% complete. Performance is 56% on average for quizzes. Risk level is evaluated as Low.', 84
  ),
  (
    584, 'Felipa Thiel', 'felipa.thiel@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/14.jpg',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2026-07-04 17:22:21', 60, 'Yesterday', 1987, 41,
    '2026-09-30', 'High', 'Felipa Thiel is currently enrolled in Cybersecurity Awareness. 60% complete. Performance is 41% on average for quizzes. Risk level is evaluated as High.', 10
  ),
  (
    585, 'Willis Huel', 'willis.huel23@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/9.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Human Resources',
    '2026-07-06 13:03:26', 76, '2 days ago', 386, 88,
    '2026-08-07', 'Low', 'Willis Huel is currently enrolled in Diversity and Inclusion in the Workplace. 76% complete. Performance is 88% on average for quizzes. Risk level is evaluated as Low.', 77
  ),
  (
    586, 'Kennedy Parker', 'kennedy_parker90@yahoo.com', 'https://avatars.githubusercontent.com/u/49869063',
    6, 'Advanced Sales Techniques', 'Sales',
    '2025-11-09 06:41:54', 57, 'Today', 1167, 48,
    '2025-12-28', 'Low', 'Kennedy Parker is currently enrolled in Advanced Sales Techniques. 57% complete. Performance is 48% on average for quizzes. Risk level is evaluated as Low.', 7
  ),
  (
    587, 'Tony Brakus', 'tony_brakus5@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/43.jpg',
    6, 'Advanced Sales Techniques', 'Sales',
    '2026-04-22 06:54:30', 97, '1 week ago', 393, 84,
    '2026-07-06', 'High', 'Tony Brakus is currently enrolled in Advanced Sales Techniques. 97% complete. Performance is 84% on average for quizzes. Risk level is evaluated as High.', 8
  ),
  (
    588, 'Dallas Bahringer', 'dallas.bahringer@yahoo.com', 'https://avatars.githubusercontent.com/u/18290354',
    3, 'Data Privacy and GDPR', 'Operations',
    '2026-06-30 04:33:34', 30, '1 week ago', 1058, 40,
    '2026-09-28', 'Low', 'Dallas Bahringer is currently enrolled in Data Privacy and GDPR. 30% complete. Performance is 40% on average for quizzes. Risk level is evaluated as Low.', 66
  ),
  (
    589, 'Melissa O''Connell', 'melissa.oconnell31@gmail.com', 'https://avatars.githubusercontent.com/u/32392096',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2026-07-15 04:59:53', 54, '2 weeks ago', 1651, 58,
    '2026-09-26', 'Low', 'Melissa O''Connell is currently enrolled in Cloud Computing Fundamentals. 54% complete. Performance is 58% on average for quizzes. Risk level is evaluated as Low.', 63
  ),
  (
    590, 'Addie Mayer', 'addie_mayer@gmail.com', 'https://avatars.githubusercontent.com/u/59697328',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2026-02-13 11:41:00', 8, '3 days ago', 1534, 96,
    '2026-04-30', 'High', 'Addie Mayer is currently enrolled in Cybersecurity Awareness. 8% complete. Performance is 96% on average for quizzes. Risk level is evaluated as High.', 51
  ),
  (
    591, 'Eudora Rath', 'eudora.rath77@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/77.jpg',
    7, 'Cloud Computing Fundamentals', 'Operations',
    '2026-03-26 03:04:41', 82, 'Yesterday', 91, 69,
    '2026-06-02', 'Low', 'Eudora Rath is currently enrolled in Cloud Computing Fundamentals. 82% complete. Performance is 69% on average for quizzes. Risk level is evaluated as Low.', 42
  ),
  (
    592, 'Kamren Gusikowski', 'kamren.gusikowski86@gmail.com', 'https://avatars.githubusercontent.com/u/34541628',
    3, 'Data Privacy and GDPR', 'Sales',
    '2026-06-04 18:34:41', 36, '1 month ago', 478, 67,
    '2026-08-01', 'Low', 'Kamren Gusikowski is currently enrolled in Data Privacy and GDPR. 36% complete. Performance is 67% on average for quizzes. Risk level is evaluated as Low.', 89
  ),
  (
    593, 'Erick Berge', 'erick_berge@yahoo.com', 'https://avatars.githubusercontent.com/u/81347506',
    4, 'Leadership & Management', 'Finance',
    '2025-09-23 12:54:09', 17, 'Today', 1197, 64,
    '2025-11-05', 'Medium', 'Erick Berge is currently enrolled in Leadership & Management. 17% complete. Performance is 64% on average for quizzes. Risk level is evaluated as Medium.', 19
  ),
  (
    594, 'Bradford Dach', 'bradford_dach@gmail.com', 'https://avatars.githubusercontent.com/u/70290513',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2025-09-21 17:24:12', 95, '2 weeks ago', 2000, 58,
    '2025-12-07', 'Medium', 'Bradford Dach is currently enrolled in Cybersecurity Awareness. 95% complete. Performance is 58% on average for quizzes. Risk level is evaluated as Medium.', 70
  ),
  (
    595, 'Elias Gutkowski', 'elias.gutkowski@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/56.jpg',
    6, 'Advanced Sales Techniques', 'Customer Support',
    '2025-08-25 18:11:21', 2, '1 month ago', 1154, 67,
    '2025-10-11', 'Low', 'Elias Gutkowski is currently enrolled in Advanced Sales Techniques. 2% complete. Performance is 67% on average for quizzes. Risk level is evaluated as Low.', 10
  ),
  (
    596, 'Georgette O''Conner', 'georgette_oconner11@gmail.com', 'https://avatars.githubusercontent.com/u/44035942',
    4, 'Leadership & Management', 'Marketing',
    '2025-10-07 15:44:47', 72, '2 weeks ago', 1082, 42,
    '2025-11-17', 'Low', 'Georgette O''Conner is currently enrolled in Leadership & Management. 72% complete. Performance is 42% on average for quizzes. Risk level is evaluated as Low.', 17
  ),
  (
    597, 'Carla Monahan', 'carla.monahan@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/10.jpg',
    1, 'Cybersecurity Awareness', 'Finance',
    '2026-01-26 16:22:49', 74, 'Yesterday', 421, 76,
    '2026-03-15', 'Low', 'Carla Monahan is currently enrolled in Cybersecurity Awareness. 74% complete. Performance is 76% on average for quizzes. Risk level is evaluated as Low.', 66
  ),
  (
    598, 'Madeline Kreiger', 'madeline.kreiger@yahoo.com', 'https://avatars.githubusercontent.com/u/9450429',
    7, 'Cloud Computing Fundamentals', 'Operations',
    '2025-11-17 15:19:09', 45, '1 month ago', 145, 94,
    '2026-01-19', 'Low', 'Madeline Kreiger is currently enrolled in Cloud Computing Fundamentals. 45% complete. Performance is 94% on average for quizzes. Risk level is evaluated as Low.', 81
  ),
  (
    599, 'Evan Krajcik', 'evan_krajcik76@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/75.jpg',
    7, 'Cloud Computing Fundamentals', 'Finance',
    '2026-04-17 16:42:37', 53, 'Today', 1054, 77,
    '2026-05-28', 'Medium', 'Evan Krajcik is currently enrolled in Cloud Computing Fundamentals. 53% complete. Performance is 77% on average for quizzes. Risk level is evaluated as Medium.', 48
  ),
  (
    600, 'Tyrel Tillman', 'tyrel_tillman20@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/60.jpg',
    6, 'Advanced Sales Techniques', 'Finance',
    '2025-11-09 04:29:00', 91, 'Yesterday', 148, 57,
    '2025-12-25', 'High', 'Tyrel Tillman is currently enrolled in Advanced Sales Techniques. 91% complete. Performance is 57% on average for quizzes. Risk level is evaluated as High.', 13
  ),
  (
    601, 'Xander Raynor', 'xander_raynor61@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/81.jpg',
    4, 'Leadership & Management', 'Human Resources',
    '2025-09-17 07:21:33', 37, '2 weeks ago', 1562, 49,
    '2025-12-07', 'Medium', 'Xander Raynor is currently enrolled in Leadership & Management. 37% complete. Performance is 49% on average for quizzes. Risk level is evaluated as Medium.', 67
  ),
  (
    602, 'Noelia Flatley', 'noelia.flatley@hotmail.com', 'https://avatars.githubusercontent.com/u/18449967',
    6, 'Advanced Sales Techniques', 'Operations',
    '2025-12-17 00:34:46', 28, 'Yesterday', 970, 69,
    '2026-01-16', 'Medium', 'Noelia Flatley is currently enrolled in Advanced Sales Techniques. 28% complete. Performance is 69% on average for quizzes. Risk level is evaluated as Medium.', 85
  ),
  (
    603, 'Bernard Bernhard-Lueilwitz', 'bernard_bernhard-lueilwitz@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/70.jpg',
    3, 'Data Privacy and GDPR', 'Marketing',
    '2025-12-30 12:06:42', 86, '3 days ago', 1220, 78,
    '2026-03-11', 'Medium', 'Bernard Bernhard-Lueilwitz is currently enrolled in Data Privacy and GDPR. 86% complete. Performance is 78% on average for quizzes. Risk level is evaluated as Medium.', 10
  ),
  (
    604, 'Claudia Boyer', 'claudia.boyer74@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/15.jpg',
    6, 'Advanced Sales Techniques', 'Customer Support',
    '2026-05-15 16:49:15', 81, '1 month ago', 341, 43,
    '2026-06-28', 'Medium', 'Claudia Boyer is currently enrolled in Advanced Sales Techniques. 81% complete. Performance is 43% on average for quizzes. Risk level is evaluated as Medium.', 19
  ),
  (
    605, 'Tonya Boyer', 'tonya.boyer@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/85.jpg',
    4, 'Leadership & Management', 'Operations',
    '2026-07-01 13:20:01', 17, 'Yesterday', 1140, 52,
    '2026-08-23', 'Low', 'Tonya Boyer is currently enrolled in Leadership & Management. 17% complete. Performance is 52% on average for quizzes. Risk level is evaluated as Low.', 55
  ),
  (
    606, 'Emmett Pfannerstill', 'emmett.pfannerstill@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/53.jpg',
    1, 'Cybersecurity Awareness', 'Operations',
    '2026-02-23 21:50:45', 94, '3 days ago', 1142, 85,
    '2026-03-29', 'Low', 'Emmett Pfannerstill is currently enrolled in Cybersecurity Awareness. 94% complete. Performance is 85% on average for quizzes. Risk level is evaluated as Low.', 98
  ),
  (
    607, 'Ottis Gibson', 'ottis_gibson83@yahoo.com', 'https://avatars.githubusercontent.com/u/24578617',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2025-11-23 22:58:41', 62, '2 weeks ago', 921, 43,
    '2026-01-01', 'Medium', 'Ottis Gibson is currently enrolled in Cybersecurity Awareness. 62% complete. Performance is 43% on average for quizzes. Risk level is evaluated as Medium.', 41
  ),
  (
    608, 'Anissa Hudson', 'anissa.hudson5@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/88.jpg',
    1, 'Cybersecurity Awareness', 'Finance',
    '2026-04-15 11:39:02', 51, 'Today', 1461, 40,
    '2026-05-22', 'Low', 'Anissa Hudson is currently enrolled in Cybersecurity Awareness. 51% complete. Performance is 40% on average for quizzes. Risk level is evaluated as Low.', 92
  ),
  (
    609, 'Allan Kub', 'allan.kub@hotmail.com', 'https://avatars.githubusercontent.com/u/84114797',
    1, 'Cybersecurity Awareness', 'Finance',
    '2025-08-26 06:04:46', 39, '1 week ago', 1124, 56,
    '2025-09-26', 'Low', 'Allan Kub is currently enrolled in Cybersecurity Awareness. 39% complete. Performance is 56% on average for quizzes. Risk level is evaluated as Low.', 86
  ),
  (
    610, 'Louis Hagenes', 'louis.hagenes67@hotmail.com', 'https://avatars.githubusercontent.com/u/33062176',
    3, 'Data Privacy and GDPR', 'Sales',
    '2026-01-18 13:41:13', 78, '2 days ago', 339, 97,
    '2026-03-17', 'Low', 'Louis Hagenes is currently enrolled in Data Privacy and GDPR. 78% complete. Performance is 97% on average for quizzes. Risk level is evaluated as Low.', 43
  ),
  (
    611, 'Russell Kautzer', 'russell.kautzer@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/20.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2025-11-15 06:58:34', 8, 'Yesterday', 1577, 72,
    '2025-12-25', 'Medium', 'Russell Kautzer is currently enrolled in Diversity and Inclusion in the Workplace. 8% complete. Performance is 72% on average for quizzes. Risk level is evaluated as Medium.', 33
  ),
  (
    612, 'Queenie Howe', 'queenie_howe63@hotmail.com', 'https://avatars.githubusercontent.com/u/31229615',
    2, 'Workplace Ethics & Code of Conduct', 'Marketing',
    '2025-08-17 07:01:37', 12, '2 days ago', 962, 78,
    '2025-10-30', 'Low', 'Queenie Howe is currently enrolled in Workplace Ethics & Code of Conduct. 12% complete. Performance is 78% on average for quizzes. Risk level is evaluated as Low.', 6
  ),
  (
    613, 'Veda Kihn', 'veda.kihn@gmail.com', 'https://avatars.githubusercontent.com/u/71822512',
    6, 'Advanced Sales Techniques', 'Engineering',
    '2026-06-23 02:47:49', 29, 'Today', 1911, 77,
    '2026-08-19', 'Low', 'Veda Kihn is currently enrolled in Advanced Sales Techniques. 29% complete. Performance is 77% on average for quizzes. Risk level is evaluated as Low.', 84
  ),
  (
    614, 'Breanne Quigley', 'breanne.quigley61@gmail.com', 'https://avatars.githubusercontent.com/u/79880103',
    6, 'Advanced Sales Techniques', 'Operations',
    '2025-11-07 19:02:23', 75, '2 days ago', 1533, 99,
    '2026-01-28', 'Low', 'Breanne Quigley is currently enrolled in Advanced Sales Techniques. 75% complete. Performance is 99% on average for quizzes. Risk level is evaluated as Low.', 40
  ),
  (
    615, 'Beverly Hamill', 'beverly_hamill17@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/1.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2025-11-29 18:19:38', 99, '2 weeks ago', 251, 79,
    '2026-01-22', 'Low', 'Beverly Hamill is currently enrolled in Diversity and Inclusion in the Workplace. 99% complete. Performance is 79% on average for quizzes. Risk level is evaluated as Low.', 36
  ),
  (
    616, 'Nathanial Conn', 'nathanial_conn52@gmail.com', 'https://avatars.githubusercontent.com/u/62868193',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2025-08-17 04:42:55', 6, '1 month ago', 1284, 77,
    '2025-11-05', 'Medium', 'Nathanial Conn is currently enrolled in Cloud Computing Fundamentals. 6% complete. Performance is 77% on average for quizzes. Risk level is evaluated as Medium.', 100
  ),
  (
    617, 'Willie Altenwerth', 'willie.altenwerth46@gmail.com', 'https://avatars.githubusercontent.com/u/61320442',
    7, 'Cloud Computing Fundamentals', 'Sales',
    '2026-06-21 09:13:05', 77, '3 days ago', 1857, 40,
    '2026-09-12', 'Low', 'Willie Altenwerth is currently enrolled in Cloud Computing Fundamentals. 77% complete. Performance is 40% on average for quizzes. Risk level is evaluated as Low.', 19
  ),
  (
    618, 'Ryder Terry', 'ryder_terry41@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/65.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2026-02-19 07:18:32', 10, '1 week ago', 1518, 81,
    '2026-04-19', 'Low', 'Ryder Terry is currently enrolled in Workplace Ethics & Code of Conduct. 10% complete. Performance is 81% on average for quizzes. Risk level is evaluated as Low.', 22
  ),
  (
    619, 'Coleman Champlin', 'coleman_champlin89@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/83.jpg',
    4, 'Leadership & Management', 'Finance',
    '2026-06-16 07:25:53', 47, '2 weeks ago', 876, 81,
    '2026-07-16', 'Medium', 'Coleman Champlin is currently enrolled in Leadership & Management. 47% complete. Performance is 81% on average for quizzes. Risk level is evaluated as Medium.', 58
  ),
  (
    620, 'Mathilde Stark', 'mathilde_stark@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/38.jpg',
    7, 'Cloud Computing Fundamentals', 'Marketing',
    '2025-08-10 10:15:58', 97, '2 weeks ago', 1729, 50,
    '2025-10-18', 'Medium', 'Mathilde Stark is currently enrolled in Cloud Computing Fundamentals. 97% complete. Performance is 50% on average for quizzes. Risk level is evaluated as Medium.', 45
  ),
  (
    621, 'Rachael Rohan', 'rachael.rohan@yahoo.com', 'https://avatars.githubusercontent.com/u/40727627',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2026-02-15 23:14:45', 50, '3 days ago', 1956, 41,
    '2026-05-06', 'Low', 'Rachael Rohan is currently enrolled in Cybersecurity Awareness. 50% complete. Performance is 41% on average for quizzes. Risk level is evaluated as Low.', 18
  ),
  (
    622, 'Fabian Nienow', 'fabian.nienow91@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/33.jpg',
    7, 'Cloud Computing Fundamentals', 'Marketing',
    '2025-08-27 20:45:02', 46, '3 days ago', 1461, 41,
    '2025-11-23', 'Low', 'Fabian Nienow is currently enrolled in Cloud Computing Fundamentals. 46% complete. Performance is 41% on average for quizzes. Risk level is evaluated as Low.', 31
  ),
  (
    623, 'Camille Goldner', 'camille_goldner58@yahoo.com', 'https://avatars.githubusercontent.com/u/17167962',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2026-07-10 17:17:36', 15, '1 week ago', 1306, 83,
    '2026-09-09', 'Medium', 'Camille Goldner is currently enrolled in Data Privacy and GDPR. 15% complete. Performance is 83% on average for quizzes. Risk level is evaluated as Medium.', 5
  ),
  (
    624, 'Marta Hyatt', 'marta.hyatt@gmail.com', 'https://avatars.githubusercontent.com/u/33560649',
    1, 'Cybersecurity Awareness', 'Engineering',
    '2026-02-03 05:25:54', 84, '1 month ago', 813, 66,
    '2026-04-04', 'Medium', 'Marta Hyatt is currently enrolled in Cybersecurity Awareness. 84% complete. Performance is 66% on average for quizzes. Risk level is evaluated as Medium.', 55
  ),
  (
    625, 'Gina Erdman', 'gina.erdman65@gmail.com', 'https://avatars.githubusercontent.com/u/93095460',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2026-06-06 22:50:31', 82, 'Yesterday', 972, 90,
    '2026-07-15', 'Low', 'Gina Erdman is currently enrolled in Data Privacy and GDPR. 82% complete. Performance is 90% on average for quizzes. Risk level is evaluated as Low.', 11
  ),
  (
    626, 'Constantin Moore', 'constantin.moore@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/14.jpg',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2025-12-18 09:37:22', 56, '1 week ago', 458, 78,
    '2026-01-26', 'Low', 'Constantin Moore is currently enrolled in Cybersecurity Awareness. 56% complete. Performance is 78% on average for quizzes. Risk level is evaluated as Low.', 53
  ),
  (
    627, 'Tomas Ritchie', 'tomas.ritchie90@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/90.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Marketing',
    '2026-02-12 23:19:08', 72, '2 weeks ago', 1720, 90,
    '2026-04-10', 'Low', 'Tomas Ritchie is currently enrolled in Workplace Ethics & Code of Conduct. 72% complete. Performance is 90% on average for quizzes. Risk level is evaluated as Low.', 64
  ),
  (
    628, 'Major Friesen', 'major.friesen3@gmail.com', 'https://avatars.githubusercontent.com/u/73151968',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2025-11-13 00:28:48', 59, '3 days ago', 1938, 100,
    '2026-01-06', 'Medium', 'Major Friesen is currently enrolled in Workplace Ethics & Code of Conduct. 59% complete. Performance is 100% on average for quizzes. Risk level is evaluated as Medium.', 91
  ),
  (
    629, 'Joannie Ebert-Cronin', 'joannie.ebert-cronin20@yahoo.com', 'https://avatars.githubusercontent.com/u/45268754',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2025-09-03 07:57:54', 22, '1 month ago', 118, 95,
    '2025-10-13', 'Low', 'Joannie Ebert-Cronin is currently enrolled in Cloud Computing Fundamentals. 22% complete. Performance is 95% on average for quizzes. Risk level is evaluated as Low.', 17
  ),
  (
    630, 'Kyleigh Homenick', 'kyleigh.homenick@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/6.jpg',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2026-04-10 15:54:37', 63, '1 month ago', 234, 48,
    '2026-05-24', 'Low', 'Kyleigh Homenick is currently enrolled in Cloud Computing Fundamentals. 63% complete. Performance is 48% on average for quizzes. Risk level is evaluated as Low.', 1
  ),
  (
    631, 'Estel Bergstrom', 'estel.bergstrom95@yahoo.com', 'https://avatars.githubusercontent.com/u/40120930',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2025-12-25 19:15:13', 59, '2 weeks ago', 901, 69,
    '2026-02-09', 'Low', 'Estel Bergstrom is currently enrolled in Diversity and Inclusion in the Workplace. 59% complete. Performance is 69% on average for quizzes. Risk level is evaluated as Low.', 25
  ),
  (
    632, 'Ole Murray', 'ole.murray36@yahoo.com', 'https://avatars.githubusercontent.com/u/10260272',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2026-03-03 03:48:52', 65, '2 weeks ago', 734, 69,
    '2026-05-08', 'Medium', 'Ole Murray is currently enrolled in Data Privacy and GDPR. 65% complete. Performance is 69% on average for quizzes. Risk level is evaluated as Medium.', 14
  ),
  (
    633, 'Demario Reilly', 'demario.reilly@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/20.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2026-07-23 15:05:41', 71, '2 weeks ago', 81, 72,
    '2026-10-18', 'Medium', 'Demario Reilly is currently enrolled in Workplace Ethics & Code of Conduct. 71% complete. Performance is 72% on average for quizzes. Risk level is evaluated as Medium.', 44
  ),
  (
    634, 'Harley Leuschke', 'harley_leuschke@gmail.com', 'https://avatars.githubusercontent.com/u/58671541',
    5, 'Diversity and Inclusion in the Workplace', 'Human Resources',
    '2026-01-06 12:04:00', 71, '3 days ago', 1520, 99,
    '2026-04-02', 'Low', 'Harley Leuschke is currently enrolled in Diversity and Inclusion in the Workplace. 71% complete. Performance is 99% on average for quizzes. Risk level is evaluated as Low.', 45
  ),
  (
    635, 'Rosemarie Kuhic', 'rosemarie.kuhic33@hotmail.com', 'https://avatars.githubusercontent.com/u/77038172',
    6, 'Advanced Sales Techniques', 'Human Resources',
    '2025-09-24 22:53:41', 38, 'Today', 1382, 66,
    '2025-12-11', 'Medium', 'Rosemarie Kuhic is currently enrolled in Advanced Sales Techniques. 38% complete. Performance is 66% on average for quizzes. Risk level is evaluated as Medium.', 33
  ),
  (
    636, 'Marcella Fritsch', 'marcella_fritsch97@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/91.jpg',
    4, 'Leadership & Management', 'Operations',
    '2025-09-17 23:26:59', 9, '3 days ago', 555, 40,
    '2025-11-28', 'Low', 'Marcella Fritsch is currently enrolled in Leadership & Management. 9% complete. Performance is 40% on average for quizzes. Risk level is evaluated as Low.', 17
  ),
  (
    637, 'Destinee Bashirian', 'destinee_bashirian18@gmail.com', 'https://avatars.githubusercontent.com/u/42269697',
    6, 'Advanced Sales Techniques', 'Customer Support',
    '2026-02-04 02:42:19', 74, '1 month ago', 489, 83,
    '2026-04-15', 'High', 'Destinee Bashirian is currently enrolled in Advanced Sales Techniques. 74% complete. Performance is 83% on average for quizzes. Risk level is evaluated as High.', 66
  ),
  (
    638, 'Josephine Tromp', 'josephine.tromp97@gmail.com', 'https://avatars.githubusercontent.com/u/64927627',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2026-07-13 02:33:02', 39, '2 days ago', 829, 74,
    '2026-09-22', 'Medium', 'Josephine Tromp is currently enrolled in Diversity and Inclusion in the Workplace. 39% complete. Performance is 74% on average for quizzes. Risk level is evaluated as Medium.', 57
  ),
  (
    639, 'Melyssa Abbott', 'melyssa_abbott@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/77.jpg',
    6, 'Advanced Sales Techniques', 'Sales',
    '2026-04-30 11:48:51', 81, '1 month ago', 1286, 63,
    '2026-07-17', 'Medium', 'Melyssa Abbott is currently enrolled in Advanced Sales Techniques. 81% complete. Performance is 63% on average for quizzes. Risk level is evaluated as Medium.', 70
  ),
  (
    640, 'Junior Hartmann', 'junior.hartmann@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/24.jpg',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2025-12-27 03:16:23', 64, '1 month ago', 1575, 83,
    '2026-02-23', 'High', 'Junior Hartmann is currently enrolled in Cloud Computing Fundamentals. 64% complete. Performance is 83% on average for quizzes. Risk level is evaluated as High.', 80
  ),
  (
    641, 'Kristen Weissnat', 'kristen_weissnat42@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/6.jpg',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2026-06-09 02:00:29', 49, 'Yesterday', 1571, 72,
    '2026-07-21', 'High', 'Kristen Weissnat is currently enrolled in Cybersecurity Awareness. 49% complete. Performance is 72% on average for quizzes. Risk level is evaluated as High.', 51
  ),
  (
    642, 'Dena Pacocha', 'dena_pacocha19@hotmail.com', 'https://avatars.githubusercontent.com/u/59344601',
    2, 'Workplace Ethics & Code of Conduct', 'Operations',
    '2026-02-28 10:17:58', 18, '2 weeks ago', 1218, 72,
    '2026-04-21', 'High', 'Dena Pacocha is currently enrolled in Workplace Ethics & Code of Conduct. 18% complete. Performance is 72% on average for quizzes. Risk level is evaluated as High.', 47
  ),
  (
    643, 'Roger Maggio', 'roger_maggio25@hotmail.com', 'https://avatars.githubusercontent.com/u/64231978',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2025-12-16 16:12:49', 48, 'Yesterday', 1873, 43,
    '2026-03-11', 'Low', 'Roger Maggio is currently enrolled in Cloud Computing Fundamentals. 48% complete. Performance is 43% on average for quizzes. Risk level is evaluated as Low.', 96
  ),
  (
    644, 'Keven Streich', 'keven.streich@gmail.com', 'https://avatars.githubusercontent.com/u/97648794',
    4, 'Leadership & Management', 'Human Resources',
    '2025-09-09 22:08:14', 47, 'Today', 1678, 65,
    '2025-11-10', 'High', 'Keven Streich is currently enrolled in Leadership & Management. 47% complete. Performance is 65% on average for quizzes. Risk level is evaluated as High.', 38
  ),
  (
    645, 'Kathy Wolf', 'kathy_wolf42@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/26.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2025-08-12 10:08:05', 14, 'Yesterday', 948, 97,
    '2025-09-26', 'Low', 'Kathy Wolf is currently enrolled in Workplace Ethics & Code of Conduct. 14% complete. Performance is 97% on average for quizzes. Risk level is evaluated as Low.', 85
  ),
  (
    646, 'Gustavo Wuckert-Conn', 'gustavo_wuckert-conn20@yahoo.com', 'https://avatars.githubusercontent.com/u/96811313',
    3, 'Data Privacy and GDPR', 'Finance',
    '2026-04-16 00:40:31', 69, '1 week ago', 1437, 40,
    '2026-05-16', 'Medium', 'Gustavo Wuckert-Conn is currently enrolled in Data Privacy and GDPR. 69% complete. Performance is 40% on average for quizzes. Risk level is evaluated as Medium.', 100
  ),
  (
    647, 'Tremayne Smith', 'tremayne.smith@gmail.com', 'https://avatars.githubusercontent.com/u/84924406',
    3, 'Data Privacy and GDPR', 'Operations',
    '2026-04-14 13:31:19', 59, '2 days ago', 1371, 74,
    '2026-06-26', 'Medium', 'Tremayne Smith is currently enrolled in Data Privacy and GDPR. 59% complete. Performance is 74% on average for quizzes. Risk level is evaluated as Medium.', 26
  ),
  (
    648, 'Garnet White', 'garnet_white@hotmail.com', 'https://avatars.githubusercontent.com/u/63010494',
    7, 'Cloud Computing Fundamentals', 'Operations',
    '2025-12-09 05:08:10', 76, 'Today', 1504, 91,
    '2026-01-30', 'Low', 'Garnet White is currently enrolled in Cloud Computing Fundamentals. 76% complete. Performance is 91% on average for quizzes. Risk level is evaluated as Low.', 76
  ),
  (
    649, 'Merle Spencer', 'merle_spencer@hotmail.com', 'https://avatars.githubusercontent.com/u/23376177',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2026-06-06 08:04:07', 78, '1 month ago', 1758, 65,
    '2026-07-29', 'Medium', 'Merle Spencer is currently enrolled in Diversity and Inclusion in the Workplace. 78% complete. Performance is 65% on average for quizzes. Risk level is evaluated as Medium.', 71
  ),
  (
    650, 'Luz Koch', 'luz_koch57@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/67.jpg',
    1, 'Cybersecurity Awareness', 'Operations',
    '2025-10-29 01:30:16', 21, '2 days ago', 949, 56,
    '2025-12-11', 'Low', 'Luz Koch is currently enrolled in Cybersecurity Awareness. 21% complete. Performance is 56% on average for quizzes. Risk level is evaluated as Low.', 83
  ),
  (
    651, 'Mamie Lockman', 'mamie_lockman52@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/7.jpg',
    7, 'Cloud Computing Fundamentals', 'Finance',
    '2025-08-29 13:38:42', 84, '3 days ago', 1380, 75,
    '2025-10-05', 'Medium', 'Mamie Lockman is currently enrolled in Cloud Computing Fundamentals. 84% complete. Performance is 75% on average for quizzes. Risk level is evaluated as Medium.', 10
  ),
  (
    652, 'Walter Greenfelder', 'walter.greenfelder@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/96.jpg',
    7, 'Cloud Computing Fundamentals', 'Sales',
    '2026-07-31 05:52:44', 51, '1 month ago', 817, 55,
    '2026-10-27', 'High', 'Walter Greenfelder is currently enrolled in Cloud Computing Fundamentals. 51% complete. Performance is 55% on average for quizzes. Risk level is evaluated as High.', 37
  ),
  (
    653, 'George McKenzie', 'george.mckenzie@gmail.com', 'https://avatars.githubusercontent.com/u/18476513',
    2, 'Workplace Ethics & Code of Conduct', 'Operations',
    '2026-02-21 20:13:05', 8, 'Yesterday', 1415, 68,
    '2026-03-26', 'Medium', 'George McKenzie is currently enrolled in Workplace Ethics & Code of Conduct. 8% complete. Performance is 68% on average for quizzes. Risk level is evaluated as Medium.', 35
  ),
  (
    654, 'Lula Luettgen', 'lula_luettgen64@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/81.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Marketing',
    '2025-12-09 17:08:26', 8, '2 days ago', 657, 74,
    '2026-02-28', 'Low', 'Lula Luettgen is currently enrolled in Diversity and Inclusion in the Workplace. 8% complete. Performance is 74% on average for quizzes. Risk level is evaluated as Low.', 66
  ),
  (
    655, 'Bennie Streich', 'bennie.streich78@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/65.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Human Resources',
    '2025-12-29 21:12:23', 0, '2 weeks ago', 1283, 91,
    '2026-03-09', 'Low', 'Bennie Streich is currently enrolled in Diversity and Inclusion in the Workplace. 0% complete. Performance is 91% on average for quizzes. Risk level is evaluated as Low.', 97
  ),
  (
    656, 'Elyse Cronin', 'elyse_cronin@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/45.jpg',
    7, 'Cloud Computing Fundamentals', 'Marketing',
    '2026-01-19 21:17:46', 51, 'Today', 1660, 90,
    '2026-04-10', 'Low', 'Elyse Cronin is currently enrolled in Cloud Computing Fundamentals. 51% complete. Performance is 90% on average for quizzes. Risk level is evaluated as Low.', 27
  ),
  (
    657, 'Nina Tromp', 'nina_tromp42@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/42.jpg',
    4, 'Leadership & Management', 'Sales',
    '2026-01-04 07:40:30', 20, '3 days ago', 1841, 40,
    '2026-02-20', 'Medium', 'Nina Tromp is currently enrolled in Leadership & Management. 20% complete. Performance is 40% on average for quizzes. Risk level is evaluated as Medium.', 47
  ),
  (
    658, 'Lydia Wilkinson', 'lydia.wilkinson94@yahoo.com', 'https://avatars.githubusercontent.com/u/5243088',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2026-01-06 12:07:53', 18, '1 week ago', 1795, 93,
    '2026-03-22', 'Medium', 'Lydia Wilkinson is currently enrolled in Data Privacy and GDPR. 18% complete. Performance is 93% on average for quizzes. Risk level is evaluated as Medium.', 90
  ),
  (
    659, 'Abby Veum-O''Kon', 'abby_veum-okon@gmail.com', 'https://avatars.githubusercontent.com/u/53604322',
    6, 'Advanced Sales Techniques', 'Engineering',
    '2026-01-07 05:26:29', 75, '1 month ago', 562, 71,
    '2026-04-04', 'Medium', 'Abby Veum-O''Kon is currently enrolled in Advanced Sales Techniques. 75% complete. Performance is 71% on average for quizzes. Risk level is evaluated as Medium.', 88
  ),
  (
    660, 'Myra Collins', 'myra.collins@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/1.jpg',
    6, 'Advanced Sales Techniques', 'Marketing',
    '2026-06-20 15:53:53', 87, '3 days ago', 1028, 46,
    '2026-08-29', 'Medium', 'Myra Collins is currently enrolled in Advanced Sales Techniques. 87% complete. Performance is 46% on average for quizzes. Risk level is evaluated as Medium.', 7
  ),
  (
    661, 'Lloyd Haag', 'lloyd_haag@gmail.com', 'https://avatars.githubusercontent.com/u/6363597',
    6, 'Advanced Sales Techniques', 'Human Resources',
    '2025-09-16 12:02:54', 8, '1 month ago', 141, 48,
    '2025-11-08', 'High', 'Lloyd Haag is currently enrolled in Advanced Sales Techniques. 8% complete. Performance is 48% on average for quizzes. Risk level is evaluated as High.', 58
  ),
  (
    662, 'Reva Hoeger', 'reva_hoeger@gmail.com', 'https://avatars.githubusercontent.com/u/68652690',
    4, 'Leadership & Management', 'Finance',
    '2025-09-28 15:00:08', 70, 'Yesterday', 443, 57,
    '2025-11-29', 'Medium', 'Reva Hoeger is currently enrolled in Leadership & Management. 70% complete. Performance is 57% on average for quizzes. Risk level is evaluated as Medium.', 43
  ),
  (
    663, 'Veronica Mertz', 'veronica.mertz@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/13.jpg',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2026-02-17 22:27:44', 92, '2 days ago', 1406, 47,
    '2026-04-12', 'Medium', 'Veronica Mertz is currently enrolled in Cloud Computing Fundamentals. 92% complete. Performance is 47% on average for quizzes. Risk level is evaluated as Medium.', 1
  ),
  (
    664, 'Autumn Mills', 'autumn.mills25@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/0.jpg',
    3, 'Data Privacy and GDPR', 'Sales',
    '2026-02-09 13:18:05', 11, '1 week ago', 1833, 82,
    '2026-03-14', 'Low', 'Autumn Mills is currently enrolled in Data Privacy and GDPR. 11% complete. Performance is 82% on average for quizzes. Risk level is evaluated as Low.', 60
  ),
  (
    665, 'Debbie Feil', 'debbie_feil18@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/97.jpg',
    1, 'Cybersecurity Awareness', 'Finance',
    '2026-05-01 02:16:31', 38, '1 month ago', 1160, 85,
    '2026-07-28', 'Low', 'Debbie Feil is currently enrolled in Cybersecurity Awareness. 38% complete. Performance is 85% on average for quizzes. Risk level is evaluated as Low.', 91
  ),
  (
    666, 'Lourdes Hartmann', 'lourdes.hartmann@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/0.jpg',
    6, 'Advanced Sales Techniques', 'Sales',
    '2026-05-23 17:56:25', 45, 'Yesterday', 879, 92,
    '2026-07-22', 'Low', 'Lourdes Hartmann is currently enrolled in Advanced Sales Techniques. 45% complete. Performance is 92% on average for quizzes. Risk level is evaluated as Low.', 89
  ),
  (
    667, 'Clifford Predovic', 'clifford_predovic@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/11.jpg',
    1, 'Cybersecurity Awareness', 'Sales',
    '2025-09-28 07:08:08', 20, '2 days ago', 1920, 85,
    '2025-11-23', 'High', 'Clifford Predovic is currently enrolled in Cybersecurity Awareness. 20% complete. Performance is 85% on average for quizzes. Risk level is evaluated as High.', 4
  ),
  (
    668, 'Roxanne Macejkovic', 'roxanne_macejkovic84@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/42.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Human Resources',
    '2025-09-03 06:41:50', 17, 'Yesterday', 1265, 68,
    '2025-11-16', 'High', 'Roxanne Macejkovic is currently enrolled in Diversity and Inclusion in the Workplace. 17% complete. Performance is 68% on average for quizzes. Risk level is evaluated as High.', 89
  ),
  (
    669, 'Jeffery Schaefer', 'jeffery_schaefer8@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/31.jpg',
    4, 'Leadership & Management', 'Operations',
    '2026-06-05 23:28:19', 39, 'Today', 999, 94,
    '2026-07-11', 'Low', 'Jeffery Schaefer is currently enrolled in Leadership & Management. 39% complete. Performance is 94% on average for quizzes. Risk level is evaluated as Low.', 71
  ),
  (
    670, 'Charles Mann', 'charles.mann49@yahoo.com', 'https://avatars.githubusercontent.com/u/4574345',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2026-02-24 01:38:40', 87, '3 days ago', 390, 71,
    '2026-04-11', 'Low', 'Charles Mann is currently enrolled in Cloud Computing Fundamentals. 87% complete. Performance is 71% on average for quizzes. Risk level is evaluated as Low.', 60
  ),
  (
    671, 'Christie Watsica', 'christie_watsica@yahoo.com', 'https://avatars.githubusercontent.com/u/62034658',
    4, 'Leadership & Management', 'Human Resources',
    '2026-03-29 16:48:50', 66, '2 days ago', 1566, 42,
    '2026-05-26', 'Medium', 'Christie Watsica is currently enrolled in Leadership & Management. 66% complete. Performance is 42% on average for quizzes. Risk level is evaluated as Medium.', 77
  ),
  (
    672, 'Immanuel Monahan', 'immanuel.monahan@hotmail.com', 'https://avatars.githubusercontent.com/u/24550087',
    4, 'Leadership & Management', 'Engineering',
    '2026-04-07 09:06:39', 64, 'Yesterday', 1686, 67,
    '2026-05-21', 'Low', 'Immanuel Monahan is currently enrolled in Leadership & Management. 64% complete. Performance is 67% on average for quizzes. Risk level is evaluated as Low.', 56
  ),
  (
    673, 'Charley Heathcote', 'charley.heathcote41@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/49.jpg',
    4, 'Leadership & Management', 'Marketing',
    '2026-01-30 14:39:55', 7, '2 weeks ago', 257, 89,
    '2026-04-12', 'Low', 'Charley Heathcote is currently enrolled in Leadership & Management. 7% complete. Performance is 89% on average for quizzes. Risk level is evaluated as Low.', 21
  ),
  (
    674, 'Adolf Moore', 'adolf.moore43@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/91.jpg',
    1, 'Cybersecurity Awareness', 'Sales',
    '2026-01-03 00:39:59', 45, '1 week ago', 1560, 76,
    '2026-02-03', 'Medium', 'Adolf Moore is currently enrolled in Cybersecurity Awareness. 45% complete. Performance is 76% on average for quizzes. Risk level is evaluated as Medium.', 77
  ),
  (
    675, 'Alta Kautzer', 'alta.kautzer44@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/26.jpg',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2025-09-21 21:35:35', 28, '1 week ago', 384, 97,
    '2025-11-10', 'Low', 'Alta Kautzer is currently enrolled in Cloud Computing Fundamentals. 28% complete. Performance is 97% on average for quizzes. Risk level is evaluated as Low.', 31
  ),
  (
    676, 'Nadine Marks', 'nadine_marks@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/53.jpg',
    6, 'Advanced Sales Techniques', 'Finance',
    '2025-11-04 20:04:48', 83, '3 days ago', 779, 90,
    '2025-12-23', 'High', 'Nadine Marks is currently enrolled in Advanced Sales Techniques. 83% complete. Performance is 90% on average for quizzes. Risk level is evaluated as High.', 20
  ),
  (
    677, 'Rita Smitham-Hansen', 'rita.smitham-hansen@gmail.com', 'https://avatars.githubusercontent.com/u/68389187',
    7, 'Cloud Computing Fundamentals', 'Operations',
    '2026-05-11 17:15:10', 31, '3 days ago', 1685, 87,
    '2026-06-22', 'Low', 'Rita Smitham-Hansen is currently enrolled in Cloud Computing Fundamentals. 31% complete. Performance is 87% on average for quizzes. Risk level is evaluated as Low.', 58
  ),
  (
    678, 'Jonathan Weber', 'jonathan.weber93@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/94.jpg',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2025-10-27 21:40:35', 89, 'Today', 1336, 80,
    '2026-01-16', 'High', 'Jonathan Weber is currently enrolled in Cloud Computing Fundamentals. 89% complete. Performance is 80% on average for quizzes. Risk level is evaluated as High.', 50
  ),
  (
    679, 'Josefa Doyle', 'josefa_doyle7@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/98.jpg',
    6, 'Advanced Sales Techniques', 'Human Resources',
    '2025-09-27 22:35:47', 67, '2 days ago', 206, 89,
    '2025-12-26', 'High', 'Josefa Doyle is currently enrolled in Advanced Sales Techniques. 67% complete. Performance is 89% on average for quizzes. Risk level is evaluated as High.', 99
  ),
  (
    680, 'Lorena Lang', 'lorena.lang@gmail.com', 'https://avatars.githubusercontent.com/u/64822522',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2026-06-09 04:05:06', 23, '3 days ago', 1069, 59,
    '2026-07-16', 'Medium', 'Lorena Lang is currently enrolled in Diversity and Inclusion in the Workplace. 23% complete. Performance is 59% on average for quizzes. Risk level is evaluated as Medium.', 55
  ),
  (
    681, 'Regina Jenkins-Wolf', 'regina.jenkins-wolf@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/47.jpg',
    6, 'Advanced Sales Techniques', 'Engineering',
    '2025-10-10 20:40:46', 70, '1 week ago', 989, 99,
    '2025-12-07', 'Low', 'Regina Jenkins-Wolf is currently enrolled in Advanced Sales Techniques. 70% complete. Performance is 99% on average for quizzes. Risk level is evaluated as Low.', 15
  ),
  (
    682, 'Jacob Barton-Aufderhar', 'jacob.barton-aufderhar80@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/62.jpg',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2025-09-15 22:37:31', 56, '1 week ago', 922, 97,
    '2025-12-10', 'Low', 'Jacob Barton-Aufderhar is currently enrolled in Data Privacy and GDPR. 56% complete. Performance is 97% on average for quizzes. Risk level is evaluated as Low.', 40
  ),
  (
    683, 'Wesley Lueilwitz', 'wesley_lueilwitz9@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/67.jpg',
    6, 'Advanced Sales Techniques', 'Human Resources',
    '2026-04-13 20:02:01', 30, 'Today', 450, 59,
    '2026-06-29', 'Low', 'Wesley Lueilwitz is currently enrolled in Advanced Sales Techniques. 30% complete. Performance is 59% on average for quizzes. Risk level is evaluated as Low.', 59
  ),
  (
    684, 'Markus Carroll', 'markus_carroll@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/25.jpg',
    3, 'Data Privacy and GDPR', 'Sales',
    '2026-01-07 15:51:53', 10, 'Today', 1492, 71,
    '2026-02-13', 'High', 'Markus Carroll is currently enrolled in Data Privacy and GDPR. 10% complete. Performance is 71% on average for quizzes. Risk level is evaluated as High.', 43
  ),
  (
    685, 'Faye Volkman-Shanahan', 'faye.volkman-shanahan7@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/52.jpg',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2025-08-10 17:44:29', 88, '2 days ago', 1595, 52,
    '2025-11-08', 'High', 'Faye Volkman-Shanahan is currently enrolled in Data Privacy and GDPR. 88% complete. Performance is 52% on average for quizzes. Risk level is evaluated as High.', 84
  ),
  (
    686, 'Katherine Corwin', 'katherine_corwin97@yahoo.com', 'https://avatars.githubusercontent.com/u/89318739',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2026-06-27 01:46:30', 3, 'Today', 1747, 51,
    '2026-09-02', 'Low', 'Katherine Corwin is currently enrolled in Cloud Computing Fundamentals. 3% complete. Performance is 51% on average for quizzes. Risk level is evaluated as Low.', 95
  ),
  (
    687, 'Glenda Blanda', 'glenda.blanda84@hotmail.com', 'https://avatars.githubusercontent.com/u/17321661',
    4, 'Leadership & Management', 'Human Resources',
    '2026-02-03 06:17:42', 98, '2 days ago', 238, 71,
    '2026-04-02', 'High', 'Glenda Blanda is currently enrolled in Leadership & Management. 98% complete. Performance is 71% on average for quizzes. Risk level is evaluated as High.', 55
  ),
  (
    688, 'Gregg Jacobi', 'gregg.jacobi88@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/68.jpg',
    4, 'Leadership & Management', 'Human Resources',
    '2026-02-04 19:51:43', 51, '1 week ago', 370, 56,
    '2026-04-19', 'Medium', 'Gregg Jacobi is currently enrolled in Leadership & Management. 51% complete. Performance is 56% on average for quizzes. Risk level is evaluated as Medium.', 9
  ),
  (
    689, 'Dannie Schumm', 'dannie_schumm@hotmail.com', 'https://avatars.githubusercontent.com/u/11277034',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2026-02-02 16:45:28', 66, 'Today', 780, 96,
    '2026-03-05', 'Medium', 'Dannie Schumm is currently enrolled in Diversity and Inclusion in the Workplace. 66% complete. Performance is 96% on average for quizzes. Risk level is evaluated as Medium.', 71
  ),
  (
    690, 'Toni Kilback', 'toni_kilback@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/1.jpg',
    4, 'Leadership & Management', 'Customer Support',
    '2026-05-02 12:57:30', 65, '3 days ago', 865, 55,
    '2026-06-25', 'High', 'Toni Kilback is currently enrolled in Leadership & Management. 65% complete. Performance is 55% on average for quizzes. Risk level is evaluated as High.', 41
  ),
  (
    691, 'Agustin Sporer', 'agustin_sporer@hotmail.com', 'https://avatars.githubusercontent.com/u/48228786',
    4, 'Leadership & Management', 'Engineering',
    '2025-10-23 11:06:54', 71, '1 week ago', 559, 72,
    '2026-01-06', 'Low', 'Agustin Sporer is currently enrolled in Leadership & Management. 71% complete. Performance is 72% on average for quizzes. Risk level is evaluated as Low.', 23
  ),
  (
    692, 'Demetrius Mertz', 'demetrius_mertz@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/88.jpg',
    4, 'Leadership & Management', 'Operations',
    '2026-02-28 18:21:31', 80, '2 weeks ago', 199, 63,
    '2026-05-09', 'Medium', 'Demetrius Mertz is currently enrolled in Leadership & Management. 80% complete. Performance is 63% on average for quizzes. Risk level is evaluated as Medium.', 65
  ),
  (
    693, 'Lola Wehner', 'lola_wehner20@hotmail.com', 'https://avatars.githubusercontent.com/u/3943992',
    6, 'Advanced Sales Techniques', 'Human Resources',
    '2025-10-17 13:42:50', 15, 'Yesterday', 412, 69,
    '2025-11-29', 'Medium', 'Lola Wehner is currently enrolled in Advanced Sales Techniques. 15% complete. Performance is 69% on average for quizzes. Risk level is evaluated as Medium.', 91
  ),
  (
    694, 'Ruthie Kuhlman', 'ruthie_kuhlman@yahoo.com', 'https://avatars.githubusercontent.com/u/20656401',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2025-08-11 18:59:49', 60, '2 weeks ago', 976, 84,
    '2025-10-21', 'High', 'Ruthie Kuhlman is currently enrolled in Workplace Ethics & Code of Conduct. 60% complete. Performance is 84% on average for quizzes. Risk level is evaluated as High.', 44
  ),
  (
    695, 'Maggie Murazik', 'maggie.murazik33@hotmail.com', 'https://avatars.githubusercontent.com/u/39576606',
    4, 'Leadership & Management', 'Finance',
    '2026-07-21 21:42:13', 98, 'Today', 598, 58,
    '2026-09-20', 'Low', 'Maggie Murazik is currently enrolled in Leadership & Management. 98% complete. Performance is 58% on average for quizzes. Risk level is evaluated as Low.', 64
  ),
  (
    696, 'Fabian Kerluke', 'fabian_kerluke@hotmail.com', 'https://avatars.githubusercontent.com/u/63712226',
    3, 'Data Privacy and GDPR', 'Operations',
    '2025-08-22 18:59:53', 36, 'Today', 433, 82,
    '2025-09-29', 'Medium', 'Fabian Kerluke is currently enrolled in Data Privacy and GDPR. 36% complete. Performance is 82% on average for quizzes. Risk level is evaluated as Medium.', 97
  ),
  (
    697, 'Jeremiah Okuneva', 'jeremiah.okuneva62@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/58.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2025-12-02 15:32:35', 35, '1 month ago', 1837, 93,
    '2026-02-09', 'Medium', 'Jeremiah Okuneva is currently enrolled in Diversity and Inclusion in the Workplace. 35% complete. Performance is 93% on average for quizzes. Risk level is evaluated as Medium.', 95
  ),
  (
    698, 'Clifford Lakin', 'clifford_lakin73@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/31.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Sales',
    '2026-06-08 16:50:49', 79, '1 week ago', 1645, 40,
    '2026-08-14', 'Low', 'Clifford Lakin is currently enrolled in Workplace Ethics & Code of Conduct. 79% complete. Performance is 40% on average for quizzes. Risk level is evaluated as Low.', 38
  ),
  (
    699, 'Wanda Conn', 'wanda_conn51@hotmail.com', 'https://avatars.githubusercontent.com/u/78742092',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2026-05-25 16:44:25', 68, '3 days ago', 1544, 79,
    '2026-08-05', 'Low', 'Wanda Conn is currently enrolled in Cybersecurity Awareness. 68% complete. Performance is 79% on average for quizzes. Risk level is evaluated as Low.', 52
  ),
  (
    700, 'Meghan McClure', 'meghan_mcclure@yahoo.com', 'https://avatars.githubusercontent.com/u/46459430',
    4, 'Leadership & Management', 'Operations',
    '2026-03-21 10:41:55', 84, 'Yesterday', 1141, 41,
    '2026-05-30', 'Low', 'Meghan McClure is currently enrolled in Leadership & Management. 84% complete. Performance is 41% on average for quizzes. Risk level is evaluated as Low.', 97
  ),
  (
    701, 'Germaine Hane', 'germaine_hane@gmail.com', 'https://avatars.githubusercontent.com/u/82182044',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2025-08-11 15:14:21', 43, 'Yesterday', 1953, 67,
    '2025-11-03', 'Medium', 'Germaine Hane is currently enrolled in Diversity and Inclusion in the Workplace. 43% complete. Performance is 67% on average for quizzes. Risk level is evaluated as Medium.', 88
  ),
  (
    702, 'Alice Stiedemann', 'alice_stiedemann29@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/10.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Human Resources',
    '2026-03-27 22:05:50', 10, 'Yesterday', 1294, 47,
    '2026-05-19', 'Low', 'Alice Stiedemann is currently enrolled in Diversity and Inclusion in the Workplace. 10% complete. Performance is 47% on average for quizzes. Risk level is evaluated as Low.', 40
  ),
  (
    703, 'Armando Schroeder', 'armando.schroeder@gmail.com', 'https://avatars.githubusercontent.com/u/73578153',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2025-12-26 05:26:13', 98, 'Yesterday', 1943, 91,
    '2026-02-02', 'High', 'Armando Schroeder is currently enrolled in Cloud Computing Fundamentals. 98% complete. Performance is 91% on average for quizzes. Risk level is evaluated as High.', 30
  ),
  (
    704, 'Grant Langosh', 'grant.langosh68@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/94.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Sales',
    '2026-06-02 14:43:15', 93, '2 weeks ago', 1097, 94,
    '2026-07-03', 'Medium', 'Grant Langosh is currently enrolled in Diversity and Inclusion in the Workplace. 93% complete. Performance is 94% on average for quizzes. Risk level is evaluated as Medium.', 77
  ),
  (
    705, 'Theresa Dach', 'theresa_dach@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/31.jpg',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2026-07-19 20:20:15', 84, '3 days ago', 1111, 41,
    '2026-09-28', 'Low', 'Theresa Dach is currently enrolled in Data Privacy and GDPR. 84% complete. Performance is 41% on average for quizzes. Risk level is evaluated as Low.', 68
  ),
  (
    706, 'Jamarcus Stark', 'jamarcus.stark@gmail.com', 'https://avatars.githubusercontent.com/u/10024126',
    7, 'Cloud Computing Fundamentals', 'Sales',
    '2026-01-24 08:52:34', 46, '2 days ago', 140, 81,
    '2026-02-27', 'Low', 'Jamarcus Stark is currently enrolled in Cloud Computing Fundamentals. 46% complete. Performance is 81% on average for quizzes. Risk level is evaluated as Low.', 78
  ),
  (
    707, 'Glenn Kassulke', 'glenn.kassulke@gmail.com', 'https://avatars.githubusercontent.com/u/10385647',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2026-02-06 00:51:23', 12, '2 weeks ago', 187, 89,
    '2026-05-07', 'Low', 'Glenn Kassulke is currently enrolled in Data Privacy and GDPR. 12% complete. Performance is 89% on average for quizzes. Risk level is evaluated as Low.', 22
  ),
  (
    708, 'Trent Kilback', 'trent_kilback13@gmail.com', 'https://avatars.githubusercontent.com/u/23166409',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2026-04-04 05:23:53', 12, '1 week ago', 1042, 69,
    '2026-06-06', 'Low', 'Trent Kilback is currently enrolled in Cloud Computing Fundamentals. 12% complete. Performance is 69% on average for quizzes. Risk level is evaluated as Low.', 25
  ),
  (
    709, 'Darryl Towne', 'darryl_towne75@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/77.jpg',
    1, 'Cybersecurity Awareness', 'Operations',
    '2026-03-27 11:36:33', 35, '2 days ago', 1415, 99,
    '2026-05-27', 'Low', 'Darryl Towne is currently enrolled in Cybersecurity Awareness. 35% complete. Performance is 99% on average for quizzes. Risk level is evaluated as Low.', 58
  ),
  (
    710, 'Frank Collins', 'frank_collins@yahoo.com', 'https://avatars.githubusercontent.com/u/10212381',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2026-02-21 22:42:43', 90, '2 weeks ago', 16, 59,
    '2026-05-16', 'Low', 'Frank Collins is currently enrolled in Workplace Ethics & Code of Conduct. 90% complete. Performance is 59% on average for quizzes. Risk level is evaluated as Low.', 93
  ),
  (
    711, 'Vanessa Lind', 'vanessa.lind23@hotmail.com', 'https://avatars.githubusercontent.com/u/52915475',
    6, 'Advanced Sales Techniques', 'Engineering',
    '2025-08-18 12:42:54', 11, 'Yesterday', 1352, 54,
    '2025-10-15', 'Low', 'Vanessa Lind is currently enrolled in Advanced Sales Techniques. 11% complete. Performance is 54% on average for quizzes. Risk level is evaluated as Low.', 87
  ),
  (
    712, 'Andreane Mante', 'andreane_mante@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/6.jpg',
    7, 'Cloud Computing Fundamentals', 'Marketing',
    '2025-08-11 08:30:55', 88, '2 weeks ago', 1450, 41,
    '2025-09-24', 'High', 'Andreane Mante is currently enrolled in Cloud Computing Fundamentals. 88% complete. Performance is 41% on average for quizzes. Risk level is evaluated as High.', 69
  ),
  (
    713, 'Jeanne Hand', 'jeanne.hand@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/67.jpg',
    3, 'Data Privacy and GDPR', 'Marketing',
    '2025-09-06 09:02:01', 54, '1 month ago', 1935, 64,
    '2025-10-06', 'High', 'Jeanne Hand is currently enrolled in Data Privacy and GDPR. 54% complete. Performance is 64% on average for quizzes. Risk level is evaluated as High.', 93
  ),
  (
    714, 'Samantha Ortiz', 'samantha_ortiz70@gmail.com', 'https://avatars.githubusercontent.com/u/16688639',
    4, 'Leadership & Management', 'Marketing',
    '2026-02-14 23:55:24', 57, '1 week ago', 1289, 82,
    '2026-03-22', 'High', 'Samantha Ortiz is currently enrolled in Leadership & Management. 57% complete. Performance is 82% on average for quizzes. Risk level is evaluated as High.', 50
  ),
  (
    715, 'Amari Frami', 'amari.frami66@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/8.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2025-08-21 00:50:48', 97, '3 days ago', 143, 53,
    '2025-11-03', 'Low', 'Amari Frami is currently enrolled in Workplace Ethics & Code of Conduct. 97% complete. Performance is 53% on average for quizzes. Risk level is evaluated as Low.', 27
  ),
  (
    716, 'Maya Dooley', 'maya_dooley@hotmail.com', 'https://avatars.githubusercontent.com/u/69398567',
    3, 'Data Privacy and GDPR', 'Sales',
    '2026-03-15 07:25:34', 54, 'Yesterday', 1420, 80,
    '2026-05-19', 'Medium', 'Maya Dooley is currently enrolled in Data Privacy and GDPR. 54% complete. Performance is 80% on average for quizzes. Risk level is evaluated as Medium.', 23
  ),
  (
    717, 'Vida Stanton', 'vida.stanton@hotmail.com', 'https://avatars.githubusercontent.com/u/77435091',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2026-01-24 05:15:57', 88, '2 days ago', 1204, 56,
    '2026-03-13', 'High', 'Vida Stanton is currently enrolled in Diversity and Inclusion in the Workplace. 88% complete. Performance is 56% on average for quizzes. Risk level is evaluated as High.', 20
  ),
  (
    718, 'Lorraine Torp', 'lorraine_torp73@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/52.jpg',
    1, 'Cybersecurity Awareness', 'Operations',
    '2026-03-17 16:59:51', 75, '1 week ago', 156, 67,
    '2026-04-23', 'Low', 'Lorraine Torp is currently enrolled in Cybersecurity Awareness. 75% complete. Performance is 67% on average for quizzes. Risk level is evaluated as Low.', 6
  ),
  (
    719, 'Oliver Rath', 'oliver.rath31@yahoo.com', 'https://avatars.githubusercontent.com/u/20020635',
    3, 'Data Privacy and GDPR', 'Finance',
    '2026-07-10 02:47:23', 65, '1 month ago', 247, 48,
    '2026-09-17', 'Low', 'Oliver Rath is currently enrolled in Data Privacy and GDPR. 65% complete. Performance is 48% on average for quizzes. Risk level is evaluated as Low.', 68
  ),
  (
    720, 'Demetrius Collins', 'demetrius.collins@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/22.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Human Resources',
    '2026-05-19 01:12:25', 9, '2 days ago', 1933, 48,
    '2026-06-27', 'Medium', 'Demetrius Collins is currently enrolled in Diversity and Inclusion in the Workplace. 9% complete. Performance is 48% on average for quizzes. Risk level is evaluated as Medium.', 56
  ),
  (
    721, 'Nettie Kuhlman', 'nettie_kuhlman@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/14.jpg',
    4, 'Leadership & Management', 'Marketing',
    '2026-07-29 13:25:02', 86, 'Today', 1199, 71,
    '2026-09-10', 'High', 'Nettie Kuhlman is currently enrolled in Leadership & Management. 86% complete. Performance is 71% on average for quizzes. Risk level is evaluated as High.', 85
  ),
  (
    722, 'Austyn Schmitt', 'austyn_schmitt0@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/40.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Sales',
    '2026-08-02 22:07:36', 80, '1 month ago', 1407, 84,
    '2026-09-23', 'Medium', 'Austyn Schmitt is currently enrolled in Diversity and Inclusion in the Workplace. 80% complete. Performance is 84% on average for quizzes. Risk level is evaluated as Medium.', 52
  ),
  (
    723, 'Dominic Russel', 'dominic.russel67@yahoo.com', 'https://avatars.githubusercontent.com/u/35341707',
    3, 'Data Privacy and GDPR', 'Sales',
    '2025-10-15 04:52:44', 10, '2 weeks ago', 400, 99,
    '2025-12-24', 'Low', 'Dominic Russel is currently enrolled in Data Privacy and GDPR. 10% complete. Performance is 99% on average for quizzes. Risk level is evaluated as Low.', 64
  ),
  (
    724, 'Doyle Quitzon', 'doyle_quitzon@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/1.jpg',
    4, 'Leadership & Management', 'Human Resources',
    '2026-02-11 12:51:38', 68, 'Yesterday', 1024, 75,
    '2026-04-17', 'Low', 'Doyle Quitzon is currently enrolled in Leadership & Management. 68% complete. Performance is 75% on average for quizzes. Risk level is evaluated as Low.', 53
  ),
  (
    725, 'Rosalee Kertzmann', 'rosalee.kertzmann@gmail.com', 'https://avatars.githubusercontent.com/u/76987993',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2025-08-28 13:04:16', 92, 'Yesterday', 129, 68,
    '2025-10-01', 'Low', 'Rosalee Kertzmann is currently enrolled in Workplace Ethics & Code of Conduct. 92% complete. Performance is 68% on average for quizzes. Risk level is evaluated as Low.', 77
  ),
  (
    726, 'Frank Nader', 'frank_nader@yahoo.com', 'https://avatars.githubusercontent.com/u/91768034',
    6, 'Advanced Sales Techniques', 'Human Resources',
    '2026-04-30 07:53:44', 66, '1 week ago', 178, 57,
    '2026-07-23', 'High', 'Frank Nader is currently enrolled in Advanced Sales Techniques. 66% complete. Performance is 57% on average for quizzes. Risk level is evaluated as High.', 44
  ),
  (
    727, 'Tara Volkman', 'tara.volkman@gmail.com', 'https://avatars.githubusercontent.com/u/64191612',
    6, 'Advanced Sales Techniques', 'Customer Support',
    '2025-11-08 23:48:10', 65, 'Yesterday', 1695, 49,
    '2026-01-08', 'Medium', 'Tara Volkman is currently enrolled in Advanced Sales Techniques. 65% complete. Performance is 49% on average for quizzes. Risk level is evaluated as Medium.', 100
  ),
  (
    728, 'Eduardo Miller', 'eduardo.miller@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/8.jpg',
    4, 'Leadership & Management', 'Engineering',
    '2026-04-10 04:27:45', 67, '2 weeks ago', 1504, 73,
    '2026-06-09', 'Medium', 'Eduardo Miller is currently enrolled in Leadership & Management. 67% complete. Performance is 73% on average for quizzes. Risk level is evaluated as Medium.', 31
  ),
  (
    729, 'Nina O''Reilly', 'nina_oreilly50@gmail.com', 'https://avatars.githubusercontent.com/u/3968526',
    3, 'Data Privacy and GDPR', 'Marketing',
    '2026-07-24 02:46:44', 39, '3 days ago', 886, 60,
    '2026-10-19', 'Medium', 'Nina O''Reilly is currently enrolled in Data Privacy and GDPR. 39% complete. Performance is 60% on average for quizzes. Risk level is evaluated as Medium.', 8
  ),
  (
    730, 'Mark Rutherford', 'mark.rutherford87@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/4.jpg',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2026-07-12 01:24:12', 81, '1 week ago', 536, 85,
    '2026-09-30', 'Low', 'Mark Rutherford is currently enrolled in Data Privacy and GDPR. 81% complete. Performance is 85% on average for quizzes. Risk level is evaluated as Low.', 42
  ),
  (
    731, 'Kelly Abernathy', 'kelly_abernathy0@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/96.jpg',
    4, 'Leadership & Management', 'Sales',
    '2025-09-25 16:27:04', 52, 'Today', 1094, 41,
    '2025-12-18', 'Low', 'Kelly Abernathy is currently enrolled in Leadership & Management. 52% complete. Performance is 41% on average for quizzes. Risk level is evaluated as Low.', 79
  ),
  (
    732, 'Myrna Hauck', 'myrna.hauck@hotmail.com', 'https://avatars.githubusercontent.com/u/51482345',
    5, 'Diversity and Inclusion in the Workplace', 'Marketing',
    '2026-06-10 02:58:36', 13, '2 days ago', 415, 48,
    '2026-08-04', 'Low', 'Myrna Hauck is currently enrolled in Diversity and Inclusion in the Workplace. 13% complete. Performance is 48% on average for quizzes. Risk level is evaluated as Low.', 54
  ),
  (
    733, 'Yvonne Schmeler', 'yvonne.schmeler6@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/89.jpg',
    3, 'Data Privacy and GDPR', 'Marketing',
    '2025-10-08 16:03:09', 83, 'Today', 688, 54,
    '2025-11-15', 'Medium', 'Yvonne Schmeler is currently enrolled in Data Privacy and GDPR. 83% complete. Performance is 54% on average for quizzes. Risk level is evaluated as Medium.', 40
  ),
  (
    734, 'Howard Feil', 'howard.feil@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/23.jpg',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2026-06-10 08:23:10', 33, '2 days ago', 752, 80,
    '2026-08-06', 'Low', 'Howard Feil is currently enrolled in Cybersecurity Awareness. 33% complete. Performance is 80% on average for quizzes. Risk level is evaluated as Low.', 14
  ),
  (
    735, 'Wilson Orn', 'wilson_orn4@gmail.com', 'https://avatars.githubusercontent.com/u/98520462',
    3, 'Data Privacy and GDPR', 'Sales',
    '2026-04-20 12:42:19', 30, '2 days ago', 761, 79,
    '2026-06-02', 'Low', 'Wilson Orn is currently enrolled in Data Privacy and GDPR. 30% complete. Performance is 79% on average for quizzes. Risk level is evaluated as Low.', 68
  ),
  (
    736, 'Mateo O''Kon', 'mateo.okon30@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/54.jpg',
    6, 'Advanced Sales Techniques', 'Sales',
    '2026-02-05 09:32:29', 30, 'Today', 1758, 72,
    '2026-03-07', 'Medium', 'Mateo O''Kon is currently enrolled in Advanced Sales Techniques. 30% complete. Performance is 72% on average for quizzes. Risk level is evaluated as Medium.', 20
  ),
  (
    737, 'Alton Kozey', 'alton.kozey@gmail.com', 'https://avatars.githubusercontent.com/u/77811931',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2026-02-05 01:27:50', 94, '1 month ago', 1982, 66,
    '2026-04-15', 'Low', 'Alton Kozey is currently enrolled in Workplace Ethics & Code of Conduct. 94% complete. Performance is 66% on average for quizzes. Risk level is evaluated as Low.', 24
  ),
  (
    738, 'Cara Block', 'cara.block@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/94.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2026-03-09 14:09:38', 22, '2 weeks ago', 1104, 40,
    '2026-06-07', 'Low', 'Cara Block is currently enrolled in Diversity and Inclusion in the Workplace. 22% complete. Performance is 40% on average for quizzes. Risk level is evaluated as Low.', 2
  ),
  (
    739, 'Eliseo Ullrich', 'eliseo.ullrich@yahoo.com', 'https://avatars.githubusercontent.com/u/87750583',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2025-09-26 16:54:19', 87, '1 week ago', 208, 73,
    '2025-10-26', 'High', 'Eliseo Ullrich is currently enrolled in Workplace Ethics & Code of Conduct. 87% complete. Performance is 73% on average for quizzes. Risk level is evaluated as High.', 62
  ),
  (
    740, 'Miranda Torphy', 'miranda.torphy@yahoo.com', 'https://avatars.githubusercontent.com/u/74568192',
    6, 'Advanced Sales Techniques', 'Customer Support',
    '2026-07-14 21:16:26', 4, '1 week ago', 860, 57,
    '2026-09-06', 'Medium', 'Miranda Torphy is currently enrolled in Advanced Sales Techniques. 4% complete. Performance is 57% on average for quizzes. Risk level is evaluated as Medium.', 5
  ),
  (
    741, 'Marisol D''Amore', 'marisol_damore95@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/37.jpg',
    4, 'Leadership & Management', 'Operations',
    '2026-03-31 18:39:03', 6, 'Yesterday', 1967, 79,
    '2026-05-07', 'Medium', 'Marisol D''Amore is currently enrolled in Leadership & Management. 6% complete. Performance is 79% on average for quizzes. Risk level is evaluated as Medium.', 66
  ),
  (
    742, 'Nolan Dach', 'nolan.dach@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/62.jpg',
    4, 'Leadership & Management', 'Customer Support',
    '2025-11-26 00:50:22', 37, '2 days ago', 771, 64,
    '2026-01-11', 'Low', 'Nolan Dach is currently enrolled in Leadership & Management. 37% complete. Performance is 64% on average for quizzes. Risk level is evaluated as Low.', 79
  ),
  (
    743, 'Rashad Boyle-Koch', 'rashad_boyle-koch@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/90.jpg',
    6, 'Advanced Sales Techniques', 'Marketing',
    '2026-06-13 13:21:48', 92, '2 weeks ago', 156, 80,
    '2026-07-29', 'Low', 'Rashad Boyle-Koch is currently enrolled in Advanced Sales Techniques. 92% complete. Performance is 80% on average for quizzes. Risk level is evaluated as Low.', 44
  ),
  (
    744, 'Hailey Schimmel', 'hailey_schimmel32@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/5.jpg',
    6, 'Advanced Sales Techniques', 'Human Resources',
    '2026-04-10 21:13:52', 9, '1 week ago', 1162, 82,
    '2026-06-25', 'Medium', 'Hailey Schimmel is currently enrolled in Advanced Sales Techniques. 9% complete. Performance is 82% on average for quizzes. Risk level is evaluated as Medium.', 45
  ),
  (
    745, 'Beth Romaguera', 'beth.romaguera65@yahoo.com', 'https://avatars.githubusercontent.com/u/97750585',
    6, 'Advanced Sales Techniques', 'Human Resources',
    '2025-09-21 18:32:18', 20, '2 weeks ago', 655, 82,
    '2025-12-18', 'Low', 'Beth Romaguera is currently enrolled in Advanced Sales Techniques. 20% complete. Performance is 82% on average for quizzes. Risk level is evaluated as Low.', 85
  ),
  (
    746, 'America Bruen-Lindgren', 'america.bruen-lindgren@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/73.jpg',
    4, 'Leadership & Management', 'Finance',
    '2026-03-28 07:14:48', 72, '3 days ago', 766, 81,
    '2026-06-15', 'Low', 'America Bruen-Lindgren is currently enrolled in Leadership & Management. 72% complete. Performance is 81% on average for quizzes. Risk level is evaluated as Low.', 75
  ),
  (
    747, 'Brandy Romaguera', 'brandy.romaguera@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/53.jpg',
    1, 'Cybersecurity Awareness', 'Sales',
    '2026-06-20 10:26:09', 44, '1 week ago', 611, 60,
    '2026-08-25', 'Low', 'Brandy Romaguera is currently enrolled in Cybersecurity Awareness. 44% complete. Performance is 60% on average for quizzes. Risk level is evaluated as Low.', 77
  ),
  (
    748, 'Heidi Wisoky', 'heidi_wisoky77@hotmail.com', 'https://avatars.githubusercontent.com/u/25258621',
    3, 'Data Privacy and GDPR', 'Operations',
    '2026-02-13 10:06:45', 45, 'Today', 1550, 52,
    '2026-03-26', 'High', 'Heidi Wisoky is currently enrolled in Data Privacy and GDPR. 45% complete. Performance is 52% on average for quizzes. Risk level is evaluated as High.', 83
  ),
  (
    749, 'Krystal Homenick', 'krystal.homenick54@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/11.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Engineering',
    '2026-01-19 14:58:37', 65, 'Yesterday', 1133, 76,
    '2026-02-23', 'Low', 'Krystal Homenick is currently enrolled in Workplace Ethics & Code of Conduct. 65% complete. Performance is 76% on average for quizzes. Risk level is evaluated as Low.', 7
  ),
  (
    750, 'Katrina Heidenreich', 'katrina_heidenreich17@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/27.jpg',
    7, 'Cloud Computing Fundamentals', 'Operations',
    '2026-04-23 06:42:46', 31, '1 week ago', 739, 66,
    '2026-06-09', 'Medium', 'Katrina Heidenreich is currently enrolled in Cloud Computing Fundamentals. 31% complete. Performance is 66% on average for quizzes. Risk level is evaluated as Medium.', 83
  ),
  (
    751, 'Torey Runte', 'torey.runte@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/82.jpg',
    3, 'Data Privacy and GDPR', 'Marketing',
    '2026-05-29 23:08:54', 32, 'Today', 1208, 65,
    '2026-07-27', 'High', 'Torey Runte is currently enrolled in Data Privacy and GDPR. 32% complete. Performance is 65% on average for quizzes. Risk level is evaluated as High.', 75
  ),
  (
    752, 'Rupert Marvin', 'rupert_marvin62@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/16.jpg',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2025-08-23 03:12:03', 27, '3 days ago', 122, 88,
    '2025-10-06', 'Low', 'Rupert Marvin is currently enrolled in Data Privacy and GDPR. 27% complete. Performance is 88% on average for quizzes. Risk level is evaluated as Low.', 80
  ),
  (
    753, 'Octavia Abbott', 'octavia_abbott43@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/1.jpg',
    4, 'Leadership & Management', 'Finance',
    '2025-11-22 00:41:49', 86, 'Yesterday', 751, 58,
    '2026-01-23', 'Low', 'Octavia Abbott is currently enrolled in Leadership & Management. 86% complete. Performance is 58% on average for quizzes. Risk level is evaluated as Low.', 84
  ),
  (
    754, 'Earnest Walker', 'earnest_walker@hotmail.com', 'https://avatars.githubusercontent.com/u/53876812',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2026-01-26 19:42:37', 88, '1 week ago', 1896, 90,
    '2026-03-03', 'Low', 'Earnest Walker is currently enrolled in Diversity and Inclusion in the Workplace. 88% complete. Performance is 90% on average for quizzes. Risk level is evaluated as Low.', 74
  ),
  (
    755, 'Markus Farrell', 'markus.farrell@yahoo.com', 'https://avatars.githubusercontent.com/u/99590094',
    3, 'Data Privacy and GDPR', 'Operations',
    '2026-03-11 03:58:10', 23, '3 days ago', 469, 54,
    '2026-04-15', 'Low', 'Markus Farrell is currently enrolled in Data Privacy and GDPR. 23% complete. Performance is 54% on average for quizzes. Risk level is evaluated as Low.', 85
  ),
  (
    756, 'Anne Schuster', 'anne.schuster11@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/12.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Sales',
    '2025-11-05 17:46:19', 85, 'Today', 1209, 78,
    '2025-12-11', 'Low', 'Anne Schuster is currently enrolled in Diversity and Inclusion in the Workplace. 85% complete. Performance is 78% on average for quizzes. Risk level is evaluated as Low.', 96
  ),
  (
    757, 'Lisa Krajcik-Willms', 'lisa.krajcik-willms@hotmail.com', 'https://avatars.githubusercontent.com/u/51747328',
    4, 'Leadership & Management', 'Engineering',
    '2025-08-20 07:45:33', 21, '3 days ago', 1990, 71,
    '2025-10-02', 'High', 'Lisa Krajcik-Willms is currently enrolled in Leadership & Management. 21% complete. Performance is 71% on average for quizzes. Risk level is evaluated as High.', 16
  ),
  (
    758, 'Ramon Kuphal', 'ramon_kuphal1@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/62.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2025-12-30 21:26:48', 14, 'Today', 1646, 100,
    '2026-03-18', 'Low', 'Ramon Kuphal is currently enrolled in Workplace Ethics & Code of Conduct. 14% complete. Performance is 100% on average for quizzes. Risk level is evaluated as Low.', 76
  ),
  (
    759, 'Marjory Gibson', 'marjory_gibson@hotmail.com', 'https://avatars.githubusercontent.com/u/28545078',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2026-07-14 20:59:55', 73, '1 month ago', 153, 48,
    '2026-09-10', 'Low', 'Marjory Gibson is currently enrolled in Diversity and Inclusion in the Workplace. 73% complete. Performance is 48% on average for quizzes. Risk level is evaluated as Low.', 37
  ),
  (
    760, 'Lillian Swift', 'lillian.swift49@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/23.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Marketing',
    '2026-03-22 08:45:33', 24, '1 month ago', 101, 96,
    '2026-05-15', 'Medium', 'Lillian Swift is currently enrolled in Diversity and Inclusion in the Workplace. 24% complete. Performance is 96% on average for quizzes. Risk level is evaluated as Medium.', 45
  ),
  (
    761, 'Lucas Legros', 'lucas_legros92@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/71.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Operations',
    '2025-12-14 16:44:34', 44, 'Yesterday', 1713, 83,
    '2026-03-05', 'Low', 'Lucas Legros is currently enrolled in Workplace Ethics & Code of Conduct. 44% complete. Performance is 83% on average for quizzes. Risk level is evaluated as Low.', 49
  ),
  (
    762, 'Oran Fisher', 'oran_fisher@hotmail.com', 'https://avatars.githubusercontent.com/u/10255020',
    3, 'Data Privacy and GDPR', 'Customer Support',
    '2025-11-23 16:26:48', 93, '2 weeks ago', 62, 88,
    '2026-01-27', 'Medium', 'Oran Fisher is currently enrolled in Data Privacy and GDPR. 93% complete. Performance is 88% on average for quizzes. Risk level is evaluated as Medium.', 92
  ),
  (
    763, 'Phil Steuber', 'phil.steuber77@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/83.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2025-11-13 02:21:23', 83, '3 days ago', 1838, 49,
    '2026-02-11', 'Medium', 'Phil Steuber is currently enrolled in Workplace Ethics & Code of Conduct. 83% complete. Performance is 49% on average for quizzes. Risk level is evaluated as Medium.', 97
  ),
  (
    764, 'Jalyn Buckridge', 'jalyn_buckridge23@hotmail.com', 'https://avatars.githubusercontent.com/u/13861916',
    6, 'Advanced Sales Techniques', 'Customer Support',
    '2025-12-26 23:08:06', 1, '1 week ago', 614, 43,
    '2026-02-17', 'Low', 'Jalyn Buckridge is currently enrolled in Advanced Sales Techniques. 1% complete. Performance is 43% on average for quizzes. Risk level is evaluated as Low.', 54
  ),
  (
    765, 'Dean Zieme', 'dean_zieme@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/14.jpg',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2026-06-08 15:26:52', 27, '2 days ago', 641, 56,
    '2026-07-21', 'Low', 'Dean Zieme is currently enrolled in Cybersecurity Awareness. 27% complete. Performance is 56% on average for quizzes. Risk level is evaluated as Low.', 32
  ),
  (
    766, 'Avis Denesik', 'avis_denesik84@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/62.jpg',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2025-10-07 11:24:40', 86, '2 weeks ago', 1572, 72,
    '2025-11-20', 'Medium', 'Avis Denesik is currently enrolled in Cloud Computing Fundamentals. 86% complete. Performance is 72% on average for quizzes. Risk level is evaluated as Medium.', 14
  ),
  (
    767, 'Johnathan Beahan', 'johnathan.beahan50@hotmail.com', 'https://avatars.githubusercontent.com/u/40506978',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2025-11-18 04:37:08', 58, '2 weeks ago', 1151, 90,
    '2026-01-08', 'High', 'Johnathan Beahan is currently enrolled in Workplace Ethics & Code of Conduct. 58% complete. Performance is 90% on average for quizzes. Risk level is evaluated as High.', 56
  ),
  (
    768, 'Mozelle Goldner', 'mozelle.goldner82@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/64.jpg',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2026-07-13 15:11:32', 87, '1 month ago', 1168, 62,
    '2026-09-27', 'Medium', 'Mozelle Goldner is currently enrolled in Data Privacy and GDPR. 87% complete. Performance is 62% on average for quizzes. Risk level is evaluated as Medium.', 99
  ),
  (
    769, 'Vivienne Robel', 'vivienne.robel@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/31.jpg',
    6, 'Advanced Sales Techniques', 'Sales',
    '2026-06-01 06:21:06', 54, '3 days ago', 1326, 43,
    '2026-08-10', 'Low', 'Vivienne Robel is currently enrolled in Advanced Sales Techniques. 54% complete. Performance is 43% on average for quizzes. Risk level is evaluated as Low.', 33
  ),
  (
    770, 'Juanita Hintz', 'juanita.hintz3@hotmail.com', 'https://avatars.githubusercontent.com/u/94996506',
    1, 'Cybersecurity Awareness', 'Finance',
    '2026-07-08 12:43:28', 65, 'Today', 92, 43,
    '2026-08-29', 'Medium', 'Juanita Hintz is currently enrolled in Cybersecurity Awareness. 65% complete. Performance is 43% on average for quizzes. Risk level is evaluated as Medium.', 16
  ),
  (
    771, 'Chester Sporer', 'chester_sporer23@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/30.jpg',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2026-02-04 21:26:04', 3, 'Today', 1382, 51,
    '2026-04-29', 'Low', 'Chester Sporer is currently enrolled in Cybersecurity Awareness. 3% complete. Performance is 51% on average for quizzes. Risk level is evaluated as Low.', 62
  ),
  (
    772, 'Ramon Medhurst', 'ramon.medhurst@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/59.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Sales',
    '2025-12-25 03:59:47', 16, '1 month ago', 1510, 83,
    '2026-02-19', 'Medium', 'Ramon Medhurst is currently enrolled in Diversity and Inclusion in the Workplace. 16% complete. Performance is 83% on average for quizzes. Risk level is evaluated as Medium.', 86
  ),
  (
    773, 'Gregory Armstrong', 'gregory.armstrong93@hotmail.com', 'https://avatars.githubusercontent.com/u/18832476',
    6, 'Advanced Sales Techniques', 'Sales',
    '2025-12-20 20:28:47', 73, '3 days ago', 314, 48,
    '2026-03-07', 'Low', 'Gregory Armstrong is currently enrolled in Advanced Sales Techniques. 73% complete. Performance is 48% on average for quizzes. Risk level is evaluated as Low.', 18
  ),
  (
    774, 'Peter Schimmel', 'peter_schimmel63@yahoo.com', 'https://avatars.githubusercontent.com/u/41452591',
    7, 'Cloud Computing Fundamentals', 'Marketing',
    '2026-07-13 11:56:07', 2, 'Yesterday', 769, 90,
    '2026-09-23', 'Low', 'Peter Schimmel is currently enrolled in Cloud Computing Fundamentals. 2% complete. Performance is 90% on average for quizzes. Risk level is evaluated as Low.', 11
  ),
  (
    775, 'Genesis Sipes', 'genesis_sipes@hotmail.com', 'https://avatars.githubusercontent.com/u/62775853',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2025-08-27 22:51:55', 10, '2 weeks ago', 1453, 75,
    '2025-10-13', 'Low', 'Genesis Sipes is currently enrolled in Diversity and Inclusion in the Workplace. 10% complete. Performance is 75% on average for quizzes. Risk level is evaluated as Low.', 24
  ),
  (
    776, 'Debra Crooks', 'debra_crooks@yahoo.com', 'https://avatars.githubusercontent.com/u/9648946',
    5, 'Diversity and Inclusion in the Workplace', 'Marketing',
    '2025-10-14 07:21:45', 78, 'Yesterday', 1606, 57,
    '2025-12-13', 'Medium', 'Debra Crooks is currently enrolled in Diversity and Inclusion in the Workplace. 78% complete. Performance is 57% on average for quizzes. Risk level is evaluated as Medium.', 92
  ),
  (
    777, 'Clarissa Crist', 'clarissa.crist@hotmail.com', 'https://avatars.githubusercontent.com/u/26711761',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2026-03-23 11:55:15', 88, '2 days ago', 382, 70,
    '2026-05-27', 'Low', 'Clarissa Crist is currently enrolled in Workplace Ethics & Code of Conduct. 88% complete. Performance is 70% on average for quizzes. Risk level is evaluated as Low.', 29
  ),
  (
    778, 'Craig Emmerich', 'craig.emmerich@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/52.jpg',
    1, 'Cybersecurity Awareness', 'Human Resources',
    '2025-12-08 22:02:53', 50, '3 days ago', 103, 72,
    '2026-03-08', 'Medium', 'Craig Emmerich is currently enrolled in Cybersecurity Awareness. 50% complete. Performance is 72% on average for quizzes. Risk level is evaluated as Medium.', 98
  ),
  (
    779, 'Ernest Cormier', 'ernest_cormier48@hotmail.com', 'https://avatars.githubusercontent.com/u/86428423',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2026-06-12 13:54:23', 21, '1 week ago', 1438, 71,
    '2026-07-21', 'Low', 'Ernest Cormier is currently enrolled in Cloud Computing Fundamentals. 21% complete. Performance is 71% on average for quizzes. Risk level is evaluated as Low.', 60
  ),
  (
    780, 'Angeline Kunze', 'angeline.kunze15@gmail.com', 'https://avatars.githubusercontent.com/u/99233103',
    6, 'Advanced Sales Techniques', 'Engineering',
    '2026-02-08 13:03:48', 58, 'Today', 1163, 85,
    '2026-03-12', 'Low', 'Angeline Kunze is currently enrolled in Advanced Sales Techniques. 58% complete. Performance is 85% on average for quizzes. Risk level is evaluated as Low.', 91
  ),
  (
    781, 'Nash Goyette', 'nash_goyette@yahoo.com', 'https://avatars.githubusercontent.com/u/34679212',
    4, 'Leadership & Management', 'Human Resources',
    '2026-08-03 10:54:06', 14, '2 weeks ago', 71, 62,
    '2026-09-02', 'Medium', 'Nash Goyette is currently enrolled in Leadership & Management. 14% complete. Performance is 62% on average for quizzes. Risk level is evaluated as Medium.', 57
  ),
  (
    782, 'Brenda Kessler', 'brenda.kessler@yahoo.com', 'https://avatars.githubusercontent.com/u/73500682',
    2, 'Workplace Ethics & Code of Conduct', 'Marketing',
    '2026-02-24 08:52:22', 19, '2 days ago', 1504, 76,
    '2026-04-04', 'High', 'Brenda Kessler is currently enrolled in Workplace Ethics & Code of Conduct. 19% complete. Performance is 76% on average for quizzes. Risk level is evaluated as High.', 27
  ),
  (
    783, 'Michele Lynch', 'michele.lynch76@gmail.com', 'https://avatars.githubusercontent.com/u/47316359',
    4, 'Leadership & Management', 'Marketing',
    '2026-04-05 03:42:46', 94, '1 week ago', 1036, 50,
    '2026-05-09', 'Low', 'Michele Lynch is currently enrolled in Leadership & Management. 94% complete. Performance is 50% on average for quizzes. Risk level is evaluated as Low.', 60
  ),
  (
    784, 'Gerald Treutel', 'gerald_treutel29@yahoo.com', 'https://avatars.githubusercontent.com/u/59437607',
    2, 'Workplace Ethics & Code of Conduct', 'Engineering',
    '2025-10-10 13:01:01', 92, '1 week ago', 1214, 95,
    '2025-11-16', 'Medium', 'Gerald Treutel is currently enrolled in Workplace Ethics & Code of Conduct. 92% complete. Performance is 95% on average for quizzes. Risk level is evaluated as Medium.', 8
  ),
  (
    785, 'Jamarcus Daniel', 'jamarcus.daniel42@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/80.jpg',
    7, 'Cloud Computing Fundamentals', 'Finance',
    '2025-09-23 17:56:55', 39, '2 weeks ago', 337, 84,
    '2025-11-10', 'High', 'Jamarcus Daniel is currently enrolled in Cloud Computing Fundamentals. 39% complete. Performance is 84% on average for quizzes. Risk level is evaluated as High.', 18
  ),
  (
    786, 'Rochelle Hintz', 'rochelle.hintz@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/38.jpg',
    4, 'Leadership & Management', 'Operations',
    '2026-03-05 00:05:26', 53, 'Today', 767, 62,
    '2026-04-23', 'Low', 'Rochelle Hintz is currently enrolled in Leadership & Management. 53% complete. Performance is 62% on average for quizzes. Risk level is evaluated as Low.', 34
  ),
  (
    787, 'Alia Robel', 'alia_robel27@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/65.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2025-09-09 01:02:39', 14, '3 days ago', 1726, 67,
    '2025-10-18', 'Medium', 'Alia Robel is currently enrolled in Diversity and Inclusion in the Workplace. 14% complete. Performance is 67% on average for quizzes. Risk level is evaluated as Medium.', 62
  ),
  (
    788, 'Jimmie McClure', 'jimmie.mcclure24@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/75.jpg',
    4, 'Leadership & Management', 'Marketing',
    '2026-07-08 03:02:47', 72, '1 month ago', 690, 85,
    '2026-10-01', 'Low', 'Jimmie McClure is currently enrolled in Leadership & Management. 72% complete. Performance is 85% on average for quizzes. Risk level is evaluated as Low.', 62
  ),
  (
    789, 'Carleton O''Kon', 'carleton.okon87@yahoo.com', 'https://avatars.githubusercontent.com/u/85422105',
    3, 'Data Privacy and GDPR', 'Sales',
    '2026-07-28 09:39:41', 0, 'Today', 1168, 84,
    '2026-10-26', 'High', 'Carleton O''Kon is currently enrolled in Data Privacy and GDPR. 0% complete. Performance is 84% on average for quizzes. Risk level is evaluated as High.', 92
  ),
  (
    790, 'Nicolas Schmidt', 'nicolas_schmidt81@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/55.jpg',
    1, 'Cybersecurity Awareness', 'Engineering',
    '2026-02-15 17:49:06', 70, '1 week ago', 1489, 55,
    '2026-04-07', 'Low', 'Nicolas Schmidt is currently enrolled in Cybersecurity Awareness. 70% complete. Performance is 55% on average for quizzes. Risk level is evaluated as Low.', 86
  ),
  (
    791, 'Peter Torphy', 'peter_torphy97@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/25.jpg',
    3, 'Data Privacy and GDPR', 'Operations',
    '2026-05-08 04:46:54', 46, 'Yesterday', 1562, 98,
    '2026-07-23', 'Low', 'Peter Torphy is currently enrolled in Data Privacy and GDPR. 46% complete. Performance is 98% on average for quizzes. Risk level is evaluated as Low.', 57
  ),
  (
    792, 'Leona Gerlach', 'leona_gerlach88@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/34.jpg',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2026-04-08 02:30:48', 97, 'Today', 329, 93,
    '2026-06-24', 'Medium', 'Leona Gerlach is currently enrolled in Data Privacy and GDPR. 97% complete. Performance is 93% on average for quizzes. Risk level is evaluated as Medium.', 65
  ),
  (
    793, 'Sedrick Brown', 'sedrick.brown@hotmail.com', 'https://avatars.githubusercontent.com/u/67952528',
    6, 'Advanced Sales Techniques', 'Human Resources',
    '2026-07-07 01:14:57', 15, '3 days ago', 1356, 78,
    '2026-09-10', 'Low', 'Sedrick Brown is currently enrolled in Advanced Sales Techniques. 15% complete. Performance is 78% on average for quizzes. Risk level is evaluated as Low.', 46
  ),
  (
    794, 'Naomi Hermann', 'naomi.hermann@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/33.jpg',
    7, 'Cloud Computing Fundamentals', 'Marketing',
    '2026-07-07 23:06:49', 98, '2 days ago', 1267, 46,
    '2026-08-13', 'Low', 'Naomi Hermann is currently enrolled in Cloud Computing Fundamentals. 98% complete. Performance is 46% on average for quizzes. Risk level is evaluated as Low.', 51
  ),
  (
    795, 'Alfred Torp', 'alfred_torp4@gmail.com', 'https://avatars.githubusercontent.com/u/58004876',
    6, 'Advanced Sales Techniques', 'Customer Support',
    '2026-02-10 06:40:34', 14, '3 days ago', 880, 68,
    '2026-04-03', 'Medium', 'Alfred Torp is currently enrolled in Advanced Sales Techniques. 14% complete. Performance is 68% on average for quizzes. Risk level is evaluated as Medium.', 69
  ),
  (
    796, 'Elna Hirthe', 'elna_hirthe31@hotmail.com', 'https://avatars.githubusercontent.com/u/61371271',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2026-07-04 22:35:39', 8, '1 month ago', 615, 66,
    '2026-09-26', 'Low', 'Elna Hirthe is currently enrolled in Workplace Ethics & Code of Conduct. 8% complete. Performance is 66% on average for quizzes. Risk level is evaluated as Low.', 50
  ),
  (
    797, 'Tianna Doyle', 'tianna.doyle57@hotmail.com', 'https://avatars.githubusercontent.com/u/53516466',
    6, 'Advanced Sales Techniques', 'Sales',
    '2026-05-28 08:25:25', 100, '2 weeks ago', 168, 93,
    '2026-07-26', 'Medium', 'Tianna Doyle is currently enrolled in Advanced Sales Techniques. 100% complete. Performance is 93% on average for quizzes. Risk level is evaluated as Medium.', 88
  ),
  (
    798, 'Javon Quigley', 'javon.quigley19@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/63.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2026-05-07 09:01:46', 64, '2 weeks ago', 1968, 64,
    '2026-08-03', 'High', 'Javon Quigley is currently enrolled in Diversity and Inclusion in the Workplace. 64% complete. Performance is 64% on average for quizzes. Risk level is evaluated as High.', 22
  ),
  (
    799, 'Nella Feeney', 'nella.feeney67@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/40.jpg',
    4, 'Leadership & Management', 'Human Resources',
    '2026-08-05 11:33:00', 51, '2 weeks ago', 1873, 59,
    '2026-09-14', 'Low', 'Nella Feeney is currently enrolled in Leadership & Management. 51% complete. Performance is 59% on average for quizzes. Risk level is evaluated as Low.', 88
  ),
  (
    800, 'Edmund Metz', 'edmund.metz@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/61.jpg',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2026-05-22 11:24:15', 89, '3 days ago', 1981, 65,
    '2026-06-26', 'Low', 'Edmund Metz is currently enrolled in Cybersecurity Awareness. 89% complete. Performance is 65% on average for quizzes. Risk level is evaluated as Low.', 45
  ),
  (
    801, 'Jalyn Kozey', 'jalyn.kozey23@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/64.jpg',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2026-01-14 15:26:43', 91, '2 days ago', 1580, 98,
    '2026-02-22', 'Low', 'Jalyn Kozey is currently enrolled in Cybersecurity Awareness. 91% complete. Performance is 98% on average for quizzes. Risk level is evaluated as Low.', 27
  ),
  (
    802, 'Ruby Hermann', 'ruby.hermann4@yahoo.com', 'https://avatars.githubusercontent.com/u/75754344',
    1, 'Cybersecurity Awareness', 'Operations',
    '2025-11-14 20:06:22', 11, 'Today', 476, 97,
    '2026-02-10', 'Low', 'Ruby Hermann is currently enrolled in Cybersecurity Awareness. 11% complete. Performance is 97% on average for quizzes. Risk level is evaluated as Low.', 83
  ),
  (
    803, 'Itzel Rippin', 'itzel.rippin76@yahoo.com', 'https://avatars.githubusercontent.com/u/75827650',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2025-10-27 01:21:03', 95, 'Yesterday', 1605, 89,
    '2026-01-22', 'Medium', 'Itzel Rippin is currently enrolled in Workplace Ethics & Code of Conduct. 95% complete. Performance is 89% on average for quizzes. Risk level is evaluated as Medium.', 95
  ),
  (
    804, 'Seth Bogan', 'seth.bogan44@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/54.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Marketing',
    '2025-11-25 23:30:59', 97, '2 weeks ago', 1914, 76,
    '2026-02-16', 'Low', 'Seth Bogan is currently enrolled in Workplace Ethics & Code of Conduct. 97% complete. Performance is 76% on average for quizzes. Risk level is evaluated as Low.', 1
  ),
  (
    805, 'Laurie Russel', 'laurie.russel16@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/14.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2025-11-09 05:02:45', 19, '2 weeks ago', 862, 72,
    '2025-12-22', 'Medium', 'Laurie Russel is currently enrolled in Diversity and Inclusion in the Workplace. 19% complete. Performance is 72% on average for quizzes. Risk level is evaluated as Medium.', 41
  ),
  (
    806, 'Kenny Quigley', 'kenny_quigley@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/25.jpg',
    1, 'Cybersecurity Awareness', 'Operations',
    '2026-03-28 15:37:17', 83, '2 days ago', 1432, 95,
    '2026-05-19', 'Low', 'Kenny Quigley is currently enrolled in Cybersecurity Awareness. 83% complete. Performance is 95% on average for quizzes. Risk level is evaluated as Low.', 13
  ),
  (
    807, 'Alessandra Wiegand', 'alessandra_wiegand@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/19.jpg',
    6, 'Advanced Sales Techniques', 'Human Resources',
    '2026-07-04 06:57:26', 100, 'Today', 644, 72,
    '2026-09-14', 'High', 'Alessandra Wiegand is currently enrolled in Advanced Sales Techniques. 100% complete. Performance is 72% on average for quizzes. Risk level is evaluated as High.', 58
  ),
  (
    808, 'Toy Dicki-Moore', 'toy.dicki-moore92@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/48.jpg',
    4, 'Leadership & Management', 'Customer Support',
    '2026-04-25 00:44:55', 89, 'Yesterday', 752, 41,
    '2026-07-20', 'High', 'Toy Dicki-Moore is currently enrolled in Leadership & Management. 89% complete. Performance is 41% on average for quizzes. Risk level is evaluated as High.', 44
  ),
  (
    809, 'Margot Fay', 'margot.fay74@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/27.jpg',
    6, 'Advanced Sales Techniques', 'Customer Support',
    '2025-12-15 22:16:01', 35, '2 weeks ago', 97, 97,
    '2026-02-01', 'High', 'Margot Fay is currently enrolled in Advanced Sales Techniques. 35% complete. Performance is 97% on average for quizzes. Risk level is evaluated as High.', 31
  ),
  (
    810, 'Ressie Mante', 'ressie_mante98@hotmail.com', 'https://avatars.githubusercontent.com/u/72383961',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2026-04-19 16:38:29', 72, 'Today', 1658, 66,
    '2026-06-29', 'Medium', 'Ressie Mante is currently enrolled in Workplace Ethics & Code of Conduct. 72% complete. Performance is 66% on average for quizzes. Risk level is evaluated as Medium.', 57
  ),
  (
    811, 'Myra Koelpin', 'myra.koelpin@yahoo.com', 'https://avatars.githubusercontent.com/u/79151377',
    7, 'Cloud Computing Fundamentals', 'Finance',
    '2025-09-18 20:03:16', 61, 'Yesterday', 164, 87,
    '2025-10-18', 'Medium', 'Myra Koelpin is currently enrolled in Cloud Computing Fundamentals. 61% complete. Performance is 87% on average for quizzes. Risk level is evaluated as Medium.', 73
  ),
  (
    812, 'Silvia Walsh', 'silvia.walsh@gmail.com', 'https://avatars.githubusercontent.com/u/1589767',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2026-06-09 21:29:05', 68, '2 weeks ago', 1170, 45,
    '2026-07-21', 'Low', 'Silvia Walsh is currently enrolled in Diversity and Inclusion in the Workplace. 68% complete. Performance is 45% on average for quizzes. Risk level is evaluated as Low.', 2
  ),
  (
    813, 'Rosemary Ritchie', 'rosemary.ritchie72@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/57.jpg',
    6, 'Advanced Sales Techniques', 'Engineering',
    '2026-04-22 00:23:06', 52, '3 days ago', 1040, 64,
    '2026-06-08', 'Low', 'Rosemary Ritchie is currently enrolled in Advanced Sales Techniques. 52% complete. Performance is 64% on average for quizzes. Risk level is evaluated as Low.', 80
  ),
  (
    814, 'Ahmad Konopelski', 'ahmad.konopelski@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/48.jpg',
    3, 'Data Privacy and GDPR', 'Finance',
    '2026-04-30 00:04:44', 6, '1 month ago', 823, 56,
    '2026-07-22', 'High', 'Ahmad Konopelski is currently enrolled in Data Privacy and GDPR. 6% complete. Performance is 56% on average for quizzes. Risk level is evaluated as High.', 49
  ),
  (
    815, 'Angelica Schmitt', 'angelica_schmitt@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/74.jpg',
    4, 'Leadership & Management', 'Finance',
    '2025-08-16 05:00:43', 65, '1 week ago', 1494, 85,
    '2025-09-22', 'Low', 'Angelica Schmitt is currently enrolled in Leadership & Management. 65% complete. Performance is 85% on average for quizzes. Risk level is evaluated as Low.', 92
  ),
  (
    816, 'Ezra Kuphal', 'ezra_kuphal34@hotmail.com', 'https://avatars.githubusercontent.com/u/22723194',
    3, 'Data Privacy and GDPR', 'Finance',
    '2025-12-12 01:40:36', 43, '1 month ago', 586, 44,
    '2026-02-05', 'Low', 'Ezra Kuphal is currently enrolled in Data Privacy and GDPR. 43% complete. Performance is 44% on average for quizzes. Risk level is evaluated as Low.', 19
  ),
  (
    817, 'Brendan Schmidt', 'brendan_schmidt@gmail.com', 'https://avatars.githubusercontent.com/u/45964326',
    6, 'Advanced Sales Techniques', 'Sales',
    '2026-06-17 08:15:43', 87, '1 week ago', 202, 97,
    '2026-08-22', 'Medium', 'Brendan Schmidt is currently enrolled in Advanced Sales Techniques. 87% complete. Performance is 97% on average for quizzes. Risk level is evaluated as Medium.', 34
  ),
  (
    818, 'Norman Mills', 'norman_mills85@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/73.jpg',
    6, 'Advanced Sales Techniques', 'Operations',
    '2026-05-25 06:30:41', 62, '1 month ago', 10, 41,
    '2026-07-10', 'Low', 'Norman Mills is currently enrolled in Advanced Sales Techniques. 62% complete. Performance is 41% on average for quizzes. Risk level is evaluated as Low.', 59
  ),
  (
    819, 'Alison Kilback', 'alison_kilback45@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/61.jpg',
    3, 'Data Privacy and GDPR', 'Customer Support',
    '2026-03-31 05:55:44', 61, '2 days ago', 459, 99,
    '2026-06-07', 'Medium', 'Alison Kilback is currently enrolled in Data Privacy and GDPR. 61% complete. Performance is 99% on average for quizzes. Risk level is evaluated as Medium.', 33
  ),
  (
    820, 'Aisha Bode', 'aisha_bode@gmail.com', 'https://avatars.githubusercontent.com/u/1594055',
    5, 'Diversity and Inclusion in the Workplace', 'Customer Support',
    '2026-07-13 03:17:50', 0, 'Yesterday', 776, 84,
    '2026-08-26', 'High', 'Aisha Bode is currently enrolled in Diversity and Inclusion in the Workplace. 0% complete. Performance is 84% on average for quizzes. Risk level is evaluated as High.', 17
  ),
  (
    821, 'Janie Sauer-Feeney', 'janie_sauer-feeney46@yahoo.com', 'https://avatars.githubusercontent.com/u/37374100',
    3, 'Data Privacy and GDPR', 'Finance',
    '2026-05-20 01:11:44', 24, '2 weeks ago', 373, 98,
    '2026-07-07', 'Low', 'Janie Sauer-Feeney is currently enrolled in Data Privacy and GDPR. 24% complete. Performance is 98% on average for quizzes. Risk level is evaluated as Low.', 50
  ),
  (
    822, 'Paula Sawayn', 'paula.sawayn@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/18.jpg',
    6, 'Advanced Sales Techniques', 'Human Resources',
    '2026-04-11 01:28:07', 90, '1 week ago', 1236, 90,
    '2026-05-11', 'Medium', 'Paula Sawayn is currently enrolled in Advanced Sales Techniques. 90% complete. Performance is 90% on average for quizzes. Risk level is evaluated as Medium.', 71
  ),
  (
    823, 'Gene Buckridge', 'gene_buckridge@gmail.com', 'https://avatars.githubusercontent.com/u/83445231',
    1, 'Cybersecurity Awareness', 'Human Resources',
    '2026-03-15 11:12:59', 94, '2 weeks ago', 201, 90,
    '2026-04-25', 'High', 'Gene Buckridge is currently enrolled in Cybersecurity Awareness. 94% complete. Performance is 90% on average for quizzes. Risk level is evaluated as High.', 44
  ),
  (
    824, 'Oren Beier', 'oren.beier16@hotmail.com', 'https://avatars.githubusercontent.com/u/81851188',
    4, 'Leadership & Management', 'Marketing',
    '2026-05-06 03:52:23', 22, 'Yesterday', 397, 76,
    '2026-06-27', 'Medium', 'Oren Beier is currently enrolled in Leadership & Management. 22% complete. Performance is 76% on average for quizzes. Risk level is evaluated as Medium.', 15
  ),
  (
    825, 'Carlos Hirthe', 'carlos.hirthe78@yahoo.com', 'https://avatars.githubusercontent.com/u/57897681',
    1, 'Cybersecurity Awareness', 'Finance',
    '2026-06-18 04:59:10', 55, '3 days ago', 1541, 95,
    '2026-09-06', 'Low', 'Carlos Hirthe is currently enrolled in Cybersecurity Awareness. 55% complete. Performance is 95% on average for quizzes. Risk level is evaluated as Low.', 49
  ),
  (
    826, 'Sherri Cremin-Wolff', 'sherri.cremin-wolff8@hotmail.com', 'https://avatars.githubusercontent.com/u/91116746',
    3, 'Data Privacy and GDPR', 'Finance',
    '2026-04-28 16:15:28', 75, '2 days ago', 303, 77,
    '2026-07-17', 'Medium', 'Sherri Cremin-Wolff is currently enrolled in Data Privacy and GDPR. 75% complete. Performance is 77% on average for quizzes. Risk level is evaluated as Medium.', 60
  ),
  (
    827, 'Edmund Batz', 'edmund_batz35@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/80.jpg',
    6, 'Advanced Sales Techniques', 'Customer Support',
    '2026-03-22 19:11:45', 40, '2 days ago', 130, 51,
    '2026-05-01', 'High', 'Edmund Batz is currently enrolled in Advanced Sales Techniques. 40% complete. Performance is 51% on average for quizzes. Risk level is evaluated as High.', 88
  ),
  (
    828, 'Perry Osinski', 'perry_osinski@yahoo.com', 'https://avatars.githubusercontent.com/u/24120683',
    7, 'Cloud Computing Fundamentals', 'Marketing',
    '2026-01-01 09:41:33', 77, 'Today', 1916, 81,
    '2026-02-25', 'High', 'Perry Osinski is currently enrolled in Cloud Computing Fundamentals. 77% complete. Performance is 81% on average for quizzes. Risk level is evaluated as High.', 48
  ),
  (
    829, 'Bria Jaskolski', 'bria.jaskolski@gmail.com', 'https://avatars.githubusercontent.com/u/61606120',
    6, 'Advanced Sales Techniques', 'Operations',
    '2026-07-13 22:30:01', 8, '2 days ago', 776, 59,
    '2026-09-23', 'Medium', 'Bria Jaskolski is currently enrolled in Advanced Sales Techniques. 8% complete. Performance is 59% on average for quizzes. Risk level is evaluated as Medium.', 53
  ),
  (
    830, 'Willis Carroll', 'willis_carroll23@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/77.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2026-03-21 09:00:17', 8, '3 days ago', 1184, 42,
    '2026-05-25', 'High', 'Willis Carroll is currently enrolled in Workplace Ethics & Code of Conduct. 8% complete. Performance is 42% on average for quizzes. Risk level is evaluated as High.', 47
  ),
  (
    831, 'Abelardo VonRueden', 'abelardo_vonrueden@hotmail.com', 'https://avatars.githubusercontent.com/u/30891315',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2026-04-29 07:22:02', 43, '2 days ago', 748, 42,
    '2026-07-03', 'Low', 'Abelardo VonRueden is currently enrolled in Cloud Computing Fundamentals. 43% complete. Performance is 42% on average for quizzes. Risk level is evaluated as Low.', 6
  ),
  (
    832, 'Tyrel Marks', 'tyrel_marks@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/4.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2025-09-11 15:01:16', 19, 'Yesterday', 432, 57,
    '2025-10-24', 'Low', 'Tyrel Marks is currently enrolled in Diversity and Inclusion in the Workplace. 19% complete. Performance is 57% on average for quizzes. Risk level is evaluated as Low.', 40
  ),
  (
    833, 'Shari Walter', 'shari.walter@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/17.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2026-02-23 02:08:49', 42, 'Yesterday', 1021, 78,
    '2026-05-04', 'Low', 'Shari Walter is currently enrolled in Diversity and Inclusion in the Workplace. 42% complete. Performance is 78% on average for quizzes. Risk level is evaluated as Low.', 26
  ),
  (
    834, 'Garrett Prohaska', 'garrett.prohaska97@gmail.com', 'https://avatars.githubusercontent.com/u/21304092',
    1, 'Cybersecurity Awareness', 'Marketing',
    '2026-07-23 18:25:00', 67, 'Yesterday', 380, 84,
    '2026-10-12', 'Low', 'Garrett Prohaska is currently enrolled in Cybersecurity Awareness. 67% complete. Performance is 84% on average for quizzes. Risk level is evaluated as Low.', 85
  ),
  (
    835, 'Amely King-McLaughlin', 'amely_king-mclaughlin91@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/76.jpg',
    4, 'Leadership & Management', 'Human Resources',
    '2026-02-08 11:05:05', 82, 'Today', 1796, 67,
    '2026-05-04', 'Medium', 'Amely King-McLaughlin is currently enrolled in Leadership & Management. 82% complete. Performance is 67% on average for quizzes. Risk level is evaluated as Medium.', 20
  ),
  (
    836, 'Antwan Lakin', 'antwan_lakin@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/28.jpg',
    4, 'Leadership & Management', 'Engineering',
    '2025-12-15 06:06:06', 52, '1 month ago', 441, 80,
    '2026-03-05', 'Low', 'Antwan Lakin is currently enrolled in Leadership & Management. 52% complete. Performance is 80% on average for quizzes. Risk level is evaluated as Low.', 62
  ),
  (
    837, 'Cullen Gottlieb', 'cullen.gottlieb@hotmail.com', 'https://avatars.githubusercontent.com/u/23712613',
    5, 'Diversity and Inclusion in the Workplace', 'Customer Support',
    '2026-05-20 17:35:37', 52, '1 month ago', 178, 80,
    '2026-06-29', 'Low', 'Cullen Gottlieb is currently enrolled in Diversity and Inclusion in the Workplace. 52% complete. Performance is 80% on average for quizzes. Risk level is evaluated as Low.', 78
  ),
  (
    838, 'Cloyd Krajcik', 'cloyd.krajcik9@yahoo.com', 'https://avatars.githubusercontent.com/u/35789339',
    6, 'Advanced Sales Techniques', 'Sales',
    '2026-03-21 21:26:28', 56, '1 week ago', 649, 68,
    '2026-05-25', 'Low', 'Cloyd Krajcik is currently enrolled in Advanced Sales Techniques. 56% complete. Performance is 68% on average for quizzes. Risk level is evaluated as Low.', 66
  ),
  (
    839, 'Geraldine Steuber', 'geraldine_steuber@yahoo.com', 'https://avatars.githubusercontent.com/u/50352111',
    1, 'Cybersecurity Awareness', 'Human Resources',
    '2026-06-29 22:58:42', 22, 'Yesterday', 1370, 84,
    '2026-07-29', 'Medium', 'Geraldine Steuber is currently enrolled in Cybersecurity Awareness. 22% complete. Performance is 84% on average for quizzes. Risk level is evaluated as Medium.', 85
  ),
  (
    840, 'Douglas Cummings', 'douglas_cummings@gmail.com', 'https://avatars.githubusercontent.com/u/92152952',
    4, 'Leadership & Management', 'Customer Support',
    '2026-07-15 18:48:57', 8, '1 week ago', 993, 97,
    '2026-10-03', 'Medium', 'Douglas Cummings is currently enrolled in Leadership & Management. 8% complete. Performance is 97% on average for quizzes. Risk level is evaluated as Medium.', 1
  ),
  (
    841, 'Missouri Considine', 'missouri.considine69@hotmail.com', 'https://avatars.githubusercontent.com/u/41530757',
    6, 'Advanced Sales Techniques', 'Sales',
    '2025-12-08 14:37:51', 54, '3 days ago', 1449, 67,
    '2026-02-27', 'Low', 'Missouri Considine is currently enrolled in Advanced Sales Techniques. 54% complete. Performance is 67% on average for quizzes. Risk level is evaluated as Low.', 94
  ),
  (
    842, 'Eula Mante', 'eula_mante@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/51.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2025-09-02 13:58:31', 67, 'Yesterday', 1318, 93,
    '2025-11-06', 'Medium', 'Eula Mante is currently enrolled in Workplace Ethics & Code of Conduct. 67% complete. Performance is 93% on average for quizzes. Risk level is evaluated as Medium.', 72
  ),
  (
    843, 'Richard Carter', 'richard.carter84@yahoo.com', 'https://avatars.githubusercontent.com/u/47729367',
    7, 'Cloud Computing Fundamentals', 'Sales',
    '2025-12-27 20:48:29', 85, '1 month ago', 368, 95,
    '2026-02-11', 'Medium', 'Richard Carter is currently enrolled in Cloud Computing Fundamentals. 85% complete. Performance is 95% on average for quizzes. Risk level is evaluated as Medium.', 32
  ),
  (
    844, 'Jamison Herzog', 'jamison_herzog16@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/68.jpg',
    6, 'Advanced Sales Techniques', 'Customer Support',
    '2026-03-07 04:59:59', 75, '2 weeks ago', 236, 62,
    '2026-05-26', 'High', 'Jamison Herzog is currently enrolled in Advanced Sales Techniques. 75% complete. Performance is 62% on average for quizzes. Risk level is evaluated as High.', 90
  ),
  (
    845, 'Javier Hoeger', 'javier.hoeger@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/53.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Sales',
    '2026-08-07 05:48:47', 90, '1 week ago', 1798, 65,
    '2026-10-27', 'Medium', 'Javier Hoeger is currently enrolled in Workplace Ethics & Code of Conduct. 90% complete. Performance is 65% on average for quizzes. Risk level is evaluated as Medium.', 56
  ),
  (
    846, 'Gerardo Emard', 'gerardo.emard15@gmail.com', 'https://avatars.githubusercontent.com/u/46232562',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2025-08-17 17:25:00', 87, '2 weeks ago', 1109, 42,
    '2025-11-11', 'High', 'Gerardo Emard is currently enrolled in Cloud Computing Fundamentals. 87% complete. Performance is 42% on average for quizzes. Risk level is evaluated as High.', 82
  ),
  (
    847, 'Brandon Rath', 'brandon.rath16@yahoo.com', 'https://avatars.githubusercontent.com/u/54163021',
    4, 'Leadership & Management', 'Operations',
    '2026-03-20 18:44:32', 12, '2 weeks ago', 1969, 58,
    '2026-05-09', 'Low', 'Brandon Rath is currently enrolled in Leadership & Management. 12% complete. Performance is 58% on average for quizzes. Risk level is evaluated as Low.', 40
  ),
  (
    848, 'Chadrick Maggio', 'chadrick_maggio13@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/84.jpg',
    4, 'Leadership & Management', 'Marketing',
    '2026-05-30 13:27:24', 1, '1 week ago', 544, 41,
    '2026-06-30', 'Low', 'Chadrick Maggio is currently enrolled in Leadership & Management. 1% complete. Performance is 41% on average for quizzes. Risk level is evaluated as Low.', 22
  ),
  (
    849, 'Robbie Wilderman', 'robbie.wilderman@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/6.jpg',
    1, 'Cybersecurity Awareness', 'Sales',
    '2025-11-11 06:13:29', 26, '1 week ago', 1039, 67,
    '2025-12-22', 'Medium', 'Robbie Wilderman is currently enrolled in Cybersecurity Awareness. 26% complete. Performance is 67% on average for quizzes. Risk level is evaluated as Medium.', 41
  ),
  (
    850, 'Ira Purdy', 'ira_purdy86@hotmail.com', 'https://avatars.githubusercontent.com/u/34860431',
    3, 'Data Privacy and GDPR', 'Marketing',
    '2026-01-16 21:10:11', 36, 'Today', 1569, 54,
    '2026-03-09', 'High', 'Ira Purdy is currently enrolled in Data Privacy and GDPR. 36% complete. Performance is 54% on average for quizzes. Risk level is evaluated as High.', 81
  ),
  (
    851, 'Juan Reinger', 'juan_reinger@gmail.com', 'https://avatars.githubusercontent.com/u/4630040',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2026-08-07 05:19:05', 13, '3 days ago', 508, 71,
    '2026-09-23', 'Medium', 'Juan Reinger is currently enrolled in Diversity and Inclusion in the Workplace. 13% complete. Performance is 71% on average for quizzes. Risk level is evaluated as Medium.', 73
  ),
  (
    852, 'Alvena Yundt', 'alvena.yundt46@yahoo.com', 'https://avatars.githubusercontent.com/u/92276785',
    4, 'Leadership & Management', 'Finance',
    '2026-05-17 21:54:06', 52, '2 weeks ago', 319, 45,
    '2026-07-07', 'Medium', 'Alvena Yundt is currently enrolled in Leadership & Management. 52% complete. Performance is 45% on average for quizzes. Risk level is evaluated as Medium.', 47
  ),
  (
    853, 'Raphaelle Orn', 'raphaelle.orn@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/97.jpg',
    1, 'Cybersecurity Awareness', 'Finance',
    '2026-05-28 22:00:21', 28, '1 week ago', 750, 85,
    '2026-07-18', 'Medium', 'Raphaelle Orn is currently enrolled in Cybersecurity Awareness. 28% complete. Performance is 85% on average for quizzes. Risk level is evaluated as Medium.', 50
  ),
  (
    854, 'Rex Medhurst', 'rex.medhurst98@gmail.com', 'https://avatars.githubusercontent.com/u/13418469',
    3, 'Data Privacy and GDPR', 'Marketing',
    '2026-02-01 15:04:14', 92, '1 month ago', 263, 71,
    '2026-03-14', 'Low', 'Rex Medhurst is currently enrolled in Data Privacy and GDPR. 92% complete. Performance is 71% on average for quizzes. Risk level is evaluated as Low.', 48
  ),
  (
    855, 'Sandy Littel', 'sandy.littel@yahoo.com', 'https://avatars.githubusercontent.com/u/4750925',
    7, 'Cloud Computing Fundamentals', 'Sales',
    '2026-01-03 23:03:15', 43, 'Today', 531, 85,
    '2026-03-18', 'Low', 'Sandy Littel is currently enrolled in Cloud Computing Fundamentals. 43% complete. Performance is 85% on average for quizzes. Risk level is evaluated as Low.', 29
  ),
  (
    856, 'Noah McLaughlin', 'noah_mclaughlin@gmail.com', 'https://avatars.githubusercontent.com/u/29955185',
    6, 'Advanced Sales Techniques', 'Marketing',
    '2025-09-16 04:15:53', 21, '2 days ago', 1405, 54,
    '2025-11-11', 'Low', 'Noah McLaughlin is currently enrolled in Advanced Sales Techniques. 21% complete. Performance is 54% on average for quizzes. Risk level is evaluated as Low.', 51
  ),
  (
    857, 'Darrick Boyer', 'darrick_boyer69@gmail.com', 'https://avatars.githubusercontent.com/u/99817407',
    2, 'Workplace Ethics & Code of Conduct', 'Marketing',
    '2026-01-10 14:58:12', 99, 'Today', 1380, 59,
    '2026-04-09', 'Low', 'Darrick Boyer is currently enrolled in Workplace Ethics & Code of Conduct. 99% complete. Performance is 59% on average for quizzes. Risk level is evaluated as Low.', 85
  ),
  (
    858, 'Stacy Feeney', 'stacy_feeney43@yahoo.com', 'https://avatars.githubusercontent.com/u/12034886',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2025-08-07 23:30:14', 25, 'Today', 66, 59,
    '2025-09-09', 'Medium', 'Stacy Feeney is currently enrolled in Cloud Computing Fundamentals. 25% complete. Performance is 59% on average for quizzes. Risk level is evaluated as Medium.', 68
  ),
  (
    859, 'Tanya Hammes', 'tanya.hammes@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/23.jpg',
    4, 'Leadership & Management', 'Customer Support',
    '2025-08-10 16:08:39', 34, '1 month ago', 239, 41,
    '2025-09-22', 'Low', 'Tanya Hammes is currently enrolled in Leadership & Management. 34% complete. Performance is 41% on average for quizzes. Risk level is evaluated as Low.', 17
  ),
  (
    860, 'Kennith Jacobs', 'kennith_jacobs@gmail.com', 'https://avatars.githubusercontent.com/u/69541200',
    2, 'Workplace Ethics & Code of Conduct', 'Sales',
    '2026-05-26 14:57:37', 9, '3 days ago', 727, 55,
    '2026-06-26', 'Medium', 'Kennith Jacobs is currently enrolled in Workplace Ethics & Code of Conduct. 9% complete. Performance is 55% on average for quizzes. Risk level is evaluated as Medium.', 90
  ),
  (
    861, 'Christiana Koss', 'christiana.koss@gmail.com', 'https://avatars.githubusercontent.com/u/43190839',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2025-10-02 16:13:20', 81, '2 weeks ago', 949, 73,
    '2025-12-08', 'Medium', 'Christiana Koss is currently enrolled in Cloud Computing Fundamentals. 81% complete. Performance is 73% on average for quizzes. Risk level is evaluated as Medium.', 31
  ),
  (
    862, 'Freddie Altenwerth', 'freddie_altenwerth51@gmail.com', 'https://avatars.githubusercontent.com/u/15516514',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2026-02-15 00:26:54', 59, '1 month ago', 883, 89,
    '2026-05-04', 'Medium', 'Freddie Altenwerth is currently enrolled in Workplace Ethics & Code of Conduct. 59% complete. Performance is 89% on average for quizzes. Risk level is evaluated as Medium.', 29
  ),
  (
    863, 'Bernhard Beer', 'bernhard_beer@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/53.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Marketing',
    '2026-06-24 08:09:06', 94, '3 days ago', 1620, 79,
    '2026-09-04', 'High', 'Bernhard Beer is currently enrolled in Diversity and Inclusion in the Workplace. 94% complete. Performance is 79% on average for quizzes. Risk level is evaluated as High.', 22
  ),
  (
    864, 'Zoey Hessel', 'zoey_hessel@yahoo.com', 'https://avatars.githubusercontent.com/u/14315964',
    4, 'Leadership & Management', 'Customer Support',
    '2026-06-15 21:59:25', 44, '2 days ago', 995, 95,
    '2026-08-01', 'Low', 'Zoey Hessel is currently enrolled in Leadership & Management. 44% complete. Performance is 95% on average for quizzes. Risk level is evaluated as Low.', 72
  ),
  (
    865, 'Brandyn Thompson', 'brandyn_thompson@yahoo.com', 'https://avatars.githubusercontent.com/u/14552809',
    4, 'Leadership & Management', 'Sales',
    '2025-08-08 07:06:53', 7, 'Today', 334, 64,
    '2025-10-24', 'Low', 'Brandyn Thompson is currently enrolled in Leadership & Management. 7% complete. Performance is 64% on average for quizzes. Risk level is evaluated as Low.', 9
  ),
  (
    866, 'Pearl Johnston', 'pearl.johnston95@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/72.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Marketing',
    '2026-01-27 04:43:50', 15, '2 weeks ago', 415, 93,
    '2026-04-21', 'Low', 'Pearl Johnston is currently enrolled in Workplace Ethics & Code of Conduct. 15% complete. Performance is 93% on average for quizzes. Risk level is evaluated as Low.', 31
  ),
  (
    867, 'Aidan Tremblay', 'aidan.tremblay50@yahoo.com', 'https://avatars.githubusercontent.com/u/79828145',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2026-05-16 01:19:35', 94, '2 days ago', 1822, 87,
    '2026-07-19', 'Low', 'Aidan Tremblay is currently enrolled in Cybersecurity Awareness. 94% complete. Performance is 87% on average for quizzes. Risk level is evaluated as Low.', 93
  ),
  (
    868, 'Conner Rodriguez', 'conner_rodriguez@gmail.com', 'https://avatars.githubusercontent.com/u/55762126',
    1, 'Cybersecurity Awareness', 'Engineering',
    '2025-09-05 21:40:16', 20, '2 days ago', 986, 66,
    '2025-10-24', 'Medium', 'Conner Rodriguez is currently enrolled in Cybersecurity Awareness. 20% complete. Performance is 66% on average for quizzes. Risk level is evaluated as Medium.', 85
  ),
  (
    869, 'Esmeralda Huel', 'esmeralda_huel58@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/12.jpg',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2025-10-26 14:10:05', 87, '2 weeks ago', 198, 68,
    '2025-12-30', 'Low', 'Esmeralda Huel is currently enrolled in Cloud Computing Fundamentals. 87% complete. Performance is 68% on average for quizzes. Risk level is evaluated as Low.', 1
  ),
  (
    870, 'Esmeralda Jones', 'esmeralda_jones93@hotmail.com', 'https://avatars.githubusercontent.com/u/67571178',
    6, 'Advanced Sales Techniques', 'Marketing',
    '2026-04-02 21:14:57', 29, '3 days ago', 205, 49,
    '2026-05-05', 'Medium', 'Esmeralda Jones is currently enrolled in Advanced Sales Techniques. 29% complete. Performance is 49% on average for quizzes. Risk level is evaluated as Medium.', 88
  ),
  (
    871, 'Karina Volkman', 'karina.volkman91@yahoo.com', 'https://avatars.githubusercontent.com/u/29244647',
    3, 'Data Privacy and GDPR', 'Marketing',
    '2026-05-28 11:48:53', 65, '2 weeks ago', 1756, 56,
    '2026-07-15', 'Medium', 'Karina Volkman is currently enrolled in Data Privacy and GDPR. 65% complete. Performance is 56% on average for quizzes. Risk level is evaluated as Medium.', 49
  ),
  (
    872, 'Eileen Auer', 'eileen.auer60@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/38.jpg',
    7, 'Cloud Computing Fundamentals', 'Operations',
    '2025-09-04 16:04:14', 98, 'Today', 796, 100,
    '2025-11-02', 'High', 'Eileen Auer is currently enrolled in Cloud Computing Fundamentals. 98% complete. Performance is 100% on average for quizzes. Risk level is evaluated as High.', 37
  ),
  (
    873, 'Wilson Barton', 'wilson_barton94@gmail.com', 'https://avatars.githubusercontent.com/u/85569605',
    3, 'Data Privacy and GDPR', 'Customer Support',
    '2026-03-11 21:36:24', 3, '2 weeks ago', 1391, 52,
    '2026-06-05', 'Low', 'Wilson Barton is currently enrolled in Data Privacy and GDPR. 3% complete. Performance is 52% on average for quizzes. Risk level is evaluated as Low.', 33
  ),
  (
    874, 'Jacinthe Kihn', 'jacinthe.kihn81@hotmail.com', 'https://avatars.githubusercontent.com/u/76566267',
    4, 'Leadership & Management', 'Engineering',
    '2025-09-18 09:39:15', 49, '1 month ago', 792, 56,
    '2025-11-29', 'Low', 'Jacinthe Kihn is currently enrolled in Leadership & Management. 49% complete. Performance is 56% on average for quizzes. Risk level is evaluated as Low.', 11
  ),
  (
    875, 'Annie Little', 'annie.little@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/23.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Sales',
    '2025-08-11 02:09:27', 69, 'Today', 1283, 65,
    '2025-09-25', 'Low', 'Annie Little is currently enrolled in Workplace Ethics & Code of Conduct. 69% complete. Performance is 65% on average for quizzes. Risk level is evaluated as Low.', 72
  ),
  (
    876, 'Kayla Leuschke', 'kayla.leuschke@gmail.com', 'https://avatars.githubusercontent.com/u/12149427',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2025-10-01 05:19:02', 70, 'Yesterday', 1789, 77,
    '2025-12-11', 'High', 'Kayla Leuschke is currently enrolled in Diversity and Inclusion in the Workplace. 70% complete. Performance is 77% on average for quizzes. Risk level is evaluated as High.', 53
  ),
  (
    877, 'Walter Rempel', 'walter.rempel@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/22.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2025-11-26 03:00:23', 20, '1 week ago', 1606, 76,
    '2026-02-02', 'Low', 'Walter Rempel is currently enrolled in Diversity and Inclusion in the Workplace. 20% complete. Performance is 76% on average for quizzes. Risk level is evaluated as Low.', 52
  ),
  (
    878, 'Mathew Kunze-Hermann', 'mathew.kunze-hermann43@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/32.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Marketing',
    '2026-08-05 13:00:10', 26, 'Yesterday', 957, 60,
    '2026-11-03', 'Low', 'Mathew Kunze-Hermann is currently enrolled in Diversity and Inclusion in the Workplace. 26% complete. Performance is 60% on average for quizzes. Risk level is evaluated as Low.', 62
  ),
  (
    879, 'Joe O''Keefe', 'joe.okeefe@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/44.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2026-01-09 18:08:34', 72, '2 weeks ago', 449, 42,
    '2026-03-05', 'Low', 'Joe O''Keefe is currently enrolled in Workplace Ethics & Code of Conduct. 72% complete. Performance is 42% on average for quizzes. Risk level is evaluated as Low.', 90
  ),
  (
    880, 'Jensen Bode', 'jensen_bode30@yahoo.com', 'https://avatars.githubusercontent.com/u/29126920',
    5, 'Diversity and Inclusion in the Workplace', 'Human Resources',
    '2026-01-22 22:53:52', 59, '1 week ago', 643, 54,
    '2026-03-24', 'High', 'Jensen Bode is currently enrolled in Diversity and Inclusion in the Workplace. 59% complete. Performance is 54% on average for quizzes. Risk level is evaluated as High.', 4
  ),
  (
    881, 'Greg Bernier', 'greg.bernier@gmail.com', 'https://avatars.githubusercontent.com/u/41281590',
    6, 'Advanced Sales Techniques', 'Human Resources',
    '2025-12-17 01:16:57', 100, '2 days ago', 1231, 71,
    '2026-02-05', 'Low', 'Greg Bernier is currently enrolled in Advanced Sales Techniques. 100% complete. Performance is 71% on average for quizzes. Risk level is evaluated as Low.', 45
  ),
  (
    882, 'Nicole McKenzie-Cole', 'nicole_mckenzie-cole97@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/74.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2025-11-12 02:27:25', 62, 'Today', 1219, 100,
    '2026-01-23', 'Medium', 'Nicole McKenzie-Cole is currently enrolled in Diversity and Inclusion in the Workplace. 62% complete. Performance is 100% on average for quizzes. Risk level is evaluated as Medium.', 93
  ),
  (
    883, 'Helena Bosco', 'helena.bosco@gmail.com', 'https://avatars.githubusercontent.com/u/67715660',
    5, 'Diversity and Inclusion in the Workplace', 'Customer Support',
    '2025-08-11 01:54:42', 48, 'Yesterday', 292, 73,
    '2025-10-25', 'Medium', 'Helena Bosco is currently enrolled in Diversity and Inclusion in the Workplace. 48% complete. Performance is 73% on average for quizzes. Risk level is evaluated as Medium.', 65
  ),
  (
    884, 'Caroline Mayer', 'caroline_mayer78@hotmail.com', 'https://avatars.githubusercontent.com/u/56879577',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2026-07-18 15:12:40', 94, 'Yesterday', 929, 62,
    '2026-08-26', 'Low', 'Caroline Mayer is currently enrolled in Cloud Computing Fundamentals. 94% complete. Performance is 62% on average for quizzes. Risk level is evaluated as Low.', 92
  ),
  (
    885, 'Nathaniel O''Reilly', 'nathaniel_oreilly@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/28.jpg',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2026-04-03 08:54:51', 92, 'Today', 909, 81,
    '2026-05-30', 'Medium', 'Nathaniel O''Reilly is currently enrolled in Cloud Computing Fundamentals. 92% complete. Performance is 81% on average for quizzes. Risk level is evaluated as Medium.', 16
  ),
  (
    886, 'Erick Langosh', 'erick.langosh21@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/47.jpg',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2026-06-19 20:29:20', 63, 'Yesterday', 1598, 52,
    '2026-08-11', 'High', 'Erick Langosh is currently enrolled in Data Privacy and GDPR. 63% complete. Performance is 52% on average for quizzes. Risk level is evaluated as High.', 60
  ),
  (
    887, 'Giovanny Kassulke', 'giovanny_kassulke90@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/62.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Marketing',
    '2025-12-06 11:03:23', 28, '2 days ago', 1273, 43,
    '2026-02-04', 'Low', 'Giovanny Kassulke is currently enrolled in Workplace Ethics & Code of Conduct. 28% complete. Performance is 43% on average for quizzes. Risk level is evaluated as Low.', 56
  ),
  (
    888, 'Cary MacGyver', 'cary.macgyver@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/99.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Human Resources',
    '2026-02-23 11:55:44', 51, 'Yesterday', 1940, 77,
    '2026-05-17', 'Low', 'Cary MacGyver is currently enrolled in Diversity and Inclusion in the Workplace. 51% complete. Performance is 77% on average for quizzes. Risk level is evaluated as Low.', 91
  ),
  (
    889, 'Cary Haag', 'cary.haag@gmail.com', 'https://avatars.githubusercontent.com/u/79267961',
    7, 'Cloud Computing Fundamentals', 'Marketing',
    '2026-04-19 12:50:19', 3, 'Yesterday', 1467, 78,
    '2026-06-20', 'Medium', 'Cary Haag is currently enrolled in Cloud Computing Fundamentals. 3% complete. Performance is 78% on average for quizzes. Risk level is evaluated as Medium.', 41
  ),
  (
    890, 'Brad Romaguera', 'brad.romaguera@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/97.jpg',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2025-10-20 12:23:27', 20, '1 week ago', 435, 66,
    '2025-11-28', 'Medium', 'Brad Romaguera is currently enrolled in Data Privacy and GDPR. 20% complete. Performance is 66% on average for quizzes. Risk level is evaluated as Medium.', 14
  ),
  (
    891, 'Wilfredo Prosacco', 'wilfredo.prosacco39@gmail.com', 'https://avatars.githubusercontent.com/u/29932486',
    5, 'Diversity and Inclusion in the Workplace', 'Customer Support',
    '2025-08-24 06:04:28', 33, 'Yesterday', 513, 100,
    '2025-10-07', 'Medium', 'Wilfredo Prosacco is currently enrolled in Diversity and Inclusion in the Workplace. 33% complete. Performance is 100% on average for quizzes. Risk level is evaluated as Medium.', 7
  ),
  (
    892, 'Guadalupe Zulauf', 'guadalupe.zulauf94@hotmail.com', 'https://avatars.githubusercontent.com/u/17277233',
    6, 'Advanced Sales Techniques', 'Operations',
    '2026-02-19 07:07:54', 68, '3 days ago', 1656, 75,
    '2026-04-01', 'High', 'Guadalupe Zulauf is currently enrolled in Advanced Sales Techniques. 68% complete. Performance is 75% on average for quizzes. Risk level is evaluated as High.', 2
  ),
  (
    893, 'Steve Marvin', 'steve_marvin0@yahoo.com', 'https://avatars.githubusercontent.com/u/13899544',
    3, 'Data Privacy and GDPR', 'Customer Support',
    '2026-01-02 18:16:48', 3, '1 week ago', 1413, 68,
    '2026-02-11', 'Low', 'Steve Marvin is currently enrolled in Data Privacy and GDPR. 3% complete. Performance is 68% on average for quizzes. Risk level is evaluated as Low.', 75
  ),
  (
    894, 'Raymond Ullrich', 'raymond.ullrich@hotmail.com', 'https://avatars.githubusercontent.com/u/40325136',
    5, 'Diversity and Inclusion in the Workplace', 'Finance',
    '2026-05-17 05:45:13', 98, '1 month ago', 1519, 100,
    '2026-07-28', 'Medium', 'Raymond Ullrich is currently enrolled in Diversity and Inclusion in the Workplace. 98% complete. Performance is 100% on average for quizzes. Risk level is evaluated as Medium.', 29
  ),
  (
    895, 'Jeff Lakin', 'jeff_lakin29@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/50.jpg',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2026-05-12 21:29:06', 95, 'Today', 229, 86,
    '2026-07-26', 'Medium', 'Jeff Lakin is currently enrolled in Data Privacy and GDPR. 95% complete. Performance is 86% on average for quizzes. Risk level is evaluated as Medium.', 76
  ),
  (
    896, 'Cheryl Nienow', 'cheryl.nienow@yahoo.com', 'https://avatars.githubusercontent.com/u/44725113',
    7, 'Cloud Computing Fundamentals', 'Marketing',
    '2026-01-11 06:25:15', 99, '1 month ago', 1130, 65,
    '2026-04-07', 'Low', 'Cheryl Nienow is currently enrolled in Cloud Computing Fundamentals. 99% complete. Performance is 65% on average for quizzes. Risk level is evaluated as Low.', 20
  ),
  (
    897, 'Jaleel Lemke', 'jaleel.lemke40@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/34.jpg',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2026-08-02 04:14:29', 88, 'Yesterday', 1044, 60,
    '2026-09-13', 'High', 'Jaleel Lemke is currently enrolled in Cloud Computing Fundamentals. 88% complete. Performance is 60% on average for quizzes. Risk level is evaluated as High.', 73
  ),
  (
    898, 'Mandy Hintz', 'mandy_hintz44@yahoo.com', 'https://avatars.githubusercontent.com/u/21591316',
    1, 'Cybersecurity Awareness', 'Sales',
    '2026-04-03 22:20:09', 80, 'Yesterday', 216, 67,
    '2026-06-03', 'Low', 'Mandy Hintz is currently enrolled in Cybersecurity Awareness. 80% complete. Performance is 67% on average for quizzes. Risk level is evaluated as Low.', 58
  ),
  (
    899, 'Arnold Trantow-Johns', 'arnold.trantow-johns@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/14.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Sales',
    '2026-04-16 06:44:32', 53, '1 month ago', 1716, 99,
    '2026-06-20', 'Medium', 'Arnold Trantow-Johns is currently enrolled in Diversity and Inclusion in the Workplace. 53% complete. Performance is 99% on average for quizzes. Risk level is evaluated as Medium.', 27
  ),
  (
    900, 'Raquel Dicki', 'raquel_dicki67@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/36.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2025-11-18 13:00:50', 58, '3 days ago', 253, 49,
    '2026-01-04', 'High', 'Raquel Dicki is currently enrolled in Workplace Ethics & Code of Conduct. 58% complete. Performance is 49% on average for quizzes. Risk level is evaluated as High.', 46
  ),
  (
    901, 'Opal DuBuque', 'opal_dubuque1@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/55.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Operations',
    '2026-06-03 11:43:40', 62, '1 week ago', 1262, 69,
    '2026-07-17', 'Medium', 'Opal DuBuque is currently enrolled in Workplace Ethics & Code of Conduct. 62% complete. Performance is 69% on average for quizzes. Risk level is evaluated as Medium.', 65
  ),
  (
    902, 'Perry Metz-Veum', 'perry.metz-veum23@yahoo.com', 'https://avatars.githubusercontent.com/u/60609355',
    6, 'Advanced Sales Techniques', 'Finance',
    '2025-09-27 14:56:44', 81, '3 days ago', 1528, 71,
    '2025-12-02', 'High', 'Perry Metz-Veum is currently enrolled in Advanced Sales Techniques. 81% complete. Performance is 71% on average for quizzes. Risk level is evaluated as High.', 47
  ),
  (
    903, 'Melvin Leuschke', 'melvin_leuschke@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/16.jpg',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2025-11-25 17:07:39', 6, '3 days ago', 1678, 61,
    '2026-01-30', 'High', 'Melvin Leuschke is currently enrolled in Cloud Computing Fundamentals. 6% complete. Performance is 61% on average for quizzes. Risk level is evaluated as High.', 44
  ),
  (
    904, 'Roosevelt Gerlach', 'roosevelt_gerlach32@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/1.jpg',
    6, 'Advanced Sales Techniques', 'Marketing',
    '2025-11-20 05:53:18', 4, 'Today', 1058, 64,
    '2026-01-14', 'Low', 'Roosevelt Gerlach is currently enrolled in Advanced Sales Techniques. 4% complete. Performance is 64% on average for quizzes. Risk level is evaluated as Low.', 83
  ),
  (
    905, 'Emely Zieme', 'emely_zieme@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/73.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2026-05-01 06:44:53', 70, '1 week ago', 619, 61,
    '2026-06-21', 'Medium', 'Emely Zieme is currently enrolled in Diversity and Inclusion in the Workplace. 70% complete. Performance is 61% on average for quizzes. Risk level is evaluated as Medium.', 28
  ),
  (
    906, 'Adam Green', 'adam_green@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/56.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Marketing',
    '2025-11-30 11:04:30', 100, '2 weeks ago', 417, 93,
    '2026-01-21', 'High', 'Adam Green is currently enrolled in Diversity and Inclusion in the Workplace. 100% complete. Performance is 93% on average for quizzes. Risk level is evaluated as High.', 8
  ),
  (
    907, 'Lela Hartmann', 'lela.hartmann@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/51.jpg',
    4, 'Leadership & Management', 'Operations',
    '2026-01-09 23:00:49', 25, '2 weeks ago', 808, 47,
    '2026-03-23', 'Low', 'Lela Hartmann is currently enrolled in Leadership & Management. 25% complete. Performance is 47% on average for quizzes. Risk level is evaluated as Low.', 69
  ),
  (
    908, 'Lemuel Runolfsson', 'lemuel.runolfsson37@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/92.jpg',
    6, 'Advanced Sales Techniques', 'Operations',
    '2025-11-14 10:06:44', 36, 'Yesterday', 1309, 66,
    '2026-02-03', 'Medium', 'Lemuel Runolfsson is currently enrolled in Advanced Sales Techniques. 36% complete. Performance is 66% on average for quizzes. Risk level is evaluated as Medium.', 97
  ),
  (
    909, 'Susie Lesch', 'susie.lesch61@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/1.jpg',
    6, 'Advanced Sales Techniques', 'Operations',
    '2026-07-11 19:41:17', 2, '1 month ago', 879, 44,
    '2026-08-17', 'High', 'Susie Lesch is currently enrolled in Advanced Sales Techniques. 2% complete. Performance is 44% on average for quizzes. Risk level is evaluated as High.', 4
  ),
  (
    910, 'Marjorie Buckridge', 'marjorie_buckridge24@gmail.com', 'https://avatars.githubusercontent.com/u/71616128',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2026-03-13 21:45:39', 47, '1 week ago', 1481, 74,
    '2026-05-20', 'High', 'Marjorie Buckridge is currently enrolled in Workplace Ethics & Code of Conduct. 47% complete. Performance is 74% on average for quizzes. Risk level is evaluated as High.', 69
  ),
  (
    911, 'Melinda Fisher', 'melinda.fisher@yahoo.com', 'https://avatars.githubusercontent.com/u/82776732',
    1, 'Cybersecurity Awareness', 'Sales',
    '2025-08-23 16:22:14', 95, '1 month ago', 977, 77,
    '2025-11-07', 'Medium', 'Melinda Fisher is currently enrolled in Cybersecurity Awareness. 95% complete. Performance is 77% on average for quizzes. Risk level is evaluated as Medium.', 37
  ),
  (
    912, 'Mack Mante', 'mack_mante84@gmail.com', 'https://avatars.githubusercontent.com/u/97740499',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2025-11-04 23:57:25', 93, '2 days ago', 998, 66,
    '2025-12-05', 'Medium', 'Mack Mante is currently enrolled in Diversity and Inclusion in the Workplace. 93% complete. Performance is 66% on average for quizzes. Risk level is evaluated as Medium.', 63
  ),
  (
    913, 'Peyton Hoppe', 'peyton.hoppe@hotmail.com', 'https://avatars.githubusercontent.com/u/94229175',
    5, 'Diversity and Inclusion in the Workplace', 'Human Resources',
    '2026-02-13 17:51:14', 29, '1 month ago', 1596, 44,
    '2026-03-25', 'Medium', 'Peyton Hoppe is currently enrolled in Diversity and Inclusion in the Workplace. 29% complete. Performance is 44% on average for quizzes. Risk level is evaluated as Medium.', 5
  ),
  (
    914, 'Anibal Langosh', 'anibal_langosh1@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/76.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Finance',
    '2025-09-17 21:11:11', 20, '3 days ago', 1980, 62,
    '2025-11-03', 'Low', 'Anibal Langosh is currently enrolled in Workplace Ethics & Code of Conduct. 20% complete. Performance is 62% on average for quizzes. Risk level is evaluated as Low.', 29
  ),
  (
    915, 'Michele Jast-Effertz', 'michele.jast-effertz@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/56.jpg',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2025-12-27 08:29:28', 56, '1 month ago', 784, 42,
    '2026-03-16', 'High', 'Michele Jast-Effertz is currently enrolled in Cloud Computing Fundamentals. 56% complete. Performance is 42% on average for quizzes. Risk level is evaluated as High.', 36
  ),
  (
    916, 'Eulalia Hettinger', 'eulalia.hettinger@hotmail.com', 'https://avatars.githubusercontent.com/u/8828863',
    6, 'Advanced Sales Techniques', 'Finance',
    '2025-10-11 22:15:32', 95, '3 days ago', 1586, 71,
    '2025-11-27', 'Medium', 'Eulalia Hettinger is currently enrolled in Advanced Sales Techniques. 95% complete. Performance is 71% on average for quizzes. Risk level is evaluated as Medium.', 47
  ),
  (
    917, 'Frances Quigley', 'frances_quigley@hotmail.com', 'https://avatars.githubusercontent.com/u/186544',
    4, 'Leadership & Management', 'Marketing',
    '2025-08-31 03:37:39', 91, '2 days ago', 1261, 94,
    '2025-11-10', 'Low', 'Frances Quigley is currently enrolled in Leadership & Management. 91% complete. Performance is 94% on average for quizzes. Risk level is evaluated as Low.', 87
  ),
  (
    918, 'Christy Bruen', 'christy.bruen82@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/94.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2026-04-09 22:48:05', 4, 'Today', 1452, 65,
    '2026-05-25', 'Medium', 'Christy Bruen is currently enrolled in Diversity and Inclusion in the Workplace. 4% complete. Performance is 65% on average for quizzes. Risk level is evaluated as Medium.', 10
  ),
  (
    919, 'Paula Bradtke', 'paula.bradtke62@yahoo.com', 'https://avatars.githubusercontent.com/u/94139630',
    6, 'Advanced Sales Techniques', 'Marketing',
    '2025-12-24 00:20:27', 91, '2 days ago', 1288, 53,
    '2026-01-30', 'Low', 'Paula Bradtke is currently enrolled in Advanced Sales Techniques. 91% complete. Performance is 53% on average for quizzes. Risk level is evaluated as Low.', 11
  ),
  (
    920, 'Micheal Hartmann', 'micheal.hartmann0@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/64.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Sales',
    '2026-01-04 03:17:32', 16, '2 weeks ago', 607, 64,
    '2026-03-29', 'High', 'Micheal Hartmann is currently enrolled in Workplace Ethics & Code of Conduct. 16% complete. Performance is 64% on average for quizzes. Risk level is evaluated as High.', 14
  ),
  (
    921, 'Simon Hoppe', 'simon.hoppe@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/82.jpg',
    1, 'Cybersecurity Awareness', 'Finance',
    '2026-04-29 11:51:16', 71, '2 weeks ago', 54, 84,
    '2026-07-18', 'High', 'Simon Hoppe is currently enrolled in Cybersecurity Awareness. 71% complete. Performance is 84% on average for quizzes. Risk level is evaluated as High.', 67
  ),
  (
    922, 'Samuel Weissnat', 'samuel.weissnat@yahoo.com', 'https://avatars.githubusercontent.com/u/66782663',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2025-11-01 20:33:52', 51, '2 days ago', 411, 59,
    '2026-01-30', 'Medium', 'Samuel Weissnat is currently enrolled in Workplace Ethics & Code of Conduct. 51% complete. Performance is 59% on average for quizzes. Risk level is evaluated as Medium.', 68
  ),
  (
    923, 'Harvey Carter', 'harvey_carter@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/28.jpg',
    4, 'Leadership & Management', 'Customer Support',
    '2026-03-21 17:48:11', 21, 'Yesterday', 181, 58,
    '2026-05-24', 'Medium', 'Harvey Carter is currently enrolled in Leadership & Management. 21% complete. Performance is 58% on average for quizzes. Risk level is evaluated as Medium.', 17
  ),
  (
    924, 'Astrid Bruen', 'astrid.bruen6@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/59.jpg',
    7, 'Cloud Computing Fundamentals', 'Sales',
    '2025-12-03 14:50:45', 98, 'Today', 1286, 89,
    '2026-01-18', 'Medium', 'Astrid Bruen is currently enrolled in Cloud Computing Fundamentals. 98% complete. Performance is 89% on average for quizzes. Risk level is evaluated as Medium.', 45
  ),
  (
    925, 'Jennifer Rippin', 'jennifer_rippin@hotmail.com', 'https://avatars.githubusercontent.com/u/55235721',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2026-02-16 20:17:53', 15, '2 weeks ago', 1444, 85,
    '2026-05-15', 'Low', 'Jennifer Rippin is currently enrolled in Cloud Computing Fundamentals. 15% complete. Performance is 85% on average for quizzes. Risk level is evaluated as Low.', 94
  ),
  (
    926, 'Gilberto Hartmann', 'gilberto_hartmann@hotmail.com', 'https://avatars.githubusercontent.com/u/99750154',
    5, 'Diversity and Inclusion in the Workplace', 'Customer Support',
    '2026-06-11 08:12:41', 42, 'Yesterday', 1817, 89,
    '2026-07-19', 'Low', 'Gilberto Hartmann is currently enrolled in Diversity and Inclusion in the Workplace. 42% complete. Performance is 89% on average for quizzes. Risk level is evaluated as Low.', 12
  ),
  (
    927, 'Gerard Douglas', 'gerard_douglas@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/54.jpg',
    1, 'Cybersecurity Awareness', 'Human Resources',
    '2025-10-20 15:18:26', 99, '1 month ago', 1275, 45,
    '2025-12-25', 'Low', 'Gerard Douglas is currently enrolled in Cybersecurity Awareness. 99% complete. Performance is 45% on average for quizzes. Risk level is evaluated as Low.', 48
  ),
  (
    928, 'Denis Bartoletti', 'denis_bartoletti@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/46.jpg',
    1, 'Cybersecurity Awareness', 'Sales',
    '2026-06-05 14:27:03', 31, '3 days ago', 1369, 91,
    '2026-08-04', 'Low', 'Denis Bartoletti is currently enrolled in Cybersecurity Awareness. 31% complete. Performance is 91% on average for quizzes. Risk level is evaluated as Low.', 50
  ),
  (
    929, 'Ebba Walsh', 'ebba_walsh91@gmail.com', 'https://avatars.githubusercontent.com/u/69175829',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2025-12-11 11:43:33', 77, 'Yesterday', 1977, 42,
    '2026-02-22', 'Low', 'Ebba Walsh is currently enrolled in Diversity and Inclusion in the Workplace. 77% complete. Performance is 42% on average for quizzes. Risk level is evaluated as Low.', 90
  ),
  (
    930, 'Jeffery Feeney', 'jeffery.feeney@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/89.jpg',
    1, 'Cybersecurity Awareness', 'Engineering',
    '2026-02-20 19:04:26', 18, 'Yesterday', 1857, 70,
    '2026-04-26', 'High', 'Jeffery Feeney is currently enrolled in Cybersecurity Awareness. 18% complete. Performance is 70% on average for quizzes. Risk level is evaluated as High.', 53
  ),
  (
    931, 'Clifford Jenkins', 'clifford.jenkins18@gmail.com', 'https://avatars.githubusercontent.com/u/33374073',
    7, 'Cloud Computing Fundamentals', 'Finance',
    '2026-03-18 21:05:29', 59, '2 days ago', 606, 47,
    '2026-04-28', 'Medium', 'Clifford Jenkins is currently enrolled in Cloud Computing Fundamentals. 59% complete. Performance is 47% on average for quizzes. Risk level is evaluated as Medium.', 8
  ),
  (
    932, 'Drew Carroll', 'drew_carroll@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/91.jpg',
    4, 'Leadership & Management', 'Sales',
    '2026-05-31 11:18:40', 77, '3 days ago', 373, 73,
    '2026-08-27', 'Low', 'Drew Carroll is currently enrolled in Leadership & Management. 77% complete. Performance is 73% on average for quizzes. Risk level is evaluated as Low.', 96
  ),
  (
    933, 'Vena Ward', 'vena_ward65@gmail.com', 'https://avatars.githubusercontent.com/u/77392971',
    5, 'Diversity and Inclusion in the Workplace', 'Human Resources',
    '2026-05-08 09:31:21', 49, '2 weeks ago', 1578, 69,
    '2026-08-01', 'Medium', 'Vena Ward is currently enrolled in Diversity and Inclusion in the Workplace. 49% complete. Performance is 69% on average for quizzes. Risk level is evaluated as Medium.', 31
  ),
  (
    934, 'Rogelio Nicolas', 'rogelio_nicolas@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/31.jpg',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2026-07-15 22:01:09', 72, 'Today', 397, 100,
    '2026-09-13', 'Medium', 'Rogelio Nicolas is currently enrolled in Data Privacy and GDPR. 72% complete. Performance is 100% on average for quizzes. Risk level is evaluated as Medium.', 4
  ),
  (
    935, 'Maggie Conroy', 'maggie.conroy@gmail.com', 'https://avatars.githubusercontent.com/u/39480283',
    4, 'Leadership & Management', 'Sales',
    '2025-08-12 18:41:19', 61, 'Yesterday', 248, 56,
    '2025-11-07', 'Low', 'Maggie Conroy is currently enrolled in Leadership & Management. 61% complete. Performance is 56% on average for quizzes. Risk level is evaluated as Low.', 30
  ),
  (
    936, 'Horacio Vandervort', 'horacio_vandervort@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/1.jpg',
    7, 'Cloud Computing Fundamentals', 'Finance',
    '2025-12-30 19:47:24', 13, 'Today', 1027, 74,
    '2026-01-30', 'Medium', 'Horacio Vandervort is currently enrolled in Cloud Computing Fundamentals. 13% complete. Performance is 74% on average for quizzes. Risk level is evaluated as Medium.', 29
  ),
  (
    937, 'Julius Dibbert', 'julius.dibbert31@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/26.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2026-07-26 12:23:16', 33, 'Yesterday', 479, 54,
    '2026-09-07', 'Low', 'Julius Dibbert is currently enrolled in Workplace Ethics & Code of Conduct. 33% complete. Performance is 54% on average for quizzes. Risk level is evaluated as Low.', 61
  ),
  (
    938, 'Paris Keebler', 'paris_keebler76@yahoo.com', 'https://avatars.githubusercontent.com/u/92942774',
    6, 'Advanced Sales Techniques', 'Engineering',
    '2025-11-24 03:52:23', 98, '2 weeks ago', 1731, 59,
    '2026-02-07', 'Low', 'Paris Keebler is currently enrolled in Advanced Sales Techniques. 98% complete. Performance is 59% on average for quizzes. Risk level is evaluated as Low.', 58
  ),
  (
    939, 'Dennis Langworth', 'dennis_langworth22@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/55.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Customer Support',
    '2025-11-30 05:00:05', 21, '2 days ago', 878, 40,
    '2026-02-24', 'Low', 'Dennis Langworth is currently enrolled in Diversity and Inclusion in the Workplace. 21% complete. Performance is 40% on average for quizzes. Risk level is evaluated as Low.', 36
  ),
  (
    940, 'Stuart Hermiston', 'stuart_hermiston@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/36.jpg',
    3, 'Data Privacy and GDPR', 'Marketing',
    '2026-03-01 16:56:29', 31, '1 week ago', 724, 40,
    '2026-04-30', 'High', 'Stuart Hermiston is currently enrolled in Data Privacy and GDPR. 31% complete. Performance is 40% on average for quizzes. Risk level is evaluated as High.', 20
  ),
  (
    941, 'Lauretta Barrows', 'lauretta.barrows33@yahoo.com', 'https://avatars.githubusercontent.com/u/77166322',
    1, 'Cybersecurity Awareness', 'Customer Support',
    '2026-03-10 03:52:17', 80, 'Yesterday', 1467, 65,
    '2026-05-28', 'Low', 'Lauretta Barrows is currently enrolled in Cybersecurity Awareness. 80% complete. Performance is 65% on average for quizzes. Risk level is evaluated as Low.', 11
  ),
  (
    942, 'Clayton Cremin', 'clayton.cremin68@gmail.com', 'https://avatars.githubusercontent.com/u/37322355',
    3, 'Data Privacy and GDPR', 'Marketing',
    '2025-08-14 23:42:20', 98, '1 week ago', 1222, 89,
    '2025-10-13', 'Low', 'Clayton Cremin is currently enrolled in Data Privacy and GDPR. 98% complete. Performance is 89% on average for quizzes. Risk level is evaluated as Low.', 56
  ),
  (
    943, 'Moriah Upton', 'moriah_upton@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/29.jpg',
    1, 'Cybersecurity Awareness', 'Operations',
    '2026-06-16 11:57:45', 39, '1 month ago', 1111, 47,
    '2026-08-26', 'Low', 'Moriah Upton is currently enrolled in Cybersecurity Awareness. 39% complete. Performance is 47% on average for quizzes. Risk level is evaluated as Low.', 88
  ),
  (
    944, 'Clair Ward', 'clair_ward48@yahoo.com', 'https://avatars.githubusercontent.com/u/15617294',
    4, 'Leadership & Management', 'Human Resources',
    '2026-01-31 18:53:35', 64, '3 days ago', 467, 53,
    '2026-04-21', 'Low', 'Clair Ward is currently enrolled in Leadership & Management. 64% complete. Performance is 53% on average for quizzes. Risk level is evaluated as Low.', 95
  ),
  (
    945, 'Shawna Gerhold', 'shawna_gerhold@yahoo.com', 'https://avatars.githubusercontent.com/u/15748902',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2025-09-28 04:53:34', 62, '1 week ago', 990, 64,
    '2025-11-10', 'Low', 'Shawna Gerhold is currently enrolled in Cloud Computing Fundamentals. 62% complete. Performance is 64% on average for quizzes. Risk level is evaluated as Low.', 69
  ),
  (
    946, 'Marilyn Rice', 'marilyn_rice33@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/0.jpg',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2025-08-12 03:14:21', 35, '3 days ago', 175, 83,
    '2025-10-04', 'Low', 'Marilyn Rice is currently enrolled in Cloud Computing Fundamentals. 35% complete. Performance is 83% on average for quizzes. Risk level is evaluated as Low.', 7
  ),
  (
    947, 'Stephen Weimann', 'stephen.weimann17@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/33.jpg',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2025-12-06 05:30:22', 79, 'Today', 1786, 68,
    '2026-02-03', 'Medium', 'Stephen Weimann is currently enrolled in Cloud Computing Fundamentals. 79% complete. Performance is 68% on average for quizzes. Risk level is evaluated as Medium.', 24
  ),
  (
    948, 'Janiya Smitham', 'janiya.smitham85@yahoo.com', 'https://avatars.githubusercontent.com/u/85235636',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2026-01-11 14:47:06', 77, '2 days ago', 119, 63,
    '2026-02-23', 'Low', 'Janiya Smitham is currently enrolled in Data Privacy and GDPR. 77% complete. Performance is 63% on average for quizzes. Risk level is evaluated as Low.', 38
  ),
  (
    949, 'Lucille Ward', 'lucille_ward@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/16.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Customer Support',
    '2025-10-16 06:03:31', 42, '2 weeks ago', 29, 43,
    '2026-01-09', 'Low', 'Lucille Ward is currently enrolled in Diversity and Inclusion in the Workplace. 42% complete. Performance is 43% on average for quizzes. Risk level is evaluated as Low.', 48
  ),
  (
    950, 'Dean Ankunding', 'dean.ankunding73@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/29.jpg',
    1, 'Cybersecurity Awareness', 'Engineering',
    '2026-02-04 03:41:47', 43, 'Yesterday', 338, 66,
    '2026-04-25', 'High', 'Dean Ankunding is currently enrolled in Cybersecurity Awareness. 43% complete. Performance is 66% on average for quizzes. Risk level is evaluated as High.', 79
  ),
  (
    951, 'Phoebe Wuckert', 'phoebe_wuckert@hotmail.com', 'https://avatars.githubusercontent.com/u/76083432',
    5, 'Diversity and Inclusion in the Workplace', 'Sales',
    '2026-06-15 14:02:00', 16, '3 days ago', 99, 70,
    '2026-07-16', 'Medium', 'Phoebe Wuckert is currently enrolled in Diversity and Inclusion in the Workplace. 16% complete. Performance is 70% on average for quizzes. Risk level is evaluated as Medium.', 100
  ),
  (
    952, 'Damian Crist', 'damian_crist69@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/72.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Operations',
    '2025-10-10 13:08:20', 70, 'Today', 700, 99,
    '2026-01-01', 'Low', 'Damian Crist is currently enrolled in Workplace Ethics & Code of Conduct. 70% complete. Performance is 99% on average for quizzes. Risk level is evaluated as Low.', 1
  ),
  (
    953, 'Viola Johns', 'viola.johns@yahoo.com', 'https://avatars.githubusercontent.com/u/53287292',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2025-12-23 05:14:39', 77, 'Yesterday', 568, 46,
    '2026-01-25', 'Medium', 'Viola Johns is currently enrolled in Data Privacy and GDPR. 77% complete. Performance is 46% on average for quizzes. Risk level is evaluated as Medium.', 97
  ),
  (
    954, 'Brielle Koss', 'brielle_koss@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/56.jpg',
    4, 'Leadership & Management', 'Marketing',
    '2026-07-28 13:28:06', 56, '1 week ago', 449, 95,
    '2026-10-08', 'Medium', 'Brielle Koss is currently enrolled in Leadership & Management. 56% complete. Performance is 95% on average for quizzes. Risk level is evaluated as Medium.', 59
  ),
  (
    955, 'Josephine Wuckert', 'josephine.wuckert@hotmail.com', 'https://avatars.githubusercontent.com/u/71897629',
    6, 'Advanced Sales Techniques', 'Finance',
    '2026-02-14 06:05:09', 62, '3 days ago', 831, 42,
    '2026-03-20', 'Low', 'Josephine Wuckert is currently enrolled in Advanced Sales Techniques. 62% complete. Performance is 42% on average for quizzes. Risk level is evaluated as Low.', 97
  ),
  (
    956, 'Edd Mayer', 'edd.mayer79@hotmail.com', 'https://avatars.githubusercontent.com/u/29518523',
    3, 'Data Privacy and GDPR', 'Engineering',
    '2026-06-07 07:47:50', 13, '1 week ago', 101, 46,
    '2026-08-12', 'Low', 'Edd Mayer is currently enrolled in Data Privacy and GDPR. 13% complete. Performance is 46% on average for quizzes. Risk level is evaluated as Low.', 20
  ),
  (
    957, 'Ayla Breitenberg', 'ayla_breitenberg@hotmail.com', 'https://avatars.githubusercontent.com/u/59167690',
    4, 'Leadership & Management', 'Sales',
    '2026-04-29 23:04:52', 19, '2 weeks ago', 159, 86,
    '2026-06-04', 'Medium', 'Ayla Breitenberg is currently enrolled in Leadership & Management. 19% complete. Performance is 86% on average for quizzes. Risk level is evaluated as Medium.', 55
  ),
  (
    958, 'Mireille Kerluke', 'mireille.kerluke24@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/50.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Sales',
    '2026-05-03 18:40:10', 41, '1 month ago', 1004, 58,
    '2026-06-29', 'Medium', 'Mireille Kerluke is currently enrolled in Workplace Ethics & Code of Conduct. 41% complete. Performance is 58% on average for quizzes. Risk level is evaluated as Medium.', 63
  ),
  (
    959, 'Emerson Boehm', 'emerson_boehm64@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/11.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2026-06-03 06:39:35', 2, '2 weeks ago', 686, 56,
    '2026-08-19', 'Medium', 'Emerson Boehm is currently enrolled in Workplace Ethics & Code of Conduct. 2% complete. Performance is 56% on average for quizzes. Risk level is evaluated as Medium.', 58
  ),
  (
    960, 'Lana Fisher', 'lana.fisher@gmail.com', 'https://avatars.githubusercontent.com/u/55664489',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2026-01-05 01:33:32', 45, 'Today', 909, 60,
    '2026-03-18', 'Low', 'Lana Fisher is currently enrolled in Cloud Computing Fundamentals. 45% complete. Performance is 60% on average for quizzes. Risk level is evaluated as Low.', 51
  ),
  (
    961, 'Simon Huels', 'simon_huels@hotmail.com', 'https://avatars.githubusercontent.com/u/78512484',
    2, 'Workplace Ethics & Code of Conduct', 'Marketing',
    '2026-07-16 23:25:31', 100, 'Today', 1718, 91,
    '2026-10-10', 'Medium', 'Simon Huels is currently enrolled in Workplace Ethics & Code of Conduct. 100% complete. Performance is 91% on average for quizzes. Risk level is evaluated as Medium.', 86
  ),
  (
    962, 'Joshuah Nitzsche', 'joshuah.nitzsche@gmail.com', 'https://avatars.githubusercontent.com/u/30232541',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2026-03-28 22:59:37', 75, '2 weeks ago', 1849, 50,
    '2026-05-07', 'High', 'Joshuah Nitzsche is currently enrolled in Data Privacy and GDPR. 75% complete. Performance is 50% on average for quizzes. Risk level is evaluated as High.', 58
  ),
  (
    963, 'Omari Morar', 'omari.morar@gmail.com', 'https://avatars.githubusercontent.com/u/14587672',
    3, 'Data Privacy and GDPR', 'Marketing',
    '2026-02-16 22:08:07', 69, '3 days ago', 916, 89,
    '2026-04-03', 'Low', 'Omari Morar is currently enrolled in Data Privacy and GDPR. 69% complete. Performance is 89% on average for quizzes. Risk level is evaluated as Low.', 27
  ),
  (
    964, 'Cory Jenkins', 'cory.jenkins68@yahoo.com', 'https://avatars.githubusercontent.com/u/19106688',
    3, 'Data Privacy and GDPR', 'Customer Support',
    '2026-06-11 19:57:47', 62, '1 month ago', 922, 83,
    '2026-07-22', 'Low', 'Cory Jenkins is currently enrolled in Data Privacy and GDPR. 62% complete. Performance is 83% on average for quizzes. Risk level is evaluated as Low.', 92
  ),
  (
    965, 'Garrett Marvin', 'garrett.marvin99@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/64.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2025-10-26 04:58:12', 31, 'Today', 1610, 69,
    '2025-12-16', 'High', 'Garrett Marvin is currently enrolled in Workplace Ethics & Code of Conduct. 31% complete. Performance is 69% on average for quizzes. Risk level is evaluated as High.', 91
  ),
  (
    966, 'Norwood Yundt', 'norwood_yundt@gmail.com', 'https://avatars.githubusercontent.com/u/78611826',
    5, 'Diversity and Inclusion in the Workplace', 'Engineering',
    '2026-01-10 07:06:53', 35, '2 weeks ago', 1619, 74,
    '2026-03-17', 'Low', 'Norwood Yundt is currently enrolled in Diversity and Inclusion in the Workplace. 35% complete. Performance is 74% on average for quizzes. Risk level is evaluated as Low.', 76
  ),
  (
    967, 'Toby Hodkiewicz', 'toby.hodkiewicz@gmail.com', 'https://avatars.githubusercontent.com/u/85262874',
    2, 'Workplace Ethics & Code of Conduct', 'Sales',
    '2026-01-17 22:19:05', 11, '1 month ago', 1158, 97,
    '2026-03-18', 'Low', 'Toby Hodkiewicz is currently enrolled in Workplace Ethics & Code of Conduct. 11% complete. Performance is 97% on average for quizzes. Risk level is evaluated as Low.', 1
  ),
  (
    968, 'Emilia Bogisich', 'emilia_bogisich@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/64.jpg',
    7, 'Cloud Computing Fundamentals', 'Sales',
    '2025-11-03 00:39:18', 58, 'Yesterday', 513, 91,
    '2026-01-03', 'Low', 'Emilia Bogisich is currently enrolled in Cloud Computing Fundamentals. 58% complete. Performance is 91% on average for quizzes. Risk level is evaluated as Low.', 73
  ),
  (
    969, 'Michael Terry', 'michael_terry38@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/92.jpg',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2026-06-08 04:48:38', 65, '1 week ago', 1978, 57,
    '2026-07-28', 'High', 'Michael Terry is currently enrolled in Cloud Computing Fundamentals. 65% complete. Performance is 57% on average for quizzes. Risk level is evaluated as High.', 3
  ),
  (
    970, 'Elwin Weber', 'elwin_weber@hotmail.com', 'https://avatars.githubusercontent.com/u/28904379',
    4, 'Leadership & Management', 'Engineering',
    '2026-01-01 22:43:24', 78, '3 days ago', 506, 58,
    '2026-03-25', 'Medium', 'Elwin Weber is currently enrolled in Leadership & Management. 78% complete. Performance is 58% on average for quizzes. Risk level is evaluated as Medium.', 37
  ),
  (
    971, 'Elliott Abshire', 'elliott.abshire@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/61.jpg',
    3, 'Data Privacy and GDPR', 'Operations',
    '2025-12-17 10:58:03', 34, '2 weeks ago', 1962, 65,
    '2026-03-12', 'Medium', 'Elliott Abshire is currently enrolled in Data Privacy and GDPR. 34% complete. Performance is 65% on average for quizzes. Risk level is evaluated as Medium.', 38
  ),
  (
    972, 'Sherry Beahan', 'sherry.beahan@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/59.jpg',
    7, 'Cloud Computing Fundamentals', 'Operations',
    '2025-09-12 14:54:19', 36, 'Yesterday', 407, 50,
    '2025-12-05', 'Low', 'Sherry Beahan is currently enrolled in Cloud Computing Fundamentals. 36% complete. Performance is 50% on average for quizzes. Risk level is evaluated as Low.', 33
  ),
  (
    973, 'Rochelle Corkery', 'rochelle_corkery@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/98.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Marketing',
    '2025-12-26 00:28:17', 7, '2 days ago', 666, 40,
    '2026-03-01', 'Low', 'Rochelle Corkery is currently enrolled in Workplace Ethics & Code of Conduct. 7% complete. Performance is 40% on average for quizzes. Risk level is evaluated as Low.', 73
  ),
  (
    974, 'Iris Kuhlman', 'iris_kuhlman47@hotmail.com', 'https://avatars.githubusercontent.com/u/38094422',
    6, 'Advanced Sales Techniques', 'Customer Support',
    '2025-08-08 20:32:32', 35, '1 month ago', 1538, 65,
    '2025-11-02', 'Low', 'Iris Kuhlman is currently enrolled in Advanced Sales Techniques. 35% complete. Performance is 65% on average for quizzes. Risk level is evaluated as Low.', 66
  ),
  (
    975, 'Miles Klocko', 'miles_klocko92@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/82.jpg',
    7, 'Cloud Computing Fundamentals', 'Customer Support',
    '2025-10-11 19:02:44', 45, 'Yesterday', 1045, 97,
    '2026-01-08', 'High', 'Miles Klocko is currently enrolled in Cloud Computing Fundamentals. 45% complete. Performance is 97% on average for quizzes. Risk level is evaluated as High.', 32
  ),
  (
    976, 'Corene Grimes', 'corene_grimes@gmail.com', 'https://avatars.githubusercontent.com/u/90524437',
    3, 'Data Privacy and GDPR', 'Operations',
    '2026-01-28 03:47:59', 48, '1 month ago', 1134, 81,
    '2026-03-28', 'Medium', 'Corene Grimes is currently enrolled in Data Privacy and GDPR. 48% complete. Performance is 81% on average for quizzes. Risk level is evaluated as Medium.', 42
  ),
  (
    977, 'Brittany Bauch', 'brittany.bauch87@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/44.jpg',
    4, 'Leadership & Management', 'Customer Support',
    '2026-01-17 06:17:18', 96, 'Today', 740, 75,
    '2026-02-25', 'Low', 'Brittany Bauch is currently enrolled in Leadership & Management. 96% complete. Performance is 75% on average for quizzes. Risk level is evaluated as Low.', 16
  ),
  (
    978, 'Elinore Hudson', 'elinore_hudson95@hotmail.com', 'https://avatars.githubusercontent.com/u/14475253',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2026-01-05 20:34:12', 45, '2 days ago', 1896, 72,
    '2026-04-05', 'Medium', 'Elinore Hudson is currently enrolled in Diversity and Inclusion in the Workplace. 45% complete. Performance is 72% on average for quizzes. Risk level is evaluated as Medium.', 9
  ),
  (
    979, 'Randolph Conn', 'randolph_conn@hotmail.com', 'https://avatars.githubusercontent.com/u/12184376',
    7, 'Cloud Computing Fundamentals', 'Engineering',
    '2026-08-04 05:08:42', 47, 'Yesterday', 995, 60,
    '2026-10-17', 'Medium', 'Randolph Conn is currently enrolled in Cloud Computing Fundamentals. 47% complete. Performance is 60% on average for quizzes. Risk level is evaluated as Medium.', 53
  ),
  (
    980, 'Vella Wisozk', 'vella_wisozk97@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/56.jpg',
    4, 'Leadership & Management', 'Finance',
    '2025-10-01 08:28:42', 67, '2 days ago', 458, 81,
    '2025-11-25', 'High', 'Vella Wisozk is currently enrolled in Leadership & Management. 67% complete. Performance is 81% on average for quizzes. Risk level is evaluated as High.', 55
  ),
  (
    981, 'Lavern Turcotte', 'lavern_turcotte90@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/12.jpg',
    3, 'Data Privacy and GDPR', 'Human Resources',
    '2026-07-06 17:23:33', 84, 'Today', 606, 64,
    '2026-09-02', 'Medium', 'Lavern Turcotte is currently enrolled in Data Privacy and GDPR. 84% complete. Performance is 64% on average for quizzes. Risk level is evaluated as Medium.', 17
  ),
  (
    982, 'Dale Lubowitz', 'dale.lubowitz28@hotmail.com', 'https://avatars.githubusercontent.com/u/69377826',
    6, 'Advanced Sales Techniques', 'Finance',
    '2026-06-04 03:58:34', 35, 'Yesterday', 824, 70,
    '2026-08-01', 'Medium', 'Dale Lubowitz is currently enrolled in Advanced Sales Techniques. 35% complete. Performance is 70% on average for quizzes. Risk level is evaluated as Medium.', 39
  ),
  (
    983, 'Madeline Rath', 'madeline.rath@yahoo.com', 'https://avatars.githubusercontent.com/u/45814473',
    1, 'Cybersecurity Awareness', 'Engineering',
    '2026-04-30 02:36:56', 13, '1 month ago', 23, 46,
    '2026-06-12', 'Low', 'Madeline Rath is currently enrolled in Cybersecurity Awareness. 13% complete. Performance is 46% on average for quizzes. Risk level is evaluated as Low.', 45
  ),
  (
    984, 'Constantin Russel', 'constantin.russel@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/20.jpg',
    7, 'Cloud Computing Fundamentals', 'Sales',
    '2026-04-02 15:31:48', 61, '1 week ago', 1924, 57,
    '2026-06-15', 'Low', 'Constantin Russel is currently enrolled in Cloud Computing Fundamentals. 61% complete. Performance is 57% on average for quizzes. Risk level is evaluated as Low.', 51
  ),
  (
    985, 'Troy Fisher', 'troy_fisher@yahoo.com', 'https://avatars.githubusercontent.com/u/62016535',
    6, 'Advanced Sales Techniques', 'Marketing',
    '2026-06-15 05:47:06', 31, '2 weeks ago', 554, 89,
    '2026-07-17', 'Low', 'Troy Fisher is currently enrolled in Advanced Sales Techniques. 31% complete. Performance is 89% on average for quizzes. Risk level is evaluated as Low.', 24
  ),
  (
    986, 'Nat Reichert', 'nat.reichert@hotmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/4.jpg',
    6, 'Advanced Sales Techniques', 'Sales',
    '2025-08-31 03:05:25', 37, '3 days ago', 1285, 100,
    '2025-11-17', 'Medium', 'Nat Reichert is currently enrolled in Advanced Sales Techniques. 37% complete. Performance is 100% on average for quizzes. Risk level is evaluated as Medium.', 97
  ),
  (
    987, 'Reina Mayert', 'reina.mayert32@gmail.com', 'https://avatars.githubusercontent.com/u/86198015',
    5, 'Diversity and Inclusion in the Workplace', 'Operations',
    '2026-03-17 04:32:39', 6, '1 month ago', 1781, 45,
    '2026-05-25', 'Medium', 'Reina Mayert is currently enrolled in Diversity and Inclusion in the Workplace. 6% complete. Performance is 45% on average for quizzes. Risk level is evaluated as Medium.', 31
  ),
  (
    988, 'Bryan Rau', 'bryan_rau@gmail.com', 'https://avatars.githubusercontent.com/u/51439242',
    1, 'Cybersecurity Awareness', 'Sales',
    '2025-08-17 23:10:37', 28, '1 month ago', 291, 86,
    '2025-10-10', 'Medium', 'Bryan Rau is currently enrolled in Cybersecurity Awareness. 28% complete. Performance is 86% on average for quizzes. Risk level is evaluated as Medium.', 84
  ),
  (
    989, 'Hailee Prosacco', 'hailee.prosacco28@hotmail.com', 'https://avatars.githubusercontent.com/u/51603235',
    2, 'Workplace Ethics & Code of Conduct', 'Human Resources',
    '2026-05-22 01:19:10', 60, '1 month ago', 113, 65,
    '2026-07-14', 'Low', 'Hailee Prosacco is currently enrolled in Workplace Ethics & Code of Conduct. 60% complete. Performance is 65% on average for quizzes. Risk level is evaluated as Low.', 80
  ),
  (
    990, 'Ira Osinski', 'ira.osinski6@hotmail.com', 'https://avatars.githubusercontent.com/u/15654724',
    4, 'Leadership & Management', 'Sales',
    '2025-12-18 09:58:59', 12, '3 days ago', 1961, 92,
    '2026-01-23', 'Low', 'Ira Osinski is currently enrolled in Leadership & Management. 12% complete. Performance is 92% on average for quizzes. Risk level is evaluated as Low.', 53
  ),
  (
    991, 'Tatyana Gleason', 'tatyana.gleason@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/96.jpg',
    5, 'Diversity and Inclusion in the Workplace', 'Human Resources',
    '2026-03-25 16:09:00', 38, '3 days ago', 1148, 76,
    '2026-04-26', 'Low', 'Tatyana Gleason is currently enrolled in Diversity and Inclusion in the Workplace. 38% complete. Performance is 76% on average for quizzes. Risk level is evaluated as Low.', 100
  ),
  (
    992, 'Milford Shields', 'milford_shields21@hotmail.com', 'https://avatars.githubusercontent.com/u/62974366',
    5, 'Diversity and Inclusion in the Workplace', 'Human Resources',
    '2025-08-12 04:38:51', 80, 'Yesterday', 359, 48,
    '2025-10-19', 'High', 'Milford Shields is currently enrolled in Diversity and Inclusion in the Workplace. 80% complete. Performance is 48% on average for quizzes. Risk level is evaluated as High.', 37
  ),
  (
    993, 'Gerard Cummerata', 'gerard.cummerata72@yahoo.com', 'https://avatars.githubusercontent.com/u/85663070',
    1, 'Cybersecurity Awareness', 'Engineering',
    '2025-08-18 09:11:00', 79, '3 days ago', 902, 49,
    '2025-11-14', 'Low', 'Gerard Cummerata is currently enrolled in Cybersecurity Awareness. 79% complete. Performance is 49% on average for quizzes. Risk level is evaluated as Low.', 47
  ),
  (
    994, 'Monique Schaden', 'monique.schaden@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/3.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Operations',
    '2026-01-14 13:12:29', 74, '2 weeks ago', 1948, 90,
    '2026-02-27', 'Medium', 'Monique Schaden is currently enrolled in Workplace Ethics & Code of Conduct. 74% complete. Performance is 90% on average for quizzes. Risk level is evaluated as Medium.', 38
  ),
  (
    995, 'Peggy Berge', 'peggy.berge@gmail.com', 'https://avatars.githubusercontent.com/u/13795296',
    2, 'Workplace Ethics & Code of Conduct', 'Customer Support',
    '2025-09-09 17:41:24', 75, '2 weeks ago', 403, 100,
    '2025-10-31', 'Low', 'Peggy Berge is currently enrolled in Workplace Ethics & Code of Conduct. 75% complete. Performance is 100% on average for quizzes. Risk level is evaluated as Low.', 81
  ),
  (
    996, 'Troy Collier', 'troy_collier59@yahoo.com', 'https://avatars.githubusercontent.com/u/9971061',
    7, 'Cloud Computing Fundamentals', 'Human Resources',
    '2026-07-02 21:27:22', 93, 'Today', 464, 75,
    '2026-09-25', 'Low', 'Troy Collier is currently enrolled in Cloud Computing Fundamentals. 93% complete. Performance is 75% on average for quizzes. Risk level is evaluated as Low.', 31
  ),
  (
    997, 'Patti Durgan', 'patti.durgan@gmail.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/23.jpg',
    6, 'Advanced Sales Techniques', 'Finance',
    '2026-01-07 11:05:38', 2, '3 days ago', 1984, 65,
    '2026-02-12', 'High', 'Patti Durgan is currently enrolled in Advanced Sales Techniques. 2% complete. Performance is 65% on average for quizzes. Risk level is evaluated as High.', 62
  ),
  (
    998, 'Clarence Thiel', 'clarence_thiel@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/25.jpg',
    4, 'Leadership & Management', 'Customer Support',
    '2025-10-20 18:18:24', 44, '1 month ago', 828, 85,
    '2025-12-26', 'Low', 'Clarence Thiel is currently enrolled in Leadership & Management. 44% complete. Performance is 85% on average for quizzes. Risk level is evaluated as Low.', 48
  ),
  (
    999, 'Barry Doyle', 'barry.doyle83@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/7.jpg',
    7, 'Cloud Computing Fundamentals', 'Finance',
    '2026-03-20 17:12:12', 84, '1 month ago', 104, 76,
    '2026-05-30', 'Low', 'Barry Doyle is currently enrolled in Cloud Computing Fundamentals. 84% complete. Performance is 76% on average for quizzes. Risk level is evaluated as Low.', 66
  ),
  (
    1000, 'Kiera Spencer', 'kiera_spencer@yahoo.com', 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/95.jpg',
    2, 'Workplace Ethics & Code of Conduct', 'Marketing',
    '2026-05-15 08:30:02', 63, '3 days ago', 1711, 80,
    '2026-07-12', 'Low', 'Kiera Spencer is currently enrolled in Workplace Ethics & Code of Conduct. 63% complete. Performance is 80% on average for quizzes. Risk level is evaluated as Low.', 87
  );
