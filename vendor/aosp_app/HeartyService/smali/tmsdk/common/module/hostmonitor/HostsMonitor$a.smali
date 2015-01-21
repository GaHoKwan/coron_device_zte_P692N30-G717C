.class Ltmsdk/common/module/hostmonitor/HostsMonitor$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/module/hostmonitor/HostsFileObserver$IHostsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/hostmonitor/HostsMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic zq:Ltmsdk/common/module/hostmonitor/HostsMonitor;


# direct methods
.method constructor <init>(Ltmsdk/common/module/hostmonitor/HostsMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor$a;->zq:Ltmsdk/common/module/hostmonitor/HostsMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileChange()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "HostMonitor"

    const-string v1, "handle hosts file change"

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsMonitor$a;->zq:Ltmsdk/common/module/hostmonitor/HostsMonitor;

    invoke-virtual {v0}, Ltmsdk/common/module/hostmonitor/HostsMonitor;->asyncCheckHostsChange()V

    .line 80
    return-void
.end method
