.class final Ljava/util/concurrent/Phaser$QNode;
.super Ljava/lang/Object;
.source "Phaser.java"

# interfaces
.implements Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Phaser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "QNode"
.end annotation


# instance fields
.field final interruptible:Z

.field lastTime:J

.field nanos:J

.field next:Ljava/util/concurrent/Phaser$QNode;

.field final phase:I

.field final phaser:Ljava/util/concurrent/Phaser;

.field volatile thread:Ljava/lang/Thread;

.field final timed:Z

.field wasInterrupted:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/Phaser;IZZJ)V
    .locals 2
    .parameter "phaser"
    .parameter "phase"
    .parameter "interruptible"
    .parameter "timed"
    .parameter "nanos"

    .prologue
    .line 1073
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1074
    iput-object p1, p0, Ljava/util/concurrent/Phaser$QNode;->phaser:Ljava/util/concurrent/Phaser;

    .line 1075
    iput p2, p0, Ljava/util/concurrent/Phaser$QNode;->phase:I

    .line 1076
    iput-boolean p3, p0, Ljava/util/concurrent/Phaser$QNode;->interruptible:Z

    .line 1077
    iput-wide p5, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    .line 1078
    iput-boolean p4, p0, Ljava/util/concurrent/Phaser$QNode;->timed:Z

    .line 1079
    if-eqz p4, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Ljava/util/concurrent/Phaser$QNode;->lastTime:J

    .line 1080
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    .line 1081
    return-void

    .line 1079
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public block()Z
    .locals 4

    .prologue
    .line 1111
    invoke-virtual {p0}, Ljava/util/concurrent/Phaser$QNode;->isReleasable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1112
    const/4 v0, 0x1

    .line 1117
    :goto_0
    return v0

    .line 1113
    :cond_0
    iget-boolean v0, p0, Ljava/util/concurrent/Phaser$QNode;->timed:Z

    if-nez v0, :cond_2

    .line 1114
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 1117
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/Phaser$QNode;->isReleasable()Z

    move-result v0

    goto :goto_0

    .line 1115
    :cond_2
    iget-wide v0, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1116
    iget-wide v0, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_1
.end method

.method public isReleasable()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 1084
    iget-object v3, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    if-nez v3, :cond_0

    .line 1107
    :goto_0
    return v2

    .line 1086
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/Phaser$QNode;->phaser:Ljava/util/concurrent/Phaser;

    invoke-virtual {v3}, Ljava/util/concurrent/Phaser;->getPhase()I

    move-result v3

    iget v4, p0, Ljava/util/concurrent/Phaser$QNode;->phase:I

    if-eq v3, v4, :cond_1

    .line 1087
    iput-object v7, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    goto :goto_0

    .line 1090
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1091
    iput-boolean v2, p0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    .line 1092
    :cond_2
    iget-boolean v3, p0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Ljava/util/concurrent/Phaser$QNode;->interruptible:Z

    if-eqz v3, :cond_3

    .line 1093
    iput-object v7, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    goto :goto_0

    .line 1096
    :cond_3
    iget-boolean v3, p0, Ljava/util/concurrent/Phaser$QNode;->timed:Z

    if-eqz v3, :cond_5

    .line 1097
    iget-wide v3, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    cmp-long v3, v3, v8

    if-lez v3, :cond_4

    .line 1098
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1099
    .local v0, now:J
    iget-wide v3, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    iget-wide v5, p0, Ljava/util/concurrent/Phaser$QNode;->lastTime:J

    sub-long v5, v0, v5

    sub-long/2addr v3, v5

    iput-wide v3, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    .line 1100
    iput-wide v0, p0, Ljava/util/concurrent/Phaser$QNode;->lastTime:J

    .line 1102
    .end local v0           #now:J
    :cond_4
    iget-wide v3, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    cmp-long v3, v3, v8

    if-gtz v3, :cond_5

    .line 1103
    iput-object v7, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    goto :goto_0

    .line 1107
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method
