package org.czo.flashweb;

import android.content.Intent;
import android.os.Build;
import android.service.quicksettings.TileService;
import android.support.annotation.RequiresApi;


@RequiresApi(api = Build.VERSION_CODES.N)
public class FullscreenTileService extends TileService  {

    @Override
    public void onClick() {
        Intent intent = new Intent(this, FullscreenActivity.class);
        //startActivity(intent);
        startActivityAndCollapse(intent);
    }
}