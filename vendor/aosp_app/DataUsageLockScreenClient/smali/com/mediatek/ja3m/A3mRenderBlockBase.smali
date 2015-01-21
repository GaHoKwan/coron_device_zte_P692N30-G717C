.class public Lcom/mediatek/ja3m/A3mRenderBlockBase;
.super Ljava/lang/Object;
.source "A3mRenderBlockBase.java"

# interfaces
.implements Lcom/mediatek/j3m/RenderBlockBase;


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
    iput-boolean p3, p0, Lcom/mediatek/ja3m/A3mRenderBlockBase;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/mediatek/ja3m/A3mRenderBlockBase;->swigCPtr:J

    .line 20
    return-void
.end method

.method protected static getCPtr(Lcom/mediatek/ja3m/A3mRenderBlockBase;)J
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlockBase;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 31
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlockBase;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 32
    iget-boolean v0, p0, Lcom/mediatek/ja3m/A3mRenderBlockBase;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ja3m/A3mRenderBlockBase;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlockBase;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/mediatek/ja3m/A3mJni;->delete_A3mRenderBlockBase(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlockBase;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/mediatek/ja3m/A3mRenderBlockBase;->delete()V

    .line 28
    return-void
.end method

.method public render()V
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlockBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mRenderBlockBase_render(JLcom/mediatek/ja3m/A3mRenderBlockBase;)V

    .line 42
    return-void
.end method

.method public setStereo(FF)V
    .locals 2
    .parameter "zFocal"
    .parameter "eyeSep"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlockBase;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mRenderBlockBase_setStereo(JLcom/mediatek/ja3m/A3mRenderBlockBase;FF)V

    .line 50
    return-void
.end method

.method public update(F)V
    .locals 2
    .parameter "time"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlockBase;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mRenderBlockBase_update(JLcom/mediatek/ja3m/A3mRenderBlockBase;F)V

    .line 46
    return-void
.end method
