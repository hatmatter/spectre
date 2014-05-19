package skadistats;

import java.io.IOException;

import skadistats.spectre.*;
import skadistats.spectre.err.*;
import skadistats.spectre.proto.basic.Position.EntityPosition;

public class WritePosition {
    public static void main(String[] args) throws IOException, AspectNotFound {
        Spectre spectre = new Spectre("/tmp");

        AspectWriter writer = spectre.newWriter("/basic/position/hero", 1111);
        EntityPosition aPos = null;

        writer.setTick(1);

        aPos = EntityPosition.newBuilder()
               .setEntityIdx(writer.indexString("AntiMage"))
               .setPosX(100)
               .setPosY(200)
               .build();
        writer.write(aPos);
        writer.close();

        AspectReader reader = spectre.newReader("/basic/position/hero", 1111);

        System.out.println("Replay: "+reader.getReplayId());
        for (EntityPosition pos : reader.iterEntityPosition()) {
            System.out.println(reader.getTick()+" : ["+pos.getEntityIdx()+"] "+pos.getPosX()+"/"+pos.getPosY());
        }
        System.out.println("Done");
    }
}
