.class public final Ltmsdkobf/if;
.super Ltmsdkobf/ib$b;
.source "SourceFile"


# static fields
.field private static qO:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ltmsdkobf/ic;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile qP:Ltmsdkobf/if;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Ltmsdkobf/if;->qO:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 16
    const/4 v0, 0x0

    sput-object v0, Ltmsdkobf/if;->qP:Ltmsdkobf/if;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ltmsdkobf/ib$b;-><init>()V

    .line 40
    return-void
.end method

.method public static a(Ltmsdkobf/ic;)Z
    .locals 1
    .parameter "handler"

    .prologue
    .line 31
    sget-object v0, Ltmsdkobf/if;->qO:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static cK()Ltmsdkobf/if;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Ltmsdkobf/if;->qP:Ltmsdkobf/if;

    if-nez v0, :cond_1

    .line 20
    const-class v1, Ltmsdkobf/if;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Ltmsdkobf/if;->qP:Ltmsdkobf/if;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ltmsdkobf/if;

    invoke-direct {v0}, Ltmsdkobf/if;-><init>()V

    sput-object v0, Ltmsdkobf/if;->qP:Ltmsdkobf/if;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Ltmsdkobf/if;->qP:Ltmsdkobf/if;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 44
    return-object p0
.end method

.method public sendMessage(Ltmsdk/common/DataEntity;)Ltmsdk/common/DataEntity;
    .locals 5
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p1}, Ltmsdk/common/DataEntity;->what()I

    move-result v3

    .line 51
    .local v3, what:I
    const/4 v2, 0x0

    .line 52
    .local v2, result:Ltmsdk/common/DataEntity;
    sget-object v4, Ltmsdkobf/if;->qO:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/ic;

    .line 54
    .local v0, handler:Ltmsdkobf/ic;
    invoke-interface {v0, v3}, Ltmsdkobf/ic;->isMatch(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    invoke-interface {v0, p1}, Ltmsdkobf/ic;->onProcessing(Ltmsdk/common/DataEntity;)Ltmsdk/common/DataEntity;

    move-result-object v2

    .line 62
    .end local v0           #handler:Ltmsdkobf/ic;
    :cond_1
    return-object v2
.end method
