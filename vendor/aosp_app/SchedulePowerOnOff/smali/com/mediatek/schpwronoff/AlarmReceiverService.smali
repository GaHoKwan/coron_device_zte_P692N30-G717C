.class public Lcom/mediatek/schpwronoff/AlarmReceiverService;
.super Landroid/app/IntentService;
.source "AlarmReceiverService.java"


# static fields
.field private static final ACTION_BROADCAST:Ljava/lang/String; = "broadcast_receiver"

.field private static final SCHPWRS_DB_PATH:Ljava/lang/String; = "data/data/com.mediatek.schpwronoff/databases/schpwrs.db"

.field private static final TAG:Ljava/lang/String; = "AlarmReceiverService"

.field private static final TEMP_DB_PATH:Ljava/lang/String; = "/data/schpwrs.db"

.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "AlarmReceiverService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private copyDbFileFromDataPath()Z
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 68
    const-string v10, "AlarmReceiverService"

    const-string v11, "copyDbFileFromDataPath"

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v8, Ljava/io/File;

    const-string v10, "/data/schpwrs.db"

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v8, tempDbDirFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 71
    const-string v10, "AlarmReceiverService"

    const-string v11, "/data/schpwrs.db does not exist"

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return v9

    .line 74
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v10, "/data/data/com.mediatek.schpwronoff/databases/"

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, dbPathFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_2

    .line 76
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 78
    :cond_2
    new-instance v7, Ljava/io/File;

    const-string v10, "data/data/com.mediatek.schpwronoff/databases/schpwrs.db"

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v7, schPwrsDbFile:Ljava/io/File;
    const/4 v3, 0x0

    .line 80
    .local v3, fis:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 82
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    .end local v5           #fos:Ljava/io/FileOutputStream;
    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 88
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 89
    .local v0, buffer:[B
    const/4 v6, 0x0

    .line 91
    .local v6, length:I
    :goto_1
    :try_start_2
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_3

    .line 92
    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 97
    :catch_0
    move-exception v2

    .line 98
    .local v2, e:Ljava/io/IOException;
    const-string v10, "AlarmReceiverService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    .end local v0           #buffer:[B
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v6           #length:I
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 85
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_2
    const-string v10, "AlarmReceiverService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FileNotFoundException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #length:I
    :cond_3
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 95
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 96
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 101
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_4

    .line 102
    const-string v9, "AlarmReceiverService"

    const-string v10, "delete temp db file failed."

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_4
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 84
    .end local v0           #buffer:[B
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #length:I
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static processBroadcastIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "broadcastIntent"

    .prologue
    .line 29
    sput-object p0, Lcom/mediatek/schpwronoff/AlarmReceiverService;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/schpwronoff/AlarmReceiverService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v0, i:Landroid/content/Intent;
    const-string v1, "broadcast_receiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 33
    const-string v1, "AlarmReceiverService"

    const-string v2, "startService"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 35
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 39
    const-string v4, "AlarmReceiverService"

    const-string v5, "onHandleIntent"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, action:Ljava/lang/String;
    const-string v4, "broadcast_receiver"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 65
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 47
    .local v3, broadcastIntent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, broadcastAction:Ljava/lang/String;
    const-string v4, "AlarmReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    const-string v4, "AlarmReceiverService"

    const-string v5, "onACTION_BOOT_COMPLETEDStartCommand----Intent.ACTION_BOOT_COMPLETED"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0}, Lcom/mediatek/schpwronoff/AlarmReceiverService;->copyDbFileFromDataPath()Z

    move-result v1

    .line 53
    .local v1, b:Z
    const-string v4, "AlarmReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copy db file result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v4, -0x1

    const-wide/16 v5, -0x1

    invoke-static {p0, v4, v5, v6}, Lcom/mediatek/schpwronoff/Alarms;->saveSnoozeAlert(Landroid/content/Context;IJ)V

    .line 55
    invoke-static {p0}, Lcom/mediatek/schpwronoff/Alarms;->disableExpiredAlarms(Landroid/content/Context;)V

    .line 60
    invoke-static {p0}, Lcom/mediatek/schpwronoff/Alarms;->setNextAlert(Landroid/content/Context;)V

    goto :goto_0

    .line 62
    .end local v1           #b:Z
    :cond_1
    const-string v4, "AlarmReceiverService"

    const-string v5, "onStartCommand---Alarms.setNextAlert"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {p0}, Lcom/mediatek/schpwronoff/Alarms;->setNextAlert(Landroid/content/Context;)V

    goto :goto_0
.end method
