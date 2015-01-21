.class Lcom/zte/heartyservice/speedup/AutorunAppActivity$SpeedUpServiceConnection;
.super Ljava/lang/Object;
.source "AutorunAppActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/AutorunAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedUpServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/speedup/AutorunAppActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/speedup/AutorunAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/AutorunAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/AutorunAppActivity;Lcom/zte/heartyservice/speedup/AutorunAppActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/AutorunAppActivity$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/speedup/AutorunAppActivity;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/AutorunAppActivity;

    invoke-static {p2}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v2

    #setter for: Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->access$202(Lcom/zte/heartyservice/speedup/AutorunAppActivity;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/AutorunAppActivity;

    #getter for: Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->access$200(Lcom/zte/heartyservice/speedup/AutorunAppActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/AutorunAppActivity;

    #getter for: Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    invoke-static {v2}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->access$300(Lcom/zte/heartyservice/speedup/AutorunAppActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->registerCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V

    .line 87
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/AutorunAppActivity;

    #getter for: Lcom/zte/heartyservice/speedup/AutorunAppActivity;->init:Z
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->access$400(Lcom/zte/heartyservice/speedup/AutorunAppActivity;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 88
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/AutorunAppActivity;

    const/4 v2, 0x0

    #setter for: Lcom/zte/heartyservice/speedup/AutorunAppActivity;->init:Z
    invoke-static {v1, v2}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->access$402(Lcom/zte/heartyservice/speedup/AutorunAppActivity;Z)Z

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/AutorunAppActivity;

    #getter for: Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->access$200(Lcom/zte/heartyservice/speedup/AutorunAppActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listAutoRunApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 99
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/AutorunAppActivity;

    #getter for: Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->access$200(Lcom/zte/heartyservice/speedup/AutorunAppActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/AutorunAppActivity;

    #getter for: Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->access$200(Lcom/zte/heartyservice/speedup/AutorunAppActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/AutorunAppActivity;

    #getter for: Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    invoke-static {v2}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->access$300(Lcom/zte/heartyservice/speedup/AutorunAppActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->unregisterCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/AutorunAppActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/AutorunAppActivity;

    const/4 v2, 0x0

    #setter for: Lcom/zte/heartyservice/speedup/AutorunAppActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/speedup/AutorunAppActivity;->access$202(Lcom/zte/heartyservice/speedup/AutorunAppActivity;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 107
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
