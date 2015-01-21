.class public Lcom/android/exchange/service/EmailExternalEas;
.super Lcom/android/exchange/EasSyncService;
.source "EmailExternalEas.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmailExternalEas"


# instance fields
.field private mCallback:Lcom/android/emailcommon/service/EmailExternalCalls;

.field private mInputStream:Ljava/io/InputStream;

.field private mSaveInSent:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;Landroid/net/Uri;Lcom/android/emailcommon/service/EmailExternalCalls;Z)V
    .locals 2
    .parameter "context"
    .parameter "mailbox"
    .parameter "uri"
    .parameter "callback"
    .parameter "save"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 37
    iput-object v1, p0, Lcom/android/exchange/service/EmailExternalEas;->mInputStream:Ljava/io/InputStream;

    .line 39
    iput-object v1, p0, Lcom/android/exchange/service/EmailExternalEas;->mCallback:Lcom/android/emailcommon/service/EmailExternalCalls;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/service/EmailExternalEas;->mSaveInSent:Z

    .line 43
    iput-object v1, p0, Lcom/android/exchange/service/EmailExternalEas;->mUri:Landroid/net/Uri;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 50
    iput-object p3, p0, Lcom/android/exchange/service/EmailExternalEas;->mUri:Landroid/net/Uri;

    .line 51
    iput-object p4, p0, Lcom/android/exchange/service/EmailExternalEas;->mCallback:Lcom/android/emailcommon/service/EmailExternalCalls;

    .line 52
    iput-boolean p5, p0, Lcom/android/exchange/service/EmailExternalEas;->mSaveInSent:Z

    .line 53
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 58
    const/4 v1, 0x1

    .line 61
    .local v1, resultType:I
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->setupService()Z

    .line 63
    invoke-virtual {p0}, Lcom/android/exchange/service/EmailExternalEas;->sendMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    new-array v3, v3, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    :goto_0
    aput-object v2, v3, v6

    const-string v2, ": sync finished"

    aput-object v2, v3, v5

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 72
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p0, v2, v1}, Lcom/android/exchange/service/EmailExternalEas;->sendCallback(II)V

    .line 66
    const-string v2, "Exception caught in EmailExternalEas"

    invoke-virtual {p0, v2, v0}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    new-array v3, v3, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    :goto_2
    aput-object v2, v3, v6

    const-string v2, ": sync finished"

    aput-object v2, v3, v5

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const-string v3, "EmailExternalEas"

    :goto_3
    aput-object v3, v4, v6

    const-string v3, ": sync finished"

    aput-object v3, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    new-array v4, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    goto :goto_3

    .restart local v0       #e:Ljava/io/IOException;
    :cond_1
    const-string v2, "EmailExternalEas"

    goto :goto_2

    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    const-string v2, "EmailExternalEas"

    goto :goto_0
.end method

.method public sendCallback(II)V
    .locals 5
    .parameter "result"
    .parameter "resultType"

    .prologue
    .line 75
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v0, v3, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 77
    .local v0, accountId:J
    :try_start_0
    iget-object v3, p0, Lcom/android/exchange/service/EmailExternalEas;->mCallback:Lcom/android/emailcommon/service/EmailExternalCalls;

    invoke-interface {v3, p1, v0, v1, p2}, Lcom/android/emailcommon/service/EmailExternalCalls;->sendCallback(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, e:Landroid/os/RemoteException;
    const-string v3, "EmailExternalEas"

    const-string v4, "RemoteException in sendCallback method"

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendMessage()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 97
    const-string v10, "EmailExternalEas"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Start send message ... for Uri "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/exchange/service/EmailExternalEas;->mUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v8, 0x1

    .line 100
    .local v8, resultType:I
    const/4 v7, 0x0

    .line 102
    .local v7, result:I
    iget-object v10, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 103
    .local v0, cacheDir:Ljava/io/File;
    const-string v10, "eas_"

    const-string v11, "tmp"

    invoke-static {v10, v11, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    .line 106
    .local v9, tmpFile:Ljava/io/File;
    :try_start_0
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v11, p0, Lcom/android/exchange/service/EmailExternalEas;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    iput-object v10, p0, Lcom/android/exchange/service/EmailExternalEas;->mInputStream:Ljava/io/InputStream;

    .line 107
    iget-object v10, p0, Lcom/android/exchange/service/EmailExternalEas;->mInputStream:Ljava/io/InputStream;

    if-nez v10, :cond_1

    .line 108
    const-string v10, "EmailExternalEas"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Send Message Failed in sendMessage() method , Can\'t get InputStream from the given uri: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/exchange/service/EmailExternalEas;->mUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v7, 0x1

    .line 111
    invoke-virtual {p0, v7, v8}, Lcom/android/exchange/service/EmailExternalEas;->sendCallback(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 165
    :goto_0
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 171
    :cond_0
    :goto_1
    return-void

    .line 116
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/android/exchange/service/EmailExternalEas;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {p0, v10, v9}, Lcom/android/exchange/service/EmailExternalEas;->writToFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 117
    iget-object v10, p0, Lcom/android/exchange/service/EmailExternalEas;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 121
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 122
    .local v4, fileInputStream:Ljava/io/FileInputStream;
    new-instance v5, Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-direct {v5, v4, v10, v11}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 126
    .local v5, inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    const-string v1, "SendMail&SaveInSent=F"

    .line 127
    .local v1, cmd:Ljava/lang/String;
    iget-boolean v10, p0, Lcom/android/exchange/service/EmailExternalEas;->mSaveInSent:Z

    if-eqz v10, :cond_2

    .line 128
    const-string v1, "SendMail&SaveInSent=T"

    .line 135
    :cond_2
    const-string v10, "EmailExternalEas"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Send cmd: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const v10, 0xdbba0

    invoke-virtual {p0, v1, v5, v10}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;

    move-result-object v6

    .line 138
    .local v6, resp:Lcom/android/exchange/EasResponse;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 145
    invoke-virtual {v6}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v2

    .line 146
    .local v2, code:I
    const/16 v10, 0xc8

    if-ne v2, v10, :cond_3

    .line 147
    const-string v10, "EmailExternalEas"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EAS Message sending success, code:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v7, 0x0

    .line 149
    invoke-virtual {p0, v7, v8}, Lcom/android/exchange/service/EmailExternalEas;->sendCallback(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_0

    .line 152
    :cond_3
    :try_start_2
    const-string v10, "EmailExternalEas"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EAS Message sending failed, code:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 153
    const/4 v7, 0x1

    .line 164
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 165
    .end local v1           #cmd:Ljava/lang/String;
    .end local v2           #code:I
    .end local v4           #fileInputStream:Ljava/io/FileInputStream;
    .end local v5           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v6           #resp:Lcom/android/exchange/EasResponse;
    :goto_2
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 168
    :cond_4
    const-string v10, "EmailExternalEas"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EAS send Message feedback result = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " resultType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, v7, v8}, Lcom/android/exchange/service/EmailExternalEas;->sendCallback(II)V

    goto/16 :goto_1

    .line 155
    :catch_0
    move-exception v3

    .line 156
    .local v3, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v10, "EmailExternalEas"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EAS SendMessage FileNotFoundException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    const/4 v7, 0x1

    .line 164
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_2

    .line 159
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 160
    .local v3, e:Ljava/io/IOException;
    :try_start_4
    const-string v10, "EmailExternalEas"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EAS SendMessage Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    const/4 v7, 0x1

    .line 164
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_2

    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 165
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 164
    :cond_5
    throw v10
.end method

.method writToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 5
    .parameter "in"
    .parameter "tmpFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 85
    .local v0, fileOut:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    const/16 v4, 0x400

    invoke-direct {v2, v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 86
    .local v2, stream:Ljava/io/OutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 87
    .local v3, writer:Ljava/io/Writer;
    const/4 v1, 0x0

    .line 88
    .local v1, readChar:I
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 89
    invoke-virtual {v3, v1}, Ljava/io/OutputStreamWriter;->write(I)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 92
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 93
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 94
    return-void
.end method
