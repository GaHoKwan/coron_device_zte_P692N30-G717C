.class Lcom/zte/heartyservice/speedup/MainSpeedingActivity$SpeedUpServiceConnection;
.super Ljava/lang/Object;
.source "MainSpeedingActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/MainSpeedingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedUpServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Lcom/zte/heartyservice/speedup/MainSpeedingActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    invoke-static {p2}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v2

    #setter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$502(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 150
    :try_start_0
    const-string v1, "MSA"

    const-string v2, "liuji debug onServiceConnected 000"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$500(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    invoke-static {v2}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$600(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->registerCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V

    .line 153
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$500(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listRunningProcess()V

    .line 154
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$500(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listAutoRunApp()V

    .line 155
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$500(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listAppCache()V

    .line 157
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->firstScan:Z
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$700(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$500(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listAppFile()V

    .line 159
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    const/4 v2, 0x0

    #setter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->firstScan:Z
    invoke-static {v1, v2}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$702(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Z)Z

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$500(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listBackgroundAutoRunApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 170
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$500(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$500(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    invoke-static {v2}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$600(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->unregisterCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    const/4 v2, 0x0

    #setter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$502(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 178
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
