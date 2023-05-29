// All the variables for the game UI
// we only have one game info so everything is static
class GameInfo  {
    // settings variables
    static width = 1750;
    static height = 850;

    static loading = true;

    // data
    static game;
    static matchDecks;
    static images = {};
    static sounds = {};
    static fonts = {};

    // renderers
    static scoreBoard;
    static playerDeck;
    static oppDeck;
    static playerObj;
    static oppObj;
    static gameoverState = false;
    static loseSoundPlayed = false;
    static winSoundPlayed = false;

    // buttons
    static endturnButton;

    // Write your UI settings for each game state here
    // Call the method every time there is a game state change
    static prepareUI() {
        if (GameInfo.game.player.state == "Playing") { 
            GameInfo.playerDeck.active = true;
            GameInfo.playerDeck.darker = false;
            GameInfo.playerDeck.hover = true;
            GameInfo.playerDeck.normal = true;
        } else if (GameInfo.game.player.state == "Waiting") {
            GameInfo.playerDeck.active = false;
            GameInfo.playerDeck.darker = true;
            GameInfo.playerDeck.normal = false;
        }

        if (GameInfo.game.player.obj.hp <= 0 ) {
            GameInfo.gameoverState = true;
            GameInfo.endgameButton.show();
            if(GameInfo.loseSoundPlayed == false){
                GameInfo.sounds.lose.play();
                GameInfo.loseSoundPlayed = true;
            }
        }else{
            GameInfo.endgameButton.hide();
        }

        if(GameInfo.game.opponents[0].obj.hp <= 0) {
            GameInfo.gameoverState = true;
            GameInfo.endgameButton.show();
            if(GameInfo.winSoundPlayed == false){
                GameInfo.sounds.win.play();
                GameInfo.winSoundPlayed = true;
            }
        }else{
            GameInfo.endgameButton.hide();
        }
    }
}