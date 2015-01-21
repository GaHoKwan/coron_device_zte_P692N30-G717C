.class public Lcom/zte/heartyservice/examination/AutoExaminationTask;
.super Landroid/os/AsyncTask;
.source "AutoExaminationTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/examination/AutoExaminationTask$SpeedUpServiceConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

.field private mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

.field private mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

.field private task:Ljava/lang/Integer;

.field private task1Ok:Z

.field private task2Ok:Z

.field private wait:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 27
    iput-object v0, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->wait:Ljava/lang/Object;

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->task:Ljava/lang/Integer;

    .line 31
    iput-boolean v1, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->task1Ok:Z

    .line 32
    iput-boolean v1, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->task2Ok:Z

    .line 46
    new-instance v0, Lcom/zte/heartyservice/examination/AutoExaminationTask$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/examination/AutoExaminationTask$1;-><init>(Lcom/zte/heartyservice/examination/AutoExaminationTask;)V

    iput-object v0, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/examination/AutoExaminationTask;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->task:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zte/heartyservice/examination/AutoExaminationTask;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->task:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/examination/AutoExaminationTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->task1Ok:Z

    return v0
.end method

.method static synthetic access$102(Lcom/zte/heartyservice/examination/AutoExaminationTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->task1Ok:Z

    return p1
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/examination/AutoExaminationTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->task2Ok:Z

    return v0
.end method

.method static synthetic access$202(Lcom/zte/heartyservice/examination/AutoExaminationTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->task2Ok:Z

    return p1
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/examination/AutoExaminationTask;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zte/heartyservice/examination/AutoExaminationTask;->taskGo()V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/examination/AutoExaminationTask;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/zte/heartyservice/examination/AutoExaminationTask;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/examination/AutoExaminationTask;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    return-object v0
.end method

.method private taskGo()V
    .locals 2

    .prologue
    .line 35
    iget-object v1, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->wait:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->wait:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 37
    monitor-exit v1

    .line 38
    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private taskWaiting()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v1, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->wait:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->wait:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 43
    monitor-exit v1

    .line 44
    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 126
    const-string v2, "chenlu"

    const-string v3, "AutoExaminationTask start"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v2, Lcom/zte/heartyservice/examination/AutoExaminationTask$SpeedUpServiceConnection;

    invoke-direct {v2, p0, v5}, Lcom/zte/heartyservice/examination/AutoExaminationTask$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/examination/AutoExaminationTask;Lcom/zte/heartyservice/examination/AutoExaminationTask$1;)V

    iput-object v2, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 129
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zte.heartyservice.intent.action.startService.SPEEDUPSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, intentSpeedUpService:Landroid/content/Intent;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 135
    :try_start_0
    invoke-direct {p0}, Lcom/zte/heartyservice/examination/AutoExaminationTask;->taskWaiting()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    iget-object v2, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_1

    .line 142
    :try_start_1
    iget-object v2, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v2, :cond_0

    .line 144
    :try_start_2
    iget-object v2, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    iget-object v3, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v2, v3}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->unregisterCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 149
    :cond_0
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 153
    iput-object v5, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 157
    :cond_1
    :goto_1
    const-string v2, "chenlu"

    const-string v3, "AutoExaminationTask end"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_2
    return-object v5

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/InterruptedException;
    goto :goto_2

    .line 145
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 146
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 150
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 153
    iput-object v5, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    goto :goto_1

    :catchall_0
    move-exception v2

    iput-object v5, p0, Lcom/zte/heartyservice/examination/AutoExaminationTask;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    throw v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/examination/AutoExaminationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
