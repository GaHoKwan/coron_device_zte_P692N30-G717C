.class public Ltmsdkobf/ig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/ig$a;
    }
.end annotation


# static fields
.field private static qQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ltmsdkobf/ig$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static qR:Ltmsdkobf/ij;

.field public static volatile qS:Ltmsdkobf/lm;

.field private static qT:Landroid/os/MemoryFile;

.field private static qU:Z

.field private static final qV:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Ltmsdkobf/ig;->qQ:Ljava/util/List;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Ltmsdkobf/ig;->qS:Ltmsdkobf/lm;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltmsdkobf/ig;->qV:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized a(Ltmsdkobf/ig$a;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 82
    const-class v1, Ltmsdkobf/ig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdkobf/ig;->qQ:Ljava/util/List;

    invoke-static {v0}, Ltmsdkobf/ig;->e(Ljava/util/List;)V

    .line 83
    sget-object v0, Ltmsdkobf/ig;->qQ:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit v1

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ltmsdkobf/ii;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 132
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v0

    .line 133
    .local v0, m:Ltmsdkobf/ij;
    iget v1, p0, Ltmsdkobf/ii;->qX:I

    iget-object v2, p0, Ltmsdkobf/ii;->qW:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, v2}, Ltmsdkobf/ij;->a(ILjava/lang/Runnable;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static declared-synchronized a(Ltmsdkobf/lm;)V
    .locals 6
    .parameter "adapter"

    .prologue
    .line 87
    const-class v4, Ltmsdkobf/ig;

    monitor-enter v4

    :try_start_0
    sget-object v3, Ltmsdkobf/ig;->qS:Ltmsdkobf/lm;

    if-eqz v3, :cond_0

    .line 88
    const-string v3, "SdkContextInternal"

    const-string v5, "The dual sim adapter is set before"

    invoke-static {v3, v5}, Ltmsdk/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    :cond_0
    sput-object p0, Ltmsdkobf/ig;->qS:Ltmsdkobf/lm;

    .line 91
    sget-object v3, Ltmsdkobf/ig;->qQ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 92
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ltmsdkobf/ig$a;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/ig$a;

    .line 93
    .local v1, observer:Ltmsdkobf/ig$a;
    if-eqz v1, :cond_1

    .line 96
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ltmsdkobf/ig$a;->handleSdkContextEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 87
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Ltmsdkobf/ig$a;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ltmsdkobf/ig$a;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 98
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    sget-object v3, Ltmsdkobf/ig;->qQ:Ljava/util/List;

    invoke-static {v3}, Ltmsdkobf/ig;->e(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    monitor-exit v4

    return-void
.end method

.method public static cL()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 57
    const-class v2, Ltmsdk/common/TMSDKContext;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 58
    .local v0, contextClassNameBuffer:[B
    new-array v1, v6, [B

    array-length v2, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 60
    .local v1, contextClassNameLenBuffer:[B
    new-instance v2, Landroid/os/MemoryFile;

    const-string v3, "tmsdk2-jni-context"

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ltmsdkobf/ig;->qT:Landroid/os/MemoryFile;

    .line 63
    sget-object v2, Ltmsdkobf/ig;->qT:Landroid/os/MemoryFile;

    invoke-virtual {v2, v1, v5, v5, v6}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 64
    sget-object v2, Ltmsdkobf/ig;->qT:Landroid/os/MemoryFile;

    array-length v3, v0

    invoke-virtual {v2, v0, v5, v6, v3}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 66
    invoke-static {}, Ltmsdkobf/ig;->cM()V

    .line 67
    return-void
.end method

.method public static cM()V
    .locals 3

    .prologue
    .line 70
    sget-object v2, Ltmsdkobf/ig;->qV:Ljava/lang/Object;

    monitor-enter v2

    .line 71
    :try_start_0
    sget-boolean v1, Ltmsdkobf/ig;->qU:Z

    if-eqz v1, :cond_0

    .line 72
    monitor-exit v2

    .line 79
    .local v0, libraryName:Ljava/lang/String;
    :goto_0
    return-void

    .line 74
    .end local v0           #libraryName:Ljava/lang/String;
    :cond_0
    const-string v1, "sdk_libname"

    invoke-static {v1}, Ltmsdk/common/TMSDKContext;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .restart local v0       #libraryName:Ljava/lang/String;
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Ltmsdkobf/kc;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    const/4 v1, 0x1

    sput-boolean v1, Ltmsdkobf/ig;->qU:Z

    .line 78
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static declared-synchronized cN()Ltmsdkobf/ij;
    .locals 7

    .prologue
    .line 111
    const-class v4, Ltmsdkobf/ig;

    monitor-enter v4

    :try_start_0
    sget-object v3, Ltmsdkobf/ig;->qR:Ltmsdkobf/ij;

    if-nez v3, :cond_0

    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, subIdent:I
    const/4 v3, 0x1

    invoke-static {}, Ltmsdk/common/TMSDKContext;->processType()I

    move-result v5

    if-ne v3, v5, :cond_1

    .line 114
    const/4 v2, 0x1

    .line 121
    :goto_0
    const-wide v5, 0x100000000L

    invoke-static {v2, v5, v6}, Ltmsdkobf/ky$d;->a(IJ)J

    move-result-wide v0

    .line 122
    .local v0, indet:J
    new-instance v3, Ltmsdkobf/ij;

    const-string v5, "com.tmsdk.common"

    invoke-direct {v3, v0, v1, v5}, Ltmsdkobf/ij;-><init>(JLjava/lang/String;)V

    sput-object v3, Ltmsdkobf/ig;->qR:Ltmsdkobf/ij;

    .line 124
    :cond_0
    sget-object v3, Ltmsdkobf/ig;->qR:Ltmsdkobf/ij;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v3

    .line 115
    .end local v0           #indet:J
    :cond_1
    const/4 v3, 0x2

    :try_start_1
    invoke-static {}, Ltmsdk/common/TMSDKContext;->processType()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-ne v3, v5, :cond_2

    .line 116
    const/4 v2, 0x2

    goto :goto_0

    .line 118
    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static e(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, refList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<TT;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 103
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<TT;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 108
    :cond_1
    return-void
.end method
