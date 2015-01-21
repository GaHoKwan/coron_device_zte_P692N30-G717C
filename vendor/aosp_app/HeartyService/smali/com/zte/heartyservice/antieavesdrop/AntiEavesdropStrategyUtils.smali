.class public Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropStrategyUtils;
.super Ljava/lang/Object;
.source "AntiEavesdropStrategyUtils.java"


# instance fields
.field private mWatchDog:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;)V
    .locals 0
    .parameter "mWatchDog"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropStrategyUtils;->mWatchDog:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;

    .line 16
    return-void
.end method


# virtual methods
.method public stopUncertainEavesdropApps()V
    .locals 7

    .prologue
    .line 19
    iget-object v4, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropStrategyUtils;->mWatchDog:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;

    invoke-virtual {v4}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->getRunningUncertainEavesdropAppsOrderByProbability()Ljava/util/List;

    move-result-object v1

    .line 20
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v2, checkedApps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23
    .local v0, app:Ljava/lang/String;
    const-string v4, "record"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "killBackgroundProcesses start:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 25
    const-string v4, "record"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "killBackgroundProcesses start:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->isAudioRecording()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 28
    iget-object v4, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropStrategyUtils;->mWatchDog:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;

    invoke-virtual {v4, v0}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->recordCheckedUncertainEavesdropApp(Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->phoneIsInUse()Z

    move-result v4

    if-nez v4, :cond_2

    .line 41
    .end local v0           #app:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    return-void

    .line 34
    .restart local v0       #app:Ljava/lang/String;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v4, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropStrategyUtils;->mWatchDog:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;

    invoke-virtual {v4, v0}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->recordEavesdropApp(Ljava/lang/String;)V

    .line 38
    .end local v0           #app:Ljava/lang/String;
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 39
    iget-object v4, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropStrategyUtils;->mWatchDog:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;

    invoke-virtual {v4, v1}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->recordSafeApps(Ljava/util/List;)V

    goto :goto_1
.end method
