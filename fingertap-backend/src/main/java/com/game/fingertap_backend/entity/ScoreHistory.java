package com.game.fingertap_backend.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "score_history")
public class ScoreHistory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String player;
    private int score;

    public Long getId() {
        return id;
    }

    public String getPlayer() {
        return player;
    }

    public void setPlayer(String player) {
        this.player = player;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }
}
