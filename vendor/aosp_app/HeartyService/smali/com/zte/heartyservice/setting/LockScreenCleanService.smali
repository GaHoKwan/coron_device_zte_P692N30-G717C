.class public Lcom/zte/heartyservice/setting/LockScreenCleanService;
.super Landroid/app/Service;
.source "LockScreenCleanService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/setting/LockScreenCleanService$SpeedUpServiceConnection;
    }
.end annotation


# instance fields
.field private firstId:I

.field public mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

.field private mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

.field private mSpeedUpServiceConnection:Lcom/zte/heartyservice/setting/LockScreenCleanService$SpeedUpServiceConnection;

.field private step:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService;->firstId:I

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService;->step:I

    .line 27
    iput-object v1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 28
    new-instance v0, Lcom/zte/heartyservice/setting/LockScreenCleanService$SpeedUpServiceConnection;

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/setting/LockScreenCleanService$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/setting/LockScreenCleanService;Lcom/zte/heartyservice/setting/LockScreenCleanService$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService;->mSpeedUpServiceConnection:Lcom/zte/heartyservice/setting/LockScreenCleanService$SpeedUpServiceConnection;

    .line 30
    new-instance v0, Lcom/zte/heartyservice/setting/LockScreenCleanService$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/setting/LockScreenCleanService$1;-><init>(Lcom/zte/heartyservice/setting/LockScreenCleanService;)V

    iput-object v0, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    .line 23
    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/setting/LockScreenCleanService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService;->step:I

    return v0
.end method

.method static synthetic access$110(Lcom/zte/heartyservice/setting/LockScreenCleanService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService;->step:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService;->step:I

    return v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/setting/LockScreenCleanService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zte/heartyservice/setting/LockScreenCleanService;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v3, 0x2

    .line 107
    iget v1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService;->firstId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 108
    iput p3, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService;->firstId:I

    .line 112
    const-string v1, "com.zte.heartyservice.intent.action.startService.CLEAN_APP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.intent.action.startService.SPEEDUPSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, serviceIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService;->mSpeedUpServiceConnection:Lcom/zte/heartyservice/setting/LockScreenCleanService$SpeedUpServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/zte/heartyservice/setting/LockScreenCleanService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 116
    .end local v0           #serviceIntent:Landroid/content/Intent;
    :cond_0
    return v3
.end method

.method public stopService()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    if-eqz v0, :cond_0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/setting/LockScreenCleanService;->mSpeedUpServiceConnection:Lcom/zte/heartyservice/setting/LockScreenCleanService$SpeedUpServiceConnection;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/LockScreenCleanService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/LockScreenCleanService;->stopSelf()V

    .line 127
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method
