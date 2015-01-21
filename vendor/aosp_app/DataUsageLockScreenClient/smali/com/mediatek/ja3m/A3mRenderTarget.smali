.class public Lcom/mediatek/ja3m/A3mRenderTarget;
.super Ljava/lang/Object;
.source "A3mRenderTarget.java"

# interfaces
.implements Lcom/mediatek/j3m/RenderTarget;


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
    iput-boolean p3, p0, Lcom/mediatek/ja3m/A3mRenderTarget;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/mediatek/ja3m/A3mRenderTarget;->swigCPtr:J

    .line 20
    return-void
.end method

.method protected static getCPtr(Lcom/mediatek/ja3m/A3mRenderTarget;)J
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderTarget;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderTarget;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 32
    iget-boolean v0, p0, Lcom/mediatek/ja3m/A3mRenderTarget;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ja3m/A3mRenderTarget;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderTarget;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/mediatek/ja3m/A3mJni;->delete_A3mRenderTarget(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ja3m/A3mRenderTarget;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/mediatek/ja3m/A3mRenderTarget;->delete()V

    .line 28
    return-void
.end method

.method public getColourTexture()Lcom/mediatek/j3m/Texture2D;
    .locals 4

    .prologue
    .line 41
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mRenderTarget;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mRenderTarget_getColourTexture(JLcom/mediatek/ja3m/A3mRenderTarget;)J

    move-result-wide v0

    .line 42
    .local v0, cPtr:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/mediatek/ja3m/A3mTexture2D;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/mediatek/ja3m/A3mTexture2D;-><init>(JZ)V

    goto :goto_0
.end method

.method public getDepthTexture()Lcom/mediatek/j3m/Texture2D;
    .locals 4

    .prologue
    .line 46
    iget-wide v2, p0, Lcom/mediatek/ja3m/A3mRenderTarget;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mRenderTarget_getDepthTexture(JLcom/mediatek/ja3m/A3mRenderTarget;)J

    move-result-wide v0

    .line 47
    .local v0, cPtr:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/mediatek/ja3m/A3mTexture2D;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/mediatek/ja3m/A3mTexture2D;-><init>(JZ)V

    goto :goto_0
.end method
