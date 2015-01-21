.class public Llibcore/net/url/FtpURLConnection;
.super Ljava/net/URLConnection;
.source "FtpURLConnection.java"


# static fields
.field private static final FTP_DATAOPEN:I = 0x7d

.field private static final FTP_FILEOK:I = 0xfa

.field private static final FTP_LOGGEDIN:I = 0xe6

.field private static final FTP_NOTFOUND:I = 0x226

.field private static final FTP_OK:I = 0xc8

.field private static final FTP_OPENDATA:I = 0x96

.field private static final FTP_PASV:I = 0xe3

.field private static final FTP_PASWD:I = 0x14b

.field private static final FTP_PORT:I = 0x15

.field private static final FTP_TRANSFEROK:I = 0xe2

.field private static final FTP_USERREADY:I = 0xdc


# instance fields
.field private acceptSocket:Ljava/net/ServerSocket;

.field private controlSocket:Ljava/net/Socket;

.field private ctrlInput:Ljava/io/InputStream;

.field private ctrlOutput:Ljava/io/OutputStream;

.field private currentProxy:Ljava/net/Proxy;

.field private dataPort:I

.field private dataSocket:Ljava/net/Socket;

.field private hostName:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field private mPassMode:Z

.field private mPasvDataHost:Ljava/lang/String;

.field private mPasvDataPort:I

.field private password:Ljava/lang/String;

.field private proxy:Ljava/net/Proxy;

.field private replyCode:Ljava/lang/String;

.field private uri:Ljava/net/URI;

.field private username:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/net/URL;)V
    .locals 4
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 88
    const-string v2, "anonymous"

    iput-object v2, p0, Llibcore/net/url/FtpURLConnection;->username:Ljava/lang/String;

    .line 90
    const-string v2, ""

    iput-object v2, p0, Llibcore/net/url/FtpURLConnection;->password:Ljava/lang/String;

    .line 103
    iput-boolean v3, p0, Llibcore/net/url/FtpURLConnection;->mPassMode:Z

    .line 115
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/url/FtpURLConnection;->hostName:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, parse:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 118
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 119
    .local v1, split:I
    if-ltz v1, :cond_1

    .line 120
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/url/FtpURLConnection;->username:Ljava/lang/String;

    .line 121
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/url/FtpURLConnection;->password:Ljava/lang/String;

    .line 126
    .end local v1           #split:I
    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Llibcore/net/url/FtpURLConnection;->uri:Ljava/net/URI;

    .line 128
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/url/FtpURLConnection;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_1
    return-void

    .line 123
    .restart local v1       #split:I
    :cond_1
    iput-object v0, p0, Llibcore/net/url/FtpURLConnection;->username:Ljava/lang/String;

    goto :goto_0

    .line 129
    .end local v1           #split:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected constructor <init>(Ljava/net/URL;Ljava/net/Proxy;)V
    .locals 0
    .parameter "url"
    .parameter "proxy"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Llibcore/net/url/FtpURLConnection;-><init>(Ljava/net/URL;)V

    .line 142
    iput-object p2, p0, Llibcore/net/url/FtpURLConnection;->proxy:Ljava/net/Proxy;

    .line 143
    return-void
.end method

.method private cd()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xfa

    const/16 v6, 0x2f

    const/4 v5, 0x0

    .line 149
    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 151
    .local v1, idx:I
    if-lez v1, :cond_1

    .line 152
    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, dir:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CWD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v2

    .line 155
    .local v2, reply:I
    if-eq v2, v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CWD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v2

    .line 159
    :cond_0
    if-eq v2, v7, :cond_1

    .line 160
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to change directories"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 163
    .end local v0           #dir:Ljava/lang/String;
    .end local v2           #reply:I
    :cond_1
    return-void
.end method

.method private connectInternal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v5, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->getPort()I

    move-result v4

    .line 217
    .local v4, port:I
    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getConnectTimeout()I

    move-result v1

    .line 218
    .local v1, connectTimeout:I
    if-gtz v4, :cond_0

    .line 219
    const/16 v4, 0x15

    .line 221
    :cond_0
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    if-eqz v5, :cond_1

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    if-ne v5, v6, :cond_7

    .line 222
    :cond_1
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V

    iput-object v5, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    .line 226
    :goto_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->hostName:Ljava/lang/String;

    invoke-direct {v0, v5, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 227
    .local v0, addr:Ljava/net/InetSocketAddress;
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v5, v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 228
    const/4 v5, 0x1

    iput-boolean v5, p0, Ljava/net/URLConnection;->connected:Z

    .line 229
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    iput-object v5, p0, Llibcore/net/url/FtpURLConnection;->ctrlOutput:Ljava/io/OutputStream;

    .line 230
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Llibcore/net/url/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    .line 233
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "socket read timer:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getReadTimeout()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 234
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getReadTimeout()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 237
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->login()V

    .line 238
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->setType()V

    .line 239
    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getDoInput()Z

    move-result v5

    if-nez v5, :cond_2

    .line 240
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->cd()V

    .line 244
    :cond_2
    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getPassiveMode()Z

    move-result v5

    iput-boolean v5, p0, Llibcore/net/url/FtpURLConnection;->mPassMode:Z

    .line 246
    iget-boolean v5, p0, Llibcore/net/url/FtpURLConnection;->mPassMode:Z

    if-eqz v5, :cond_3

    .line 247
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->passive()V

    .line 253
    :cond_3
    :try_start_0
    iget-boolean v5, p0, Llibcore/net/url/FtpURLConnection;->mPassMode:Z

    if-nez v5, :cond_8

    .line 254
    new-instance v5, Ljava/net/ServerSocket;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v5, p0, Llibcore/net/url/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    .line 255
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v5

    iput v5, p0, Llibcore/net/url/FtpURLConnection;->dataPort:I

    .line 257
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->port()V

    .line 258
    if-nez v1, :cond_4

    .line 260
    const/16 v1, 0xbb8

    .line 262
    :cond_4
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getConnectTimeout()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 271
    :goto_1
    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getDoInput()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 272
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getFile()V

    .line 278
    :goto_2
    iget-boolean v5, p0, Llibcore/net/url/FtpURLConnection;->mPassMode:Z

    if-nez v5, :cond_5

    .line 279
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v5

    iput-object v5, p0, Llibcore/net/url/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    .line 280
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getReadTimeout()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 281
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->acceptSocket:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_5
    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getDoInput()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 289
    new-instance v5, Llibcore/net/url/FtpURLInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    iget-object v7, p0, Llibcore/net/url/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v7, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-direct {v5, v6, v7}, Llibcore/net/url/FtpURLInputStream;-><init>(Ljava/io/InputStream;Ljava/net/Socket;)V

    iput-object v5, p0, Llibcore/net/url/FtpURLConnection;->inputStream:Ljava/io/InputStream;

    .line 292
    :cond_6
    return-void

    .line 224
    .end local v0           #addr:Ljava/net/InetSocketAddress;
    :cond_7
    new-instance v5, Ljava/net/Socket;

    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    invoke-direct {v5, v6}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v5, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    goto/16 :goto_0

    .line 264
    .restart local v0       #addr:Ljava/net/InetSocketAddress;
    :cond_8
    :try_start_1
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V

    iput-object v5, p0, Llibcore/net/url/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    .line 265
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->mPasvDataHost:Ljava/lang/String;

    iget v6, p0, Llibcore/net/url/FtpURLConnection;->mPasvDataPort:I

    invoke-direct {v2, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 266
    .local v2, dataAddr:Ljava/net/InetSocketAddress;
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    invoke-virtual {v5, v2, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 267
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->getReadTimeout()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 285
    .end local v2           #dataAddr:Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v3

    .line 286
    .local v3, e:Ljava/io/InterruptedIOException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Could not establish data connection"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 274
    .end local v3           #e:Ljava/io/InterruptedIOException;
    :cond_9
    :try_start_2
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->sendFile()V
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private getFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, file:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RETR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 311
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v1

    .line 312
    .local v1, reply:I
    const/16 v2, 0x226

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RETR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v1

    .line 318
    :cond_0
    const/16 v2, 0x7d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x96

    if-eq v1, v2, :cond_1

    const/16 v2, 0xe2

    if-eq v1, v2, :cond_1

    .line 319
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 321
    :cond_1
    return-void
.end method

.method private getPassiveHostInfo()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 555
    new-array v2, v8, [B

    .line 556
    .local v2, code:[B
    const/4 v5, 0x0

    .line 559
    .local v5, retReplycode:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, v2

    if-ge v4, v8, :cond_1

    .line 560
    iget-object v8, p0, Llibcore/net/url/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 561
    .local v6, tmp:I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_0

    .line 562
    new-instance v7, Ljava/io/EOFException;

    invoke-direct {v7}, Ljava/io/EOFException;-><init>()V

    throw v7

    .line 564
    :cond_0
    int-to-byte v8, v6

    aput-byte v8, v2, v4

    .line 559
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 566
    .end local v6           #tmp:I
    :cond_1
    new-instance v8, Ljava/lang/String;

    array-length v9, v2

    sget-object v10, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v8, v2, v7, v9, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v8, p0, Llibcore/net/url/FtpURLConnection;->replyCode:Ljava/lang/String;

    .line 568
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, cmdArg:Ljava/lang/String;
    :try_start_0
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cmgArgArr[1]:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 572
    iget-object v8, p0, Llibcore/net/url/FtpURLConnection;->replyCode:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 575
    const/16 v8, 0xe3

    if-eq v5, v8, :cond_2

    move v5, v7

    .line 592
    .end local v5           #retReplycode:I
    :goto_1
    return v5

    .line 579
    .restart local v5       #retReplycode:I
    :cond_2
    const/16 v7, 0x28

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0x29

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 581
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, cmdArgArr:[Ljava/lang/String;
    array-length v7, v1

    const/4 v8, 0x6

    if-eq v7, v8, :cond_3

    .line 584
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the size of cmd arg is wrong:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 593
    .end local v1           #cmdArgArr:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 594
    .local v3, e:Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/io/IOException;

    const-string v8, "reply code is invalid"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/io/IOException;

    check-cast v7, Ljava/io/IOException;

    throw v7

    .line 587
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #cmdArgArr:[Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Llibcore/net/url/FtpURLConnection;->mPasvDataHost:Ljava/lang/String;

    .line 588
    const/4 v7, 0x4

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit16 v7, v7, 0x100

    const/4 v8, 0x5

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Llibcore/net/url/FtpURLConnection;->mPasvDataPort:I

    .line 590
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "server info:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Llibcore/net/url/FtpURLConnection;->mPasvDataHost:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Llibcore/net/url/FtpURLConnection;->mPasvDataPort:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 595
    .end local v1           #cmdArgArr:[Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 596
    .local v3, e:Ljava/lang/Exception;
    new-instance v7, Ljava/io/IOException;

    const-string v8, "parse error in argv"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/io/IOException;

    check-cast v7, Ljava/io/IOException;

    throw v7
.end method

.method private getReply()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    const/4 v5, 0x3

    new-array v0, v5, [B

    .line 385
    .local v0, code:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 386
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 387
    .local v4, tmp:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 388
    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 390
    :cond_0
    int-to-byte v5, v4

    aput-byte v5, v0, v2

    .line 385
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    .end local v4           #tmp:I
    :cond_1
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    array-length v7, v0

    sget-object v8, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v5, p0, Llibcore/net/url/FtpURLConnection;->replyCode:Ljava/lang/String;

    .line 394
    const/4 v3, 0x0

    .line 395
    .local v3, multiline:Z
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_2

    .line 396
    const/4 v3, 0x1

    .line 398
    :cond_2
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->readLine()Ljava/lang/String;

    .line 399
    if-eqz v3, :cond_4

    .line 400
    :cond_3
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->readMultiLine()Z

    move-result v5

    if-nez v5, :cond_3

    .line 405
    :cond_4
    :try_start_0
    iget-object v5, p0, Llibcore/net/url/FtpURLConnection;->replyCode:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    .line 406
    :catch_0
    move-exception v1

    .line 407
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "reply code is invalid"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Ljava/io/IOException;

    check-cast v5, Ljava/io/IOException;

    throw v5
.end method

.method private login()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x14b

    const/16 v4, 0xe6

    const/16 v3, 0xdc

    .line 413
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v0

    .line 414
    .local v0, reply:I
    if-ne v0, v3, :cond_1

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/net/url/FtpURLConnection;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 419
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v0

    .line 420
    if-eq v0, v5, :cond_0

    if-ne v0, v4, :cond_2

    .line 424
    :cond_0
    if-ne v0, v5, :cond_3

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PASS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/net/url/FtpURLConnection;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 426
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v0

    .line 427
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    if-eq v0, v3, :cond_3

    if-eq v0, v4, :cond_3

    .line 428
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to log in to server (PASS): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to connect to server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 422
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to log in to server (USER): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 431
    :cond_3
    return-void
.end method

.method private passive()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    const-string v1, "PASV\r\n"

    invoke-direct {p0, v1}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 546
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getPassiveHostInfo()I

    move-result v0

    .line 547
    .local v0, reply:I
    const/16 v1, 0xe3

    if-ne v0, v1, :cond_0

    .line 552
    return-void

    .line 550
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to use passive mode with to server (PASV): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private port()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2c

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PORT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/net/url/FtpURLConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llibcore/net/url/FtpURLConnection;->dataPort:I

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llibcore/net/url/FtpURLConnection;->dataPort:I

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 439
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 440
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to configure data port"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_0
    return-void
.end method

.method private readLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .local v1, sb:Ljava/lang/StringBuilder;
    :goto_0
    iget-object v2, p0, Llibcore/net/url/FtpURLConnection;->ctrlInput:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, c:I
    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    .line 451
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readMultiLine()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 457
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, line:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 465
    :cond_0
    :goto_0
    return v1

    .line 461
    :cond_1
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Llibcore/net/url/FtpURLConnection;->replyCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 463
    goto :goto_0
.end method

.method private sendFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STOR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 476
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v0

    .line 477
    .local v0, reply:I
    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    .line 478
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to store file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 480
    :cond_0
    return-void
.end method

.method private setType()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    const-string v0, "TYPE I\r\n"

    invoke-direct {p0, v0}, Llibcore/net/url/FtpURLConnection;->write(Ljava/lang/String;)V

    .line 533
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->getReply()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 534
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to set transfer type"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_0
    return-void
.end method

.method private write(Ljava/lang/String;)V
    .locals 2
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 539
    iget-object v0, p0, Llibcore/net/url/FtpURLConnection;->ctrlOutput:Ljava/io/OutputStream;

    sget-object v1, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 540
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v4, 0x0

    .line 178
    .local v4, proxyList:Ljava/util/List;,"Ljava/util/List<Ljava/net/Proxy;>;"
    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->proxy:Ljava/net/Proxy;

    if-eqz v6, :cond_2

    .line 179
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #proxyList:Ljava/util/List;,"Ljava/util/List<Ljava/net/Proxy;>;"
    const/4 v6, 0x1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    .restart local v4       #proxyList:Ljava/util/List;,"Ljava/util/List<Ljava/net/Proxy;>;"
    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->proxy:Ljava/net/Proxy;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    :goto_0
    if-nez v4, :cond_3

    .line 188
    const/4 v6, 0x0

    iput-object v6, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    .line 189
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->connectInternal()V

    .line 213
    :cond_1
    return-void

    .line 182
    :cond_2
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v5

    .line 183
    .local v5, selector:Ljava/net/ProxySelector;
    if-eqz v5, :cond_0

    .line 184
    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->uri:Ljava/net/URI;

    invoke-virtual {v5, v6}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 191
    .end local v5           #selector:Ljava/net/ProxySelector;
    :cond_3
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v5

    .line 192
    .restart local v5       #selector:Ljava/net/ProxySelector;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 193
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/Proxy;>;"
    const/4 v0, 0x0

    .line 194
    .local v0, connectOK:Z
    const-string v1, ""

    .line 195
    .local v1, failureReason:Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v0, :cond_5

    .line 196
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/Proxy;

    iput-object v6, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    .line 198
    :try_start_0
    invoke-direct {p0}, Llibcore/net/url/FtpURLConnection;->connectInternal()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    const/4 v0, 0x1

    goto :goto_1

    .line 200
    :catch_0
    move-exception v2

    .line 201
    .local v2, ioe:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 204
    if-eqz v5, :cond_4

    sget-object v6, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iget-object v7, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    if-eq v6, v7, :cond_4

    .line 205
    iget-object v6, p0, Llibcore/net/url/FtpURLConnection;->uri:Ljava/net/URI;

    iget-object v7, p0, Llibcore/net/url/FtpURLConnection;->currentProxy:Ljava/net/Proxy;

    invoke-virtual {v7}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    goto :goto_1

    .line 209
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_5
    if-nez v0, :cond_1

    .line 210
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to connect to server: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/net/url/FtpURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 302
    const-string v0, "content/unknown"

    .line 304
    .end local v0           #result:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 339
    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->connect()V

    .line 341
    :cond_0
    iget-object v0, p0, Llibcore/net/url/FtpURLConnection;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 378
    invoke-virtual {p0}, Llibcore/net/url/FtpURLConnection;->connect()V

    .line 380
    :cond_0
    iget-object v0, p0, Llibcore/net/url/FtpURLConnection;->dataSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 357
    .local v0, port:I
    if-gtz v0, :cond_0

    .line 358
    const/16 v0, 0x15

    .line 360
    :cond_0
    new-instance v1, Ljava/net/SocketPermission;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Llibcore/net/url/FtpURLConnection;->hostName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "connect, resolve"

    invoke-direct {v1, v2, v3}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public setDoInput(Z)V
    .locals 1
    .parameter "newValue"

    .prologue
    .line 498
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 499
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0

    .line 501
    :cond_0
    iput-boolean p1, p0, Ljava/net/URLConnection;->doInput:Z

    .line 502
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ljava/net/URLConnection;->doOutput:Z

    .line 503
    return-void

    .line 502
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDoOutput(Z)V
    .locals 1
    .parameter "newValue"

    .prologue
    .line 521
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 522
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0

    .line 524
    :cond_0
    iput-boolean p1, p0, Ljava/net/URLConnection;->doOutput:Z

    .line 525
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ljava/net/URLConnection;->doInput:Z

    .line 526
    return-void

    .line 525
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
