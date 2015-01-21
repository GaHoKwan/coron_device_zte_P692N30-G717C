.class public Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$SpeedServiceConnection;
.super Ljava/lang/Object;
.source "AbstractApkActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SpeedServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;


# direct methods
.method protected constructor <init>(Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$SpeedServiceConnection;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "className"
    .parameter "service"

    .prologue
    .line 112
    const-string v1, "<==>tsj"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; onServiceConnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$SpeedServiceConnection;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    invoke-static {p2}, Lcom/zte/heartyservice/apksmanager/IApksManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    move-result-object v2

    iput-object v2, v1, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$SpeedServiceConnection;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    iget-object v1, v1, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$SpeedServiceConnection;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    iget-object v2, v2, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerCallBack:Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/apksmanager/IApksManagerService;->registerCallBack(Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;)V

    .line 116
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$SpeedServiceConnection;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->ServiceConnectedOperation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 124
    const-string v1, "<==>tsj"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";onServiceDisconnected unregisterCallBack"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$SpeedServiceConnection;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    iget-object v1, v1, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    if-eqz v1, :cond_0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$SpeedServiceConnection;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    iget-object v1, v1, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$SpeedServiceConnection;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    iget-object v2, v2, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerCallBack:Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/apksmanager/IApksManagerService;->unregisterCallBack(Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$SpeedServiceConnection;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    .line 134
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
