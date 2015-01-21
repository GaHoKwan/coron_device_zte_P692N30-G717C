.class Lcom/zte/heartyservice/setting/AutoExam$2;
.super Ljava/lang/Object;
.source "AutoExam.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/AutoExam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/AutoExam;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/AutoExam;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/zte/heartyservice/setting/AutoExam$2;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 140
    const-string v1, "AutoExam"

    const-string v2, "liuji debug AutoExam onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoExam$2;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    invoke-static {p2}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v2

    #setter for: Lcom/zte/heartyservice/setting/AutoExam;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/setting/AutoExam;->access$502(Lcom/zte/heartyservice/setting/AutoExam;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoExam$2;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    #getter for: Lcom/zte/heartyservice/setting/AutoExam;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/AutoExam;->access$500(Lcom/zte/heartyservice/setting/AutoExam;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/setting/AutoExam$2;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    #getter for: Lcom/zte/heartyservice/setting/AutoExam;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    invoke-static {v2}, Lcom/zte/heartyservice/setting/AutoExam;->access$600(Lcom/zte/heartyservice/setting/AutoExam;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->registerCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V

    .line 144
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoExam$2;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    #getter for: Lcom/zte/heartyservice/setting/AutoExam;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/AutoExam;->access$500(Lcom/zte/heartyservice/setting/AutoExam;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listRunningProcess()V

    .line 145
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoExam$2;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    #getter for: Lcom/zte/heartyservice/setting/AutoExam;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/AutoExam;->access$500(Lcom/zte/heartyservice/setting/AutoExam;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listAppCache()V

    .line 146
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoExam$2;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    #getter for: Lcom/zte/heartyservice/setting/AutoExam;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/AutoExam;->access$500(Lcom/zte/heartyservice/setting/AutoExam;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listAppData()V

    .line 147
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoExam$2;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    #getter for: Lcom/zte/heartyservice/setting/AutoExam;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/AutoExam;->access$500(Lcom/zte/heartyservice/setting/AutoExam;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listAutoRunApp()V

    .line 148
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoExam$2;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    #getter for: Lcom/zte/heartyservice/setting/AutoExam;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/AutoExam;->access$500(Lcom/zte/heartyservice/setting/AutoExam;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listAppFile()V

    .line 149
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoExam$2;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    #getter for: Lcom/zte/heartyservice/setting/AutoExam;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/AutoExam;->access$500(Lcom/zte/heartyservice/setting/AutoExam;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listBackgroundAutoRunApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoExam$2;->this$0:Lcom/zte/heartyservice/setting/AutoExam;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/setting/AutoExam;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/setting/AutoExam;->access$502(Lcom/zte/heartyservice/setting/AutoExam;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 158
    return-void
.end method
