.class Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$SpeedUpServiceConnection;
.super Ljava/lang/Object;
.source "BackgroundAutorunAppActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedUpServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;

    invoke-static {p2}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v2

    #setter for: Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->access$202(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;

    #getter for: Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->access$200(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;

    #getter for: Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    invoke-static {v2}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->access$300(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->registerCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V

    .line 85
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;

    #getter for: Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->init:Z
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->access$400(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 86
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;

    const/4 v2, 0x0

    #setter for: Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->init:Z
    invoke-static {v1, v2}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->access$402(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;Z)Z

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;

    #getter for: Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->access$200(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listBackgroundAutoRunApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 97
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;

    #getter for: Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->access$200(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;

    #getter for: Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->access$200(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;

    #getter for: Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    invoke-static {v2}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->access$300(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->unregisterCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;

    const/4 v2, 0x0

    #setter for: Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->access$202(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 105
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
