.class public Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;
.super Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;
.source "AbstractApkActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$Idler;,
        Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$PackageBroadcastReceiver;,
        Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;,
        Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$SpeedServiceConnection;
    }
.end annotation


# instance fields
.field protected mIApksManagerCallBack:Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;

.field protected mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

.field protected mIApksManagerServiceConnection:Landroid/content/ServiceConnection;

.field protected mPackageBroadcastReceiver:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$PackageBroadcastReceiver;

.field protected mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerServiceConnection:Landroid/content/ServiceConnection;

    .line 46
    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 48
    new-instance v0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$PackageBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$PackageBroadcastReceiver;-><init>(Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mPackageBroadcastReceiver:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$PackageBroadcastReceiver;

    .line 50
    new-instance v0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$1;-><init>(Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerCallBack:Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;

    .line 305
    return-void
.end method


# virtual methods
.method protected BroadcastReceiverOperation(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 303
    return-void
.end method

.method protected ServiceConnectedOperation()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public createUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 3
    .parameter "context"
    .parameter "titleResID"
    .parameter "message"
    .parameter "bCancelable"

    .prologue
    .line 209
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 210
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 211
    const-string v1, "wangwei"

    const-string v2, "mProgressDialog create......"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 214
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 218
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 219
    new-instance v0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$2;-><init>(Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;Landroid/content/Context;)V

    .line 227
    .local v0, onCancel:Landroid/content/DialogInterface$OnCancelListener;
    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 234
    .end local v0           #onCancel:Landroid/content/DialogInterface$OnCancelListener;
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 236
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 238
    :cond_1
    return-void
.end method

.method protected dismissUpdateListProgressDialog()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 259
    :cond_0
    return-void
.end method

.method protected getActivityView()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method protected getIntentFilterArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 173
    const-string v5, "<==>tsj"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; onCreate"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-super {p0, p1}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x7f02002c

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 185
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->getActivityView()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->setContentView(I)V

    .line 187
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->getIntentFilterArray()Ljava/util/List;

    move-result-object v2

    .line 188
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;>;"
    if-eqz v2, :cond_1

    .line 189
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;

    .line 190
    .local v3, localArray:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .local v4, localIF:Landroid/content/IntentFilter;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->getActionNumber()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 192
    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->getAction(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_0
    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 195
    iget-object v5, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mPackageBroadcastReceiver:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$PackageBroadcastReceiver;

    invoke-virtual {p0, v5, v4}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 199
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #localArray:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;
    .end local v4           #localIF:Landroid/content/IntentFilter;
    :cond_1
    new-instance v5, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$SpeedServiceConnection;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$SpeedServiceConnection;-><init>(Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;)V

    iput-object v5, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerServiceConnection:Landroid/content/ServiceConnection;

    .line 200
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v5

    new-instance v6, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$Idler;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$Idler;-><init>(Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$1;)V

    invoke-virtual {v5, v6}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 201
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 263
    const-string v1, "<==>tsj"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-super {p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->onDestroy()V

    .line 266
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->getIntentFilterArray()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mPackageBroadcastReceiver:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$PackageBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    .line 274
    :try_start_1
    const-string v1, "<==>tsj"

    const-string v2, "onDestroy unregisterCallBack"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerCallBack:Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/apksmanager/IApksManagerService;->unregisterCallBack(Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 284
    iput-object v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerServiceConnection:Landroid/content/ServiceConnection;

    .line 285
    iput-object v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    .line 289
    :cond_2
    :goto_1
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 281
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 284
    iput-object v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerServiceConnection:Landroid/content/ServiceConnection;

    .line 285
    iput-object v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    goto :goto_1

    .line 284
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerServiceConnection:Landroid/content/ServiceConnection;

    .line 285
    iput-object v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    throw v1
.end method

.method public onNotifyBackupApkResult(Z)V
    .locals 0
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    return-void
.end method

.method public onNotifyProgress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "progress"
    .parameter "taskName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    return-void
.end method

.method public onUpdateDefaultSettingAppList(Ljava/util/List;)V
    .locals 0
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
    .line 94
    .local p1, defaultSettingAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;>;"
    return-void
.end method

.method public onUpdateMoveableAppList(Ljava/util/List;)V
    .locals 0
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
    .line 97
    .local p1, moveableAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;>;"
    return-void
.end method

.method public onUpdateSDCardApksList(Ljava/util/List;)V
    .locals 0
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
    .line 100
    .local p1, SDCardApksList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;>;"
    return-void
.end method

.method public onUpdateSystemAppList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, uninstallableAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;>;"
    return-void
.end method

.method public onUpdateUninstallableAppList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    .local p1, uninstallableAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;>;"
    return-void
.end method

.method public showUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "titleResID"
    .parameter "message"
    .parameter "bCancelable"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 244
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    const-string v0, "wangwei"

    const-string v1, "mProgressDialog show......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 249
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 252
    :cond_0
    return-void
.end method
