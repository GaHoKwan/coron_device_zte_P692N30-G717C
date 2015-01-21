.class public abstract Lcom/mediatek/ngin3d/Value;
.super Ljava/lang/Object;
.source "Value.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mDirty:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    .local p0, this:Lcom/mediatek/ngin3d/Value;,"Lcom/mediatek/ngin3d/Value<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/Value;-><init>(Z)V

    .line 49
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "dirty"

    .prologue
    .line 51
    .local p0, this:Lcom/mediatek/ngin3d/Value;,"Lcom/mediatek/ngin3d/Value<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean p1, p0, Lcom/mediatek/ngin3d/Value;->mDirty:Z

    .line 53
    return-void
.end method


# virtual methods
.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getAndClean()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 56
    .local p0, this:Lcom/mediatek/ngin3d/Value;,"Lcom/mediatek/ngin3d/Value<TT;>;"
    monitor-enter p0

    .line 57
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/Value;->mDirty:Z

    monitor-exit p0

    return v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract set(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract setAndDirty(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public setDirty()V
    .locals 1

    .prologue
    .line 62
    .local p0, this:Lcom/mediatek/ngin3d/Value;,"Lcom/mediatek/ngin3d/Value<TT;>;"
    monitor-enter p0

    .line 63
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/ngin3d/Value;->mDirty:Z

    .line 64
    monitor-exit p0

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
