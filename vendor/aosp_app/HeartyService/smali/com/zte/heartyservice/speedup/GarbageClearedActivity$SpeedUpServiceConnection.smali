.class Lcom/zte/heartyservice/speedup/GarbageClearedActivity$SpeedUpServiceConnection;
.super Ljava/lang/Object;
.source "GarbageClearedActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/GarbageClearedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedUpServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;Lcom/zte/heartyservice/speedup/GarbageClearedActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    invoke-static {p2}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v2

    #setter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$202(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$200(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    invoke-static {v2}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$300(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->registerCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V

    .line 119
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->init:Z
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$400(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 120
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    const/4 v2, 0x0

    #setter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->init:Z
    invoke-static {v1, v2}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$402(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;Z)Z

    .line 128
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$200(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listAppCache()V

    .line 123
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$200(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listAppFile()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 132
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$200(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$200(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    invoke-static {v2}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$300(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->unregisterCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    const/4 v2, 0x0

    #setter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$202(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 140
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
