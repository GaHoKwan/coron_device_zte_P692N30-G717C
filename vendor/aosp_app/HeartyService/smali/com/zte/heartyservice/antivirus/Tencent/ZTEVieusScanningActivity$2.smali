.class Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$2;
.super Ljava/lang/Thread;
.source "ZTEVieusScanningActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 318
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 319
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    #setter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mScanTime:J
    invoke-static {v4, v5, v6}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1202(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;J)J

    .line 320
    const/4 v2, 0x0

    .line 322
    .local v2, results:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    :try_start_0
    iget-object v5, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    const-class v4, Ltmsdk/fg/module/qscanner/QScannerManagerV2;

    invoke-static {v4}, Ltmsdk/fg/creator/ManagerCreatorF;->getManager(Ljava/lang/Class;)Ltmsdk/fg/creator/BaseManagerF;

    move-result-object v4

    check-cast v4, Ltmsdk/fg/module/qscanner/QScannerManagerV2;

    #setter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQScannerManager:Ltmsdk/fg/module/qscanner/QScannerManagerV2;
    invoke-static {v5, v4}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1302(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;Ltmsdk/fg/module/qscanner/QScannerManagerV2;)Ltmsdk/fg/module/qscanner/QScannerManagerV2;

    .line 323
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQScannerManager:Ltmsdk/fg/module/qscanner/QScannerManagerV2;
    invoke-static {v4}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1300(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Ltmsdk/fg/module/qscanner/QScannerManagerV2;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mListener:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;
    invoke-static {v5}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1400(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->nativeScanInstalledPackages(Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/List;

    move-result-object v1

    .line 325
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    if-eqz v1, :cond_2

    .line 326
    move-object v2, v1

    .line 330
    :goto_0
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mScanMode:I
    invoke-static {v4}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1500(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mIsCancel:Z
    invoke-static {v4}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1600(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 331
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQScannerManager:Ltmsdk/fg/module/qscanner/QScannerManagerV2;
    invoke-static {v4}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1300(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Ltmsdk/fg/module/qscanner/QScannerManagerV2;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mListener:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;
    invoke-static {v5}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1400(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->nativeScanUninstalledApks(Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/List;

    move-result-object v1

    .line 332
    if-eqz v1, :cond_0

    .line 333
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 336
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getNeedCloudScan()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mIsCancel:Z
    invoke-static {v4}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1600(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 338
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQScannerManager:Ltmsdk/fg/module/qscanner/QScannerManagerV2;
    invoke-static {v4}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1300(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Ltmsdk/fg/module/qscanner/QScannerManagerV2;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mListener:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;
    invoke-static {v5}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1400(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->cloudScan(Ljava/util/List;Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/List;

    move-result-object v1

    .line 339
    if-eqz v1, :cond_1

    .line 340
    move-object v2, v1

    .line 343
    :cond_1
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mListener:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;
    invoke-static {v4}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1400(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->scanOver(Ljava/util/List;)V

    .line 344
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQScannerManager:Ltmsdk/fg/module/qscanner/QScannerManagerV2;
    invoke-static {v4}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1300(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Ltmsdk/fg/module/qscanner/QScannerManagerV2;

    move-result-object v4

    invoke-virtual {v4}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->freeScanner()V

    .line 348
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    :goto_1
    return-void

    .line 328
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #results:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    .local v3, results:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    move-object v2, v3

    .end local v3           #results:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    .restart local v2       #results:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    goto :goto_0

    .line 345
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
