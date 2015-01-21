.class public Lcom/zte/update/tools/UserActRecFile;
.super Ljava/lang/Object;
.source "UserActRecFile.java"

# interfaces
.implements Lcom/zte/update/tools/IRecorder;


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "UserActRec.dat"


# instance fields
.field final FILE_LIMIT_LENGTH:I

.field isr:Ljava/io/InputStreamReader;

.field osw:Ljava/io/OutputStreamWriter;

.field private pathname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0xc00

    iput v0, p0, Lcom/zte/update/tools/UserActRecFile;->FILE_LIMIT_LENGTH:I

    return-void
.end method


# virtual methods
.method public createReadInput(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStreamReader;
    .locals 5
    .parameter "context"
    .parameter "pathname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 72
    .local v1, fileExist:Z
    const/4 v2, 0x0

    .line 73
    .local v2, isr1:Ljava/io/InputStreamReader;
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 74
    const-string v4, "UserActRec.dat"

    invoke-virtual {p1, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 75
    .local v3, logFile:Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    .end local v2           #isr1:Ljava/io/InputStreamReader;
    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 77
    .end local v3           #logFile:Ljava/io/FileInputStream;
    .restart local v2       #isr1:Ljava/io/InputStreamReader;
    :cond_0
    return-object v2
.end method

.method public createWriteOutput(Landroid/content/Context;Ljava/lang/String;)Ljava/io/OutputStreamWriter;
    .locals 8
    .parameter "context"
    .parameter "pathname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 55
    .local v1, fileExist:Z
    const/4 v3, 0x0

    .line 56
    .local v3, osw1:Ljava/io/OutputStreamWriter;
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0xc00

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 58
    const-string v4, "UserActRec.dat"

    const v5, 0x8000

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 59
    .local v2, logFile:Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    .end local v3           #osw1:Ljava/io/OutputStreamWriter;
    invoke-direct {v3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 66
    .restart local v3       #osw1:Ljava/io/OutputStreamWriter;
    :goto_0
    return-object v3

    .line 63
    .end local v2           #logFile:Ljava/io/FileOutputStream;
    :cond_0
    const-string v4, "UserActRec.dat"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 64
    .restart local v2       #logFile:Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    .end local v3           #osw1:Ljava/io/OutputStreamWriter;
    invoke-direct {v3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .restart local v3       #osw1:Ljava/io/OutputStreamWriter;
    goto :goto_0
.end method

.method public initRecorder()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 44
    .local v0, context:Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/files/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UserActRec.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/update/tools/UserActRecFile;->pathname:Ljava/lang/String;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The record pathname ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/update/tools/UserActRecFile;->pathname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/zte/update/tools/UserActRecFile;->pathname:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/zte/update/tools/UserActRecFile;->createWriteOutput(Landroid/content/Context;Ljava/lang/String;)Ljava/io/OutputStreamWriter;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/update/tools/UserActRecFile;->osw:Ljava/io/OutputStreamWriter;

    .line 48
    iget-object v1, p0, Lcom/zte/update/tools/UserActRecFile;->pathname:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/zte/update/tools/UserActRecFile;->createReadInput(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/update/tools/UserActRecFile;->isr:Ljava/io/InputStreamReader;

    .line 49
    return-void
.end method

.method public readRec()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, infile:Ljava/io/FileInputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 111
    .local v0, buff:[B
    const/4 v4, 0x0

    .line 112
    .local v4, input:[B
    const/4 v5, 0x0

    .line 116
    .local v5, n:I
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/zte/update/tools/UserActRecFile;->pathname:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #infile:Ljava/io/FileInputStream;
    .local v3, infile:Ljava/io/FileInputStream;
    move-object v2, v3

    .line 125
    .end local v3           #infile:Ljava/io/FileInputStream;
    .restart local v2       #infile:Ljava/io/FileInputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 131
    :goto_1
    new-array v4, v5, [B

    .line 132
    invoke-static {v0, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 141
    :goto_2
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    return-object v6

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v6, "file is not found"

    invoke-static {p0, v6}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    const/4 v5, 0x0

    goto :goto_0

    .line 127
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 128
    .local v1, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_1

    .line 136
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 137
    .local v1, e:Ljava/io/IOException;
    const-string v6, "file is not found"

    invoke-static {p0, v6}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public writeRec(Ljava/lang/String;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 89
    iget-object v2, p0, Lcom/zte/update/tools/UserActRecFile;->osw:Ljava/io/OutputStreamWriter;

    monitor-enter v2

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/zte/update/tools/UserActRecFile;->osw:Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/zte/update/tools/UserActRecFile;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 100
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
