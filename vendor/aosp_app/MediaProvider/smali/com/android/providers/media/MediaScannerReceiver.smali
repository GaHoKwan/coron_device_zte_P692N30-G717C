.class public Lcom/android/providers/media/MediaScannerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaScannerReceiver.java"


# static fields
.field private static final CHECK_INTERVAL:I = 0x64

.field private static final LOG:Z = true

.field private static final MSG_CHECK_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaScannerReceiver"

.field private static final TIMEOUT_VALUE:I = 0x1388

.field private static final USB_OTG_MOUNT_POINT:Ljava/lang/String; = "/mnt/usbotg"

.field private static sAllExternalStorage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sHandler:Landroid/os/Handler;

.field private static sMountedStorage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sScanInternalFinished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/providers/media/MediaScannerReceiver;->sScanInternalFinished:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/providers/media/MediaScannerReceiver;->sMountedStorage:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/media/MediaScannerReceiver;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerReceiver;->dumpList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/media/MediaScannerReceiver;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/MediaScannerReceiver;->scan(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 223
    sget-object v0, Lcom/android/providers/media/MediaScannerReceiver;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lcom/android/providers/media/MediaScannerReceiver;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    sput-object v2, Lcom/android/providers/media/MediaScannerReceiver;->sHandler:Landroid/os/Handler;

    .line 227
    :cond_0
    sput-object v2, Lcom/android/providers/media/MediaScannerReceiver;->sMountedStorage:Ljava/util/ArrayList;

    .line 228
    return-void
.end method

.method private dumpList(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 181
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 182
    .local v2, size:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "size:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    if-lez v2, :cond_1

    .line 185
    const-string v3, ", values:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_0

    .line 187
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    add-int/lit8 v3, v2, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .end local v0           #i:I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    .end local v1           #sb:Ljava/lang/StringBuilder;
    .end local v2           #size:I
    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getAllExternalStorage(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    sget-object v4, Lcom/android/providers/media/MediaScannerReceiver;->sAllExternalStorage:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 139
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/providers/media/MediaScannerReceiver;->sAllExternalStorage:Ljava/util/ArrayList;

    .line 140
    const-string v4, "storage"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 141
    .local v3, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, directories:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    .line 143
    .local v2, size:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 144
    sget-object v4, Lcom/android/providers/media/MediaScannerReceiver;->sAllExternalStorage:Ljava/util/ArrayList;

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 146
    .restart local v1       #i:I
    .restart local v2       #size:I
    :cond_1
    const-string v4, "MediaScannerReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allStorage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/providers/media/MediaScannerReceiver;->sAllExternalStorage:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/android/providers/media/MediaScannerReceiver;->dumpList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v0           #directories:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #storageManager:Landroid/os/storage/StorageManager;
    :cond_2
    sget-object v4, Lcom/android/providers/media/MediaScannerReceiver;->sAllExternalStorage:Ljava/util/ArrayList;

    return-object v4
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/android/providers/media/MediaScannerReceiver;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/android/providers/media/MediaScannerReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaScannerReceiver$1;-><init>(Lcom/android/providers/media/MediaScannerReceiver;)V

    sput-object v0, Lcom/android/providers/media/MediaScannerReceiver;->sHandler:Landroid/os/Handler;

    .line 219
    :cond_0
    sget-object v0, Lcom/android/providers/media/MediaScannerReceiver;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getMountedStorage()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    sget-object v0, Lcom/android/providers/media/MediaScannerReceiver;->sMountedStorage:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/providers/media/MediaScannerReceiver;->sMountedStorage:Ljava/util/ArrayList;

    .line 155
    :cond_0
    sget-object v0, Lcom/android/providers/media/MediaScannerReceiver;->sMountedStorage:Ljava/util/ArrayList;

    return-object v0
.end method

.method private inScanDirectory(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 93
    if-nez p2, :cond_0

    move v3, v4

    .line 103
    :goto_0
    return v3

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerReceiver;->getAllExternalStorage(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 97
    .local v0, directories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 98
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    const/4 v3, 0x1

    goto :goto_0

    .line 98
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v3, v4

    .line 103
    goto :goto_0
.end method

.method private isAllMounted(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 159
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerReceiver;->getAllExternalStorage(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 160
    .local v0, allStorage:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaScannerReceiver;->removeUncheckStorage(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-direct {p0}, Lcom/android/providers/media/MediaScannerReceiver;->getMountedStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 162
    .local v3, mountedStorage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 163
    .local v5, total:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 164
    .local v2, mounted:I
    if-ge v2, v5, :cond_0

    .line 176
    :goto_0
    return v7

    .line 168
    :cond_0
    const/4 v4, 0x0

    .line 169
    .local v4, ready:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 170
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 171
    add-int/lit8 v4, v4, 0x1

    .line 169
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    :cond_1
    const-string v8, "MediaScannerReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAllMounted: invalidStorage:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/android/providers/media/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 176
    :cond_2
    if-ne v5, v4, :cond_3

    const/4 v6, 0x1

    :goto_3
    move v7, v6

    goto :goto_0

    :cond_3
    move v6, v7

    goto :goto_3
.end method

.method private isStorageRemoved(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 231
    const-string v5, "storage"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 232
    .local v4, storageManager:Landroid/os/storage/StorageManager;
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerReceiver;->getAllExternalStorage(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 233
    .local v0, allStorage:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaScannerReceiver;->removeUncheckStorage(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 234
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 235
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 236
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, state:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, "removed"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 238
    const-string v6, "MediaScannerReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isStorageRemoved: removed "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v5, 0x1

    .line 242
    .end local v3           #state:Ljava/lang/String;
    :goto_1
    return v5

    .line 235
    .restart local v3       #state:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    .end local v3           #state:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private removeUncheckStorage(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, allStorage:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    const/4 v2, 0x0

    .line 247
    .local v2, size:I
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v3, storageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 249
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 250
    .local v1, mountPoint:Ljava/lang/String;
    const-string v4, "/mnt/usbotg"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 251
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 246
    .end local v0           #i:I
    .end local v1           #mountPoint:Ljava/lang/String;
    .end local v2           #size:I
    .end local v3           #storageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 254
    .restart local v0       #i:I
    .restart local v2       #size:I
    .restart local v3       #storageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-object v3
.end method

.method private requestScan(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5
    .parameter "context"
    .parameter "path"
    .parameter "mountAll"

    .prologue
    const/4 v4, 0x1

    .line 108
    const-string v1, "MediaScannerReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestScan: path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mountAll="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    if-eqz p3, :cond_3

    .line 110
    invoke-direct {p0}, Lcom/android/providers/media/MediaScannerReceiver;->getMountedStorage()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "MediaScannerReceiver"

    const-string v2, "requestScan: New scan."

    invoke-static {v1, v2}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0}, Lcom/android/providers/media/MediaScannerReceiver;->clear()V

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/media/MediaScannerReceiver;->getMountedStorage()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerReceiver;->isAllMounted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    const-string v1, "MediaScannerReceiver"

    const-string v2, "requestScan: All are ready and starts to scan."

    invoke-static {v1, v2}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0}, Lcom/android/providers/media/MediaScannerReceiver;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    const-string v1, "external"

    invoke-direct {p0, p1, v1}, Lcom/android/providers/media/MediaScannerReceiver;->scan(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lcom/android/providers/media/MediaScannerReceiver;->clear()V

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 122
    :cond_2
    invoke-direct {p0}, Lcom/android/providers/media/MediaScannerReceiver;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/android/providers/media/MediaScannerReceiver;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 124
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 125
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 126
    invoke-direct {p0}, Lcom/android/providers/media/MediaScannerReceiver;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 130
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    const-string v1, "MediaScannerReceiver"

    const-string v2, "requestScan: Starts to scan the single sdcard."

    invoke-static {v1, v2}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v1, "external"

    invoke-direct {p0, p1, v1}, Lcom/android/providers/media/MediaScannerReceiver;->scan(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/android/providers/media/MediaScannerReceiver;->clear()V

    goto :goto_0
.end method

.method private scan(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "volume"

    .prologue
    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "volume"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/providers/media/MediaScannerService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 83
    return-void
.end method

.method private scanFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "path"

    .prologue
    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "filepath"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/providers/media/MediaScannerService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 90
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 45
    const-string v5, "internal"

    invoke-direct {p0, p1, v5}, Lcom/android/providers/media/MediaScannerReceiver;->scan(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    const-string v5, "external"

    invoke-direct {p0, p1, v5}, Lcom/android/providers/media/MediaScannerReceiver;->scan(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/providers/media/MediaScannerReceiver;->sScanInternalFinished:Z

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 50
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, path:Ljava/lang/String;
    const-string v5, "MediaScannerReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive: action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 59
    const-string v5, "first_boot_mounted"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 60
    .local v1, isBooting:Z
    if-eqz v1, :cond_2

    sget-boolean v5, Lcom/android/providers/media/MediaScannerReceiver;->sScanInternalFinished:Z

    if-nez v5, :cond_2

    .line 61
    const-string v5, "MediaScannerReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mounted before boot completed with path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :cond_2
    const-string v5, "mount_unmount_all"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 66
    .local v2, mountAll:Z
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerReceiver;->isStorageRemoved(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 67
    const/4 v2, 0x0

    .line 69
    :cond_3
    invoke-direct {p0, p1, v3, v2}, Lcom/android/providers/media/MediaScannerReceiver;->requestScan(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 70
    .end local v1           #isBooting:Z
    .end local v2           #mountAll:Z
    :cond_4
    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, p1, v3}, Lcom/android/providers/media/MediaScannerReceiver;->inScanDirectory(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    invoke-direct {p0, p1, v3}, Lcom/android/providers/media/MediaScannerReceiver;->scanFile(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
