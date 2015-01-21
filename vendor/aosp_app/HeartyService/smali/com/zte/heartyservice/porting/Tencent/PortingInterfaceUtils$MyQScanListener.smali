.class final Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;
.super Ltmsdk/fg/module/qscanner/QScanListenerV2;
.source "PortingInterfaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyQScanListener"
.end annotation


# instance fields
.field private mCallBack:Lcom/zte/heartyservice/common/utils/CallBack;

.field private mResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;

.field final synthetic this$0:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;Lcom/zte/heartyservice/common/datatype/VirusScanResult;Lcom/zte/heartyservice/common/utils/CallBack;)V
    .locals 1
    .parameter
    .parameter "result"
    .parameter "callBack"

    .prologue
    const/4 v0, 0x0

    .line 555
    iput-object p1, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;->this$0:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;

    .line 556
    invoke-direct {p0}, Ltmsdk/fg/module/qscanner/QScanListenerV2;-><init>()V

    .line 552
    iput-object v0, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;->mResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    .line 553
    iput-object v0, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;->mCallBack:Lcom/zte/heartyservice/common/utils/CallBack;

    .line 557
    if-eqz p2, :cond_0

    .line 558
    iput-object p2, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;->mResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    .line 562
    :goto_0
    iput-object p3, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;->mCallBack:Lcom/zte/heartyservice/common/utils/CallBack;

    .line 563
    return-void

    .line 560
    :cond_0
    new-instance v0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    invoke-direct {v0}, Lcom/zte/heartyservice/common/datatype/VirusScanResult;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;->mResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    goto :goto_0
.end method


# virtual methods
.method public onScanProgress(IILtmsdk/common/module/qscanner/QScanResultEntity;)V
    .locals 3
    .parameter "scanType"
    .parameter "progress"
    .parameter "result"

    .prologue
    .line 567
    packed-switch p1, :pswitch_data_0

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 569
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;->mResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    invoke-static {v1, p3}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->setVirusScanResultApkType(Lcom/zte/heartyservice/common/datatype/VirusScanResult;Ltmsdk/common/module/qscanner/QScanResultEntity;)V

    .line 570
    iget-object v1, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;->mResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    iget v1, v1, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    if-eqz v1, :cond_1

    .line 571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    iget-object v1, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;->mResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->insertNotSecurityAppToTable(Ljava/util/List;)V

    .line 576
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;->mCallBack:Lcom/zte/heartyservice/common/utils/CallBack;

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;->mCallBack:Lcom/zte/heartyservice/common/utils/CallBack;

    iget-object v2, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;->mResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/common/utils/CallBack;->cb(Lcom/zte/heartyservice/common/datatype/VirusScanResult;)V

    goto :goto_0

    .line 581
    :pswitch_1
    iget-object v1, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;->mResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    invoke-static {v1, p3}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->setVirusScanResultApkType(Lcom/zte/heartyservice/common/datatype/VirusScanResult;Ltmsdk/common/module/qscanner/QScanResultEntity;)V

    .line 582
    iget-object v1, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;->mResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    iget v1, v1, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    if-eqz v1, :cond_2

    .line 583
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    iget-object v1, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;->mResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->insertNotSecurityAppToTable(Ljava/util/List;)V

    .line 588
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    :cond_2
    iget-object v1, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;->mCallBack:Lcom/zte/heartyservice/common/utils/CallBack;

    if-eqz v1, :cond_0

    .line 589
    iget-object v1, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;->mCallBack:Lcom/zte/heartyservice/common/utils/CallBack;

    iget-object v2, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$MyQScanListener;->mResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/common/utils/CallBack;->cb(Lcom/zte/heartyservice/common/datatype/VirusScanResult;)V

    goto :goto_0

    .line 567
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
