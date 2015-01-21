.class public Lcom/mediatek/ja3m/A3mTexture2D;
.super Ljava/lang/Object;
.source "A3mTexture2D.java"

# interfaces
.implements Lcom/mediatek/j3m/Texture2D;


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
    iput-boolean p3, p0, Lcom/mediatek/ja3m/A3mTexture2D;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/mediatek/ja3m/A3mTexture2D;->swigCPtr:J

    .line 20
    return-void
.end method

.method protected static getCPtr(Lcom/mediatek/ja3m/A3mTexture2D;)J
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mTexture2D;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mTexture2D;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 32
    iget-boolean v0, p0, Lcom/mediatek/ja3m/A3mTexture2D;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ja3m/A3mTexture2D;->swigCMemOwn:Z

    .line 34
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mTexture2D;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/mediatek/ja3m/A3mJni;->delete_A3mTexture2D(J)V

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ja3m/A3mTexture2D;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/mediatek/ja3m/A3mTexture2D;->delete()V

    .line 28
    return-void
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mTexture2D;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mTexture2D_getHeight(JLcom/mediatek/ja3m/A3mTexture2D;)I

    move-result v0

    return v0
.end method

.method public getHorizontalWrap()I
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mTexture2D;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mTexture2D_getHorizontalWrap(JLcom/mediatek/ja3m/A3mTexture2D;)I

    move-result v0

    return v0
.end method

.method public getMagFilter()I
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mTexture2D;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mTexture2D_getMagFilter(JLcom/mediatek/ja3m/A3mTexture2D;)I

    move-result v0

    return v0
.end method

.method public getMemoryUsage()I
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mTexture2D;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mTexture2D_getMemoryUsage(JLcom/mediatek/ja3m/A3mTexture2D;)I

    move-result v0

    return v0
.end method

.method public getMinFilter()I
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mTexture2D;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mTexture2D_getMinFilter(JLcom/mediatek/ja3m/A3mTexture2D;)I

    move-result v0

    return v0
.end method

.method public getOpenGlTextureId()I
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mTexture2D;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mTexture2D_getOpenGlTextureId(JLcom/mediatek/ja3m/A3mTexture2D;)I

    move-result v0

    return v0
.end method

.method public getVerticalWrap()I
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mTexture2D;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mTexture2D_getVerticalWrap(JLcom/mediatek/ja3m/A3mTexture2D;)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mTexture2D;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/mediatek/ja3m/A3mJni;->A3mTexture2D_getWidth(JLcom/mediatek/ja3m/A3mTexture2D;)I

    move-result v0

    return v0
.end method

.method public setHorizontalWrap(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mTexture2D;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mTexture2D_setHorizontalWrap(JLcom/mediatek/ja3m/A3mTexture2D;I)V

    .line 50
    return-void
.end method

.method public setMagFilter(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mTexture2D;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mTexture2D_setMagFilter(JLcom/mediatek/ja3m/A3mTexture2D;I)V

    .line 74
    return-void
.end method

.method public setMinFilter(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mTexture2D;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mTexture2D_setMinFilter(JLcom/mediatek/ja3m/A3mTexture2D;I)V

    .line 66
    return-void
.end method

.method public setVerticalWrap(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/mediatek/ja3m/A3mTexture2D;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/mediatek/ja3m/A3mJni;->A3mTexture2D_setVerticalWrap(JLcom/mediatek/ja3m/A3mTexture2D;I)V

    .line 58
    return-void
.end method
