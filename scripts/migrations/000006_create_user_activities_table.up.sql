CREATE TABLE IF NOT EXISTS user_activities(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    post_id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
    is_liked BOOLEAN NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    created_by LONGTEXT NOT NULL,
    updated_by LONGTEXT NOT NULL,
    CONSTRAINT fk_post_id_likes FOREIGN KEY (post_id) REFERENCES posts(id),
    CONSTRAINT fk_user_id_likes FOREIGN KEY (user_id) REFERENCES users(id)
)