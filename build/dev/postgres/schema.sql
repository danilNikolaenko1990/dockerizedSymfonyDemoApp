CREATE TABLE symfony_demo_comment
(
    id           INTEGER NOT NULL,
    post_id      INTEGER NOT NULL,
    author_id    INTEGER NOT NULL,
    content      TEXT    NOT NULL,
    published_at DATE    NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE symfony_demo_post
(
    id           INTEGER      NOT NULL,
    author_id    INTEGER      NOT NULL,
    title        VARCHAR(255) NOT NULL,
    slug         VARCHAR(255) NOT NULL,
    summary      VARCHAR(255) NOT NULL,
    content      TEXT         NOT NULL,
    published_at DATE         NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE symfony_demo_post_tag
(
    post_id INTEGER NOT NULL,
    tag_id  INTEGER NOT NULL,
    PRIMARY KEY (post_id, tag_id)
);

CREATE TABLE symfony_demo_tag
(
    id   INTEGER      NOT NULL,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE symfony_demo_user
(
    id        INTEGER      NOT NULL,
    full_name VARCHAR(255) NOT NULL,
    username  VARCHAR(255) NOT NULL,
    email     VARCHAR(255) NOT NULL,
    password  VARCHAR(255) NOT NULL,
    roles     TEXT         NOT NULL,
    PRIMARY KEY (id)
);
