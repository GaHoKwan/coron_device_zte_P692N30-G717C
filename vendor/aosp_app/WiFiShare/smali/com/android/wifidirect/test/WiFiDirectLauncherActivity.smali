.class public Lcom/android/wifidirect/test/WiFiDirectLauncherActivity;
.super Landroid/app/Activity;
.source "WiFiDirectLauncherActivity.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "WiFiDirectLauncherActivity_yj"

.field private static final V:Z = true


# instance fields
.field private isWifiDirectDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wifidirect/test/WiFiDirectLauncherActivity;->isWifiDirectDisabled:Z

    return-void
.end method

.method private creatFileForSharedContent(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/net/Uri;
    .locals 10
    .parameter "context"
    .parameter "shareContent"

    .prologue
    .line 184
    if-nez p2, :cond_1

    .line 185
    const/4 v4, 0x0

    .line 225
    :cond_0
    :goto_0
    return-object v4

    .line 188
    :cond_1
    const/4 v4, 0x0

    .line 189
    .local v4, fileUri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 191
    .local v5, outStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f080004

    invoke-virtual {p0, v8}, Lcom/android/wifidirect/test/WiFiDirectLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".html"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 194
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, uri:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/></head><body><a href=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</a></p>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</body></html>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, content:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 200
    .local v0, byteBuff:[B
    const/4 v7, 0x0

    invoke-virtual {p1, v3, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 201
    if-eqz v5, :cond_2

    .line 202
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v5, v0, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 203
    new-instance v7, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 204
    if-eqz v4, :cond_2

    .line 205
    const-string v7, "WiFiDirectLauncherActivity_yj"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Created one file for shared content: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 218
    :cond_2
    if-eqz v5, :cond_0

    .line 219
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 221
    :catch_0
    move-exception v2

    .line 222
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 209
    .end local v0           #byteBuff:[B
    .end local v1           #content:Ljava/lang/String;
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v6           #uri:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 210
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v7, "WiFiDirectLauncherActivity_yj"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    if-eqz v5, :cond_0

    .line 219
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 221
    :catch_2
    move-exception v2

    .line 222
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 212
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 213
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_4
    const-string v7, "WiFiDirectLauncherActivity_yj"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 218
    if-eqz v5, :cond_0

    .line 219
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 221
    :catch_4
    move-exception v2

    .line 222
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 214
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 215
    .local v2, e:Ljava/lang/Exception;
    :try_start_6
    const-string v7, "WiFiDirectLauncherActivity_yj"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 218
    if-eqz v5, :cond_0

    .line 219
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 221
    :catch_6
    move-exception v2

    .line 222
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 217
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 218
    if-eqz v5, :cond_3

    .line 219
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 223
    :cond_3
    :goto_1
    throw v7

    .line 221
    :catch_7
    move-exception v2

    .line 222
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private final isWiFiDirectAllowed()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 150
    invoke-virtual {p0}, Lcom/android/wifidirect/test/WiFiDirectLauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 153
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v6, "airplane_mode_on"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v1, v4

    .line 155
    .local v1, isAirplaneModeOn:Z
    :goto_0
    if-nez v1, :cond_2

    .line 180
    :cond_0
    :goto_1
    return v4

    .end local v1           #isAirplaneModeOn:Z
    :cond_1
    move v1, v5

    .line 153
    goto :goto_0

    .line 160
    .restart local v1       #isAirplaneModeOn:Z
    :cond_2
    const-string v6, "airplane_mode_radios"

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, airplaneModeRadios:Ljava/lang/String;
    if-nez v0, :cond_3

    move v2, v4

    .line 164
    .local v2, isAirplaneSensitive:Z
    :goto_2
    if-eqz v2, :cond_0

    move v4, v5

    .line 180
    goto :goto_1

    .line 162
    .end local v2           #isAirplaneSensitive:Z
    :cond_3
    const-string v6, "bluetooth"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/android/wifidirect/test/WiFiDirectLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 40
    .local v8, intent:Landroid/content/Intent;
    if-nez v8, :cond_0

    const/4 v2, 0x0

    .line 41
    .local v2, action:Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_1

    .line 42
    const-string v17, "WiFiDirectLauncherActivity_yj"

    const-string v18, "Unexpected error! action is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/android/wifidirect/test/WiFiDirectLauncherActivity;->finish()V

    .line 146
    :goto_1
    return-void

    .line 40
    .end local v2           #action:Ljava/lang/String;
    :cond_0
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 46
    .restart local v2       #action:Ljava/lang/String;
    :cond_1
    const-string v17, "android.intent.action.SEND"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 52
    :cond_2
    const-string v17, "android.intent.action.SEND"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 54
    invoke-virtual {v8}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v13

    .line 55
    .local v13, type:Ljava/lang/String;
    const-string v17, "android.intent.extra.STREAM"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    .line 56
    .local v12, stream:Landroid/net/Uri;
    const-string v17, "android.intent.extra.TEXT"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 62
    .local v4, extra_text:Ljava/lang/CharSequence;
    if-eqz v12, :cond_6

    if-eqz v13, :cond_6

    .line 63
    const-string v17, "WiFiDirectLauncherActivity_yj"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Get ACTION_SEND intent: Uri = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; mimetype = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static/range {p0 .. p0}, Lcom/android/wifidirect/test/WifiTransferMgr;->getInstance(Landroid/content/Context;)Lcom/android/wifidirect/test/WifiTransferMgr;

    move-result-object v17

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/android/wifidirect/test/WifiTransferMgr;->saveSendingFileInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v4           #extra_text:Ljava/lang/CharSequence;
    .end local v12           #stream:Landroid/net/Uri;
    .end local v13           #type:Ljava/lang/String;
    :cond_3
    :goto_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 117
    .local v3, currentapiVersion:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/wifidirect/test/WiFiDirectLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "wifi"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 118
    .local v10, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v17

    if-nez v17, :cond_a

    :cond_4
    const/16 v16, 0x1

    .line 120
    .local v16, wifiDirectDisabled:Z
    :goto_3
    const-string v17, "WiFiDirectLauncherActivity_yj"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "android version = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-eqz v16, :cond_b

    .line 123
    const-string v17, "WiFiDirectLauncherActivity_yj"

    const-string v18, " WiFi Direct!disabled! "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v6, Landroid/content/Intent;

    const-class v17, Lcom/android/wifidirect/test/WifiDirectEnableActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v6, in:Landroid/content/Intent;
    const/high16 v17, 0x1000

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 128
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/wifidirect/test/WiFiDirectLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 145
    .end local v3           #currentapiVersion:I
    .end local v6           #in:Landroid/content/Intent;
    .end local v10           #mWifiManager:Landroid/net/wifi/WifiManager;
    .end local v16           #wifiDirectDisabled:Z
    :cond_5
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/wifidirect/test/WiFiDirectLauncherActivity;->finish()V

    goto/16 :goto_1

    .line 70
    .restart local v4       #extra_text:Ljava/lang/CharSequence;
    .restart local v12       #stream:Landroid/net/Uri;
    .restart local v13       #type:Ljava/lang/String;
    :cond_6
    if-eqz v4, :cond_7

    if-eqz v13, :cond_7

    .line 71
    const-string v17, "WiFiDirectLauncherActivity_yj"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Get ACTION_SEND intent with Extra_text = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; mimetype = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/wifidirect/test/WiFiDirectLauncherActivity;->creatFileForSharedContent(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/net/Uri;

    move-result-object v5

    .line 75
    .local v5, fileUri:Landroid/net/Uri;
    if-eqz v5, :cond_3

    .line 76
    invoke-static/range {p0 .. p0}, Lcom/android/wifidirect/test/WifiTransferMgr;->getInstance(Landroid/content/Context;)Lcom/android/wifidirect/test/WifiTransferMgr;

    move-result-object v17

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/android/wifidirect/test/WifiTransferMgr;->saveSendingFileInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 81
    .end local v5           #fileUri:Landroid/net/Uri;
    :cond_7
    const-string v17, "WiFiDirectLauncherActivity_yj"

    const-string v18, "type is null; or sending file URI is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/android/wifidirect/test/WiFiDirectLauncherActivity;->finish()V

    goto/16 :goto_1

    .line 85
    .end local v4           #extra_text:Ljava/lang/CharSequence;
    .end local v12           #stream:Landroid/net/Uri;
    .end local v13           #type:Ljava/lang/String;
    :cond_8
    const-string v17, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 86
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v15, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v8}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    .line 88
    .local v11, mimeType:Ljava/lang/String;
    const-string v17, "android.intent.extra.STREAM"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 89
    if-eqz v11, :cond_9

    if-eqz v15, :cond_9

    .line 90
    const-string v17, "WiFiDirectLauncherActivity_yj"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Get ACTION_SHARE_MULTIPLE intent: uris "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n Type= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static/range {p0 .. p0}, Lcom/android/wifidirect/test/WifiTransferMgr;->getInstance(Landroid/content/Context;)Lcom/android/wifidirect/test/WifiTransferMgr;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v15}, Lcom/android/wifidirect/test/WifiTransferMgr;->saveSendingFileInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 94
    :cond_9
    const-string v17, "WiFiDirectLauncherActivity_yj"

    const-string v18, "type is null; or sending files URIs are null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/wifidirect/test/WiFiDirectLauncherActivity;->finish()V

    goto/16 :goto_1

    .line 118
    .end local v11           #mimeType:Ljava/lang/String;
    .end local v15           #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v3       #currentapiVersion:I
    .restart local v10       #mWifiManager:Landroid/net/wifi/WifiManager;
    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 131
    .restart local v16       #wifiDirectDisabled:Z
    :cond_b
    new-instance v7, Landroid/content/Intent;

    const-class v17, Lcom/android/wifidirect/test/WifiDirectDeviceList;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v7, in1:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/wifidirect/test/WiFiDirectLauncherActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 135
    .end local v3           #currentapiVersion:I
    .end local v7           #in1:Landroid/content/Intent;
    .end local v10           #mWifiManager:Landroid/net/wifi/WifiManager;
    .end local v16           #wifiDirectDisabled:Z
    :cond_c
    const-string v17, "android.wifiopp.intent.action.OPEN"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/android/wifidirect/test/WiFiDirectLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .line 137
    .local v14, uri:Landroid/net/Uri;
    const-string v17, "WiFiDirectLauncherActivity_yj"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Get ACTION_OPEN intent: Uri = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 140
    .local v9, intent1:Landroid/content/Intent;
    invoke-virtual {v9, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v17, "com.android.wifidirect.test"

    const-class v18, Lcom/android/wifidirect/test/WifiOppReceiver;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-virtual {v9, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 143
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/wifidirect/test/WiFiDirectLauncherActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4
.end method
