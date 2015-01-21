.class public final Ltmsdk/bg/module/aresengine/Proguard;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callAllMethods()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10
    const-class v1, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v1}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/aresengine/AresEngineManager;

    .line 11
    .local v0, manager:Ltmsdk/bg/module/aresengine/AresEngineManager;
    invoke-virtual {v0, v2}, Ltmsdk/bg/module/aresengine/AresEngineManager;->addInterceptor(Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;)V

    .line 12
    invoke-virtual {v0, v2}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    .line 13
    invoke-virtual {v0}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    .line 14
    invoke-virtual {v0, v2}, Ltmsdk/bg/module/aresengine/AresEngineManager;->setAresEngineFactor(Ltmsdk/bg/module/aresengine/AresEngineFactor;)V

    .line 15
    invoke-virtual {v0}, Ltmsdk/bg/module/aresengine/AresEngineManager;->interceptors()Ljava/util/List;

    .line 16
    invoke-virtual {v0}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getIntelligentSmsChecker()Ltmsdk/bg/module/aresengine/IntelliSmsChecker;

    .line 18
    invoke-static {}, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->createInComingCallInterceptorBuilder()Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;

    .line 19
    invoke-static {}, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->createInComingSmsInterceptorBuilder()Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;

    .line 20
    invoke-static {}, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->createOutgoingSmsInterceptorBuilder()Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;

    .line 21
    invoke-static {}, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;->createSystemCallLogInterceptorBuilder()Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;

    .line 22
    return-void
.end method
