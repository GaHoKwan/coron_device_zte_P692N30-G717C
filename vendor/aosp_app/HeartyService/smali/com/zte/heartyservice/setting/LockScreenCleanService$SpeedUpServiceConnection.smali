.class Lcom/zte/heartyservice/setting/LockScreenCleanService$SpeedUpServiceConnection;
.super Ljava/lang/Object;
.source "LockScreenCleanService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/LockScreenCleanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedUpServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/LockScreenCleanService;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/setting/LockScreenCleanService;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/setting/LockScreenCleanService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/setting/LockScreenCleanService;Lcom/zte/heartyservice/setting/LockScreenCleanService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/setting/LockScreenCleanService$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/setting/LockScreenCleanService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 77
    iget-object v1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/setting/LockScreenCleanService;

    invoke-static {p2}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v2

    #setter for: Lcom/zte/heartyservice/setting/LockScreenCleanService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/setting/LockScreenCleanService;->access$202(Lcom/zte/heartyservice/setting/LockScreenCleanService;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/setting/LockScreenCleanService;

    #getter for: Lcom/zte/heartyservice/setting/LockScreenCleanService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/LockScreenCleanService;->access$200(Lcom/zte/heartyservice/setting/LockScreenCleanService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/setting/LockScreenCleanService;

    iget-object v2, v2, Lcom/zte/heartyservice/setting/LockScreenCleanService;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->registerCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V

    .line 80
    iget-object v1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/setting/LockScreenCleanService;

    #getter for: Lcom/zte/heartyservice/setting/LockScreenCleanService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/LockScreenCleanService;->access$200(Lcom/zte/heartyservice/setting/LockScreenCleanService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listRunningProcess()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 88
    iget-object v1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/setting/LockScreenCleanService;

    #getter for: Lcom/zte/heartyservice/setting/LockScreenCleanService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/LockScreenCleanService;->access$200(Lcom/zte/heartyservice/setting/LockScreenCleanService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/setting/LockScreenCleanService;

    #getter for: Lcom/zte/heartyservice/setting/LockScreenCleanService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/LockScreenCleanService;->access$200(Lcom/zte/heartyservice/setting/LockScreenCleanService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/setting/LockScreenCleanService;

    iget-object v2, v2, Lcom/zte/heartyservice/setting/LockScreenCleanService;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->unregisterCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/setting/LockScreenCleanService;

    const/4 v2, 0x0

    #setter for: Lcom/zte/heartyservice/setting/LockScreenCleanService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/setting/LockScreenCleanService;->access$202(Lcom/zte/heartyservice/setting/LockScreenCleanService;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 96
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
