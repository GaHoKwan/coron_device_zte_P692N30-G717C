.class public Lcom/android/providers/drm/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedReceiver.java"


# static fields
.field private static final DEVICE_ID_LEN:I = 0x20

.field private static final INVALID_DEVICE_ID:Ljava/lang/String; = "000000000000000"

.field private static final OLD_DEVICE_ID_FILE:Ljava/lang/String; = "/data/data/com.android.providers.drm/files/id/id.dat"

.field private static final TAG:Ljava/lang/String; = "DRM/BootCompletedReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static deviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 25
    .parameter "context"

    .prologue
    .line 88
    const-string v11, "000000000000000"

    .line 92
    .local v11, id:Ljava/lang/String;
    const-string v22, "DRM/BootCompletedReceiver"

    const-string v23, "deviceId: try to get IMEI as device id"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v22, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/TelephonyManager;

    move-object/from16 v20, v22

    check-cast v20, Landroid/telephony/TelephonyManager;

    .line 95
    .local v20, tm:Landroid/telephony/TelephonyManager;
    if-eqz v20, :cond_2

    .line 97
    const/4 v13, 0x0

    .line 101
    .local v13, imei:Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDeviceIdGemini(I)Ljava/lang/String;

    move-result-object v13

    .line 108
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 109
    :cond_0
    const-string v22, "DRM/BootCompletedReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "deviceId: Invalid imei: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v13           #imei:Ljava/lang/String;
    :goto_0
    const-string v22, "000000000000000"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 121
    const-string v22, "DRM/BootCompletedReceiver"

    const-string v23, "deviceId: try to check for old device id file /data/data/com.android.providers.drm/files/id/id.dat"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v7, Ljava/io/File;

    const-string v22, "/data/data/com.android.providers.drm/files/id/id.dat"

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v7, f:Ljava/io/File;
    const/4 v8, 0x0

    .line 125
    .local v8, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    .end local v8           #fis:Ljava/io/FileInputStream;
    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v8, :cond_7

    .line 132
    const/16 v22, 0x20

    move/from16 v0, v22

    new-array v4, v0, [B

    .line 133
    .local v4, data:[B
    move-object v2, v4

    .local v2, arr$:[B
    array-length v0, v2

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_2
    move/from16 v0, v16

    if-ge v10, v0, :cond_3

    aget-byte v6, v2, v10

    .local v6, element:B
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 111
    .end local v2           #arr$:[B
    .end local v4           #data:[B
    .end local v6           #element:B
    .end local v7           #f:Ljava/io/File;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v10           #i$:I
    .end local v16           #len$:I
    .restart local v13       #imei:Ljava/lang/String;
    :cond_1
    move-object v11, v13

    goto :goto_0

    .line 114
    .end local v13           #imei:Ljava/lang/String;
    :cond_2
    const-string v22, "DRM/BootCompletedReceiver"

    const-string v23, "deviceId: Invalid TelephonyManager."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    .restart local v7       #f:Ljava/io/File;
    :catch_0
    move-exception v5

    .line 127
    .local v5, e:Ljava/io/FileNotFoundException;
    const-string v22, "DRM/BootCompletedReceiver"

    const-string v23, "deviceId: the old device id file is not found."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v8, 0x0

    .restart local v8       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .line 137
    .end local v5           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #arr$:[B
    .restart local v4       #data:[B
    .restart local v10       #i$:I
    .restart local v16       #len$:I
    :cond_3
    :try_start_1
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v19

    .line 139
    .local v19, result:I
    const/16 v17, 0x0

    .line 140
    .local v17, length:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v9, v0, :cond_4

    .line 141
    aget-byte v22, v4, v9

    if-nez v22, :cond_5

    .line 142
    move/from16 v17, v9

    .line 146
    :cond_4
    move/from16 v0, v17

    new-array v3, v0, [B

    .line 147
    .local v3, array:[B
    const/4 v15, 0x0

    .local v15, j:I
    :goto_4
    array-length v0, v3

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v15, v0, :cond_6

    .line 148
    aget-byte v22, v4, v15

    aput-byte v22, v3, v15

    .line 147
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 140
    .end local v3           #array:[B
    .end local v15           #j:I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 151
    .restart local v3       #array:[B
    .restart local v15       #j:I
    :cond_6
    new-instance v12, Ljava/lang/String;

    const-string v22, "US-ASCII"

    invoke-static/range {v22 .. v22}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v12, v3, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    .end local v11           #id:Ljava/lang/String;
    .local v12, id:Ljava/lang/String;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v11, v12

    .line 162
    .end local v2           #arr$:[B
    .end local v3           #array:[B
    .end local v4           #data:[B
    .end local v7           #f:Ljava/io/File;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v9           #i:I
    .end local v10           #i$:I
    .end local v12           #id:Ljava/lang/String;
    .end local v15           #j:I
    .end local v16           #len$:I
    .end local v17           #length:I
    .end local v19           #result:I
    .restart local v11       #id:Ljava/lang/String;
    :cond_7
    :goto_5
    const-string v22, "000000000000000"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 163
    const-string v22, "DRM/BootCompletedReceiver"

    const-string v23, "deviceId: try to use mac address for device id."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v22, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v22

    check-cast v21, Landroid/net/wifi/WifiManager;

    .line 166
    .local v21, wm:Landroid/net/wifi/WifiManager;
    if-eqz v21, :cond_c

    .line 167
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v14

    .line 168
    .local v14, info:Landroid/net/wifi/WifiInfo;
    if-nez v14, :cond_a

    const/16 v18, 0x0

    .line 169
    .local v18, macAddr:Ljava/lang/String;
    :goto_6
    if-eqz v18, :cond_8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 170
    :cond_8
    const-string v22, "DRM/BootCompletedReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "deviceId: Invalid mac address: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v14           #info:Landroid/net/wifi/WifiInfo;
    .end local v18           #macAddr:Ljava/lang/String;
    .end local v21           #wm:Landroid/net/wifi/WifiManager;
    :cond_9
    :goto_7
    const-string v22, "DRM/BootCompletedReceiver"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "deviceId: result: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-object v11

    .line 153
    .restart local v2       #arr$:[B
    .restart local v4       #data:[B
    .restart local v7       #f:Ljava/io/File;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v10       #i$:I
    .restart local v16       #len$:I
    :catch_1
    move-exception v5

    .line 154
    .local v5, e:Ljava/io/IOException;
    :goto_8
    const-string v22, "DRM/BootCompletedReceiver"

    const-string v23, "deviceId: I/O error when reading old devicd id file."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 168
    .end local v2           #arr$:[B
    .end local v4           #data:[B
    .end local v5           #e:Ljava/io/IOException;
    .end local v7           #f:Ljava/io/File;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v10           #i$:I
    .end local v16           #len$:I
    .restart local v14       #info:Landroid/net/wifi/WifiInfo;
    .restart local v21       #wm:Landroid/net/wifi/WifiManager;
    :cond_a
    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v18

    goto :goto_6

    .line 172
    .restart local v18       #macAddr:Ljava/lang/String;
    :cond_b
    move-object/from16 v11, v18

    goto :goto_7

    .line 175
    .end local v14           #info:Landroid/net/wifi/WifiInfo;
    .end local v18           #macAddr:Ljava/lang/String;
    :cond_c
    const-string v22, "DRM/BootCompletedReceiver"

    const-string v23, "deviceId: Invalid WifiManager."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 153
    .end local v11           #id:Ljava/lang/String;
    .end local v21           #wm:Landroid/net/wifi/WifiManager;
    .restart local v2       #arr$:[B
    .restart local v3       #array:[B
    .restart local v4       #data:[B
    .restart local v7       #f:Ljava/io/File;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v9       #i:I
    .restart local v10       #i$:I
    .restart local v12       #id:Ljava/lang/String;
    .restart local v15       #j:I
    .restart local v16       #len$:I
    .restart local v17       #length:I
    .restart local v19       #result:I
    :catch_2
    move-exception v5

    move-object v11, v12

    .end local v12           #id:Ljava/lang/String;
    .restart local v11       #id:Ljava/lang/String;
    goto :goto_8
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 51
    const-string v3, "DRM/BootCompletedReceiver"

    const-string v4, "onReceive : BOOT_COMPLETED received."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Lcom/mediatek/drm/OmaDrmClient;

    invoke-direct {v0, p1}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, client:Lcom/mediatek/drm/OmaDrmClient;
    invoke-static {v0}, Lcom/android/providers/drm/OmaDrmHelper;->loadDeviceId(Lcom/mediatek/drm/OmaDrmClient;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, id:Ljava/lang/String;
    const-string v3, "DRM/BootCompletedReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BootCompletedReceiver : load device id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "000000000000000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    :cond_0
    const-string v3, "DRM/BootCompletedReceiver"

    const-string v4, "BootCompletedReceiver : The device id is empty, try obtain it"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {p1}, Lcom/android/providers/drm/BootCompletedReceiver;->deviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 63
    const-string v3, "DRM/BootCompletedReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BootCompletedReceiver : Obtained device id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v3, "000000000000000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    const-string v3, "DRM/BootCompletedReceiver"

    const-string v4, "BootCompletedReceiver : Obtained device id is an invalid value"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 71
    :cond_1
    const-string v3, "DRM/BootCompletedReceiver"

    const-string v4, "BootCompletedReceiver : save device id."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {v0, v1}, Lcom/android/providers/drm/OmaDrmHelper;->saveDeviceId(Lcom/mediatek/drm/OmaDrmClient;Ljava/lang/String;)I

    .line 76
    :cond_2
    const-string v3, "DRM/BootCompletedReceiver"

    const-string v4, "BootCompletedReceiver : load secure timer and update time base."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {v0}, Lcom/android/providers/drm/OmaDrmHelper;->loadClock(Lcom/mediatek/drm/OmaDrmClient;)I

    move-result v2

    .line 78
    .local v2, result:I
    invoke-static {v0}, Lcom/android/providers/drm/OmaDrmHelper;->updateTimeBase(Lcom/mediatek/drm/OmaDrmClient;)I

    goto :goto_0
.end method
