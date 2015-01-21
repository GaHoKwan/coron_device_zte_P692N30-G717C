.class public Lcom/mediatek/ja3m/A3mAnimation;
.super Ljava/lang/Object;
.source "A3mAnimation.java"

# interfaces
.implements Lcom/mediatek/j3m/Animation;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 0
    .parameter "cPtr"
    .parameter "cMemoryOwn"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p3, p0, Lcom/mediatek/ja3m/A3mAnimation;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/mediatek/ja3m/A3mAnimation;->swigCPtr:J

    .line 20
    return-void
.end method

.method protected static getCPtr(Lcom/mediatek/ja3m/A3mAnimation;)J
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimation;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public apply(F)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimation;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimation_apply(JLcom/mediatek/ja3m/A3mAnimation;F)V

    .line 42
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 31
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimation;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 32
    iget-boolean v0, p0, Lcom/mediatek/ja3m/A3mAnimation;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ja3m/A3mAnimation;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimation;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/mediatek/ja3m/A3mJni;->delete_A3mAnimation(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimation;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/mediatek/ja3m/A3mAnimation;->delete()V

    .line 28
    return-void
.end method

.method public getEnd()F
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimation;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimation_getEnd(JLcom/mediatek/ja3m/A3mAnimation;)F

    move-result v0

    return v0
.end method

.method public getLength()F
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimation;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimation_getLength(JLcom/mediatek/ja3m/A3mAnimation;)F

    move-result v0

    return v0
.end method

.method public getStart()F
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mAnimation;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mAnimation_getStart(JLcom/mediatek/ja3m/A3mAnimation;)F

    move-result v0

    return v0
.end method
