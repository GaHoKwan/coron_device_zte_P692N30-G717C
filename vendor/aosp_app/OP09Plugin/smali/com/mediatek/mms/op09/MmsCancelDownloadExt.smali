.class public Lcom/mediatek/mms/op09/MmsCancelDownloadExt;
.super Lcom/mediatek/mms/ext/MmsCancelDownloadImpl;
.source "MmsCancelDownloadExt.java"


# static fields
.field private static final STATUS_EXT:Ljava/lang/String; = "st_ext"

.field private static final TAG:Ljava/lang/String; = "Mms/MmsCancelDownloadExt"


# instance fields
.field private mClientMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/http/AndroidHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEnableCancelToast:Z

.field private mHttpRetryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

.field private mWaitingCnxn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/mediatek/mms/ext/MmsCancelDownloadImpl;-><init>(Landroid/content/Context;)V

    .line 65
    iput-object p1, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mClientMap:Ljava/util/HashMap;

    .line 67
    iput-boolean v1, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mEnableCancelToast:Z

    .line 68
    iput-boolean v1, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mWaitingCnxn:Z

    .line 69
    return-void
.end method

.method private abortMmsHttp(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .parameter "contentUrl"
    .parameter "uri"

    .prologue
    .line 213
    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mHttpRetryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    if-eqz v1, :cond_0

    .line 214
    const-string v1, "Mms/MmsCancelDownloadExt"

    const-string v2, "Set Http request retry = 0."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mHttpRetryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->setRetryCount(I)V

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mClientMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/http/AndroidHttpClient;

    .line 218
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    if-eqz v0, :cond_1

    .line 220
    const-string v1, "Mms/MmsCancelDownloadExt"

    const-string v2, "===before abortMmsHttp"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v1, 0x4

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->markStateExt(Landroid/net/Uri;I)V

    .line 222
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 223
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 224
    const-string v1, "Mms/MmsCancelDownloadExt"

    const-string v2, "===after abortMmsHttp"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_1
    const-string v1, "Mms/MmsCancelDownloadExt"

    const-string v2, "cancelDownload(): client is null!"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mediatek/mms/op09/MmsCancelDownloadExt;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->getContentLocation(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/mms/op09/MmsCancelDownloadExt;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mClientMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/mms/op09/MmsCancelDownloadExt;Landroid/net/Uri;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->setCancelDownloadState(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/mms/op09/MmsCancelDownloadExt;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->abortMmsHttp(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private getContentLocation(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .parameter "uri"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 193
    const/4 v7, 0x0

    .line 195
    .local v7, contentUrl:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/String;

    const-string v2, "ct_l"

    aput-object v2, v3, v5

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 198
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 200
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 202
    const-string v0, "Mms/MmsCancelDownloadExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContentLocation(): contentUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 209
    :cond_1
    return-object v7

    .line 205
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private setCancelDownloadState(Landroid/net/Uri;Z)V
    .locals 2
    .parameter "uri"
    .parameter "isCancelling"

    .prologue
    .line 188
    const-string v0, "Mms/MmsCancelDownloadExt"

    const-string v1, "setCancelDownloadState()..."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->getHost()Lcom/mediatek/mms/ext/IMmsCancelDownloadHost;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mediatek/mms/ext/IMmsCancelDownloadHost;->setCancelDownloadState(Landroid/net/Uri;Z)V

    .line 190
    return-void
.end method


# virtual methods
.method public addHttpClient(Ljava/lang/String;Landroid/net/http/AndroidHttpClient;)V
    .locals 3
    .parameter "url"
    .parameter "client"

    .prologue
    .line 77
    const-string v0, "Mms/MmsCancelDownloadExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHttpClient(): url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mClientMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public cancelDownload(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 83
    const-string v1, "Mms/MmsCancelDownloadExt"

    const-string v2, "MmsCancelDownloadExt: cancelDownload()"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    if-nez p1, :cond_0

    .line 85
    const-string v1, "Mms/MmsCancelDownloadExt"

    const-string v2, "cancelDownload(): uri is null!"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->markStateExt(Landroid/net/Uri;I)V

    .line 92
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/mms/op09/MmsCancelDownloadExt$1;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/mms/op09/MmsCancelDownloadExt$1;-><init>(Lcom/mediatek/mms/op09/MmsCancelDownloadExt;Landroid/net/Uri;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 107
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getCancelToastEnabled()Z
    .locals 3

    .prologue
    .line 122
    const-string v0, "Mms/MmsCancelDownloadExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCancelEnabled(): mEnableCancelToast = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mEnableCancelToast:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-boolean v0, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mEnableCancelToast:Z

    return v0
.end method

.method public getStateExt(Landroid/net/Uri;)I
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 137
    const-string v0, "Mms/MmsCancelDownloadExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStateExt: uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "st_ext"

    aput-object v2, v3, v8

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 141
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 143
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 147
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 150
    :goto_0
    return v0

    .line 147
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    .line 150
    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getStateExt(Ljava/lang/String;)I
    .locals 9
    .parameter "url"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 154
    const-string v0, "Mms/MmsCancelDownloadExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStateExt: url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v4, "ct_l = ?"

    .line 157
    .local v4, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "st_ext"

    aput-object v5, v3, v8

    new-array v5, v6, [Ljava/lang/String;

    aput-object p1, v5, v8

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 160
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 162
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 166
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 169
    :goto_0
    return v0

    .line 166
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    .line 169
    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getWaitingDataCnxn()Z
    .locals 3

    .prologue
    .line 178
    const-string v0, "Mms/MmsCancelDownloadExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWaitingDataCnxn(): mWaitingCnxn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mWaitingCnxn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-boolean v0, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mWaitingCnxn:Z

    return v0
.end method

.method public isEnableCancelDownload()Z
    .locals 2

    .prologue
    .line 72
    const-string v0, "Mms/MmsCancelDownloadExt"

    const-string v1, "isEnableCancelDownload(): true"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public markStateExt(Landroid/net/Uri;I)V
    .locals 6
    .parameter "uri"
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    .line 127
    const-string v0, "Mms/MmsCancelDownloadExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markStateExt: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 131
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "st_ext"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    iget-object v0, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method public removeHttpClient(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 111
    const-string v0, "Mms/MmsCancelDownloadExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeHttpClient(): url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mClientMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public saveDefaultHttpRetryHandler(Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;)V
    .locals 3
    .parameter "retryHandler"

    .prologue
    .line 183
    const-string v0, "Mms/MmsCancelDownloadExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveDefaultHttpRetryHandler(): retryHandler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iput-object p1, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mHttpRetryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    .line 185
    return-void
.end method

.method public setCancelToastEnabled(Z)V
    .locals 3
    .parameter "isEnable"

    .prologue
    .line 117
    const-string v0, "Mms/MmsCancelDownloadExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCancelEnabled(): mEnableCancelToast = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iput-boolean p1, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mEnableCancelToast:Z

    .line 119
    return-void
.end method

.method public setWaitingDataCnxn(Z)V
    .locals 3
    .parameter "isWaiting"

    .prologue
    .line 173
    const-string v0, "Mms/MmsCancelDownloadExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWaitingDataCnxn(): mWaitingCnxn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iput-boolean p1, p0, Lcom/mediatek/mms/op09/MmsCancelDownloadExt;->mWaitingCnxn:Z

    .line 175
    return-void
.end method
