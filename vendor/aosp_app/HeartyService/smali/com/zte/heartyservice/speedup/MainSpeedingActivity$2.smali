.class Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;
.super Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;
.source "MainSpeedingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/MainSpeedingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public UpdateAppCacheList(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 235
    .local p1, appCacheList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAppCache()J

    move-result-wide v2

    #setter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_cache:J
    invoke-static {v1, v2, v3}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$2002(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;J)J

    .line 237
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->lock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1100(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    invoke-static {v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1208(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I

    .line 239
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    invoke-static {v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$2108(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I

    .line 240
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    const/4 v3, 0x1

    #setter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->isListAppCacheDone:Z
    invoke-static {v1, v3}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$2202(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Z)Z

    .line 241
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->task:I
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1200(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I

    move-result v1

    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->WAIT_TASKS_NUMBER:I
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1400(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 243
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    const/4 v3, 0x1

    #setter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->allScanFinished:Z
    invoke-static {v1, v3}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1502(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Z)Z

    .line 244
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->ic_speed:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1600(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->task_2:I
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$2100(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I

    move-result v1

    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->WAIT_TASKS_2_NUMBER:I
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$2300(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 247
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    const v3, 0x7f0a0049

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    invoke-virtual {v6}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_cache:J
    invoke-static {v7}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$2000(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->appCacheInfo:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$2400(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->appCacheInfo:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$2400(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    .end local v0           #str:Ljava/lang/String;
    :cond_1
    monitor-exit v2

    .line 257
    return-void

    .line 256
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public UpdateAppDataList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 262
    .local p1, appCacheList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    return-void
.end method

.method public UpdateAppFileList(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppFileInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 288
    .local p1, appFileList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    const-string v0, "Garbage"

    const-string v1, "liuji debug UpdateAppFileList 000"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method public UpdateAutoRunAppList(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, autoRunAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 213
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #setter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_auto:I
    invoke-static {v3, v7}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1702(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;I)I

    .line 214
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 215
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;

    .line 216
    .local v1, loaclAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    iget v4, v1, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->enable:I

    invoke-static {v3, v4}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1712(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;I)I

    goto :goto_0

    .line 219
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #loaclAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    const v4, 0x7f0a004a

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_auto:I
    invoke-static {v6}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1700(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, str:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->autorunAppInfo:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1800(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->autorunAppInfo:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1800(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->lock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1100(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 223
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    invoke-static {v3}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1208(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I

    .line 224
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    const/4 v5, 0x1

    #setter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->isListAutoRunAppDone:Z
    invoke-static {v3, v5}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1902(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Z)Z

    .line 225
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->task:I
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1200(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I

    move-result v3

    iget-object v5, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->WAIT_TASKS_NUMBER:I
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1400(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I

    move-result v5

    if-ne v3, v5, :cond_1

    .line 227
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    const/4 v5, 0x1

    #setter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->allScanFinished:Z
    invoke-static {v3, v5}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1502(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Z)Z

    .line 228
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->ic_speed:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1600(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 230
    :cond_1
    monitor-exit v4

    .line 231
    return-void

    .line 230
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public UpdateBackgroundAutoRunAppList(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, backgroundAutoRunAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 295
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getBackgroundAutoRunAppNum()I

    move-result v2

    #setter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_background_auto:I
    invoke-static {v1, v2}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$2502(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;I)I

    .line 297
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    const v2, 0x7f0a03f9

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_background_auto:I
    invoke-static {v4}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$2500(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->backgroundAutorunAppInfo:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$2600(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->backgroundAutorunAppInfo:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$2600(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->lock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1100(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    const/4 v3, 0x1

    #setter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->isListBackgroundAutoRunAppDone:Z
    invoke-static {v1, v3}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$2702(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Z)Z

    .line 306
    monitor-exit v2

    .line 308
    return-void

    .line 306
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public UpdateRunningProcessList(Ljava/util/List;J)V
    .locals 9
    .parameter
    .parameter "freeMemory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, runningProcessList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 187
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #setter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_run:I
    invoke-static {v3, v7}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$802(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;I)I

    .line 188
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #setter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->can_close:I
    invoke-static {v3, v7}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$902(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;I)I

    .line 189
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 190
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    #setter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_run:I
    invoke-static {v3, v4}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$802(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;I)I

    .line 191
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;

    .line 192
    .local v1, localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    iget v3, v1, Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;->is_checked:I

    if-ne v3, v8, :cond_0

    .line 193
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    invoke-static {v3}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$908(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I

    goto :goto_0

    .line 197
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #localRunningProcessInfo:Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;
    :cond_1
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    const v4, 0x7f0a0048

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->total_run:I
    invoke-static {v6}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$800(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->can_close:I
    invoke-static {v6}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$900(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, str:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->runningAppInfo:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1000(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->runningAppInfo:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1000(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->lock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1100(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 201
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    invoke-static {v3}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1208(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I

    .line 202
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    const/4 v5, 0x1

    #setter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->isListRunningProcessDone:Z
    invoke-static {v3, v5}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1302(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Z)Z

    .line 203
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->task:I
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1200(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I

    move-result v3

    iget-object v5, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->WAIT_TASKS_NUMBER:I
    invoke-static {v5}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1400(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)I

    move-result v5

    if-ne v3, v5, :cond_2

    .line 205
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    const/4 v5, 0x1

    #setter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->allScanFinished:Z
    invoke-static {v3, v5}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1502(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Z)Z

    .line 206
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$2;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->ic_speed:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$1600(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 208
    :cond_2
    monitor-exit v4

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
