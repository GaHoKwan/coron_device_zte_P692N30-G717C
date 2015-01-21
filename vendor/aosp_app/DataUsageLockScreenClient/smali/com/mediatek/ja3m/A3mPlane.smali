.class public Lcom/mediatek/ja3m/A3mPlane;
.super Lcom/mediatek/ja3m/A3mShape;
.source "A3mPlane.java"

# interfaces
.implements Lcom/mediatek/j3m/Plane;


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter "cPtr"
    .parameter "cMemoryOwn"

    .prologue
    .line 17
    invoke-static {p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mPlane_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/mediatek/ja3m/A3mShape;-><init>(JZ)V

    .line 18
    iput-wide p1, p0, Lcom/mediatek/ja3m/A3mPlane;->swigCPtr:J

    .line 19
    return-void
.end method

.method protected static getCPtr(Lcom/mediatek/ja3m/A3mPlane;)J
    .locals 2
    .parameter "obj"

    .prologue
    .line 22
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mPlane;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 30
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mPlane;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/mediatek/ja3m/A3mShape;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ja3m/A3mShape;->swigCMemOwn:Z

    .line 33
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mPlane;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/mediatek/ja3m/A3mJni;->delete_A3mPlane(J)V

    .line 35
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ja3m/A3mPlane;->swigCPtr:J

    .line 37
    :cond_1
    invoke-super {p0}, Lcom/mediatek/ja3m/A3mShape;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/mediatek/ja3m/A3mPlane;->delete()V

    .line 27
    return-void
.end method
