.class public Ltmsdk/bg/module/aresengine/DataHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;
    }
.end annotation


# static fields
.field private static final ul:Landroid/os/Looper;


# instance fields
.field private um:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v1

    const-class v2, Ltmsdk/bg/module/aresengine/DataHandler;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltmsdkobf/ij;->bj(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    .line 27
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 28
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Ltmsdk/bg/module/aresengine/DataHandler;->ul:Landroid/os/Looper;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Ltmsdk/bg/module/aresengine/DataHandler;->ul:Landroid/os/Looper;

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/aresengine/DataHandler;->um:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 36
    return-void
.end method


# virtual methods
.method public final addCallback(Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 99
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/DataHandler;->um:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 42
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0xd80

    if-ne v8, v9, :cond_2

    .line 44
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ltmsdk/common/module/aresengine/FilterResult;

    .line 47
    .local v5, result:Ltmsdk/common/module/aresengine/FilterResult;
    iget-object v8, v5, Ltmsdk/common/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    .line 49
    .local v6, runnable:Ljava/lang/Runnable;
    instance-of v8, v6, Ljava/lang/Thread;

    if-eqz v8, :cond_0

    .line 50
    check-cast v6, Ljava/lang/Thread;

    .end local v6           #runnable:Ljava/lang/Runnable;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 52
    .restart local v6       #runnable:Ljava/lang/Runnable;
    :cond_0
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 56
    .end local v6           #runnable:Ljava/lang/Runnable;
    :cond_1
    iget-object v1, v5, Ltmsdk/common/module/aresengine/FilterResult;->mData:Ltmsdk/common/module/aresengine/TelephonyEntity;

    .line 57
    .local v1, data:Ltmsdk/common/module/aresengine/TelephonyEntity;
    iget v3, v5, Ltmsdk/common/module/aresengine/FilterResult;->mFilterfiled:I

    .line 58
    .local v3, filterfield:I
    iget v7, v5, Ltmsdk/common/module/aresengine/FilterResult;->mState:I

    .line 59
    .local v7, state:I
    iget-object v2, v5, Ltmsdk/common/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    .line 74
    .local v2, datas:[Ljava/lang/Object;
    iget-object v8, p0, Ltmsdk/bg/module/aresengine/DataHandler;->um:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;

    .line 75
    .local v0, callback:Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;
    invoke-interface {v0, v1, v3, v7, v2}, Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;->onCallback(Ltmsdk/common/module/aresengine/TelephonyEntity;II[Ljava/lang/Object;)V

    goto :goto_1

    .line 78
    .end local v0           #callback:Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;
    .end local v1           #data:Ltmsdk/common/module/aresengine/TelephonyEntity;
    .end local v2           #datas:[Ljava/lang/Object;
    .end local v3           #filterfield:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #result:Ltmsdk/common/module/aresengine/FilterResult;
    .end local v7           #state:I
    :cond_2
    return-void
.end method

.method public final removeCallback(Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 108
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/DataHandler;->um:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public declared-synchronized sendMessage(Ltmsdk/common/module/aresengine/FilterResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 86
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 87
    const/16 v1, 0xd80

    :try_start_0
    invoke-virtual {p0, v1}, Ltmsdk/bg/module/aresengine/DataHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 88
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
