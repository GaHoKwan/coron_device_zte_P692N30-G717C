.class public Lcom/zte/retrieve/cloud/account/AliveWithUIThread;
.super Ljava/lang/Thread;
.source "AliveWithUIThread.java"


# static fields
.field private static aliveThreadID:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/zte/retrieve/cloud/account/AliveWithUIThread;->aliveThreadID:J

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static cancelThread()V
    .locals 2

    .prologue
    .line 25
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/zte/retrieve/cloud/account/AliveWithUIThread;->aliveThreadID:J

    .line 26
    return-void
.end method


# virtual methods
.method protected isCanceled()Z
    .locals 4

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/zte/retrieve/cloud/account/AliveWithUIThread;->getId()J

    move-result-wide v0

    .line 31
    .local v0, id:J
    sget-wide v2, Lcom/zte/retrieve/cloud/account/AliveWithUIThread;->aliveThreadID:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 20
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 21
    invoke-virtual {p0}, Lcom/zte/retrieve/cloud/account/AliveWithUIThread;->getId()J

    move-result-wide v0

    sput-wide v0, Lcom/zte/retrieve/cloud/account/AliveWithUIThread;->aliveThreadID:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
