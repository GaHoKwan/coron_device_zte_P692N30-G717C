.class Lcom/zte/heartyservice/examination/AutoExaminationTask$SpeedUpServiceConnection;
.super Ljava/lang/Object;
.source "AutoExaminationTask.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/examination/AutoExaminationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedUpServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/examination/AutoExaminationTask;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/examination/AutoExaminationTask;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/AutoExaminationTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/examination/AutoExaminationTask;Lcom/zte/heartyservice/examination/AutoExaminationTask$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/examination/AutoExaminationTask$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/examination/AutoExaminationTask;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/AutoExaminationTask;

    invoke-static {p2}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v2

    #setter for: Lcom/zte/heartyservice/examination/AutoExaminationTask;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/examination/AutoExaminationTask;->access$402(Lcom/zte/heartyservice/examination/AutoExaminationTask;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/AutoExaminationTask;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #setter for: Lcom/zte/heartyservice/examination/AutoExaminationTask;->task:Ljava/lang/Integer;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/examination/AutoExaminationTask;->access$002(Lcom/zte/heartyservice/examination/AutoExaminationTask;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 106
    iget-object v1, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/AutoExaminationTask;

    const/4 v2, 0x0

    #setter for: Lcom/zte/heartyservice/examination/AutoExaminationTask;->task1Ok:Z
    invoke-static {v1, v2}, Lcom/zte/heartyservice/examination/AutoExaminationTask;->access$102(Lcom/zte/heartyservice/examination/AutoExaminationTask;Z)Z

    .line 107
    iget-object v1, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/AutoExaminationTask;

    const/4 v2, 0x0

    #setter for: Lcom/zte/heartyservice/examination/AutoExaminationTask;->task2Ok:Z
    invoke-static {v1, v2}, Lcom/zte/heartyservice/examination/AutoExaminationTask;->access$202(Lcom/zte/heartyservice/examination/AutoExaminationTask;Z)Z

    .line 108
    iget-object v1, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/AutoExaminationTask;

    #getter for: Lcom/zte/heartyservice/examination/AutoExaminationTask;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/examination/AutoExaminationTask;->access$400(Lcom/zte/heartyservice/examination/AutoExaminationTask;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/AutoExaminationTask;

    #getter for: Lcom/zte/heartyservice/examination/AutoExaminationTask;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    invoke-static {v2}, Lcom/zte/heartyservice/examination/AutoExaminationTask;->access$500(Lcom/zte/heartyservice/examination/AutoExaminationTask;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->registerCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V

    .line 109
    iget-object v1, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/AutoExaminationTask;

    #getter for: Lcom/zte/heartyservice/examination/AutoExaminationTask;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/examination/AutoExaminationTask;->access$400(Lcom/zte/heartyservice/examination/AutoExaminationTask;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listAppCache()V

    .line 110
    iget-object v1, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/AutoExaminationTask;

    #getter for: Lcom/zte/heartyservice/examination/AutoExaminationTask;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/examination/AutoExaminationTask;->access$400(Lcom/zte/heartyservice/examination/AutoExaminationTask;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listAutoRunApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/AutoExaminationTask;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/examination/AutoExaminationTask;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/examination/AutoExaminationTask;->access$402(Lcom/zte/heartyservice/examination/AutoExaminationTask;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 119
    return-void
.end method
