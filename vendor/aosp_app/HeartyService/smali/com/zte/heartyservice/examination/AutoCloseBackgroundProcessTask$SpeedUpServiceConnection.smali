.class Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$SpeedUpServiceConnection;
.super Ljava/lang/Object;
.source "AutoCloseBackgroundProcessTask.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedUpServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 115
    iget-object v1, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;

    invoke-static {p2}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v2

    #setter for: Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->access$102(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;

    const/4 v2, 0x0

    #setter for: Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->first:Z
    invoke-static {v1, v2}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->access$002(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;Z)Z

    .line 118
    iget-object v1, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;

    #getter for: Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->access$100(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;

    #getter for: Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    invoke-static {v2}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->access$400(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->registerCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V

    .line 119
    iget-object v1, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;

    #getter for: Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->access$100(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listRunningProcess()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->access$102(Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 128
    return-void
.end method
