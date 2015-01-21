.class public Lcom/zte/heartyservice/main/AppDownloadCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppDownloadCompleteReceiver.java"


# static fields
.field public static final ACTION_APP_DOWNLOAD_COMPLETE:Ljava/lang/String; = "qqplaza.intent.action.APP_DOWNLOAD_COMPLETE"

.field private static final ORI_KEY_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/heartyservice/main/AppDownloadCompleteReceiver;->ORI_KEY_BYTES:[B

    return-void

    :array_0
    .array-data 0x1
        0x21t
        0x2et
        0x2bt
        0x2et
        0x40t
        0x2et
        0x25t
        0x2et
        0x24t
        0x2et
        0x5et
        0x2et
        0x4at
        0x61t
        0x6dt
        0x65t
        0x73t
        0x61t
        0x31t
        0x33t
        0x31t
        0x32t
        0x30t
        0x36t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    :try_start_0
    const-string v2, "qqplaza.intent.action.APP_DOWNLOAD_COMPLETE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    const-string v2, "di"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v11

    .line 27
    .local v11, diBytes:[B
    if-eqz v11, :cond_0

    array-length v2, v11

    if-gtz v2, :cond_1

    .line 77
    .end local v11           #diBytes:[B
    :cond_0
    :goto_0
    return-void

    .line 31
    .restart local v11       #diBytes:[B
    :cond_1
    sget-object v2, Lcom/zte/heartyservice/main/AppDownloadCompleteReceiver;->ORI_KEY_BYTES:[B

    array-length v2, v2

    new-array v0, v2, [B

    move-object/from16 v21, v0

    .line 32
    .local v21, keyBytes:[B
    sget-object v2, Lcom/zte/heartyservice/main/AppDownloadCompleteReceiver;->ORI_KEY_BYTES:[B

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v22, Lcom/zte/heartyservice/main/AppDownloadCompleteReceiver;->ORI_KEY_BYTES:[B

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v2, v7, v0, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/32 v22, 0x36ee80

    div-long v15, v7, v22

    .line 35
    .local v15, hours:J
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ge v0, v2, :cond_0

    .line 36
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    .line 37
    .local v17, hoursBytes:[B
    const/16 v19, 0x0

    .local v19, j:I
    :goto_2
    move-object/from16 v0, v17

    array-length v2, v0

    move/from16 v0, v19

    if-ge v0, v2, :cond_2

    .line 38
    mul-int/lit8 v2, v19, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-byte v7, v17, v19

    aput-byte v7, v21, v2

    .line 37
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 41
    :cond_2
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "DESede"

    move-object/from16 v0, v21

    invoke-direct {v10, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    .local v10, deskey:Ljavax/crypto/SecretKey;
    const/4 v12, 0x0

    .line 44
    .local v12, diString:Ljava/lang/String;
    :try_start_1
    const-string v2, "DESede"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v9

    .line 45
    .local v9, cip:Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-virtual {v9, v2, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 46
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v12           #diString:Ljava/lang/String;
    .local v13, diString:Ljava/lang/String;
    move-object v12, v13

    .line 51
    .end local v9           #cip:Ljavax/crypto/Cipher;
    .end local v13           #diString:Ljava/lang/String;
    .restart local v12       #diString:Ljava/lang/String;
    :goto_3
    if-eqz v12, :cond_3

    .line 53
    :try_start_2
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    invoke-direct {v0, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    .local v20, json:Lorg/json/JSONObject;
    const-string v2, "packageName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    const/16 v18, 0x2

    .line 60
    const-string v2, "packageName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 61
    .local v3, packageName:Ljava/lang/String;
    const-string v2, "appName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 62
    .local v4, appName:Ljava/lang/String;
    const-string v2, "versionCode"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 63
    .local v5, versionCode:Ljava/lang/String;
    const-string v2, "downloadType"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 66
    .local v6, downloadType:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAppDownloadInfoSQLiteOpenHelper()Lcom/zte/heartyservice/main/AppDownloadInfoSQLiteOpenHelper;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual/range {v2 .. v8}, Lcom/zte/heartyservice/main/AppDownloadInfoSQLiteOpenHelper;->insertRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 35
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #appName:Ljava/lang/String;
    .end local v5           #versionCode:Ljava/lang/String;
    .end local v6           #downloadType:Ljava/lang/String;
    .end local v20           #json:Lorg/json/JSONObject;
    :cond_3
    :goto_4
    add-int/lit8 v18, v18, 0x1

    const-wide/16 v7, 0x1

    add-long/2addr v15, v7

    goto/16 :goto_1

    .line 47
    :catch_0
    move-exception v14

    .line 48
    .local v14, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 74
    .end local v10           #deskey:Ljavax/crypto/SecretKey;
    .end local v11           #diBytes:[B
    .end local v12           #diString:Ljava/lang/String;
    .end local v14           #e:Ljava/lang/Exception;
    .end local v15           #hours:J
    .end local v17           #hoursBytes:[B
    .end local v18           #i:I
    .end local v19           #j:I
    .end local v21           #keyBytes:[B
    :catch_1
    move-exception v2

    goto/16 :goto_0

    .line 68
    .restart local v10       #deskey:Ljavax/crypto/SecretKey;
    .restart local v11       #diBytes:[B
    .restart local v12       #diString:Ljava/lang/String;
    .restart local v15       #hours:J
    .restart local v17       #hoursBytes:[B
    .restart local v18       #i:I
    .restart local v19       #j:I
    .restart local v21       #keyBytes:[B
    :catch_2
    move-exception v14

    .line 69
    .local v14, e:Lorg/json/JSONException;
    invoke-virtual {v14}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4
.end method
