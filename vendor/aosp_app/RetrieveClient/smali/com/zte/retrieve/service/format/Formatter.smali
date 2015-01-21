.class public Lcom/zte/retrieve/service/format/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# instance fields
.field private externalStoragePath:Ljava/lang/String;

.field formatHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mFormatStorageMgr:Lcom/zte/retrieve/service/format/FormatStorageManager;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mType:I

.field private virtualStoragePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/zte/retrieve/service/format/Formatter;->mContext:Landroid/content/Context;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/retrieve/service/format/Formatter;->mType:I

    .line 27
    iput-object v1, p0, Lcom/zte/retrieve/service/format/Formatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 28
    iput-object v1, p0, Lcom/zte/retrieve/service/format/Formatter;->mFormatStorageMgr:Lcom/zte/retrieve/service/format/FormatStorageManager;

    .line 29
    iput-object v1, p0, Lcom/zte/retrieve/service/format/Formatter;->virtualStoragePath:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/zte/retrieve/service/format/Formatter;->externalStoragePath:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/zte/retrieve/service/format/Formatter$1;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/service/format/Formatter$1;-><init>(Lcom/zte/retrieve/service/format/Formatter;)V

    iput-object v0, p0, Lcom/zte/retrieve/service/format/Formatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 58
    new-instance v0, Lcom/zte/retrieve/service/format/Formatter$2;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/service/format/Formatter$2;-><init>(Lcom/zte/retrieve/service/format/Formatter;)V

    iput-object v0, p0, Lcom/zte/retrieve/service/format/Formatter;->formatHandler:Landroid/os/Handler;

    .line 46
    iput-object p1, p0, Lcom/zte/retrieve/service/format/Formatter;->mContext:Landroid/content/Context;

    .line 47
    iput p2, p0, Lcom/zte/retrieve/service/format/Formatter;->mType:I

    .line 48
    iget-object v0, p0, Lcom/zte/retrieve/service/format/Formatter;->mContext:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/zte/retrieve/service/format/Formatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 49
    iget-object v0, p0, Lcom/zte/retrieve/service/format/Formatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/zte/retrieve/service/format/Formatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 50
    new-instance v0, Lcom/zte/retrieve/service/format/FormatStorageManager;

    iget-object v1, p0, Lcom/zte/retrieve/service/format/Formatter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/retrieve/service/format/FormatStorageManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/retrieve/service/format/Formatter;->mFormatStorageMgr:Lcom/zte/retrieve/service/format/FormatStorageManager;

    .line 51
    invoke-direct {p0, p2}, Lcom/zte/retrieve/service/format/Formatter;->getformatPath(I)V

    .line 52
    invoke-direct {p0}, Lcom/zte/retrieve/service/format/Formatter;->updateProgressState()V

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/service/format/Formatter;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/zte/retrieve/service/format/Formatter;->updateProgressState()V

    return-void
.end method

.method static synthetic access$1(Lcom/zte/retrieve/service/format/Formatter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/zte/retrieve/service/format/Formatter;->sendBroadcast(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/zte/retrieve/service/format/Formatter;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/zte/retrieve/service/format/Formatter;->formatVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/zte/retrieve/service/format/Formatter;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lcom/zte/retrieve/service/format/Formatter;->mType:I

    return v0
.end method

.method static synthetic access$4(Lcom/zte/retrieve/service/format/Formatter;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/retrieve/service/format/Formatter;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/zte/retrieve/service/format/Formatter;)Landroid/os/storage/StorageEventListener;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/retrieve/service/format/Formatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-object v0
.end method

.method private cancleListenerAndFeedback(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/zte/retrieve/service/format/Formatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/zte/retrieve/service/format/Formatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 204
    invoke-direct {p0, p1}, Lcom/zte/retrieve/service/format/Formatter;->sendBroadcast(I)V

    .line 205
    return-void
.end method

.method private formatVolume(Ljava/lang/String;)I
    .locals 5
    .parameter "path"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/zte/retrieve/service/format/Formatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 175
    .local v2, mountService:Landroid/os/storage/IMountService;
    const/4 v1, 0x0

    .line 177
    .local v1, formatRes:I
    :try_start_0
    const-string v3, "formatVolume start"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 178
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    move-result v1

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "formatVolume finish res = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    .line 182
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, mMountService:Landroid/os/storage/IMountService;
    if-nez v0, :cond_0

    .line 91
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 92
    .local v1, service:Landroid/os/IBinder;
    if-eqz v1, :cond_1

    .line 93
    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 98
    .end local v1           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-object v0

    .line 95
    .restart local v1       #service:Landroid/os/IBinder;
    :cond_1
    const-string v2, "Can\'t get mount service"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getformatPath(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 79
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/zte/retrieve/service/format/Formatter;->mFormatStorageMgr:Lcom/zte/retrieve/service/format/FormatStorageManager;

    invoke-virtual {v0}, Lcom/zte/retrieve/service/format/FormatStorageManager;->getVirtualStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/service/format/Formatter;->virtualStoragePath:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getformatPath format type is:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "virtualStoragePath is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/retrieve/service/format/Formatter;->virtualStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    if-nez p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/zte/retrieve/service/format/Formatter;->mFormatStorageMgr:Lcom/zte/retrieve/service/format/FormatStorageManager;

    invoke-virtual {v0}, Lcom/zte/retrieve/service/format/FormatStorageManager;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/service/format/Formatter;->externalStoragePath:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getformatPath format type is:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "externalStoragePath is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/retrieve/service/format/Formatter;->externalStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendBroadcast(I)V
    .locals 4
    .parameter "result"

    .prologue
    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zte/retrieve/service/format/Formatter;->mType:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-string v1, "fomatting Virtual"

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " is "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 209
    if-nez p1, :cond_1

    const-string v1, "success"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.retrieve.FORMAT_COMPLETE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    iget v2, p0, Lcom/zte/retrieve/service/format/Formatter;->mType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    iget-object v1, p0, Lcom/zte/retrieve/service/format/Formatter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 214
    return-void

    .line 208
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const-string v1, "fomatting External"

    goto :goto_0

    .line 209
    :cond_1
    const-string v1, "fail"

    goto :goto_1
.end method

.method private unmountVolume(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 162
    :try_start_0
    invoke-direct {p0}, Lcom/zte/retrieve/service/format/Formatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 163
    .local v1, mountService:Landroid/os/storage/IMountService;
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {v1, p1, v2, v3}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unmount finish, path = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    .line 168
    const-string v2, "Failed talking with mount service"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->e(Ljava/lang/String;)V

    .line 169
    const/4 v2, -0x2

    invoke-direct {p0, v2}, Lcom/zte/retrieve/service/format/Formatter;->cancleListenerAndFeedback(I)V

    goto :goto_0
.end method

.method private updateProgressState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, status:Ljava/lang/String;
    const/4 v0, 0x0

    .line 104
    .local v0, path:Ljava/lang/String;
    iget v3, p0, Lcom/zte/retrieve/service/format/Formatter;->mType:I

    packed-switch v3, :pswitch_data_0

    .line 120
    :goto_0
    if-nez v0, :cond_1

    .line 121
    const-string v3, "path is null"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, v5}, Lcom/zte/retrieve/service/format/Formatter;->cancleListenerAndFeedback(I)V

    .line 158
    :cond_0
    :goto_1
    return-void

    .line 106
    :pswitch_0
    iget-object v3, p0, Lcom/zte/retrieve/service/format/Formatter;->mFormatStorageMgr:Lcom/zte/retrieve/service/format/FormatStorageManager;

    invoke-virtual {v3}, Lcom/zte/retrieve/service/format/FormatStorageManager;->getVirtualStorageState()Ljava/lang/String;

    move-result-object v1

    .line 107
    iget-object v0, p0, Lcom/zte/retrieve/service/format/Formatter;->virtualStoragePath:Ljava/lang/String;

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TYPE_VIRTUAL_STORAGE Format status is:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",format type is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/zte/retrieve/service/format/Formatter;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :pswitch_1
    iget-object v3, p0, Lcom/zte/retrieve/service/format/Formatter;->mFormatStorageMgr:Lcom/zte/retrieve/service/format/FormatStorageManager;

    invoke-virtual {v3}, Lcom/zte/retrieve/service/format/FormatStorageManager;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 113
    iget-object v0, p0, Lcom/zte/retrieve/service/format/Formatter;->externalStoragePath:Ljava/lang/String;

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TYPE_EXTERNAL_STORAGE Format status is:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",format type is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/zte/retrieve/service/format/Formatter;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_1
    const-string v3, "checking"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    const-string v3, "storage is checking,waiting for formatting"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 131
    :cond_2
    const-string v3, "mounted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "mounted_ro"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 132
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unmountVolume path is:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0, v0}, Lcom/zte/retrieve/service/format/Formatter;->unmountVolume(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 134
    :cond_4
    const-string v3, "nofs"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "unmounted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 135
    const-string v3, "unmountable"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 136
    :cond_5
    move-object v2, v0

    .line 137
    .local v2, storagePath:Ljava/lang/String;
    new-instance v3, Lcom/zte/retrieve/service/format/Formatter$3;

    invoke-direct {v3, p0, v2}, Lcom/zte/retrieve/service/format/Formatter$3;-><init>(Lcom/zte/retrieve/service/format/Formatter;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v3}, Lcom/zte/retrieve/service/format/Formatter$3;->start()V

    goto/16 :goto_1

    .line 150
    .end local v2           #storagePath:Ljava/lang/String;
    :cond_6
    const-string v3, "removed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "bad_removal"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 151
    :cond_7
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/zte/retrieve/service/format/Formatter;->cancleListenerAndFeedback(I)V

    goto/16 :goto_1

    .line 152
    :cond_8
    const-string v3, "shared"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    invoke-direct {p0, v5}, Lcom/zte/retrieve/service/format/Formatter;->cancleListenerAndFeedback(I)V

    goto/16 :goto_1

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
