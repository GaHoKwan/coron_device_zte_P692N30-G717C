.class Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$1;
.super Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack$Stub;
.source "AbstractApkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$1;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public NotifyBackupApkResult(Z)V
    .locals 1
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$1;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->onNotifyBackupApkResult(Z)V

    .line 78
    return-void
.end method

.method public NotifyProgress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "progressDesc"
    .parameter "taskName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$1;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    invoke-virtual {v0, p1, p2}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->onNotifyProgress(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public UpdateDefaultSettingAppList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    .local p1, defaultSettingAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;>;"
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$1;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->onUpdateDefaultSettingAppList(Ljava/util/List;)V

    .line 63
    return-void
.end method

.method public UpdateMoveableAppList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    .local p1, moveableAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;>;"
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$1;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->onUpdateMoveableAppList(Ljava/util/List;)V

    .line 67
    return-void
.end method

.method public UpdateSDCardApksList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    .local p1, SDCardApksList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;>;"
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$1;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->onUpdateSDCardApksList(Ljava/util/List;)V

    .line 73
    return-void
.end method

.method public UpdateUninstallableAppList(Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter "inDataImage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 54
    .local p1, uninstallableAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;>;"
    if-eqz p2, :cond_0

    .line 55
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$1;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->onUpdateUninstallableAppList(Ljava/util/List;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$1;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->onUpdateSystemAppList(Ljava/util/List;)V

    goto :goto_0
.end method
