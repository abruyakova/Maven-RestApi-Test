CREATE TABLE customer
(
    id         BIGINT       NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255) NULL,
    last_name  VARCHAR(255) NULL,
    email      VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tag
(
    id   BIGINT       NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) null,
    PRIMARY KEY (id)
);

CREATE TABLE customer_tag
(
    id          BIGINT NOT NULL AUTO_INCREMENT,
    customer_id BIGINT NOT NULL,
    tag_id      BIGINT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES customer (id),
    FOREIGN KEY (tag_id) REFERENCES tag (id)
);

CREATE TABLE customer_attrs
(
    id          BIGINT       NOT NULL AUTO_INCREMENT,
    label       VARCHAR(255) not null,
    type        VARCHAR(255) not null,
    value       varchar(255) not null,
    customer_id BIGINT       NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) references customer (id)
);

CREATE TABLE customer_status
(
    id    BIGINT       NOT NULL AUTO_INCREMENT,
    name  VARCHAR(255) not null,
    level INT          not null,
    PRIMARY KEY (id)
);

CREATE TABLE customer_history
(
    id                 BIGINT    NOT NULL AUTO_INCREMENT,
    customer_id        BIGINT    NOT NULL,
    customer_status_id BIGINT    NOT NULL,
    date_time          TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) references customer (id),
    FOREIGN KEY (customer_status_id) references customer_status (id)
);