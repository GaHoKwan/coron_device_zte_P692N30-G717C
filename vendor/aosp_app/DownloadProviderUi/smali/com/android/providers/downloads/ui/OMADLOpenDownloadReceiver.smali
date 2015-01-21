.class public Lcom/android/providers/downloads/ui/OMADLOpenDownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OMADLOpenDownloadReceiver.java"


# static fields
.field private static final LOG_OMA_DL:Ljava/lang/String; = "DownloadManager/OMA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 85
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 86
    .local v2, data:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 88
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v3, 0x4

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "_data"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "mimetype"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "status"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 92
    if-nez v8, :cond_1

    .line 143
    if-eqz v8, :cond_0

    .line 144
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 96
    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 97
    .local v11, filename:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 98
    .local v13, mimetype:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 99
    .local v7, action:Ljava/lang/String;
    const-string v3, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 100
    const/4 v3, 0x3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 101
    .local v17, status:I
    invoke-static/range {v17 .. v17}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static/range {v17 .. v17}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 103
    new-instance v12, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v12, launchIntent:Landroid/content/Intent;
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 106
    .local v16, path:Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 107
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    .line 111
    :cond_2
    const-string v3, "application/vnd.oma.drm.message"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "application/vnd.oma.drm.content"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 115
    :cond_3
    new-instance v9, Lcom/mediatek/drm/OmaDrmClient;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    .line 116
    .local v9, drmClient:Lcom/mediatek/drm/OmaDrmClient;
    invoke-virtual {v9, v11}, Lcom/mediatek/drm/OmaDrmClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 117
    .local v14, oriMimeType:Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 118
    move-object v13, v14

    .line 119
    const-string v3, "DownloadManager/OMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Open DRM file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MimeType is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v9           #drmClient:Lcom/mediatek/drm/OmaDrmClient;
    .end local v14           #oriMimeType:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const/high16 v3, 0x1000

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    .end local v7           #action:Ljava/lang/String;
    .end local v11           #filename:Ljava/lang/String;
    .end local v12           #launchIntent:Landroid/content/Intent;
    .end local v13           #mimetype:Ljava/lang/String;
    .end local v16           #path:Landroid/net/Uri;
    .end local v17           #status:I
    :cond_5
    :goto_1
    if-eqz v8, :cond_0

    .line 144
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 128
    .restart local v7       #action:Ljava/lang/String;
    .restart local v11       #filename:Ljava/lang/String;
    .restart local v12       #launchIntent:Landroid/content/Intent;
    .restart local v13       #mimetype:Ljava/lang/String;
    .restart local v16       #path:Landroid/net/Uri;
    .restart local v17       #status:I
    :catch_0
    move-exception v10

    .line 129
    .local v10, ex:Landroid/content/ActivityNotFoundException;
    const v3, 0x7f07002d

    const/4 v4, 0x1

    :try_start_3
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 143
    .end local v7           #action:Ljava/lang/String;
    .end local v10           #ex:Landroid/content/ActivityNotFoundException;
    .end local v11           #filename:Ljava/lang/String;
    .end local v12           #launchIntent:Landroid/content/Intent;
    .end local v13           #mimetype:Ljava/lang/String;
    .end local v16           #path:Landroid/net/Uri;
    .end local v17           #status:I
    :catchall_0
    move-exception v3

    if-eqz v8, :cond_6

    .line 144
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3

    .line 134
    .restart local v7       #action:Ljava/lang/String;
    .restart local v11       #filename:Ljava/lang/String;
    .restart local v13       #mimetype:Ljava/lang/String;
    .restart local v17       #status:I
    :cond_7
    :try_start_4
    new-instance v15, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v15, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v15, pageView:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v15, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 140
    .end local v7           #action:Ljava/lang/String;
    .end local v11           #filename:Ljava/lang/String;
    .end local v13           #mimetype:Ljava/lang/String;
    .end local v15           #pageView:Landroid/content/Intent;
    .end local v17           #status:I
    :cond_8
    const-string v3, "DownloadManager/OMA"

    const-string v4, "OMAReceiver:cursor.moveToFirst() failed:"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
