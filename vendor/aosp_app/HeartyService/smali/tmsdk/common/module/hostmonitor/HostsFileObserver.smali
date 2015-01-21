.class Ltmsdk/common/module/hostmonitor/HostsFileObserver;
.super Landroid/os/FileObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/common/module/hostmonitor/HostsFileObserver$a;,
        Ltmsdk/common/module/hostmonitor/HostsFileObserver$IHostsChangeListener;
    }
.end annotation


# instance fields
.field private mHandlerThread:Landroid/os/HandlerThread;

.field public zf:Ltmsdk/common/module/hostmonitor/HostsFileObserver$IHostsChangeListener;

.field private zg:Ltmsdk/common/module/hostmonitor/HostsFileObserver$a;


# direct methods
.method public constructor <init>(Ltmsdk/common/module/hostmonitor/HostsFileObserver$IHostsChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 31
    const-string v0, "/system/etc"

    const/16 v1, 0xfc8

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsFileObserver;->zf:Ltmsdk/common/module/hostmonitor/HostsFileObserver$IHostsChangeListener;

    .line 33
    iput-object p1, p0, Ltmsdk/common/module/hostmonitor/HostsFileObserver;->zf:Ltmsdk/common/module/hostmonitor/HostsFileObserver$IHostsChangeListener;

    .line 35
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v0

    const-string v1, "hosts_file_observer"

    invoke-virtual {v0, v1}, Ltmsdkobf/ij;->bj(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsFileObserver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 36
    iget-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsFileObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 37
    new-instance v0, Ltmsdk/common/module/hostmonitor/HostsFileObserver$a;

    iget-object v1, p0, Ltmsdk/common/module/hostmonitor/HostsFileObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ltmsdk/common/module/hostmonitor/HostsFileObserver$a;-><init>(Ltmsdk/common/module/hostmonitor/HostsFileObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsFileObserver;->zg:Ltmsdk/common/module/hostmonitor/HostsFileObserver$a;

    .line 38
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4
    .parameter "event"
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 42
    const-string v0, "hosts"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "HostMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hosts file changed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 53
    :sswitch_0
    iget-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsFileObserver;->zg:Ltmsdk/common/module/hostmonitor/HostsFileObserver$a;

    invoke-virtual {v0, v3}, Ltmsdk/common/module/hostmonitor/HostsFileObserver$a;->removeMessages(I)V

    .line 54
    iget-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsFileObserver;->zg:Ltmsdk/common/module/hostmonitor/HostsFileObserver$a;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Ltmsdk/common/module/hostmonitor/HostsFileObserver$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
        0x400 -> :sswitch_0
        0x800 -> :sswitch_0
    .end sparse-switch
.end method
