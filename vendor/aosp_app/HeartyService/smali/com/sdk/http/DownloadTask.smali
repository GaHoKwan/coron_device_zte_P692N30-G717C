.class public Lcom/sdk/http/DownloadTask;
.super Landroid/os/AsyncTask;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lcom/sdk/http/NetCallBack;

.field private context:Landroid/content/Context;

.field private path:Ljava/lang/String;

.field private ts:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sdk/http/NetCallBack;Landroid/content/Context;)V
    .locals 1
    .parameter "callback"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/sdk/http/DownloadTask;->callback:Lcom/sdk/http/NetCallBack;

    .line 24
    iput-object v0, p0, Lcom/sdk/http/DownloadTask;->url:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/sdk/http/DownloadTask;->path:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/sdk/http/DownloadTask;->ts:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/sdk/http/DownloadTask;->callback:Lcom/sdk/http/NetCallBack;

    .line 31
    iput-object p2, p0, Lcom/sdk/http/DownloadTask;->context:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sdk/http/DownloadTask;->doInBackground([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([[Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "args"

    .prologue
    const/4 v10, 0x0

    .line 43
    aget-object v9, p1, v10

    aget-object v9, v9, v10

    iput-object v9, p0, Lcom/sdk/http/DownloadTask;->url:Ljava/lang/String;

    .line 44
    aget-object v9, p1, v10

    const/4 v10, 0x1

    aget-object v9, v9, v10

    iput-object v9, p0, Lcom/sdk/http/DownloadTask;->ts:Ljava/lang/String;

    .line 45
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/data/data/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sdk/http/DownloadTask;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/sdk/util/InitFuncs;->initPkgname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sdk/http/DownloadTask;->ts:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".tempdb"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sdk/http/DownloadTask;->path:Ljava/lang/String;

    .line 46
    new-instance v5, Ljava/io/File;

    iget-object v9, p0, Lcom/sdk/http/DownloadTask;->path:Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v5, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 49
    .local v3, f:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 50
    .end local v3           #f:Ljava/io/FileOutputStream;
    .local v4, f:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v8, Ljava/net/URL;

    iget-object v9, p0, Lcom/sdk/http/DownloadTask;->url:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 51
    .local v8, u:Ljava/net/URL;
    const/4 v1, 0x0

    .line 52
    .local v1, con:Ljava/net/URLConnection;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 53
    const-string v9, "Accept-Encoding"

    const-string v10, "identity"

    invoke-virtual {v1, v9, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 55
    .local v6, in:Ljava/io/InputStream;
    const/16 v9, 0x64

    new-array v0, v9, [B

    .line 56
    .local v0, buffer:[B
    const/4 v7, 0x0

    .line 57
    .local v7, len1:I
    :goto_0
    invoke-virtual {p0}, Lcom/sdk/http/DownloadTask;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-gtz v7, :cond_3

    .line 65
    :cond_0
    if-eqz v4, :cond_1

    .line 66
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 72
    :cond_1
    :goto_1
    const-string v9, "true"

    move-object v3, v4

    .end local v0           #buffer:[B
    .end local v1           #con:Ljava/net/URLConnection;
    .end local v4           #f:Ljava/io/FileOutputStream;
    .end local v6           #in:Ljava/io/InputStream;
    .end local v7           #len1:I
    .end local v8           #u:Ljava/net/URL;
    .restart local v3       #f:Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    return-object v9

    .line 58
    .end local v3           #f:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #con:Ljava/net/URLConnection;
    .restart local v4       #f:Ljava/io/FileOutputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    .restart local v7       #len1:I
    .restart local v8       #u:Ljava/net/URL;
    :cond_3
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v4, v0, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 60
    .end local v0           #buffer:[B
    .end local v1           #con:Ljava/net/URLConnection;
    .end local v6           #in:Ljava/io/InputStream;
    .end local v7           #len1:I
    .end local v8           #u:Ljava/net/URL;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 61
    .end local v4           #f:Ljava/io/FileOutputStream;
    .local v2, e:Ljava/lang/Exception;
    .restart local v3       #f:Ljava/io/FileOutputStream;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v9

    .line 65
    if-eqz v3, :cond_2

    .line 66
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 68
    :catch_1
    move-exception v2

    .line 69
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 63
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 65
    :goto_4
    if-eqz v3, :cond_4

    .line 66
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 71
    :cond_4
    :goto_5
    throw v9

    .line 68
    :catch_2
    move-exception v2

    .line 69
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 68
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #f:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #con:Ljava/net/URLConnection;
    .restart local v4       #f:Ljava/io/FileOutputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    .restart local v7       #len1:I
    .restart local v8       #u:Ljava/net/URL;
    :catch_3
    move-exception v2

    .line 69
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 63
    .end local v0           #buffer:[B
    .end local v1           #con:Ljava/net/URLConnection;
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #in:Ljava/io/InputStream;
    .end local v7           #len1:I
    .end local v8           #u:Ljava/net/URL;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #f:Ljava/io/FileOutputStream;
    .restart local v3       #f:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 60
    :catch_4
    move-exception v2

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sdk/http/DownloadTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .parameter "unused"

    .prologue
    .line 78
    const-string v5, "true"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 80
    iget-object v5, p0, Lcom/sdk/http/DownloadTask;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/sdk/util/InitFuncs;->initLastTs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, oldts:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/data/data/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sdk/http/DownloadTask;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/sdk/util/InitFuncs;->initPkgname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".db"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, oldPath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v3, oldfile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 87
    :cond_0
    iget-object v5, p0, Lcom/sdk/http/DownloadTask;->ts:Ljava/lang/String;

    iget-object v6, p0, Lcom/sdk/http/DownloadTask;->context:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/sdk/util/InitFuncs;->writeNewTs(Ljava/lang/String;Landroid/content/Context;)V

    .line 88
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/sdk/http/DownloadTask;->path:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, file:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/data/data/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sdk/http/DownloadTask;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/sdk/util/InitFuncs;->initPkgname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sdk/http/DownloadTask;->ts:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".db"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, newPath:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 91
    iget-object v5, p0, Lcom/sdk/http/DownloadTask;->callback:Lcom/sdk/http/NetCallBack;

    iget-object v6, p0, Lcom/sdk/http/DownloadTask;->ts:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sdk/http/NetCallBack;->finish(Ljava/lang/String;)V

    .line 95
    .end local v0           #file:Ljava/io/File;
    .end local v1           #newPath:Ljava/lang/String;
    .end local v2           #oldPath:Ljava/lang/String;
    .end local v3           #oldfile:Ljava/io/File;
    .end local v4           #oldts:Ljava/lang/String;
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v5, p0, Lcom/sdk/http/DownloadTask;->callback:Lcom/sdk/http/NetCallBack;

    const-string v6, "\u4e0b\u8f7d\u5f02\u5e38"

    invoke-virtual {v5, v6}, Lcom/sdk/http/NetCallBack;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 38
    return-void
.end method
