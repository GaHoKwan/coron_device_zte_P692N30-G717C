.class public Lcom/zte/heartyservice/examination/MainExamActivity;
.super Landroid/app/Activity;
.source "MainExamActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$ListViewCallBacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/examination/MainExamActivity$4;,
        Lcom/zte/heartyservice/examination/MainExamActivity$SpeedUpServiceConnection;,
        Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;,
        Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;,
        Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;
    }
.end annotation


# static fields
.field private static final MSG_CHECK_AUTO_UPDATE_BEGIN:I = 0x26

.field private static final MSG_CHECK_AUTO_UPDATE_END:I = 0x27

.field private static final MSG_CHECK_BACKUP_BEGIN:I = 0x2b

.field private static final MSG_CHECK_BACKUP_END:I = 0x2c

.field private static final MSG_CHECK_NETWORKTRAFFICMONITOR_BEGIN:I = 0x2

.field private static final MSG_CHECK_NETWORKTRAFFICMONITOR_END:I = 0x3

.field private static final MSG_CHECK_PERMISSIONMONITOR_BEGIN:I = 0x6

.field private static final MSG_CHECK_PERMISSIONMONITOR_END:I = 0x7

.field private static final MSG_CHECK_RETRIEVE_BEGIN:I = 0x29

.field private static final MSG_CHECK_RETRIEVE_END:I = 0x2a

.field private static final MSG_CHECK_SAVEELECTRICITYPROTECTOR_BEGIN:I = 0x4

.field private static final MSG_CHECK_SAVEELECTRICITYPROTECTOR_END:I = 0x5

.field private static final MSG_CLEARPERMISSIONSCANRESULT_END:I = 0x23

.field private static final MSG_CLEARTASK_END:I = 0x1b

.field private static final MSG_CLEAR_APP_CACHE_END:I = 0x1f

.field private static final MSG_CLOSE_RUNNING_PROCESS_END:I = 0x21

.field private static final MSG_CLOUDVINUSSCAN_BEGIN:I = 0x15

.field private static final MSG_CLOUDVINUSSCAN_END:I = 0x16

.field private static final MSG_DISABLE_AUTORUN_APP_END:I = 0x20

.field private static final MSG_DOPERMISSIONSCAN_BEGIN:I = 0x17

.field private static final MSG_DOPERMISSIONSCAN_END:I = 0x18

.field private static final MSG_EXAMINATIONTASK_END:I = 0x19

.field private static final MSG_INITANTIVIRUSENGINE_BEGIN:I = 0x10

.field private static final MSG_INITANTIVIRUSENGINE_END:I = 0x11

.field private static final MSG_OPEN_AUTO_UPDATE_END:I = 0x28

.field private static final MSG_OPEN_NETWORKTRAFFICMONITOR_END:I = 0x1c

.field private static final MSG_OPEN_PERMISSIONMONITOR_END:I = 0x1e

.field private static final MSG_OPEN_SAVEELECTRICITYPROTECTOR_END:I = 0x1d

.field private static final MSG_REMOVENOTSECURITYAPP_END:I = 0x22

.field private static final MSG_SCANAPPFORVINUS_BEGIN:I = 0x12

.field private static final MSG_SCANAPPFORVINUS_END:I = 0x13

.field private static final MSG_SCANAPPFORVINUS_NULL:I = 0x14

.field private static final MSG_SCAN_APP_CACHE_BEGIN:I = 0xa

.field private static final MSG_SCAN_APP_CACHE_END:I = 0xb

.field private static final MSG_SCAN_APP_DATA_BEGIN:I = 0x24

.field private static final MSG_SCAN_APP_DATA_END:I = 0x25

.field private static final MSG_SCAN_AUTORUN_APP_BEGIN:I = 0xc

.field private static final MSG_SCAN_AUTORUN_APP_END:I = 0xd

.field private static final MSG_SCAN_RUNNING_PROCESS_BEGIN:I = 0xe

.field private static final MSG_SCAN_RUNNING_PROCESS_END:I = 0xf

.field private static final MSG_START_CLEARTASK:I = 0x1a

.field private static final MSG_START_EXAMINATIONTASK:I = 0x1


# instance fields
.field private adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

.field private can_close:I

.field private circleView:Landroid/widget/ImageView;

.field private clear_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation
.end field

.field private examItemTxt:Landroid/widget/TextView;

.field private examRotate:Landroid/widget/ImageView;

.field private examScore:Landroid/widget/TextView;

.field private examStateTxt:Landroid/view/View;

.field private examText:Landroid/widget/TextView;

.field private exameState:Landroid/widget/TextView;

.field private examinationCompleted:Z

.field private itemAppName:Landroid/widget/TextView;

.field private itemExamListItem:Lcom/zte/heartyservice/examination/ExamListItem;

.field private itemExamType:Lcom/zte/heartyservice/examination/ExamType;

.field private itemOK:Landroid/widget/ImageView;

.field private itemSpeedItemLayout:Landroid/widget/RelativeLayout;

.field private itemStateBtn:Landroid/widget/Button;

.field private mAppCacheInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupDecrease:I

.field private mBackupItem:Lcom/zte/heartyservice/examination/ExamListItem;

.field private mCacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallBack:Lcom/zte/heartyservice/common/utils/CallBack;

.field private mClearTask:Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;

.field private mExaminationHandler:Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;

.field private mExaminationTask:Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;

.field private mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

.field private mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

.field private mListView:Landroid/widget/ListView;

.field private mRetrieveItem:Lcom/zte/heartyservice/examination/ExamListItem;

.field private mRotateAnimation:Landroid/view/animation/Animation;

.field private mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

.field private mark:I

.field private needStartClearTask:Z

.field private noStorageItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;

.field private ok_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation
.end field

.field private packageManager:Landroid/content/pm/PackageManager;

.field private rotateDrawables:[Landroid/graphics/drawable/Drawable;

.field private starViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private stars:[Landroid/graphics/drawable/Drawable;

.field private stopRotate:Z

.field private subtractStar:I

.field private tmp_permission_item:Lcom/zte/heartyservice/common/datatype/CommonListItem;

.field private to_optimize_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation
.end field

.field private total_run:I

.field private wait:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    iput-boolean v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->needStartClearTask:Z

    .line 87
    iput-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 88
    iput-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 89
    iput-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->packageManager:Landroid/content/pm/PackageManager;

    .line 91
    new-instance v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;-><init>(Lcom/zte/heartyservice/examination/MainExamActivity;Lcom/zte/heartyservice/examination/MainExamActivity$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mExaminationHandler:Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;

    .line 92
    new-instance v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;-><init>(Lcom/zte/heartyservice/examination/MainExamActivity;Lcom/zte/heartyservice/examination/MainExamActivity$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mExaminationTask:Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;

    .line 93
    new-instance v0, Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;-><init>(Lcom/zte/heartyservice/examination/MainExamActivity;Lcom/zte/heartyservice/examination/MainExamActivity$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mClearTask:Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->wait:Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->to_optimize_list:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->ok_list:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->clear_list:Ljava/util/List;

    .line 99
    iput v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->total_run:I

    .line 100
    iput v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->can_close:I

    .line 101
    iput-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->tmp_permission_item:Lcom/zte/heartyservice/common/datatype/CommonListItem;

    .line 102
    const/16 v0, 0x64

    iput v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    .line 103
    iput v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mBackupDecrease:I

    .line 104
    iput-boolean v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examinationCompleted:Z

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->starViews:Ljava/util/List;

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->stars:[Landroid/graphics/drawable/Drawable;

    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->rotateDrawables:[Landroid/graphics/drawable/Drawable;

    .line 160
    iput-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemSpeedItemLayout:Landroid/widget/RelativeLayout;

    .line 162
    iput-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mRetrieveItem:Lcom/zte/heartyservice/examination/ExamListItem;

    .line 163
    iput-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mBackupItem:Lcom/zte/heartyservice/examination/ExamListItem;

    .line 168
    iput-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mCacheList:Ljava/util/List;

    .line 170
    iput v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->subtractStar:I

    .line 176
    new-instance v0, Lcom/zte/heartyservice/examination/MainExamActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/examination/MainExamActivity$1;-><init>(Lcom/zte/heartyservice/examination/MainExamActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mCallBack:Lcom/zte/heartyservice/common/utils/CallBack;

    .line 761
    new-instance v0, Lcom/zte/heartyservice/examination/MainExamActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/examination/MainExamActivity$2;-><init>(Lcom/zte/heartyservice/examination/MainExamActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    .line 1312
    iput-boolean v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->stopRotate:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examItemTxt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/examination/MainExamActivity;->log2OkList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/examination/MainExamActivity;->log22OptimizeList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/zte/heartyservice/examination/MainExamActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mBackupDecrease:I

    return v0
.end method

.method static synthetic access$1302(Lcom/zte/heartyservice/examination/MainExamActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mBackupDecrease:I

    return p1
.end method

.method static synthetic access$1400(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/zte/heartyservice/examination/MainExamActivity;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/zte/heartyservice/examination/MainExamActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->subtractStar:I

    return p1
.end method

.method static synthetic access$1700(Lcom/zte/heartyservice/examination/MainExamActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->can_close:I

    return v0
.end method

.method static synthetic access$1702(Lcom/zte/heartyservice/examination/MainExamActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->can_close:I

    return p1
.end method

.method static synthetic access$1708(Lcom/zte/heartyservice/examination/MainExamActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->can_close:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->can_close:I

    return v0
.end method

.method static synthetic access$1800(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->packageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->exameState:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/zte/heartyservice/examination/MainExamActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/zte/heartyservice/examination/MainExamActivity;->endAnimation()V

    return-void
.end method

.method static synthetic access$2100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/heartyservice/examination/MainExamActivity;->log2ClearList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2202(Lcom/zte/heartyservice/examination/MainExamActivity;Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;)Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mClearTask:Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->tmp_permission_item:Lcom/zte/heartyservice/common/datatype/CommonListItem;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/zte/heartyservice/examination/MainExamActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->total_run:I

    return p1
.end method

.method static synthetic access$2500(Lcom/zte/heartyservice/examination/MainExamActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/zte/heartyservice/examination/MainExamActivity;->taskGo()V

    return-void
.end method

.method static synthetic access$2600(Lcom/zte/heartyservice/examination/MainExamActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mCacheList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mCacheList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mAppCacheInfoList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/zte/heartyservice/examination/MainExamActivity;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/zte/heartyservice/examination/MainExamActivity;->taskWaiting()V

    return-void
.end method

.method static synthetic access$2900(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/common/utils/CallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mCallBack:Lcom/zte/heartyservice/common/utils/CallBack;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/examination/MainExamActivity;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/examination/MainExamActivity;->sendMsg(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/zte/heartyservice/examination/MainExamActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->stopRotate:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/zte/heartyservice/examination/MainExamActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->stopRotate:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examRotate:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/examination/MainExamActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->to_optimize_list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/examination/MainExamActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->ok_list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/zte/heartyservice/examination/MainExamActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    return p1
.end method

.method static synthetic access$712(Lcom/zte/heartyservice/examination/MainExamActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iget v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    return v0
.end method

.method static synthetic access$720(Lcom/zte/heartyservice/examination/MainExamActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iget v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    return v0
.end method

.method static synthetic access$802(Lcom/zte/heartyservice/examination/MainExamActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examinationCompleted:Z

    return p1
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mExaminationTask:Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;

    return-object v0
.end method

.method private endAnimation()V
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examRotate:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1349
    return-void
.end method

.method private eventInit()V
    .locals 6

    .prologue
    .line 1258
    const v5, 0x7f0e00c4

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->circleView:Landroid/widget/ImageView;

    .line 1259
    iget-object v5, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->circleView:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1261
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->needStartClearTask:Z

    .line 1263
    const v5, 0x7f0e00c2

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examItemTxt:Landroid/widget/TextView;

    .line 1264
    const v5, 0x7f0e00c3

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->exameState:Landroid/widget/TextView;

    .line 1266
    const v5, 0x7f0e00c7

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examText:Landroid/widget/TextView;

    .line 1267
    const v5, 0x7f0e00c6

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examScore:Landroid/widget/TextView;

    .line 1270
    const v5, 0x7f0e00c5

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examRotate:Landroid/widget/ImageView;

    .line 1272
    const v5, 0x7f0e00c9

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1273
    .local v0, star1:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->starViews:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1274
    const v5, 0x7f0e00ca

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1275
    .local v1, star2:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->starViews:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1276
    const v5, 0x7f0e00cb

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1277
    .local v2, star3:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->starViews:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1278
    const v5, 0x7f0e00cc

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1279
    .local v3, star4:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->starViews:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1280
    const v5, 0x7f0e00cd

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1281
    .local v4, star5:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->starViews:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1282
    return-void
.end method

.method private from2OptimizeList2OkList(Lcom/zte/heartyservice/examination/ExamListItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 256
    invoke-virtual {p1}, Lcom/zte/heartyservice/examination/ExamListItem;->getStateType()Lcom/zte/heartyservice/common/datatype/StateType;

    move-result-object v0

    sget-object v1, Lcom/zte/heartyservice/common/datatype/StateType;->SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    if-ne v0, v1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 266
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/common/datatype/StateType;->SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    invoke-virtual {p1, v0}, Lcom/zte/heartyservice/examination/ExamListItem;->setStateType(Lcom/zte/heartyservice/common/datatype/StateType;)V

    .line 268
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->clearSuject()V

    .line 269
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->to_optimize_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    const v1, 0x7f0a0249

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->to_optimize_list:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->addSubjectDynamic(Ljava/lang/String;Ljava/util/List;)V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    const v1, 0x7f0a024e

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->ok_list:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->addSubjectDynamic(Ljava/lang/String;Ljava/util/List;)V

    .line 273
    invoke-virtual {p0}, Lcom/zte/heartyservice/examination/MainExamActivity;->showStar()V

    goto :goto_0
.end method

.method private listInit()V
    .locals 2

    .prologue
    .line 1293
    const v0, 0x7f0e00cf

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/examination/MainExamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mListView:Landroid/widget/ListView;

    .line 1298
    new-instance v0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    .line 1299
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->clearSuject()V

    .line 1300
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->setListViewCallBacks(Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$ListViewCallBacks;)V

    .line 1301
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1302
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    iget-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->setListView(Landroid/widget/ListView;)V

    .line 1303
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1305
    return-void
.end method

.method private log22OptimizeList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    .locals 4
    .parameter "showlog"
    .parameter "type"

    .prologue
    .line 219
    new-instance v0, Lcom/zte/heartyservice/examination/ExamListItem;

    sget-object v1, Lcom/zte/heartyservice/common/datatype/StateType;->UNSELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    invoke-direct {v0, p1, p2, v1}, Lcom/zte/heartyservice/examination/ExamListItem;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/zte/heartyservice/common/datatype/StateType;)V

    .line 220
    .local v0, localExamListItem:Lcom/zte/heartyservice/examination/ExamListItem;
    sget-object v1, Lcom/zte/heartyservice/examination/ExamType;->SENSITIVEPERMISSION:Lcom/zte/heartyservice/examination/ExamType;

    if-ne p2, v1, :cond_0

    .line 221
    iput-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->tmp_permission_item:Lcom/zte/heartyservice/common/datatype/CommonListItem;

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->to_optimize_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    invoke-virtual {v1}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->clearSuject()V

    .line 225
    iget-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    const v2, 0x7f0a0249

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->to_optimize_list:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->addSubjectDynamic(Ljava/lang/String;Ljava/util/List;)V

    .line 226
    iget-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->ok_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    const v2, 0x7f0a024e

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->ok_list:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->addSubjectDynamic(Ljava/lang/String;Ljava/util/List;)V

    .line 229
    :cond_1
    return-void
.end method

.method private log2ClearList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;Ljava/lang/Object;)V
    .locals 2
    .parameter "showlog"
    .parameter "type"
    .parameter "obj"

    .prologue
    .line 232
    if-nez p3, :cond_0

    .line 245
    :goto_0
    return-void

    :cond_0
    move-object v0, p3

    .line 235
    check-cast v0, Lcom/zte/heartyservice/examination/ExamListItem;

    .line 236
    .local v0, localExamListItem:Lcom/zte/heartyservice/examination/ExamListItem;
    sget-object v1, Lcom/zte/heartyservice/common/datatype/StateType;->SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/examination/ExamListItem;->setStateType(Lcom/zte/heartyservice/common/datatype/StateType;)V

    .line 237
    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/examination/ExamListItem;->setRefName(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, p2}, Lcom/zte/heartyservice/examination/ExamListItem;->setTag(Ljava/lang/Object;)V

    .line 240
    iget-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    invoke-virtual {v1}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private log2OkList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    .locals 4
    .parameter "showlog"
    .parameter "type"

    .prologue
    .line 206
    new-instance v0, Lcom/zte/heartyservice/examination/ExamListItem;

    sget-object v1, Lcom/zte/heartyservice/common/datatype/StateType;->SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    invoke-direct {v0, p1, p2, v1}, Lcom/zte/heartyservice/examination/ExamListItem;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/zte/heartyservice/common/datatype/StateType;)V

    .line 207
    .local v0, localExamListItem:Lcom/zte/heartyservice/examination/ExamListItem;
    sget-object v1, Lcom/zte/heartyservice/examination/ExamType;->SENSITIVEPERMISSION:Lcom/zte/heartyservice/examination/ExamType;

    if-ne p2, v1, :cond_0

    .line 208
    iput-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->tmp_permission_item:Lcom/zte/heartyservice/common/datatype/CommonListItem;

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->ok_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    invoke-virtual {v1}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->clearSuject()V

    .line 212
    iget-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->to_optimize_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    const v2, 0x7f0a0249

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->to_optimize_list:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->addSubjectDynamic(Ljava/lang/String;Ljava/util/List;)V

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    const v2, 0x7f0a024e

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->ok_list:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->addSubjectDynamic(Ljava/lang/String;Ljava/util/List;)V

    .line 216
    return-void
.end method

.method private removeFromOptimizeList(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 278
    if-nez p1, :cond_0

    .line 287
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->to_optimize_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->clearSuject()V

    .line 283
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->to_optimize_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    const v1, 0x7f0a0249

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->to_optimize_list:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->addSubjectDynamic(Ljava/lang/String;Ljava/util/List;)V

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    const v1, 0x7f0a024e

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->ok_list:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->addSubjectDynamic(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method private sendMsg(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 187
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 188
    .local v0, message:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 189
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mExaminationHandler:Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 191
    return-void
.end method

.method private setButtonText(Lcom/zte/heartyservice/examination/ExamType;Landroid/widget/Button;)V
    .locals 2
    .parameter "examType"
    .parameter "button"

    .prologue
    .line 1571
    sget-object v0, Lcom/zte/heartyservice/examination/MainExamActivity$4;->$SwitchMap$com$zte$heartyservice$examination$ExamType:[I

    invoke-virtual {p1}, Lcom/zte/heartyservice/examination/ExamType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1600
    :goto_0
    return-void

    .line 1573
    :pswitch_0
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1580
    :pswitch_1
    const v0, 0x7f0a0248

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1583
    :pswitch_2
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1588
    :pswitch_3
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1591
    :pswitch_4
    const v0, 0x7f0a0030

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1594
    :pswitch_5
    const v0, 0x7f0a0277

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1597
    :pswitch_6
    const v0, 0x7f0a0125

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1571
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private setExamLevel(II)V
    .locals 1
    .parameter "level"
    .parameter "subtract"

    .prologue
    .line 325
    sub-int v0, p1, p2

    if-lez v0, :cond_0

    .line 326
    sub-int v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/examination/MainExamActivity;->setExamLevel(I)V

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/examination/MainExamActivity;->setExamLevel(I)V

    goto :goto_0
.end method

.method private setExamScore(II)V
    .locals 3
    .parameter "score"
    .parameter "subtract"

    .prologue
    const/4 v1, 0x0

    .line 333
    mul-int/lit8 v0, p2, 0x14

    sub-int/2addr p1, v0

    .line 334
    if-lez p1, :cond_1

    move v0, p1

    :goto_0
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setExamScore(I)V

    .line 336
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examScore:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examScore:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 334
    goto :goto_0
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mRotateAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 1315
    const v0, 0x7f040002

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 1316
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mRotateAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/zte/heartyservice/examination/MainExamActivity$3;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/examination/MainExamActivity$3;-><init>(Lcom/zte/heartyservice/examination/MainExamActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1339
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examRotate:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1340
    return-void
.end method

.method private taskGo()V
    .locals 2

    .prologue
    .line 194
    iget-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->wait:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->wait:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 196
    monitor-exit v1

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private taskWaiting()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->wait:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->wait:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 202
    monitor-exit v1

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "title"
    .parameter "icon"

    .prologue
    const/16 v1, 0x8

    .line 1285
    invoke-virtual {p0}, Lcom/zte/heartyservice/examination/MainExamActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1286
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1287
    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1288
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1289
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 1290
    return-void
.end method

.method protected layoutInit(Landroid/widget/RelativeLayout;I)V
    .locals 3
    .parameter "speedItemLayout"
    .parameter "listItemId"

    .prologue
    .line 1642
    const-string v0, "layout_inflater"

    .line 1643
    .local v0, inflater:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/examination/MainExamActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1644
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x1

    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1645
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1514
    if-nez p1, :cond_1

    .line 1515
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getAvailableInternalMemorySize()J

    move-result-wide v0

    .line 1516
    .local v0, available:J
    const-wide/16 v4, 0x64

    mul-long/2addr v4, v0

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getTotalInternalMemorySize()J

    move-result-wide v6

    div-long v2, v4, v6

    .line 1517
    .local v2, availablePercent:J
    iget-object v4, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->noStorageItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;

    invoke-direct {p0, v4}, Lcom/zte/heartyservice/examination/MainExamActivity;->removeFromOptimizeList(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V

    .line 1518
    const-wide/32 v4, 0x6400000

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2

    .line 1519
    const/4 v4, 0x0

    iput v4, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->subtractStar:I

    .line 1533
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/examination/MainExamActivity;->showStar()V

    .line 1535
    .end local v0           #available:J
    .end local v2           #availablePercent:J
    :cond_1
    return-void

    .line 1520
    .restart local v0       #available:J
    .restart local v2       #availablePercent:J
    :cond_2
    const-wide/32 v4, 0x6400000

    cmp-long v4, v0, v4

    if-gez v4, :cond_3

    const-wide/32 v4, 0x3200000

    cmp-long v4, v0, v4

    if-ltz v4, :cond_3

    .line 1521
    const v4, 0x7f0a0276

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/zte/heartyservice/examination/ExamType;->NOSTORAGE:Lcom/zte/heartyservice/examination/ExamType;

    invoke-direct {p0, v4, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->log22OptimizeList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    .line 1522
    const/4 v4, 0x0

    iput v4, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->subtractStar:I

    goto :goto_0

    .line 1523
    :cond_3
    const-wide/32 v4, 0x3200000

    cmp-long v4, v0, v4

    if-gez v4, :cond_4

    const-wide/32 v4, 0xa00000

    cmp-long v4, v0, v4

    if-ltz v4, :cond_4

    .line 1524
    const v4, 0x7f0a0276

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/zte/heartyservice/examination/ExamType;->NOSTORAGE:Lcom/zte/heartyservice/examination/ExamType;

    invoke-direct {p0, v4, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->log22OptimizeList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    .line 1525
    const/4 v4, 0x1

    iput v4, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->subtractStar:I

    goto :goto_0

    .line 1526
    :cond_4
    const-wide/32 v4, 0xa00000

    cmp-long v4, v0, v4

    if-gez v4, :cond_5

    const-wide/32 v4, 0x500000

    cmp-long v4, v0, v4

    if-ltz v4, :cond_5

    .line 1527
    const v4, 0x7f0a0276

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/zte/heartyservice/examination/ExamType;->NOSTORAGE:Lcom/zte/heartyservice/examination/ExamType;

    invoke-direct {p0, v4, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->log22OptimizeList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    .line 1528
    const/4 v4, 0x2

    iput v4, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->subtractStar:I

    goto/16 :goto_0

    .line 1529
    :cond_5
    const-wide/32 v4, 0x500000

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 1530
    const v4, 0x7f0a0276

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/zte/heartyservice/examination/ExamType;->NOSTORAGE:Lcom/zte/heartyservice/examination/ExamType;

    invoke-direct {p0, v4, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->log22OptimizeList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    .line 1531
    const/4 v4, 0x5

    iput v4, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->subtractStar:I

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "view"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1356
    const/4 v3, 0x0

    .line 1357
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    .line 1358
    .local v8, viewId:I
    sparse-switch v8, :sswitch_data_0

    .line 1510
    :cond_0
    :goto_0
    return-void

    .line 1361
    :sswitch_0
    iget-boolean v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examinationCompleted:Z

    if-eqz v9, :cond_0

    .line 1364
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zte/heartyservice/examination/ExamListItem;

    .line 1365
    .local v6, localExamListItem:Lcom/zte/heartyservice/examination/ExamListItem;
    invoke-virtual {v6}, Lcom/zte/heartyservice/examination/ExamListItem;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zte/heartyservice/examination/ExamType;->valueOf(Ljava/lang/String;)Lcom/zte/heartyservice/examination/ExamType;

    move-result-object v1

    .line 1366
    .local v1, examType:Lcom/zte/heartyservice/examination/ExamType;
    sget-object v9, Lcom/zte/heartyservice/examination/MainExamActivity$4;->$SwitchMap$com$zte$heartyservice$examination$ExamType:[I

    invoke-virtual {v1}, Lcom/zte/heartyservice/examination/ExamType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1493
    :goto_1
    sget-object v9, Lcom/zte/heartyservice/examination/ExamType;->RETRIEVE:Lcom/zte/heartyservice/examination/ExamType;

    if-eq v1, v9, :cond_0

    sget-object v9, Lcom/zte/heartyservice/examination/ExamType;->BACKUP:Lcom/zte/heartyservice/examination/ExamType;

    if-eq v1, v9, :cond_0

    .line 1494
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zte/heartyservice/examination/ExamListItem;

    invoke-direct {p0, v9}, Lcom/zte/heartyservice/examination/MainExamActivity;->from2OptimizeList2OkList(Lcom/zte/heartyservice/examination/ExamListItem;)V

    goto :goto_0

    .line 1369
    :pswitch_0
    const-string v9, "chenlu"

    const-string v10, "AUTORUNNING"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    :try_start_0
    iget-object v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->disableAutoRunApp(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1375
    :goto_2
    const v9, 0x7f0a0263

    invoke-virtual {p0, v9}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/zte/heartyservice/examination/ExamListItem;->setRefName(Ljava/lang/String;)V

    .line 1376
    iget v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    add-int/lit8 v9, v9, 0x5

    iput v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    goto :goto_1

    .line 1372
    :catch_0
    move-exception v0

    .line 1373
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 1380
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    const-string v9, "chenlu"

    const-string v10, "NETTRAFFIC"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    invoke-static {v11}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->setNetworkTrafficMonitorStatus(I)V

    .line 1382
    const v9, 0x7f0a0252

    invoke-virtual {p0, v9}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/zte/heartyservice/examination/ExamListItem;->setRefName(Ljava/lang/String;)V

    .line 1383
    iget v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    add-int/lit8 v9, v9, 0x5

    iput v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    goto :goto_1

    .line 1387
    :pswitch_2
    const-string v9, "chenlu"

    const-string v10, "POWERPROTECTED"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    invoke-static {v11}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->setSaveElectricityProtectorStatus(I)V

    .line 1389
    const v9, 0x7f0a0255

    invoke-virtual {p0, v9}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/zte/heartyservice/examination/ExamListItem;->setRefName(Ljava/lang/String;)V

    .line 1390
    iget v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    add-int/lit8 v9, v9, 0x5

    iput v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    goto :goto_1

    .line 1394
    :pswitch_3
    const-string v9, "chenlu"

    const-string v10, "AUTOUPDATE"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    const-string v9, "hs_auto_update"

    invoke-static {v9, v11}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setOption(Ljava/lang/String;Z)V

    .line 1396
    const v9, 0x7f0a0416

    invoke-virtual {p0, v9}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/zte/heartyservice/examination/ExamListItem;->setRefName(Ljava/lang/String;)V

    .line 1397
    iget v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    add-int/lit8 v9, v9, 0x5

    iput v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    goto/16 :goto_1

    .line 1400
    :pswitch_4
    const-string v9, "chenlu"

    const-string v10, "RETRIEVE"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1402
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v9, "com.zte.heartyservice.intent.action.startApk.RETRIEVE"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1404
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/examination/MainExamActivity;->startActivity(Landroid/content/Intent;)V

    .line 1405
    iput-object v6, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mRetrieveItem:Lcom/zte/heartyservice/examination/ExamListItem;

    .line 1406
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v9

    const/16 v10, 0x15

    invoke-virtual {v9, v10}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1407
    :catch_1
    move-exception v0

    .line 1408
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "com.zte.retrieve"

    invoke-static {p0, v9}, Lcom/zte/heartyservice/common/utils/AppUtils;->bkupFbkNotInstallDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1412
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_5
    const-string v9, "chenlu"

    const-string v10, "BACKUP"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1414
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v9, "com.zte.heartyservice.intent.action.startApk.CLOUDBACKUP"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1416
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/examination/MainExamActivity;->startActivity(Landroid/content/Intent;)V

    .line 1417
    iput-object v6, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mBackupItem:Lcom/zte/heartyservice/examination/ExamListItem;

    .line 1418
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v9

    const/16 v10, 0x14

    invoke-virtual {v9, v10}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 1419
    :catch_2
    move-exception v0

    .line 1420
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v9, "com.zte.heartyservice.intent.action.startApk.CLOUDBACKUP"

    invoke-static {p0, v9}, Lcom/zte/heartyservice/common/utils/AppUtils;->bkupFbkNotInstallDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1425
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_6
    const-string v9, "chenlu"

    const-string v10, "PERMISSION"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    invoke-static {v11}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->setPermissionMonitorStatus(I)V

    .line 1427
    const v9, 0x7f0a0258

    invoke-virtual {p0, v9}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/zte/heartyservice/examination/ExamListItem;->setRefName(Ljava/lang/String;)V

    .line 1428
    iget v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    add-int/lit8 v9, v9, 0x5

    iput v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    goto/16 :goto_1

    .line 1432
    :pswitch_7
    const-string v9, "chenlu"

    const-string v10, "MEMORYANDDEVICE"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1436
    :pswitch_8
    const-string v9, "chenlu"

    const-string v10, "VIRRUS"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getDetectedNotSecurityAppList()Ljava/util/List;

    move-result-object v5

    .line 1438
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 1439
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    .line 1440
    .local v4, item:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    invoke-static {v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->removeNotSecurityApp(Lcom/zte/heartyservice/common/datatype/VirusScanResult;)Z

    goto :goto_3

    .line 1443
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    :cond_1
    const v9, 0x7f0a026e

    invoke-virtual {p0, v9}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/zte/heartyservice/examination/ExamListItem;->setRefName(Ljava/lang/String;)V

    .line 1444
    iget v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    add-int/lit8 v9, v9, 0x1e

    iput v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    goto/16 :goto_1

    .line 1448
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    :pswitch_9
    const-string v9, "chenlu"

    const-string v10, "GABAGECLEAR"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :try_start_3
    iget-object v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mCacheList:Ljava/util/List;

    invoke-interface {v9, v10}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->clearAppCache(Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1454
    :goto_4
    const v9, 0x7f0a0261

    invoke-virtual {p0, v9}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/zte/heartyservice/examination/ExamListItem;->setRefName(Ljava/lang/String;)V

    .line 1455
    iget v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    add-int/lit8 v9, v9, 0x5

    iput v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    goto/16 :goto_1

    .line 1451
    :catch_3
    move-exception v0

    .line 1452
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 1459
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_a
    const-string v9, "chenlu"

    const-string v10, "SENSITIVEPERMISSION"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1461
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v9, "com.zte.heartyservice.intent.action.startActivity.PERMISSION_SCANNER"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1463
    :try_start_4
    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/examination/MainExamActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1467
    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zte/heartyservice/examination/ExamListItem;

    invoke-virtual {v9}, Lcom/zte/heartyservice/examination/ExamListItem;->getStateType()Lcom/zte/heartyservice/common/datatype/StateType;

    move-result-object v9

    sget-object v10, Lcom/zte/heartyservice/common/datatype/StateType;->SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    if-eq v9, v10, :cond_0

    .line 1470
    iget v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    add-int/lit8 v9, v9, 0x5

    iput v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    goto/16 :goto_1

    .line 1464
    :catch_4
    move-exception v0

    .line 1465
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 1475
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_b
    const-string v9, "chenlu"

    const-string v10, "RUNNINGAPP"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :try_start_5
    iget-object v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->closeRunningProcess(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1481
    :goto_6
    const v9, 0x7f0a0266

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {p0, v9, v10}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/zte/heartyservice/examination/ExamListItem;->setRefName(Ljava/lang/String;)V

    .line 1482
    iget v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    add-int/lit8 v9, v9, 0x5

    iput v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    goto/16 :goto_1

    .line 1478
    :catch_5
    move-exception v0

    .line 1479
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 1486
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_c
    new-instance v7, Landroid/content/Intent;

    const-class v9, Lcom/zte/heartyservice/examination/StorageListActivity;

    invoke-direct {v7, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1487
    .local v7, storageListIntent:Landroid/content/Intent;
    const-string v9, "appcacheinfo_list"

    iget-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mAppCacheInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1488
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zte/heartyservice/common/datatype/CommonListItem;

    iput-object v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->noStorageItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;

    .line 1489
    invoke-virtual {p0, v7, v12}, Lcom/zte/heartyservice/examination/MainExamActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1498
    .end local v1           #examType:Lcom/zte/heartyservice/examination/ExamType;
    .end local v6           #localExamListItem:Lcom/zte/heartyservice/examination/ExamListItem;
    .end local v7           #storageListIntent:Landroid/content/Intent;
    :sswitch_1
    iget-boolean v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->needStartClearTask:Z

    if-ne v9, v11, :cond_2

    iget-object v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mClearTask:Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;

    if-eqz v9, :cond_2

    .line 1499
    iput-boolean v12, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->needStartClearTask:Z

    .line 1500
    iget-object v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examText:Landroid/widget/TextView;

    const v10, 0x7f0a004f

    invoke-virtual {p0, v10}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1501
    iget-object v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examScore:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1503
    invoke-direct {p0}, Lcom/zte/heartyservice/examination/MainExamActivity;->startAnimation()V

    .line 1504
    iget-object v9, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mClearTask:Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;

    sget-object v10, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v11, v12, [Ljava/lang/Void;

    invoke-virtual {v9, v10, v11}, Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 1506
    :cond_2
    invoke-virtual {p0}, Lcom/zte/heartyservice/examination/MainExamActivity;->finish()V

    goto/16 :goto_0

    .line 1358
    :sswitch_data_0
    .sparse-switch
        0x7f0e00c4 -> :sswitch_1
        0x7f0e00d0 -> :sswitch_0
    .end sparse-switch

    .line 1366
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1195
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1196
    invoke-virtual {p0}, Lcom/zte/heartyservice/examination/MainExamActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->packageManager:Landroid/content/pm/PackageManager;

    .line 1197
    const v2, 0x7f03003e

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/examination/MainExamActivity;->setContentView(I)V

    .line 1198
    iget-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->stars:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/zte/heartyservice/examination/MainExamActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1199
    iget-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->stars:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/zte/heartyservice/examination/MainExamActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1201
    invoke-direct {p0}, Lcom/zte/heartyservice/examination/MainExamActivity;->eventInit()V

    .line 1202
    const v2, 0x7f0a0027

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v7}, Lcom/zte/heartyservice/examination/MainExamActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 1203
    invoke-direct {p0}, Lcom/zte/heartyservice/examination/MainExamActivity;->listInit()V

    .line 1204
    new-instance v2, Lcom/zte/heartyservice/examination/MainExamActivity$SpeedUpServiceConnection;

    invoke-direct {v2, p0, v7}, Lcom/zte/heartyservice/examination/MainExamActivity$SpeedUpServiceConnection;-><init>(Lcom/zte/heartyservice/examination/MainExamActivity;Lcom/zte/heartyservice/examination/MainExamActivity$1;)V

    iput-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 1205
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zte.heartyservice.intent.action.startService.SPEEDUPSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1206
    .local v1, intentSpeedUpService:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1211
    iget-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->rotateDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/zte/heartyservice/examination/MainExamActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1212
    iget-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->rotateDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/zte/heartyservice/examination/MainExamActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200a8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1213
    iget-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->rotateDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/zte/heartyservice/examination/MainExamActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1215
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.zte.heartyservice.intent.action.clean_autocheck_score"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1216
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/examination/MainExamActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1217
    return-void
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1163
    iget-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mExaminationTask:Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->cancel(Z)Z

    move-result v1

    .line 1164
    .local v1, is_cancel:Z
    iget-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mClearTask:Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;

    if-eqz v2, :cond_0

    .line 1165
    iget-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mClearTask:Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;->cancel(Z)Z

    .line 1167
    :cond_0
    const-string v2, "chenlu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mExaminationTask.cancel(true);is_cancel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_2

    .line 1170
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    .line 1172
    :try_start_1
    iget-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    iget-object v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v2, v3}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->unregisterCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1177
    :cond_1
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/examination/MainExamActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1181
    iput-object v5, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    .line 1185
    :cond_2
    :goto_1
    iput-object v5, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemAppName:Landroid/widget/TextView;

    .line 1186
    iput-object v5, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemExamListItem:Lcom/zte/heartyservice/examination/ExamListItem;

    .line 1187
    iput-object v5, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemExamType:Lcom/zte/heartyservice/examination/ExamType;

    .line 1188
    iput-object v5, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemSpeedItemLayout:Landroid/widget/RelativeLayout;

    .line 1189
    iput-object v5, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemStateBtn:Landroid/widget/Button;

    .line 1190
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1191
    return-void

    .line 1173
    :catch_0
    move-exception v0

    .line 1174
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1178
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1181
    iput-object v5, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    goto :goto_1

    :catchall_0
    move-exception v2

    iput-object v5, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;

    throw v2
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 1157
    invoke-direct {p0}, Lcom/zte/heartyservice/examination/MainExamActivity;->endAnimation()V

    .line 1158
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1159
    return-void
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 1221
    iget-object v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mRetrieveItem:Lcom/zte/heartyservice/examination/ExamListItem;

    if-eqz v3, :cond_0

    .line 1222
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getRetrieveStatus()I

    move-result v0

    .line 1223
    .local v0, status:I
    if-lez v0, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->includePhoneFindBack()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1224
    iget-object v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mRetrieveItem:Lcom/zte/heartyservice/examination/ExamListItem;

    const v4, 0x7f0a0419

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/examination/ExamListItem;->setRefName(Ljava/lang/String;)V

    .line 1225
    iget v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    add-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    .line 1226
    iget-object v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mRetrieveItem:Lcom/zte/heartyservice/examination/ExamListItem;

    invoke-direct {p0, v3}, Lcom/zte/heartyservice/examination/MainExamActivity;->from2OptimizeList2OkList(Lcom/zte/heartyservice/examination/ExamListItem;)V

    .line 1227
    iput-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mRetrieveItem:Lcom/zte/heartyservice/examination/ExamListItem;

    .line 1230
    .end local v0           #status:I
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mBackupItem:Lcom/zte/heartyservice/examination/ExamListItem;

    if-eqz v3, :cond_1

    .line 1231
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getBackupStatus()J

    move-result-wide v1

    .line 1232
    .local v1, time:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 1233
    iget-object v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mBackupItem:Lcom/zte/heartyservice/examination/ExamListItem;

    const v4, 0x7f0a0614

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/sql/Date;

    invoke-direct {v7, v1, v2}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/examination/ExamListItem;->setRefName(Ljava/lang/String;)V

    .line 1238
    iget v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    iget v4, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mBackupDecrease:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    .line 1239
    iput v8, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mBackupDecrease:I

    .line 1240
    iget-object v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mBackupItem:Lcom/zte/heartyservice/examination/ExamListItem;

    invoke-direct {p0, v3}, Lcom/zte/heartyservice/examination/MainExamActivity;->from2OptimizeList2OkList(Lcom/zte/heartyservice/examination/ExamListItem;)V

    .line 1241
    iput-object v10, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mBackupItem:Lcom/zte/heartyservice/examination/ExamListItem;

    .line 1244
    .end local v1           #time:J
    :cond_1
    iget-boolean v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examinationCompleted:Z

    if-nez v3, :cond_2

    .line 1245
    invoke-direct {p0}, Lcom/zte/heartyservice/examination/MainExamActivity;->startAnimation()V

    .line 1246
    iget-object v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examScore:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1248
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1249
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V

    .line 1250
    iget-boolean v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examinationCompleted:Z

    if-nez v3, :cond_3

    .line 1251
    iget-object v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->exameState:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1255
    :goto_0
    return-void

    .line 1253
    :cond_3
    iget-object v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->exameState:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setExamLevel(I)V
    .locals 6
    .parameter "level"

    .prologue
    .line 1609
    iget-object v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->starViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le p1, v3, :cond_0

    .line 1633
    :goto_0
    return-void

    .line 1612
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 1613
    iget-object v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->starViews:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->stars:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1612
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1615
    :cond_1
    move v1, p1

    .local v1, j:I
    :goto_2
    iget-object v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->starViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1616
    iget-object v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->starViews:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->stars:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1615
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1618
    :cond_2
    const v3, 0x7f0a024d

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1619
    .local v2, text:Ljava/lang/String;
    const/4 v3, 0x3

    if-ge p1, v3, :cond_3

    .line 1620
    iget-object v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examItemTxt:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0a024b

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1632
    :goto_3
    invoke-static {p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setExamResult(I)V

    goto :goto_0

    .line 1623
    :cond_3
    const/4 v3, 0x4

    if-gt p1, v3, :cond_4

    .line 1624
    iget-object v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examItemTxt:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0a024a

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1628
    :cond_4
    iget-object v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examItemTxt:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0a024c

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public showStar()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x64

    .line 292
    iget v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    if-ge v0, v2, :cond_0

    .line 293
    iput-boolean v3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->needStartClearTask:Z

    .line 294
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examText:Landroid/widget/TextView;

    const v1, 0x7f0a0246

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    :goto_0
    iget v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    if-lt v0, v2, :cond_1

    .line 300
    iput v2, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    .line 302
    const/4 v0, 0x5

    iget v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->subtractStar:I

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity;->setExamLevel(II)V

    .line 303
    iget v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    iget v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->subtractStar:I

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity;->setExamScore(II)V

    .line 321
    :goto_1
    return-void

    .line 296
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->needStartClearTask:Z

    .line 297
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->examText:Landroid/widget/TextView;

    const v1, 0x7f0a0247

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 304
    :cond_1
    iget v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    const/16 v1, 0x55

    if-lt v0, v1, :cond_2

    .line 306
    const/4 v0, 0x4

    iget v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->subtractStar:I

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity;->setExamLevel(II)V

    .line 307
    iget v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    iget v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->subtractStar:I

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity;->setExamScore(II)V

    goto :goto_1

    .line 308
    :cond_2
    iget v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    const/16 v1, 0x46

    if-le v0, v1, :cond_3

    .line 310
    const/4 v0, 0x3

    iget v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->subtractStar:I

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity;->setExamLevel(II)V

    .line 311
    iget v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    iget v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->subtractStar:I

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity;->setExamScore(II)V

    goto :goto_1

    .line 312
    :cond_3
    iget v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    const/16 v1, 0x37

    if-lt v0, v1, :cond_4

    .line 314
    const/4 v0, 0x2

    iget v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->subtractStar:I

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity;->setExamLevel(II)V

    .line 315
    iget v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    iget v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->subtractStar:I

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity;->setExamScore(II)V

    goto :goto_1

    .line 318
    :cond_4
    iget v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->subtractStar:I

    invoke-direct {p0, v3, v0}, Lcom/zte/heartyservice/examination/MainExamActivity;->setExamLevel(II)V

    .line 319
    iget v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I

    iget v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->subtractStar:I

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity;->setExamScore(II)V

    goto :goto_1
.end method

.method public updateViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1542
    check-cast p1, Lcom/zte/heartyservice/examination/ExamListItem;

    .end local p1
    iput-object p1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemExamListItem:Lcom/zte/heartyservice/examination/ExamListItem;

    .line 1544
    if-eqz p3, :cond_0

    instance-of v0, p3, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1545
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemSpeedItemLayout:Landroid/widget/RelativeLayout;

    .line 1546
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemSpeedItemLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f03003f

    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity;->layoutInit(Landroid/widget/RelativeLayout;I)V

    .line 1551
    .end local p3
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemSpeedItemLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0e0034

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemAppName:Landroid/widget/TextView;

    .line 1553
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemSpeedItemLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0e00d0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemStateBtn:Landroid/widget/Button;

    .line 1554
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemSpeedItemLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0e00d1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemOK:Landroid/widget/ImageView;

    .line 1555
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemAppName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemExamListItem:Lcom/zte/heartyservice/examination/ExamListItem;

    invoke-virtual {v1}, Lcom/zte/heartyservice/examination/ExamListItem;->getRefName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1556
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemExamListItem:Lcom/zte/heartyservice/examination/ExamListItem;

    invoke-virtual {v0}, Lcom/zte/heartyservice/examination/ExamListItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/heartyservice/examination/ExamType;->valueOf(Ljava/lang/String;)Lcom/zte/heartyservice/examination/ExamType;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemExamType:Lcom/zte/heartyservice/examination/ExamType;

    .line 1557
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemExamListItem:Lcom/zte/heartyservice/examination/ExamListItem;

    invoke-virtual {v0}, Lcom/zte/heartyservice/examination/ExamListItem;->getStateType()Lcom/zte/heartyservice/common/datatype/StateType;

    move-result-object v0

    sget-object v1, Lcom/zte/heartyservice/common/datatype/StateType;->SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemExamType:Lcom/zte/heartyservice/examination/ExamType;

    sget-object v1, Lcom/zte/heartyservice/examination/ExamType;->SENSITIVEPERMISSION:Lcom/zte/heartyservice/examination/ExamType;

    if-eq v0, v1, :cond_2

    .line 1558
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemStateBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1559
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemOK:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1565
    :goto_1
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemStateBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemExamListItem:Lcom/zte/heartyservice/examination/ExamListItem;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1566
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemStateBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1567
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemSpeedItemLayout:Landroid/widget/RelativeLayout;

    return-object v0

    .line 1548
    .restart local p3
    :cond_1
    check-cast p3, Landroid/widget/RelativeLayout;

    .end local p3
    iput-object p3, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemSpeedItemLayout:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 1561
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemStateBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1562
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemOK:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1563
    iget-object v0, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemExamType:Lcom/zte/heartyservice/examination/ExamType;

    iget-object v1, p0, Lcom/zte/heartyservice/examination/MainExamActivity;->itemStateBtn:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/examination/MainExamActivity;->setButtonText(Lcom/zte/heartyservice/examination/ExamType;Landroid/widget/Button;)V

    goto :goto_1
.end method
