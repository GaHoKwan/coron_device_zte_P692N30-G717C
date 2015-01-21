.class public Lcom/mediatek/ngin3d/FixedValue;
.super Lcom/mediatek/ngin3d/Value;
.source "FixedValue.java"

# interfaces
.implements Lcom/mediatek/ngin3d/utils/JSON$ToJson;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mediatek/ngin3d/Value",
        "<TT;>;",
        "Lcom/mediatek/ngin3d/utils/JSON$ToJson;"
    }
.end annotation


# instance fields
.field protected mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, this:Lcom/mediatek/ngin3d/FixedValue;,"Lcom/mediatek/ngin3d/FixedValue<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Value;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/mediatek/ngin3d/FixedValue;->mValue:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .parameter
    .parameter "dirty"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lcom/mediatek/ngin3d/FixedValue;,"Lcom/mediatek/ngin3d/FixedValue<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p2}, Lcom/mediatek/ngin3d/Value;-><init>(Z)V

    .line 55
    iput-object p1, p0, Lcom/mediatek/ngin3d/FixedValue;->mValue:Ljava/lang/Object;

    .line 56
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/mediatek/ngin3d/FixedValue;,"Lcom/mediatek/ngin3d/FixedValue<TT;>;"
    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/FixedValue;->mValue:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAndClean()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lcom/mediatek/ngin3d/FixedValue;,"Lcom/mediatek/ngin3d/FixedValue<TT;>;"
    monitor-enter p0

    .line 66
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/ngin3d/Value;->mDirty:Z

    .line 67
    iget-object v0, p0, Lcom/mediatek/ngin3d/FixedValue;->mValue:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public set(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lcom/mediatek/ngin3d/FixedValue;,"Lcom/mediatek/ngin3d/FixedValue<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    .line 73
    :try_start_0
    iput-object p1, p0, Lcom/mediatek/ngin3d/FixedValue;->mValue:Ljava/lang/Object;

    .line 74
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAndDirty(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/mediatek/ngin3d/FixedValue;,"Lcom/mediatek/ngin3d/FixedValue<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    const/4 v1, 0x1

    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iput-object p1, p0, Lcom/mediatek/ngin3d/FixedValue;->mValue:Ljava/lang/Object;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ngin3d/Value;->mDirty:Z

    .line 82
    monitor-exit p0

    return v1

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    .local p0, this:Lcom/mediatek/ngin3d/FixedValue;,"Lcom/mediatek/ngin3d/FixedValue<TT;>;"
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/FixedValue;->mValue:Ljava/lang/Object;

    invoke-static {v0}, Lcom/mediatek/ngin3d/utils/JSON;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    .local p0, this:Lcom/mediatek/ngin3d/FixedValue;,"Lcom/mediatek/ngin3d/FixedValue<TT;>;"
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/Value;->mDirty:Z

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/FixedValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/FixedValue;->mValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 92
    const-string v0, "null"

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ngin3d/FixedValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
