.class Lcom/zte/heartyservice/examination/StorageListActivity$SpeedUpServiceConnection;
.super Ljava/lang/Object;
.source "StorageListActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/examination/StorageListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedUpServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/examination/StorageListActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/examination/StorageListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/zte/heartyservice/examination/StorageListActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/StorageListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/examination/StorageListActivity;Lcom/zte/heartyservice/examination/StorageListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/examination/StorageListActivity$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/examination/StorageListActivity;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 94
    iget-object v1, p0, Lcom/zte/heartyservice/examination/StorageListActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/StorageListActivity;

    invoke-static {p2}, Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v2

    #setter for: Lcom/zte/heartyservice/examination/StorageListActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/examination/StorageListActivity;->access$302(Lcom/zte/heartyservice/examination/StorageListActivity;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/examination/StorageListActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/StorageListActivity;

    #getter for: Lcom/zte/heartyservice/examination/StorageListActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/examination/StorageListActivity;->access$300(Lcom/zte/heartyservice/examination/StorageListActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/examination/StorageListActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/StorageListActivity;

    #getter for: Lcom/zte/heartyservice/examination/StorageListActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    invoke-static {v2}, Lcom/zte/heartyservice/examination/StorageListActivity;->access$400(Lcom/zte/heartyservice/examination/StorageListActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->registerCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/zte/heartyservice/examination/StorageListActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/StorageListActivity;

    #getter for: Lcom/zte/heartyservice/examination/StorageListActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/examination/StorageListActivity;->access$300(Lcom/zte/heartyservice/examination/StorageListActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/examination/StorageListActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/StorageListActivity;

    #getter for: Lcom/zte/heartyservice/examination/StorageListActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1}, Lcom/zte/heartyservice/examination/StorageListActivity;->access$300(Lcom/zte/heartyservice/examination/StorageListActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/examination/StorageListActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/StorageListActivity;

    #getter for: Lcom/zte/heartyservice/examination/StorageListActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    invoke-static {v2}, Lcom/zte/heartyservice/examination/StorageListActivity;->access$400(Lcom/zte/heartyservice/examination/StorageListActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->unregisterCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/examination/StorageListActivity$SpeedUpServiceConnection;->this$0:Lcom/zte/heartyservice/examination/StorageListActivity;

    const/4 v2, 0x0

    #setter for: Lcom/zte/heartyservice/examination/StorageListActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/examination/StorageListActivity;->access$302(Lcom/zte/heartyservice/examination/StorageListActivity;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 112
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method