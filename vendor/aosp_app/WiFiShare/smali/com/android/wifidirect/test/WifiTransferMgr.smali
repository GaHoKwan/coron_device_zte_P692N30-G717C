.class public Lcom/android/wifidirect/test/WifiTransferMgr;
.super Ljava/lang/Object;
.source "WifiTransferMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;
    }
.end annotation


# static fields
.field private static final ALLOWED_INSERT_SHARE_THREAD_NUMBER:I = 0x3

.field private static final ARRAYLIST_ITEM_SEPERATOR:Ljava/lang/String; = ";"

.field public static final EXTRAS_GROUP_OWNER_ADDRESS:Ljava/lang/String; = "go_host"

.field private static final FILE_URI:Ljava/lang/String; = "FILE_URI"

.field private static final FILE_URIS:Ljava/lang/String; = "FILE_URIS"

.field private static INSTANCE:Lcom/android/wifidirect/test/WifiTransferMgr; = null

.field private static INSTANCE_LOCK:Ljava/lang/Object; = null

.field private static final MIME_TYPE:Ljava/lang/String; = "MIMETYPE"

.field private static final MIME_TYPE_MULTIPLE:Ljava/lang/String; = "MIMETYPE_MULTIPLE"

.field private static final MULTIPLE_FLAG:Ljava/lang/String; = "MULTIPLE_FLAG"

.field private static final OPP_PREFERENCE_FILE:Ljava/lang/String; = "WIFIMGR"

.field private static final SENDING_FLAG:Ljava/lang/String; = "SENDINGFLAG"

.field private static final TAG:Ljava/lang/String; = "FyFtp WifiTransferMgr"

.field private static final V:Z = true

.field private static mReceiveDeviceName:Ljava/lang/String;

.field private static mSendDeviceName:Ljava/lang/String;

.field private static sHostIp:Ljava/lang/String;


# instance fields
.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mInsertShareThreadNum:I

.field private mMimeTypeOfSendigFile:Ljava/lang/String;

.field private mMimeTypeOfSendigFiles:Ljava/lang/String;

.field public mMultipleFlag:Z

.field private mSendNum:I

.field public mSendingFlag:Z

.field private mUriOfSendingFile:Ljava/lang/String;

.field private mUrisOfSendingFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mfileNumInBatch:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/wifidirect/test/WifiTransferMgr;->INSTANCE_LOCK:Ljava/lang/Object;

    .line 79
    const-string v0, "192.168.49.1"

    sput-object v0, Lcom/android/wifidirect/test/WifiTransferMgr;->sHostIp:Ljava/lang/String;

    .line 80
    const-string v0, "senddevicename"

    sput-object v0, Lcom/android/wifidirect/test/WifiTransferMgr;->mSendDeviceName:Ljava/lang/String;

    .line 81
    const-string v0, "receivedevicename"

    sput-object v0, Lcom/android/wifidirect/test/WifiTransferMgr;->mReceiveDeviceName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v0, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mInsertShareThreadNum:I

    .line 75
    iput v0, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mSendNum:I

    .line 346
    return-void
.end method

.method public static SetDeviceName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "senddeviceName"
    .parameter "receivedeviceName"

    .prologue
    .line 299
    sput-object p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mSendDeviceName:Ljava/lang/String;

    .line 300
    sput-object p1, Lcom/android/wifidirect/test/WifiTransferMgr;->mReceiveDeviceName:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public static SetHostIp(Ljava/lang/String;)V
    .locals 3
    .parameter "hostIp"

    .prologue
    .line 293
    sput-object p0, Lcom/android/wifidirect/test/WifiTransferMgr;->sHostIp:Ljava/lang/String;

    .line 294
    const-string v0, "FyFtp WifiTransferMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set hostIp is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/wifidirect/test/WifiTransferMgr;->sHostIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method static synthetic access$008(Lcom/android/wifidirect/test/WifiTransferMgr;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mInsertShareThreadNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mInsertShareThreadNum:I

    return v0
.end method

.method static synthetic access$010(Lcom/android/wifidirect/test/WifiTransferMgr;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mInsertShareThreadNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mInsertShareThreadNum:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/wifidirect/test/WifiTransferMgr;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getHostIp()Ljava/lang/String;
    .locals 3

    .prologue
    .line 287
    const-string v0, "FyFtp WifiTransferMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get hostIp is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/wifidirect/test/WifiTransferMgr;->sHostIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget-object v0, Lcom/android/wifidirect/test/WifiTransferMgr;->sHostIp:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/wifidirect/test/WifiTransferMgr;
    .locals 2
    .parameter "context"

    .prologue
    .line 89
    sget-object v1, Lcom/android/wifidirect/test/WifiTransferMgr;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    sget-object v0, Lcom/android/wifidirect/test/WifiTransferMgr;->INSTANCE:Lcom/android/wifidirect/test/WifiTransferMgr;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/android/wifidirect/test/WifiTransferMgr;

    invoke-direct {v0}, Lcom/android/wifidirect/test/WifiTransferMgr;-><init>()V

    sput-object v0, Lcom/android/wifidirect/test/WifiTransferMgr;->INSTANCE:Lcom/android/wifidirect/test/WifiTransferMgr;

    .line 93
    :cond_0
    sget-object v0, Lcom/android/wifidirect/test/WifiTransferMgr;->INSTANCE:Lcom/android/wifidirect/test/WifiTransferMgr;

    invoke-direct {v0, p0}, Lcom/android/wifidirect/test/WifiTransferMgr;->init(Landroid/content/Context;)Z

    .line 94
    sget-object v0, Lcom/android/wifidirect/test/WifiTransferMgr;->INSTANCE:Lcom/android/wifidirect/test/WifiTransferMgr;

    monitor-exit v1

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getReceiveDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    sget-object v0, Lcom/android/wifidirect/test/WifiTransferMgr;->mReceiveDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public static getSendDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/android/wifidirect/test/WifiTransferMgr;->mSendDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method private init(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 102
    iget-boolean v0, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return v2

    .line 104
    :cond_0
    iput-boolean v2, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mInitialized:Z

    .line 105
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mContext:Landroid/content/Context;

    .line 106
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mContext:Landroid/content/Context;

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 107
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_1

    .line 108
    const-string v0, "FyFtp WifiTransferMgr"

    const-string v1, "wifi p2p service is not started! "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiTransferMgr;->restoreApplicationData()V

    goto :goto_0
.end method

.method private restoreApplicationData()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 163
    iget-object v4, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mContext:Landroid/content/Context;

    const-string v5, "WIFIMGR"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 166
    .local v1, settings:Landroid/content/SharedPreferences;
    const-string v4, "SENDINGFLAG"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mSendingFlag:Z

    .line 167
    const-string v4, "MIMETYPE"

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mMimeTypeOfSendigFile:Ljava/lang/String;

    .line 168
    const-string v4, "FILE_URI"

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mUriOfSendingFile:Ljava/lang/String;

    .line 169
    const-string v4, "MIMETYPE_MULTIPLE"

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mMimeTypeOfSendigFiles:Ljava/lang/String;

    .line 170
    const-string v4, "MULTIPLE_FLAG"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mMultipleFlag:Z

    .line 172
    const-string v4, "FyFtp WifiTransferMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreApplicationData! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mSendingFlag:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mMultipleFlag:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mMimeTypeOfSendigFile:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mUriOfSendingFile:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v4, "FILE_URIS"

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, strUris:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    .line 177
    if-eqz v3, :cond_0

    .line 178
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, splitUri:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 180
    iget-object v4, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    aget-object v5, v2, v0

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    const-string v4, "FyFtp WifiTransferMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Uri in batch:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v0           #i:I
    .end local v2           #splitUri:[Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mContext:Landroid/content/Context;

    const-string v5, "WIFIMGR"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 185
    return-void
.end method

.method private storeApplicationData()V
    .locals 9

    .prologue
    .line 191
    iget-object v6, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mContext:Landroid/content/Context;

    const-string v7, "WIFIMGR"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 193
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "SENDINGFLAG"

    iget-boolean v7, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mSendingFlag:Z

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 194
    const-string v6, "MULTIPLE_FLAG"

    iget-boolean v7, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mMultipleFlag:Z

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 195
    iget-boolean v6, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mMultipleFlag:Z

    if-eqz v6, :cond_1

    .line 196
    const-string v6, "MIMETYPE_MULTIPLE"

    iget-object v7, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mMimeTypeOfSendigFiles:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v6, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 199
    iget-object v6, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 200
    .local v5, uriContent:Landroid/net/Uri;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    .end local v5           #uriContent:Landroid/net/Uri;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, strUris:Ljava/lang/String;
    const-string v6, "FILE_URIS"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    const-string v6, "MIMETYPE"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 207
    const-string v6, "FILE_URI"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 215
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    .end local v4           #strUris:Ljava/lang/String;
    :goto_1
    const-string v6, "FyFtp WifiTransferMgr"

    const-string v7, "Application data stored to SharedPreference! "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void

    .line 209
    :cond_1
    const-string v6, "MIMETYPE"

    iget-object v7, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mMimeTypeOfSendigFile:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    const-string v6, "FILE_URI"

    iget-object v7, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mUriOfSendingFile:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 212
    const-string v6, "MIMETYPE_MULTIPLE"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 213
    const-string v6, "FILE_URIS"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method


# virtual methods
.method public getBatchSize()I
    .locals 1

    .prologue
    .line 241
    monitor-enter p0

    .line 242
    :try_start_0
    iget v0, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mfileNumInBatch:I

    monitor-exit p0

    return v0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSendNum()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mSendNum:I

    return v0
.end method

.method public getSendingPath()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 316
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mContext:Landroid/content/Context;

    const-string v3, "WIFIMGR"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 317
    .local v1, settings:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 318
    .local v0, SendingPath:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mMultipleFlag:Z

    if-nez v2, :cond_0

    .line 320
    const-string v2, "FILE_URI"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    const-string v2, "FyFtp WifiTransferMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUriOfSendingFile path is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mUriOfSendingFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_0
    return-object v0

    .line 325
    :cond_0
    const-string v2, "FyFtp WifiTransferMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSendNum  is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mSendNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v2, "FILE_URIS"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    iget v2, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mSendNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mSendNum:I

    goto :goto_0
.end method

.method public saveSendingFileInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "mimeType"
    .parameter "uri"

    .prologue
    .line 219
    monitor-enter p0

    .line 220
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mMultipleFlag:Z

    .line 221
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mMimeTypeOfSendigFile:Ljava/lang/String;

    .line 222
    iput-object p2, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mUriOfSendingFile:Ljava/lang/String;

    .line 223
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mfileNumInBatch:I

    .line 224
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiTransferMgr;->storeApplicationData()V

    .line 225
    monitor-exit p0

    .line 226
    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveSendingFileInfo(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "mimeType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p2, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    monitor-enter p0

    .line 230
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mMultipleFlag:Z

    .line 231
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mMimeTypeOfSendigFiles:Ljava/lang/String;

    .line 232
    iput-object p2, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    .line 233
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mfileNumInBatch:I

    .line 234
    const-string v0, "FyFtp WifiTransferMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mfileNumInBatch is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mfileNumInBatch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0}, Lcom/android/wifidirect/test/WifiTransferMgr;->storeApplicationData()V

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mSendNum:I

    .line 237
    monitor-exit p0

    .line 238
    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startTransfer()V
    .locals 9

    .prologue
    .line 250
    const-string v1, "FyFtp WifiTransferMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Active InsertShareThread number is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mInsertShareThreadNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mContext:Landroid/content/Context;

    const-string v2, "WIFIMGR"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 256
    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    monitor-enter p0

    .line 257
    :try_start_0
    iget v1, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mInsertShareThreadNum:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 258
    const-string v1, "FyFtp WifiTransferMgr"

    const-string v2, "Too many shares user triggered concurrently!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    monitor-exit p0

    .line 280
    :goto_0
    return-void

    .line 269
    :cond_0
    const-string v1, "FyFtp WifiTransferMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMultipleFlag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mMultipleFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMimeTypeOfSendigFile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mMimeTypeOfSendigFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mUriOfSendingFile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mUriOfSendingFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mUrisOfSendingFiles:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v0, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;

    const-string v2, "Wifi"

    iget-boolean v3, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mMultipleFlag:Z

    iget-object v4, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mMimeTypeOfSendigFile:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mUriOfSendingFile:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mMimeTypeOfSendigFiles:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;-><init>(Lcom/android/wifidirect/test/WifiTransferMgr;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 273
    .local v0, insertThread:Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;
    iget-boolean v1, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mMultipleFlag:Z

    if-eqz v1, :cond_1

    .line 274
    const-string v1, "FyFtp WifiTransferMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mfileNumInBatch number is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mfileNumInBatch:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/wifidirect/test/WifiTransferMgr;->mfileNumInBatch:I

    .line 277
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-virtual {v0}, Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;->start()V

    goto :goto_0

    .line 277
    .end local v0           #insertThread:Lcom/android/wifidirect/test/WifiTransferMgr$InsertShareInfoThread;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
