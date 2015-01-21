.class public final Ltmsdk/bg/module/aresengine/AresEngineManager;
.super Ltmsdk/bg/creator/BaseManagerB;
.source "SourceFile"


# instance fields
.field private ug:Ltmsdkobf/gt;

.field private uh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltmsdk/bg/module/aresengine/DataInterceptor",
            "<+",
            "Ltmsdk/common/module/aresengine/TelephonyEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private ui:Ltmsdk/bg/module/aresengine/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ltmsdk/bg/creator/BaseManagerB;-><init>()V

    return-void
.end method


# virtual methods
.method public addInterceptor(Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/bg/module/aresengine/DataInterceptorBuilder",
            "<+",
            "Ltmsdk/common/module/aresengine/TelephonyEntity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 45
    .local p1, builder:Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;,"Ltmsdk/bg/module/aresengine/DataInterceptorBuilder<+Ltmsdk/common/module/aresengine/TelephonyEntity;>;"
    invoke-static {}, Ltmsdk/bg/module/aresengine/AresEngineManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/AresEngineManager;->ug:Ltmsdkobf/gt;

    invoke-virtual {v0, p1}, Ltmsdkobf/gt;->addInterceptor(Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;)V

    goto :goto_0
.end method

.method public checkIfGotBroadcastFirst()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-virtual {p0}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findAheadProcess()Ljava/util/List;

    move-result-object v0

    .line 148
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v1, 0x1

    .line 152
    :cond_0
    return v1
.end method

.method public findAheadProcess()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Ltmsdk/bg/module/aresengine/AresEngineManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/AresEngineManager;->ug:Ltmsdkobf/gt;

    invoke-virtual {v0}, Ltmsdkobf/gt;->findAheadProcess()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;
    .locals 7
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ltmsdk/bg/module/aresengine/DataInterceptor",
            "<+",
            "Ltmsdk/common/module/aresengine/TelephonyEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {}, Ltmsdk/bg/module/aresengine/AresEngineManager;->dn()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 58
    iget-object v5, p0, Ltmsdk/bg/module/aresengine/AresEngineManager;->uh:Ljava/util/Map;

    if-nez v5, :cond_0

    .line 59
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Ltmsdk/bg/module/aresengine/AresEngineManager;->uh:Ljava/util/Map;

    .line 60
    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "incoming_call"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "incoming_sms"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "outing_sms"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "system_call"

    aput-object v6, v4, v5

    .line 61
    .local v4, types:[Ljava/lang/String;
    move-object v1, v4

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 62
    .local v0, _type:Ljava/lang/String;
    iget-object v5, p0, Ltmsdk/bg/module/aresengine/AresEngineManager;->uh:Ljava/util/Map;

    new-instance v6, Ltmsdk/bg/module/aresengine/a;

    invoke-direct {v6, v0}, Ltmsdk/bg/module/aresengine/a;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v0           #_type:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #types:[Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Ltmsdk/bg/module/aresengine/AresEngineManager;->uh:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltmsdk/bg/module/aresengine/DataInterceptor;

    .line 68
    :goto_1
    return-object v5

    :cond_1
    iget-object v5, p0, Ltmsdk/bg/module/aresengine/AresEngineManager;->ug:Ltmsdkobf/gt;

    invoke-virtual {v5, p1}, Ltmsdkobf/gt;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v5

    goto :goto_1
.end method

.method public getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/AresEngineManager;->ug:Ltmsdkobf/gt;

    invoke-virtual {v0}, Ltmsdkobf/gt;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v0

    return-object v0
.end method

.method public getIntelligentSmsChecker()Ltmsdk/bg/module/aresengine/IntelliSmsChecker;
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Ltmsdk/bg/module/aresengine/AresEngineManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/AresEngineManager;->ui:Ltmsdk/bg/module/aresengine/b;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ltmsdk/bg/module/aresengine/b;

    invoke-direct {v0}, Ltmsdk/bg/module/aresengine/b;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/aresengine/AresEngineManager;->ui:Ltmsdk/bg/module/aresengine/b;

    .line 92
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/AresEngineManager;->ui:Ltmsdk/bg/module/aresengine/b;

    .line 94
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/AresEngineManager;->ug:Ltmsdkobf/gt;

    invoke-virtual {v0}, Ltmsdkobf/gt;->bN()Ltmsdk/bg/module/aresengine/IntelliSmsChecker;

    move-result-object v0

    goto :goto_0
.end method

.method public getMmsTransactionHelper()Ltmsdk/common/module/aresengine/MmsTransactionHelper;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/AresEngineManager;->ug:Ltmsdkobf/gt;

    invoke-virtual {v0}, Ltmsdkobf/gt;->getMmsTransactionHelper()Ltmsdk/common/module/aresengine/MmsTransactionHelper;

    move-result-object v0

    return-object v0
.end method

.method public interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltmsdk/bg/module/aresengine/DataInterceptor",
            "<+",
            "Ltmsdk/common/module/aresengine/TelephonyEntity;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Ltmsdk/bg/module/aresengine/AresEngineManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/AresEngineManager;->ug:Ltmsdkobf/gt;

    invoke-virtual {v0}, Ltmsdkobf/gt;->interceptors()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    new-instance v0, Ltmsdkobf/gt;

    invoke-direct {v0}, Ltmsdkobf/gt;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/aresengine/AresEngineManager;->ug:Ltmsdkobf/gt;

    .line 35
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/AresEngineManager;->ug:Ltmsdkobf/gt;

    invoke-virtual {v0, p1}, Ltmsdkobf/gt;->onCreate(Landroid/content/Context;)V

    .line 36
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/AresEngineManager;->ug:Ltmsdkobf/gt;

    invoke-virtual {p0, v0}, Ltmsdk/bg/module/aresengine/AresEngineManager;->a(Ltmsdk/common/BaseManager;)V

    .line 37
    return-void
.end method

.method public final reportSms(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/aresengine/SmsEntity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, smslist:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/aresengine/SmsEntity;>;"
    invoke-static {}, Ltmsdk/bg/module/aresengine/AresEngineManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/AresEngineManager;->ug:Ltmsdkobf/gt;

    invoke-virtual {v0, p1}, Ltmsdkobf/gt;->reportSms(Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAresEngineFactor(Ltmsdk/bg/module/aresengine/AresEngineFactor;)V
    .locals 1
    .parameter "factor"

    .prologue
    .line 104
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/AresEngineManager;->ug:Ltmsdkobf/gt;

    invoke-virtual {v0, p1}, Ltmsdkobf/gt;->setAresEngineFactor(Ltmsdk/bg/module/aresengine/AresEngineFactor;)V

    .line 105
    return-void
.end method
