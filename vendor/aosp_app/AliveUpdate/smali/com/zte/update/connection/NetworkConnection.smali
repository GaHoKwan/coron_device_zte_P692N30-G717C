.class public Lcom/zte/update/connection/NetworkConnection;
.super Ljava/lang/Object;
.source "NetworkConnection.java"

# interfaces
.implements Lcom/zte/update/connection/INetworkConnection;


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x7530

.field private static final READ_TIMEOUT:I = 0x7530


# instance fields
.field private connection:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "urlstr"
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aliveupdate/AliveUpdateException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/zte/update/connection/NetworkConnection;->getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/connection/NetworkConnection;->connection:Ljava/net/HttpURLConnection;

    .line 33
    return-void
.end method


# virtual methods
.method public connectAndWriteObject(Ljava/lang/Object;)V
    .locals 4
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aliveupdate/AliveUpdateException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v2, 0x0

    .line 70
    .local v2, os:Ljava/io/OutputStream;
    :try_start_0
    iget-object v3, p0, Lcom/zte/update/connection/NetworkConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 71
    iget-object v3, p0, Lcom/zte/update/connection/NetworkConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 72
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 73
    .local v1, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    invoke-static {v2}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->closeCloseableObject(Ljava/io/Closeable;)V

    .line 82
    return-void

    .line 76
    .end local v1           #oos:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 78
    new-instance v3, Lcom/zte/aliveupdate/AliveUpdateException;

    invoke-direct {v3, v0}, Lcom/zte/aliveupdate/AliveUpdateException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->closeCloseableObject(Ljava/io/Closeable;)V

    throw v3
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/zte/update/connection/NetworkConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 114
    return-void
.end method

.method protected getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 6
    .parameter "urlstr"
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aliveupdate/AliveUpdateException;
        }
    .end annotation

    .prologue
    .line 38
    :try_start_0
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v0

    .line 39
    .local v0, app:Lcom/zte/aliveupdate/main/AliveUpdateApp;
    invoke-virtual {p0, p1}, Lcom/zte/update/connection/NetworkConnection;->getURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 41
    .local v3, url:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 43
    .local v1, connection:Ljava/net/HttpURLConnection;
    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 44
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 45
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 46
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 48
    const/16 v4, 0x7530

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 49
    const/16 v4, 0x7530

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 52
    const-string v4, "imei"

    invoke-virtual {v0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getImei()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v4, "client-name"

    invoke-virtual {v0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getClientName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v4, "from"

    invoke-virtual {v0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getBuildModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v4, "querycount"

    invoke-static {}, Lcom/zte/aliveupdate/Configuration;->getConfig()Lcom/zte/aliveupdate/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/aliveupdate/Configuration;->getQureryCount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v4, "supportBspatch"

    const-string v5, "true"

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-object v1

    .line 59
    .end local v0           #app:Lcom/zte/aliveupdate/main/AliveUpdateApp;
    .end local v1           #connection:Ljava/net/HttpURLConnection;
    .end local v3           #url:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 60
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Lcom/zte/aliveupdate/AliveUpdateException;

    invoke-direct {v4, v2}, Lcom/zte/aliveupdate/AliveUpdateException;-><init>(Ljava/io/IOException;)V

    throw v4
.end method

.method public getResondObject()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aliveupdate/AliveUpdateException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v2, 0x0

    .line 88
    .local v2, ins:Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Lcom/zte/update/connection/NetworkConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 89
    .local v1, httpcode:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get response http code= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    const/16 v5, 0xc8

    if-eq v1, v5, :cond_0

    .line 91
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get response http code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    .end local v1           #httpcode:I
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    new-instance v5, Lcom/zte/aliveupdate/AliveUpdateException;

    invoke-direct {v5, v0}, Lcom/zte/aliveupdate/AliveUpdateException;-><init>(Ljava/io/IOException;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-static {v2}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->closeCloseableObject(Ljava/io/Closeable;)V

    throw v5

    .line 94
    .restart local v1       #httpcode:I
    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/zte/update/connection/NetworkConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 95
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 96
    .local v4, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 97
    .local v3, object:Ljava/lang/Object;
    invoke-static {}, Lcom/zte/aliveupdate/Configuration;->getConfig()Lcom/zte/aliveupdate/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/aliveupdate/Configuration;->refreshNextQureyCount()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 106
    invoke-static {v2}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->closeCloseableObject(Ljava/io/Closeable;)V

    return-object v3

    .line 102
    .end local v1           #httpcode:I
    .end local v3           #object:Ljava/lang/Object;
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :try_start_3
    new-instance v5, Lcom/zte/aliveupdate/AliveUpdateException;

    invoke-direct {v5, v0}, Lcom/zte/aliveupdate/AliveUpdateException;-><init>(Ljava/lang/ClassNotFoundException;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected getURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .parameter "urlstr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, url:Ljava/net/URL;
    return-object v0
.end method
