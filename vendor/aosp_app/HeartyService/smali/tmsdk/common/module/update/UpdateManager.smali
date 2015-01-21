.class public final Ltmsdk/common/module/update/UpdateManager;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"


# instance fields
.field private BQ:Ltmsdk/common/module/update/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    return-void
.end method


# virtual methods
.method public addObserver(JLtmsdk/common/module/update/IUpdateObserver;)V
    .locals 1
    .parameter "update_flag"
    .parameter "observer"

    .prologue
    .line 83
    iget-object v0, p0, Ltmsdk/common/module/update/UpdateManager;->BQ:Ltmsdk/common/module/update/a;

    invoke-virtual {v0, p1, p2, p3}, Ltmsdk/common/module/update/a;->addObserver(JLtmsdk/common/module/update/IUpdateObserver;)V

    .line 84
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Ltmsdk/common/module/update/UpdateManager;->BQ:Ltmsdk/common/module/update/a;

    invoke-virtual {v0}, Ltmsdk/common/module/update/a;->cancel()V

    .line 72
    return-void
.end method

.method public check(JLtmsdk/common/module/update/ICheckListener;)V
    .locals 1
    .parameter "checkFlag"
    .parameter "checkListener"

    .prologue
    .line 41
    iget-object v0, p0, Ltmsdk/common/module/update/UpdateManager;->BQ:Ltmsdk/common/module/update/a;

    invoke-virtual {v0, p1, p2, p3}, Ltmsdk/common/module/update/a;->check(JLtmsdk/common/module/update/ICheckListener;)V

    .line 42
    return-void
.end method

.method public check(Ljava/util/ArrayList;Ltmsdk/common/module/update/ICheckListener;)V
    .locals 1
    .parameter
    .parameter "checkListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/r;",
            ">;",
            "Ltmsdk/common/module/update/ICheckListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, confInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/r;>;"
    iget-object v0, p0, Ltmsdk/common/module/update/UpdateManager;->BQ:Ltmsdk/common/module/update/a;

    invoke-virtual {v0, p1, p2}, Ltmsdk/common/module/update/a;->check(Ljava/util/ArrayList;Ltmsdk/common/module/update/ICheckListener;)V

    .line 46
    return-void
.end method

.method public getFileSavePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Ltmsdk/common/module/update/UpdateManager;->BQ:Ltmsdk/common/module/update/a;

    invoke-virtual {v0}, Ltmsdk/common/module/update/a;->getFileSavePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStamp(J)J
    .locals 2
    .parameter "flag"

    .prologue
    .line 125
    iget-object v0, p0, Ltmsdk/common/module/update/UpdateManager;->BQ:Ltmsdk/common/module/update/a;

    invoke-virtual {v0, p1, p2}, Ltmsdk/common/module/update/a;->getTimeStamp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    new-instance v0, Ltmsdk/common/module/update/a;

    invoke-direct {v0}, Ltmsdk/common/module/update/a;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/update/UpdateManager;->BQ:Ltmsdk/common/module/update/a;

    .line 24
    iget-object v0, p0, Ltmsdk/common/module/update/UpdateManager;->BQ:Ltmsdk/common/module/update/a;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/update/a;->onCreate(Landroid/content/Context;)V

    .line 25
    iget-object v0, p0, Ltmsdk/common/module/update/UpdateManager;->BQ:Ltmsdk/common/module/update/a;

    invoke-virtual {p0, v0}, Ltmsdk/common/module/update/UpdateManager;->a(Ltmsdk/common/BaseManager;)V

    .line 26
    return-void
.end method

.method public removeObserver(J)V
    .locals 1
    .parameter "update_flag"

    .prologue
    .line 93
    iget-object v0, p0, Ltmsdk/common/module/update/UpdateManager;->BQ:Ltmsdk/common/module/update/a;

    invoke-virtual {v0, p1, p2}, Ltmsdk/common/module/update/a;->removeObserver(J)V

    .line 94
    return-void
.end method

.method public setExcutionRetLis(Ltmsdk/common/module/update/IExecutionRetLis;)V
    .locals 1
    .parameter "etList"

    .prologue
    .line 63
    iget-object v0, p0, Ltmsdk/common/module/update/UpdateManager;->BQ:Ltmsdk/common/module/update/a;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/update/a;->setExcutionRetLis(Ltmsdk/common/module/update/IExecutionRetLis;)V

    .line 64
    return-void
.end method

.method public update(Ljava/util/List;Ltmsdk/common/module/update/IUpdateListener;)Z
    .locals 1
    .parameter
    .parameter "updateListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/update/UpdateInfo;",
            ">;",
            "Ltmsdk/common/module/update/IUpdateListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, updateInfoList:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/update/UpdateInfo;>;"
    iget-object v0, p0, Ltmsdk/common/module/update/UpdateManager;->BQ:Ltmsdk/common/module/update/a;

    invoke-virtual {v0, p1, p2}, Ltmsdk/common/module/update/a;->update(Ljava/util/List;Ltmsdk/common/module/update/IUpdateListener;)Z

    move-result v0

    return v0
.end method

.method public updateObservers(Ltmsdk/common/module/update/UpdateInfo;)V
    .locals 1
    .parameter "updateInfo"

    .prologue
    .line 103
    iget-object v0, p0, Ltmsdk/common/module/update/UpdateManager;->BQ:Ltmsdk/common/module/update/a;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/update/a;->updateObservers(Ltmsdk/common/module/update/UpdateInfo;)V

    .line 104
    return-void
.end method
