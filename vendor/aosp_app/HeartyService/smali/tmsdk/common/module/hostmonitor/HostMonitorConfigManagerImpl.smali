.class public Ltmsdk/common/module/hostmonitor/HostMonitorConfigManagerImpl;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    return-void
.end method


# virtual methods
.method public getHostConfig()Ltmsdkobf/p;
    .locals 5

    .prologue
    .line 24
    iget-object v0, p0, Ltmsdk/common/module/hostmonitor/HostMonitorConfigManagerImpl;->mContext:Landroid/content/Context;

    sget-object v1, Ltmsdk/common/module/update/UpdateConfig;->H_LIST_NAME:Ljava/lang/String;

    const-string v2, "H_LIST"

    new-instance v3, Ltmsdkobf/p;

    invoke-direct {v3}, Ltmsdkobf/p;-><init>()V

    const-string v4, "UTF-8"

    invoke-static {v0, v1, v2, v3, v4}, Ltmsdkobf/kk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/p;

    return-object v0
.end method

.method public getSingletonType()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x2

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    iput-object p1, p0, Ltmsdk/common/module/hostmonitor/HostMonitorConfigManagerImpl;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method
