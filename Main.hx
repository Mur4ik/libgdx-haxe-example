import com.badlogic.gdx.backends.lwjgl.LwjglApplication;
import com.badlogic.gdx.backends.lwjgl.LwjglApplicationConfiguration;
import com.badlogic.gdx.ApplicationAdapter;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

class Main extends ApplicationAdapter {
    var batch:SpriteBatch;
    var img:Texture;

    @:overload
    override function create() {
        batch = new SpriteBatch();
        img = new Texture("badlogic.jpg");
    }

    @:overload
    override function render() {
        Gdx.gl.glClearColor(1, 0, 0, 1);
        Gdx.gl.glClear(GL20_Statics.GL_COLOR_BUFFER_BIT);
        batch.begin();
        batch.draw(img, 0, 0);
        batch.end();
    }

    static function main() {
        new LwjglApplication(new Main(), new LwjglApplicationConfiguration());
    }
}
