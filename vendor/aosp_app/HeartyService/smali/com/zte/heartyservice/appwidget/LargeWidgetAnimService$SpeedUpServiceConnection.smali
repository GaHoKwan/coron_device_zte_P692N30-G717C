.class Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$SpeedUpServiceConnection;
.super Ljava/lang/Object;
.source "LargeWidgetAnimService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedUpServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    invoke-static {p2}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v2

    #setter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$202(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$200(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    iget-object v2, v2, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->registerCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V

    .line 143
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$200(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listAppCache()V

    .line 144
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$200(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listRunningProcess()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 152
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$200(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$200(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    iget-object v2, v2, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->unregisterCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    const/4 v2, 0x0

    #setter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$202(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 160
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
