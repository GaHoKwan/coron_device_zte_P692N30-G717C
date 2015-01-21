.class public Lcom/mediatek/ja3m/A3mRenderBlockGroup;
.super Lcom/mediatek/ja3m/A3mRenderBlockBase;
.source "A3mRenderBlockGroup.java"

# interfaces
.implements Lcom/mediatek/j3m/RenderBlockGroup;


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter "cPtr"
    .parameter "cMemoryOwn"

    .prologue
    .line 17
    invoke-static {p1, p2}, Lcom/mediatek/ja3m/A3mJni;->A3mRenderBlockGroup_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/mediatek/ja3m/A3mRenderBlockBase;-><init>(JZ)V

    .line 18
    iput-wide p1, p0, Lcom/mediatek/ja3m/A3mRenderBlockGroup;->swigCPtr:J

    .line 19
    return-void
.end method

.method protected static getCPtr(Lcom/mediatek/ja3m/A3mRenderBlockGroup;)J
    .locals 2
    .parameter "obj"

    .prologue
    .line 22
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlockGroup;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public addBlock(Lcom/mediatek/j3m/RenderBlockBase;)V
    .locals 6
    .parameter "block"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlockGroup;->swigCPtr:J

    move-object v2, p1

    check-cast v2, Lcom/mediatek/ja3m/A3mRenderBlockBase;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mRenderBlockBase;->getCPtr(Lcom/mediatek/ja3m/A3mRenderBlockBase;)J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lcom/mediatek/ja3m/A3mRenderBlockBase;

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mRenderBlockGroup_addBlock(JLcom/mediatek/ja3m/A3mRenderBlockGroup;JLcom/mediatek/ja3m/A3mRenderBlockBase;)V

    .line 42
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 30
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlockGroup;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/mediatek/ja3m/A3mRenderBlockBase;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ja3m/A3mRenderBlockBase;->swigCMemOwn:Z

    .line 33
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlockGroup;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/mediatek/ja3m/A3mJni;->delete_A3mRenderBlockGroup(J)V

    .line 35
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlockGroup;->swigCPtr:J

    .line 37
    :cond_1
    invoke-super {p0}, Lcom/mediatek/ja3m/A3mRenderBlockBase;->delete()V
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
    invoke-virtual {p0}, Lcom/mediatek/ja3m/A3mRenderBlockGroup;->delete()V

    .line 27
    return-void
.end method

.method public removeBlock(Lcom/mediatek/j3m/RenderBlockBase;)V
    .locals 6
    .parameter "block"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderBlockGroup;->swigCPtr:J

    move-object v2, p1

    check-cast v2, Lcom/mediatek/ja3m/A3mRenderBlockBase;

    invoke-static {v2}, Lcom/mediatek/ja3m/A3mRenderBlockBase;->getCPtr(Lcom/mediatek/ja3m/A3mRenderBlockBase;)J

    move-result-wide v3

    move-object v5, p1

    check-cast v5, Lcom/mediatek/ja3m/A3mRenderBlockBase;

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/mediatek/ja3m/A3mJni;->A3mRenderBlockGroup_removeBlock(JLcom/mediatek/ja3m/A3mRenderBlockGroup;JLcom/mediatek/ja3m/A3mRenderBlockBase;)V

    .line 46
    return-void
.end method
