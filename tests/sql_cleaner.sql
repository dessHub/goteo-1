DELETE FROM `project` WHERE node='testnode';
DELETE FROM `user` WHERE node='testnode';
DELETE FROM `node` WHERE id='testnode';
DELETE FROM `project` WHERE node='testnode';
DELETE FROM `user` WHERE node='testnode';
DELETE FROM `user_personal` WHERE `user` NOT IN (SELECT id FROM `user`);
DELETE FROM  `project_category` WHERE `project` NOT IN (SELECT id FROM project);
DELETE FROM `post_lang` WHERE id NOT IN (SELECT id FROM post);
DELETE FROM `post_lang` WHERE id NOT IN (SELECT id FROM post);
DELETE FROM `user_web` WHERE `user` NOT IN (SELECT id FROM `user`);
DELETE FROM  `project_account` WHERE `project` NOT IN (SELECT id FROM project);
DELETE FROM `message` WHERE `user` NOT IN (SELECT id FROM `user`);
DELETE FROM  `cost` WHERE `project` NOT IN (SELECT id FROM project);
DELETE FROM mailer_control WHERE email LIKE 'test@goteo.org';
DELETE FROM mailer_control WHERE email LIKE '%simulated-user-test@goteo.org';
DELETE FROM mail WHERE email LIKE 'test@goteo.org';
DELETE FROM mail WHERE email LIKE '%simulated-user-test@goteo.org';
DELETE FROM mail WHERE email LIKE '%simulated-user-test_@goteo.org';
DELETE FROM mail_stats WHERE metric_id IN (SELECT id FROM metric WHERE metric LIKE 'TEST_METRIC');
DELETE FROM metric WHERE metric LIKE 'TEST_METRIC';
DELETE FROM mail_stats WHERE metric_id IN (SELECT id FROM metric WHERE metric LIKE 'TEST_STAT_METRIC%');
DELETE FROM metric WHERE metric LIKE 'TEST_STAT_METRIC%';
DELETE FROM `mailer_send` WHERE `user` NOT IN (SELECT id FROM `user`);
