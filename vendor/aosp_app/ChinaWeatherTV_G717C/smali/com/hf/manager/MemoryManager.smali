.class public Lcom/hf/manager/MemoryManager;
.super Ljava/lang/Object;
.source "MemoryManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MemoryManager"

.field private static sInstance:Lcom/hf/manager/MemoryManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static final declared-synchronized getInstance(Landroid/content/Context;)Lcom/hf/manager/MemoryManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 15
    const-class v1, Lcom/hf/manager/MemoryManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hf/manager/MemoryManager;->sInstance:Lcom/hf/manager/MemoryManager;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/hf/manager/MemoryManager;

    invoke-direct {v0, p0}, Lcom/hf/manager/MemoryManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hf/manager/MemoryManager;->sInstance:Lcom/hf/manager/MemoryManager;

    .line 19
    :cond_0
    sget-object v0, Lcom/hf/manager/MemoryManager;->sInstance:Lcom/hf/manager/MemoryManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public isEmpty()Z
    .locals 8

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, flag:Z
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 28
    .local v3, mDataFileStats:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v1, v4, v6

    .line 29
    .local v1, freeStorage:J
    const-string v4, "MemoryManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "freeStorage = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-wide/32 v4, 0xf00000

    cmp-long v4, v1, v4

    if-gtz v4, :cond_0

    .line 31
    const/4 v0, 0x1

    .line 33
    :cond_0
    return v0
.end method
