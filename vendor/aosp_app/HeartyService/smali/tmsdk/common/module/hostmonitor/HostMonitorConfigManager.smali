.class public Ltmsdk/common/module/hostmonitor/HostMonitorConfigManager;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"


# instance fields
.field za:Ltmsdk/common/module/hostmonitor/HostMonitorConfigManagerImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    return-void
.end method


# virtual methods
.method public getHostConfig()Ltmsdkobf/p;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ltmsdk/common/module/hostmonitor/HostMonitorConfigManager;->za:Ltmsdk/common/module/hostmonitor/HostMonitorConfigManagerImpl;

    invoke-virtual {v0}, Ltmsdk/common/module/hostmonitor/HostMonitorConfigManagerImpl;->getHostConfig()Ltmsdkobf/p;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    new-instance v0, Ltmsdk/common/module/hostmonitor/HostMonitorConfigManagerImpl;

    invoke-direct {v0}, Ltmsdk/common/module/hostmonitor/HostMonitorConfigManagerImpl;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/hostmonitor/HostMonitorConfigManager;->za:Ltmsdk/common/module/hostmonitor/HostMonitorConfigManagerImpl;

    .line 17
    iget-object v0, p0, Ltmsdk/common/module/hostmonitor/HostMonitorConfigManager;->za:Ltmsdk/common/module/hostmonitor/HostMonitorConfigManagerImpl;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/hostmonitor/HostMonitorConfigManagerImpl;->onCreate(Landroid/content/Context;)V

    .line 18
    iget-object v0, p0, Ltmsdk/common/module/hostmonitor/HostMonitorConfigManager;->za:Ltmsdk/common/module/hostmonitor/HostMonitorConfigManagerImpl;

    invoke-virtual {p0, v0}, Ltmsdk/common/module/hostmonitor/HostMonitorConfigManager;->a(Ltmsdk/common/BaseManager;)V

    .line 19
    return-void
.end method
