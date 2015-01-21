.class Ltmsdk/common/module/hostmonitor/HostsFileObserver$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/hostmonitor/HostsFileObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic zh:Ltmsdk/common/module/hostmonitor/HostsFileObserver;


# direct methods
.method public constructor <init>(Ltmsdk/common/module/hostmonitor/HostsFileObserver;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 65
    iput-object p1, p0, Ltmsdk/common/module/hostmonitor/HostsFileObserver$a;->zh:Ltmsdk/common/module/hostmonitor/HostsFileObserver;

    .line 66
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsFileObserver$a;->zh:Ltmsdk/common/module/hostmonitor/HostsFileObserver;

    iget-object v0, v0, Ltmsdk/common/module/hostmonitor/HostsFileObserver;->zf:Ltmsdk/common/module/hostmonitor/HostsFileObserver$IHostsChangeListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsFileObserver$a;->zh:Ltmsdk/common/module/hostmonitor/HostsFileObserver;

    iget-object v0, v0, Ltmsdk/common/module/hostmonitor/HostsFileObserver;->zf:Ltmsdk/common/module/hostmonitor/HostsFileObserver$IHostsChangeListener;

    invoke-interface {v0}, Ltmsdk/common/module/hostmonitor/HostsFileObserver$IHostsChangeListener;->onFileChange()V

    .line 76
    :cond_0
    return-void
.end method
