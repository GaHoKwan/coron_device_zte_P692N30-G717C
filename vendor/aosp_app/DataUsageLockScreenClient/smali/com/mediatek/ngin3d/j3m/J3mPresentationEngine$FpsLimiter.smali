.class Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;
.super Ljava/lang/Object;
.source "J3mPresentationEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FpsLimiter"
.end annotation


# instance fields
.field private mLastFrameTime:I

.field private mTickTime:J

.field final synthetic this$0:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;->this$0:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1060
    invoke-direct {p0}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;->calculateAndFixFrameTime()V

    return-void
.end method

.method private calculateAndFixFrameTime()V
    .locals 4

    .prologue
    .line 1084
    monitor-enter p0

    .line 1085
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;->this$0:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    #getter for: Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mFpsLimiter:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;
    invoke-static {v2}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->access$100(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;->update()V

    .line 1086
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;->this$0:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    #getter for: Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mFpsLimiter:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;
    invoke-static {v2}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->access$100(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1087
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    iget-object v2, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;->this$0:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    #getter for: Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mMaxFPS:I
    invoke-static {v2}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->access$200(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)I

    move-result v2

    if-lez v2, :cond_0

    .line 1090
    const/16 v2, 0x3e8

    iget-object v3, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;->this$0:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    #getter for: Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mMaxFPS:I
    invoke-static {v3}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->access$200(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)I

    move-result v3

    div-int v1, v2, v3

    .line 1091
    .local v1, period:I
    iget v2, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;->mLastFrameTime:I

    if-ge v2, v1, :cond_0

    .line 1093
    :try_start_1
    iget v2, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;->mLastFrameTime:I

    sub-int v2, v1, v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1099
    .end local v1           #period:I
    :cond_0
    :goto_0
    return-void

    .line 1087
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1094
    .restart local v1       #period:I
    :catch_0
    move-exception v0

    .line 1095
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method update()V
    .locals 6

    .prologue
    .line 1065
    invoke-static {}, Lcom/mediatek/ngin3d/animation/MasterClock;->getTime()J

    move-result-wide v0

    .line 1066
    .local v0, now:J
    iget-wide v2, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;->mTickTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1067
    iget-wide v2, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;->mTickTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    iput v2, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;->mLastFrameTime:I

    .line 1069
    :cond_0
    iput-wide v0, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;->mTickTime:J

    .line 1070
    return-void
.end method

.method waitForFrameTime()I
    .locals 2

    .prologue
    .line 1073
    monitor-enter p0

    .line 1075
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;->this$0:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;

    #getter for: Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->mFpsLimiter:Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;
    invoke-static {v1}, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;->access$100(Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine;)Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1079
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1080
    iget v1, p0, Lcom/mediatek/ngin3d/j3m/J3mPresentationEngine$FpsLimiter;->mLastFrameTime:I

    return v1

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1079
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
