package soccerbetapi.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import soccerbetapi.response.GameResponse;
import soccerbetapi.service.GameService;

@RestController
@RequestMapping("/games")
public class GameController {
    private static final String ID = "/{id}";

    private GameService gameService;

    public GameController(GameService gameService) {
        this.gameService = gameService;
    }

    @GetMapping(value = ID)
    public ResponseEntity<GameResponse> getGames(@PathVariable("id") Long id) {
        GameResponse bomResponse = gameService.findGameById(id);
        return new ResponseEntity<>(bomResponse, HttpStatus.OK);
    }

}
