package com.game.fingertap_backend.repository;

import com.game.fingertap_backend.entity.ScoreHistory;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ScoreHistoryRepository
        extends JpaRepository<ScoreHistory, Long> {
}
