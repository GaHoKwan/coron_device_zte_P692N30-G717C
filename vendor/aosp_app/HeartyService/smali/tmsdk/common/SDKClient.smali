.class public final Ltmsdk/common/SDKClient;
.super Ltmsdk/common/ISDKClient$Stub;
.source "SourceFile"


# static fields
.field private static qO:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ltmsdk/common/MessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile xf:Ltmsdk/common/SDKClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Ltmsdk/common/SDKClient;->qO:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 13
    const/4 v0, 0x0

    sput-object v0, Ltmsdk/common/SDKClient;->xf:Ltmsdk/common/SDKClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ltmsdk/common/ISDKClient$Stub;-><init>()V

    .line 37
    return-void
.end method

.method public static addMessageHandler(Ltmsdk/common/MessageHandler;)Z
    .locals 1
    .parameter "handler"

    .prologue
    .line 28
    sget-object v0, Ltmsdk/common/SDKClient;->qO:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Ltmsdk/common/SDKClient;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Ltmsdk/common/SDKClient;->xf:Ltmsdk/common/SDKClient;

    if-nez v0, :cond_1

    .line 17
    const-class v1, Ltmsdk/common/SDKClient;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Ltmsdk/common/SDKClient;->xf:Ltmsdk/common/SDKClient;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Ltmsdk/common/SDKClient;

    invoke-direct {v0}, Ltmsdk/common/SDKClient;-><init>()V

    sput-object v0, Ltmsdk/common/SDKClient;->xf:Ltmsdk/common/SDKClient;

    .line 21
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Ltmsdk/common/SDKClient;->xf:Ltmsdk/common/SDKClient;

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static removeMessageHandler(Ltmsdk/common/MessageHandler;)Z
    .locals 1
    .parameter "handler"

    .prologue
    .line 32
    sget-object v0, Ltmsdk/common/SDKClient;->qO:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
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
    .line 46
    invoke-virtual {p1}, Ltmsdk/common/DataEntity;->what()I

    move-result v3

    .line 48
    .local v3, what:I
    const/4 v2, 0x0

    .line 49
    .local v2, result:Ltmsdk/common/DataEntity;
    sget-object v4, Ltmsdk/common/SDKClient;->qO:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/common/MessageHandler;

    .line 51
    .local v0, handler:Ltmsdk/common/MessageHandler;
    invoke-interface {v0, v3}, Ltmsdk/common/MessageHandler;->isMatch(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    invoke-interface {v0, p1}, Ltmsdk/common/MessageHandler;->onProcessing(Ltmsdk/common/DataEntity;)Ltmsdk/common/DataEntity;

    move-result-object v2

    .line 59
    .end local v0           #handler:Ltmsdk/common/MessageHandler;
    :cond_1
    return-object v2
.end method
