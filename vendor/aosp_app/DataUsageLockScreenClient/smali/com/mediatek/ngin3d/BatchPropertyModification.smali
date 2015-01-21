.class public Lcom/mediatek/ngin3d/BatchPropertyModification;
.super Lcom/mediatek/ngin3d/Transaction;
.source "BatchPropertyModification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/BatchPropertyModification$PropertyModification;
    }
.end annotation


# instance fields
.field private mDone:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Transaction;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/ngin3d/BatchPropertyModification;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/mediatek/ngin3d/BatchPropertyModification;->mDone:Z

    return p1
.end method


# virtual methods
.method public addPropertyModification(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)V
    .locals 2
    .parameter "target"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 73
    invoke-static {}, Lcom/mediatek/ngin3d/BatchPropertyModification;->getModificationList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ngin3d/BatchPropertyModification$PropertyModification;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/ngin3d/BatchPropertyModification$PropertyModification;-><init>(Lcom/mediatek/ngin3d/BatchPropertyModification;Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Property;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public waitForCompletion()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 77
    monitor-enter p0

    .line 78
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/BatchPropertyModification;->mDone:Z

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    return-void
.end method
