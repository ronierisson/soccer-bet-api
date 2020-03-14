package soccerbetapi.service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import soccerbetapi.repository.GameRepository;
import soccerbetapi.response.GameResponse;

@Service
@Slf4j
public class GameService {

    private GameRepository gameRepository;

    public GameService(GameRepository gameRepository) {
        this.gameRepository = gameRepository;
    }

    public GameResponse findGameById(Long id) {
        return gameRepository.findGameById(id);
    }

}
