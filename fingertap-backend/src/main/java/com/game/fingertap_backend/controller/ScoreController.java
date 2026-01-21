package com.game.fingertap_backend.controller;

import com.game.fingertap_backend.entity.ScoreHistory;
import com.game.fingertap_backend.repository.ScoreHistoryRepository;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/scores")
@CrossOrigin(origins = "*")
public class ScoreController {

    private final ScoreHistoryRepository repo;

    public ScoreController(ScoreHistoryRepository repo) {
        this.repo = repo;
    }

    @PostMapping
    public ScoreHistory saveScore(@RequestBody ScoreHistory score) {
        return repo.save(score);
    }
}
