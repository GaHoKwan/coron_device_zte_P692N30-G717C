.class Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;
.super Ljava/lang/Object;
.source "WidgetAnimService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/appwidget/WidgetAnimService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedUpServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/appwidget/WidgetAnimService;Lcom/zte/heartyservice/appwidget/WidgetAnimService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "className"
    .parameter "service"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    invoke-static {p2}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v2

    #setter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$502(Lcom/zte/heartyservice/appwidget/WidgetAnimService;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$500(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    iget-object v2, v2, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->registerCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V

    .line 159
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #calls: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->currentTime()J
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$200(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)J

    move-result-wide v2

    #setter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->debugTime1:J
    invoke-static {v1, v2, v3}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$1002(Lcom/zte/heartyservice/appwidget/WidgetAnimService;J)J

    .line 160
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$500(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->clearAppCache(Ljava/util/List;)V

    .line 161
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #calls: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->currentTime()J
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$200(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)J

    move-result-wide v2

    #setter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->debugTime2:J
    invoke-static {v1, v2, v3}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$302(Lcom/zte/heartyservice/appwidget/WidgetAnimService;J)J

    .line 162
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$500(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listRunningProcess()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 172
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$500(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$500(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    iget-object v2, v2, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->unregisterCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    const/4 v2, 0x0

    #setter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$502(Lcom/zte/heartyservice/appwidget/WidgetAnimService;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 180
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
