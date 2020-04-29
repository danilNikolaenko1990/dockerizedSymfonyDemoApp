CREATE TABLE symfony_demo_comment
(
    id           SERIAL  NOT NULL,
    post_id      INTEGER NOT NULL,
    author_id    INTEGER NOT NULL,
    content      TEXT    NOT NULL,
    published_at DATE    NOT NULL
);

CREATE TABLE symfony_demo_post
(
    id           SERIAL       NOT NULL,
    author_id    INTEGER      NOT NULL,
    title        VARCHAR(255) NOT NULL,
    slug         VARCHAR(255) NOT NULL,
    summary      VARCHAR(255) NOT NULL,
    content      TEXT         NOT NULL,
    published_at DATE         NOT NULL
);

CREATE TABLE symfony_demo_post_tag
(
    post_id SERIAL  NOT NULL,
    tag_id  INTEGER NOT NULL
);

CREATE TABLE symfony_demo_tag
(
    id   SERIAL       NOT NULL,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE symfony_demo_user
(
    id        SERIAL       NOT NULL,
    full_name VARCHAR(255) NOT NULL,
    username  VARCHAR(255) NOT NULL,
    email     VARCHAR(255) NOT NULL,
    password  VARCHAR(255) NOT NULL,
    roles     TEXT         NOT NULL
);
