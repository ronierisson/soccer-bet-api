package soccerbetapi.service;

import io.micrometer.core.instrument.util.StringUtils;
import lombok.extern.slf4j.Slf4j;
import org.hibernate.criterion.Projections;
import org.hibernate.tool.schema.Action;
import org.springframework.stereotype.Service;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import soccerbetapi.repository.GameRepository;
import soccerbetapi.response.GameResponse;

import java.util.Objects;

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
