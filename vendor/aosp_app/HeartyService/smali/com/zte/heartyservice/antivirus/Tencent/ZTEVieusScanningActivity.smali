.class public Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;
.super Landroid/app/Activity;
.source "ZTEVieusScanningActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$QScanResult;,
        Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;
    }
.end annotation


# static fields
.field private static final MSG_PUBLISH_PROGRESS:I = 0x5

.field private static final MSG_REFESH_TEXT:I = 0x0

.field private static final MSG_REFESH_TITLE_TEXT:I = 0x4

.field private static final MSG_REMOTE_OVER:I = 0x3

.field private static final MSG_REMOTE_START:I = 0x2

.field private static final MSG_REPORT_RESULT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ZTEVieusScanningActivity"


# instance fields
.field private examRotate:Landroid/widget/ImageView;

.field private mContentShower:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mHandle:Landroid/os/Handler;

.field private mImageBtn:Landroid/widget/ImageView;

.field private mImageBtnText:Landroid/widget/TextView;

.field private mIsCancel:Z

.field private mListener:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;

.field private mProgress:Landroid/widget/TextView;

.field private mQScannerManager:Ltmsdk/fg/module/qscanner/QScannerManagerV2;

.field private mQresultnum:I

.field mResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mResultListView:Landroid/widget/ListView;

.field private mRotateAnimation:Landroid/view/animation/Animation;

.field private mScanMode:I

.field private mScanReport:Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;

.field private mScanTime:J

.field private mTitleText:Landroid/widget/TextView;

.field private mVirusScanResultAdapter:Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;

.field private refreashTimes:I

.field private scanCompleted:Z

.field private stars:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    iput v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQresultnum:I

    .line 66
    iput-boolean v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->scanCompleted:Z

    .line 75
    iput-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQScannerManager:Ltmsdk/fg/module/qscanner/QScannerManagerV2;

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->stars:[Landroid/graphics/drawable/Drawable;

    .line 80
    iput v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->refreashTimes:I

    .line 82
    iput-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mResultList:Ljava/util/ArrayList;

    .line 87
    iput v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mScanMode:I

    .line 88
    iput-boolean v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mIsCancel:Z

    .line 90
    new-instance v0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;-><init>(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mHandle:Landroid/os/Handler;

    .line 844
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContentShower:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mImageBtnText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;)Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mScanReport:Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mScanTime:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mScanTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Ltmsdk/fg/module/qscanner/QScannerManagerV2;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQScannerManager:Ltmsdk/fg/module/qscanner/QScannerManagerV2;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;Ltmsdk/fg/module/qscanner/QScannerManagerV2;)Ltmsdk/fg/module/qscanner/QScannerManagerV2;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQScannerManager:Ltmsdk/fg/module/qscanner/QScannerManagerV2;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mListener:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mScanMode:I

    return v0
.end method

.method static synthetic access$1600(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mIsCancel:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->generateScanReport(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1908(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->refreashTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->refreashTimes:I

    return v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQresultnum:I

    return v0
.end method

.method static synthetic access$202(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQresultnum:I

    return p1
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mVirusScanResultAdapter:Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mResultListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->scanCompleted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mProgress:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->endAnimation()V

    return-void
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mTitleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private endAnimation()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->examRotate:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 404
    return-void
.end method

.method private generateScanReport(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 773
    .local p1, paramList:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .local v4, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 775
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    new-instance v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;

    invoke-direct {v9}, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;-><init>()V

    .line 776
    .local v9, scanReport:Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;
    iget v10, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mScanMode:I

    iput v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mScanMode:I

    .line 777
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltmsdk/common/module/qscanner/QScanResultEntity;

    .line 778
    .local v7, result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    const/4 v8, -0x1

    .line 779
    .local v8, resultcode:I
    iget v10, v7, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    packed-switch v10, :pswitch_data_0

    .line 816
    :pswitch_0
    const/4 v8, 0x0

    .line 820
    :goto_1
    if-eqz v8, :cond_0

    .line 821
    new-instance v2, Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    invoke-direct {v2}, Lcom/zte/heartyservice/common/datatype/VirusScanResult;-><init>()V

    .line 822
    .local v2, localVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    invoke-static {v2, v7}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->setVirusScanResultApkType(Lcom/zte/heartyservice/common/datatype/VirusScanResult;Ltmsdk/common/module/qscanner/QScanResultEntity;)V

    .line 826
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    new-instance v3, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;

    const/4 v10, 0x0

    invoke-direct {v3, v7, v10}, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;-><init>(Ltmsdk/common/module/qscanner/QScanResultEntity;I)V

    .line 829
    .local v3, record:Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 781
    .end local v2           #localVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    .end local v3           #record:Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;
    :pswitch_1
    iget v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mVirusFound:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mVirusFound:I

    .line 782
    iget v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mWaitingDealing:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mWaitingDealing:I

    .line 783
    const/4 v8, 0x1

    .line 784
    goto :goto_1

    .line 786
    :pswitch_2
    iget v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mRiskFound:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mRiskFound:I

    .line 787
    iget v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mWaitingDealing:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mWaitingDealing:I

    .line 788
    const/4 v8, 0x2

    .line 789
    goto :goto_1

    .line 796
    :pswitch_3
    iget v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mNotOfficialFound:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mNotOfficialFound:I

    .line 797
    iget v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mWaitingDealing:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mWaitingDealing:I

    .line 798
    const/4 v8, 0x4

    .line 799
    goto :goto_1

    .line 801
    :pswitch_4
    iget v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mRiskPayFound:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mRiskPayFound:I

    .line 802
    iget v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mWaitingDealing:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mWaitingDealing:I

    .line 803
    const/4 v8, 0x5

    .line 804
    goto :goto_1

    .line 806
    :pswitch_5
    iget v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mRiskStealAccountFound:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mRiskStealAccountFound:I

    .line 807
    iget v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mWaitingDealing:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mWaitingDealing:I

    .line 808
    const/4 v8, 0x6

    .line 809
    goto :goto_1

    .line 811
    :pswitch_6
    iget v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mTrojanFound:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mTrojanFound:I

    .line 812
    iget v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mWaitingDealing:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mWaitingDealing:I

    .line 813
    const/4 v8, 0x7

    .line 814
    goto :goto_1

    .line 832
    .end local v7           #result:Ltmsdk/common/module/qscanner/QScanResultEntity;
    .end local v8           #resultcode:I
    :cond_1
    invoke-static {v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->insertNotSecurityAppToTable(Ljava/util/List;)V

    .line 837
    invoke-direct {p0, v9}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->storeScanReport(Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;)J

    move-result-wide v5

    .line 839
    .local v5, reportId:J
    iput-wide v5, v9, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mID:J

    .line 840
    invoke-direct {p0, v4, v9}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->reportResult(Ljava/util/ArrayList;Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;)V

    .line 842
    return-void

    .line 779
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private reportResult(Ljava/util/ArrayList;Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;)V
    .locals 3
    .parameter
    .parameter "scanReport"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;",
            ">;",
            "Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 850
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;>;"
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mHandle:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 851
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 852
    new-instance v1, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$QScanResult;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$QScanResult;-><init>(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)V

    .line 853
    .local v1, result:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$QScanResult;
    iput-object p2, v1, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$QScanResult;->scanReport:Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;

    .line 854
    iput-object p1, v1, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$QScanResult;->records:Ljava/util/ArrayList;

    .line 855
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 856
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 857
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mRotateAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 371
    const v0, 0x7f040002

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->examRotate:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 396
    return-void
.end method

.method private storeScanReport(Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;)J
    .locals 8
    .parameter "report"

    .prologue
    .line 873
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 874
    .local v1, format:Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 880
    .local v0, date:Ljava/lang/String;
    iput-object v0, p1, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mScanDate:Ljava/lang/String;

    .line 881
    new-instance v2, Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;

    iget-object v5, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;-><init>(Landroid/content/Context;)V

    .line 882
    .local v2, qScanInfoDao:Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;
    invoke-virtual {v2, p1}, Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;->insertReport(Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;)J

    move-result-wide v3

    .line 886
    .local v3, reportId:J
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setLastScanTimeLong(J)V

    .line 887
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setLastScanTimeStr(Ljava/lang/String;)V

    .line 889
    return-wide v3
.end method


# virtual methods
.method protected initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "title"
    .parameter "icon"

    .prologue
    const/16 v1, 0x8

    .line 361
    invoke-virtual {p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 362
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 363
    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 364
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 365
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 366
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 894
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mImageBtn:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_0

    .line 895
    iget-boolean v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->scanCompleted:Z

    if-eqz v1, :cond_1

    .line 896
    invoke-virtual {p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->finish()V

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQScannerManager:Ltmsdk/fg/module/qscanner/QScannerManagerV2;

    if-eqz v1, :cond_0

    .line 901
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mIsCancel:Z

    .line 902
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQScannerManager:Ltmsdk/fg/module/qscanner/QScannerManagerV2;

    invoke-virtual {v1}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->cancelScan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 904
    :catch_0
    move-exception v0

    .line 905
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ZTEVieusScanningActivity"

    const-string v2, "mQScannerManager "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 185
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 187
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->finish()V

    .line 191
    :cond_0
    const v1, 0x7f0300e6

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->setContentView(I)V

    .line 192
    iput-object p0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContext:Landroid/content/Context;

    .line 193
    const v1, 0x7f0e0331

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mImageBtn:Landroid/widget/ImageView;

    .line 194
    const v1, 0x7f0e0332

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mImageBtnText:Landroid/widget/TextView;

    .line 196
    const v1, 0x7f0e00c2

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mTitleText:Landroid/widget/TextView;

    .line 197
    const v1, 0x7f0e0333

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mProgress:Landroid/widget/TextView;

    .line 198
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mImageBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const v1, 0x7f0e0093

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContentShower:Landroid/widget/TextView;

    .line 200
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContentShower:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 201
    const v1, 0x7f0e0334

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mResultListView:Landroid/widget/ListView;

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mResultList:Ljava/util/ArrayList;

    .line 203
    new-instance v1, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;

    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mResultList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;-><init>(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;Ljava/util/List;)V

    iput-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mVirusScanResultAdapter:Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;

    .line 204
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mResultListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mVirusScanResultAdapter:Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mResultListView:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 206
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->stars:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    .line 207
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->stars:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v5

    .line 218
    new-instance v1, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;

    invoke-direct {v1}, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;-><init>()V

    iput-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mScanReport:Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;

    .line 225
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContentShower:Landroid/widget/TextView;

    const v2, 0x7f0a0267

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 229
    new-instance v1, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;

    invoke-direct {v1, p0, v6}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;-><init>(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;)V

    iput-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mListener:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;

    .line 233
    invoke-virtual {p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 234
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->ScanAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->QuickScanAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    iput v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mScanMode:I

    .line 315
    :cond_1
    :goto_0
    new-instance v1, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$2;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$2;-><init>(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)V

    invoke-virtual {v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$2;->start()V

    .line 356
    const v1, 0x7f0e00c5

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->examRotate:Landroid/widget/ImageView;

    .line 357
    const v1, 0x7f0a001b

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v6}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 358
    return-void

    .line 266
    :cond_2
    sget-object v1, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->ScanAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->OverallScanAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    iput v5, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mScanMode:I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQScannerManager:Ltmsdk/fg/module/qscanner/QScannerManagerV2;

    if-eqz v1, :cond_0

    .line 426
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mIsCancel:Z

    .line 427
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQScannerManager:Ltmsdk/fg/module/qscanner/QScannerManagerV2;

    invoke-virtual {v1}, Ltmsdk/fg/module/qscanner/QScannerManagerV2;->cancelScan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 434
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ZTEVieusScanningActivity"

    const-string v2, "mQScannerManager "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->endAnimation()V

    .line 417
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 418
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->scanCompleted:Z

    if-nez v0, :cond_0

    .line 409
    invoke-direct {p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->startAnimation()V

    .line 411
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 412
    return-void
.end method

.method public removeQScanRecord(Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;)V
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 914
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 915
    new-instance v1, Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;

    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;-><init>(Landroid/content/Context;)V

    .line 916
    .local v1, qScanInfoDao:Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mScanReport:Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;

    iget v3, v2, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mVirusCured:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mVirusCured:I

    .line 917
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mScanReport:Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;

    iget v3, v2, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mWaitingDealing:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mWaitingDealing:I

    .line 918
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mScanReport:Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;->updateReport(Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;)J

    .line 920
    iget v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQresultnum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQresultnum:I

    .line 921
    iget v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQresultnum:I

    if-nez v2, :cond_2

    .line 924
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mTitleText:Landroid/widget/TextView;

    const v3, 0x7f0a0269

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 941
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 942
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mVirusScanResultAdapter:Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;

    invoke-virtual {v2}, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->notifyDataSetChanged()V

    .line 943
    invoke-static {v6}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkVirusList(Z)I

    .line 945
    .end local v1           #qScanInfoDao:Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;
    :cond_1
    return-void

    .line 925
    .restart local v1       #qScanInfoDao:Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;
    :cond_2
    iget v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQresultnum:I

    if-lt v2, v6, :cond_0

    .line 926
    iget v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQresultnum:I

    if-ne v2, v6, :cond_3

    .line 932
    :cond_3
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0a026c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQresultnum:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 933
    .local v0, data:Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
