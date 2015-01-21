.class public Lcom/zte/zdmdaemon/util/AssestCopyFile;
.super Lcom/zte/zdmdaemon/util/CopyFile;
.source "AssestCopyFile.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "zdm_zc"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zte/zdmdaemon/util/CopyFile;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/zte/zdmdaemon/util/AssestCopyFile;->context:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public doCopy(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .parameter "srcFile"
    .parameter "destFile"
    .parameter "cache"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    const-string v6, "zdm_zc"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[AssestCopyFile]doCopy destFileName="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v3, 0x0

    .line 33
    .local v3, is:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 35
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    const-string v6, "zdm_zc"

    const-string v7, "[AssestCopyFile]new File "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v5, saveFile:Ljava/io/File;
    const-string v6, "zdm_zc"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[AssestCopyFile]new File success : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 39
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 41
    :cond_0
    iget-object v6, p0, Lcom/zte/zdmdaemon/util/AssestCopyFile;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 42
    const-string v6, "zdm_zc"

    const-string v7, "[AssestCopyFile]context.getResources().getAssets().open success "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    if-eqz p3, :cond_2

    .line 45
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 49
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :goto_0
    const/4 v4, 0x0

    .line 50
    .local v4, readBytes:I
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 51
    .local v0, buf:[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_3

    .line 54
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 55
    const-string v6, "zdm_zc"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "target "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exist!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 61
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    :goto_2
    return-void

    .line 47
    .end local v0           #buf:[B
    .end local v4           #readBytes:I
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/zte/zdmdaemon/util/AssestCopyFile;->context:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, p2, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    goto :goto_0

    .line 52
    .restart local v0       #buf:[B
    .restart local v4       #readBytes:I
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 58
    .end local v0           #buf:[B
    .end local v4           #readBytes:I
    .end local v5           #saveFile:Ljava/io/File;
    :catchall_0
    move-exception v6

    .line 60
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 61
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 66
    :goto_3
    throw v6

    .line 63
    .restart local v0       #buf:[B
    .restart local v4       #readBytes:I
    .restart local v5       #saveFile:Ljava/io/File;
    :catch_0
    move-exception v6

    goto :goto_2

    .end local v0           #buf:[B
    .end local v4           #readBytes:I
    .end local v5           #saveFile:Ljava/io/File;
    :catch_1
    move-exception v7

    goto :goto_3
.end method
