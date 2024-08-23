-- ------------------------------------------------
-- Version: v1.82
--
-- Description: Migration that introduces the assessment comment table
-- -------------------------------------------------

-- assessment comments table
CREATE TABLE Comment (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    assessment_id varchar(36) NOT NULL,
    user_id VARCHAR(255) NOT NULL,
    text TEXT NOT NULL,
    created_on TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (assessment_id) REFERENCES Assessment(id) ON DELETE CASCADE,
    FOREIGN KEY(user_id) REFERENCES User(id) ON DELETE CASCADE
);