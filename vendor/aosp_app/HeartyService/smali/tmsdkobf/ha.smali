.class public final Ltmsdkobf/ha;
.super Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/ha$a;,
        Ltmsdkobf/ha$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltmsdk/bg/module/aresengine/DataInterceptorBuilder",
        "<",
        "Ltmsdk/common/module/aresengine/CallLogEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ltmsdk/bg/module/aresengine/DataInterceptorBuilder;-><init>()V

    .line 39
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/ha;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public getDataFilter()Ltmsdk/bg/module/aresengine/DataFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/bg/module/aresengine/DataFilter",
            "<",
            "Ltmsdk/common/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ltmsdkobf/ha$a;

    iget-object v1, p0, Ltmsdkobf/ha;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltmsdkobf/ha$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getDataHandler()Ltmsdk/bg/module/aresengine/DataHandler;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ltmsdk/bg/module/aresengine/DataHandler;

    invoke-direct {v0}, Ltmsdk/bg/module/aresengine/DataHandler;-><init>()V

    return-object v0
.end method

.method public getDataMonitor()Ltmsdk/bg/module/aresengine/DataMonitor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/bg/module/aresengine/DataMonitor",
            "<",
            "Ltmsdk/common/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Ltmsdkobf/ha$b;

    iget-object v1, p0, Ltmsdkobf/ha;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltmsdkobf/ha$b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "incoming_call"

    return-object v0
.end method
