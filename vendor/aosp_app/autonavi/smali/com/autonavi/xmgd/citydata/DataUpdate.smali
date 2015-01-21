.class public Lcom/autonavi/xmgd/citydata/DataUpdate;
.super Lcom/autonavi/xmgd/controls/GDBaseActivity;

# interfaces
.implements Lcom/autonavi/xmgd/citydata/DataUpdateService$IAllCompletionListener;
.implements Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;
.implements Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileRemovedListener;
.implements Lcom/autonavi/xmgd/citydata/DataUpdateService$IGetDataListListener;


# static fields
.field private static final DIALOG_ID_ALL_COMPLETION:I = 0x1

.field private static final DIALOG_ID_ALL_COMPLETION_EXIT:I = 0x14

.field private static final DIALOG_ID_CHECK_REMOVE_DATA:I = 0x7

.field private static final DIALOG_ID_CLEAR_TASKS:I = 0x6

.field private static final DIALOG_ID_DELETE_MODE:I = 0x16

.field private static final DIALOG_ID_GETLIST_NETEXCEPTION:I = 0x10

.field private static final DIALOG_ID_GETTING_DATA_LIST:I = 0xb

.field private static final DIALOG_ID_HAVING_TASK:I = 0x9

.field private static final DIALOG_ID_MOVE_TO_BACK_OR_PAUSE:I = 0x2

.field private static final DIALOG_ID_NAVIGATOR_HAS_EXITED:I = 0x8

.field private static final DIALOG_ID_NETWORK_ERROR:I = 0x4

.field private static final DIALOG_ID_NET_NO_WIFI:I = 0xe

.field private static final DIALOG_ID_NODATA:I = 0xd

.field private static final DIALOG_ID_NONE_ACTIVE_NETWORK:I = 0x3

.field private static final DIALOG_ID_NOT_ENOUGH_SPACE:I = 0x5

.field private static final DIALOG_ID_PARSE_EXCEPTION:I = 0x12

.field private static final DIALOG_ID_REMOVE_DOWNLOAD_TASK:I = 0x13

.field private static final DIALOG_ID_REMOVING_DATA:I = 0xc

.field private static final DIALOG_ID_SERVICE_1099:I = 0x11

.field private static final DIALOG_ID_SERVICE_EXCEPTION:I = 0xf

.field private static final DIALOG_ID_START_NAVIGATOR:I = 0xa

.field private static final DIALOG_ID_ZIP_EXCEPTION:I = 0x15

.field public static final EXTAR_UPDATE_RESVERSION:Ljava/lang/String; = "resversion"

.field public static final EXTRA_ADDCITY_ADMINCODE:Ljava/lang/String; = "admincode"

.field public static final EXTRA_BUNDLE:Ljava/lang/String; = "bundle"

.field public static final EXTRA_UPDATE_MAP:Ljava/lang/String; = "updateMap"

.field public static final EXTRA_UPDATE_MAPVERSION:Ljava/lang/String; = "updateMapVersion"

.field public static final EXTRA_UPDATE_TYPE:Ljava/lang/String; = "type"

.field private static final MSG_START_DOWNLOAD_TASK:I = 0x1

.field private static final REQUEST_CODE_WIFI_SETTING:I = 0x1

.field private static final TABDOWNING:I = 0x1

.field private static final TABDOWNLOAD:I = 0x2

.field private static final TABNODOWN:I = 0x0

.field private static final TAB_MAX:I = 0x3


# instance fields
.field private btnDeleAllDownloadTask:Landroid/widget/ImageButton;

.field private btnDownload:Landroid/widget/Button;

.field private btnDownloading:Landroid/widget/Button;

.field private btnNoDownload:Landroid/widget/Button;

.field private dialogCheckRemoveData:Lcom/autonavi/xmgd/utility/CustomDialog;

.field private hasCheckNetworkSuccess:Z

.field private homePressReceiver:Landroid/content/BroadcastReceiver;

.field private isInitViews:Z

.field private isNeedStartDownloadWhenHaveWifi:Z

.field private isUpdateMapData:Z

.field private mAddAdmincode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

.field private mBtnDownloadCancle:Landroid/widget/ImageButton;

.field private mBtnDownloadStart:Landroid/widget/Button;

.field private mBtnDownloadSure:Landroid/widget/Button;

.field private mBtnNoDownCancle:Landroid/widget/ImageButton;

.field private mBtnNoDownSure:Landroid/widget/Button;

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentScreen:I

.field private mDowningListView:Landroid/widget/ExpandableListView;

.field private mDowningView:Landroid/view/View;

.field private mDownloadAdapter:Lcom/autonavi/xmgd/citydata/DownloadAdapter;

.field private mDownloadData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadItemPosition:I

.field private mDownloadItems:[Lcom/autonavi/xmgd/citydata/DownloadItem;

.field private mDownloadList:Landroid/widget/ExpandableListView;

.field private mDownloadSelectItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadSelectListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mDownloadSelectionCount:I

.field private mDownloadSelectionTotalSize:J

.field private mDownloadView:Landroid/view/View;

.field private mDownloadingAdapter:Lcom/autonavi/xmgd/citydata/DownloadingAdapter;

.field private mGrpDownloadDataBar:Landroid/view/ViewGroup;

.field private mGrpNoDownDataBar:Landroid/view/ViewGroup;

.field private mHandler:Lcom/autonavi/xmgd/citydata/DataUpdate$MyHandler;

.field private mIsAddNewTask:Z

.field private mIsDeleteMapdate:Z

.field private mIsEnterDeleteMode:Z

.field private mIsGetDataListEnd:Z

.field private mIsGetDataListSuccess:Z

.field private mIsNeedStartNavigtor:Z

.field private mLastErrorStr:Ljava/lang/String;

.field private mLastNetType:I

.field private mListViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNoDownSelectListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mNoDownloadAdapter:Lcom/autonavi/xmgd/citydata/NoDownloadAdapter;

.field private mNoDownloadData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNoDownloadItemPosition:I

.field private mNoDownloadList:Landroid/widget/ExpandableListView;

.field private mNoDownloadSelectItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNoDownloadView:Landroid/view/View;

.field private mPagerAdapter:Lcom/autonavi/xmgd/citydata/DataUpdate$MyPagerAdapter;

.field private mRemoveDownloadItemPosition:I

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mToast:Landroid/widget/Toast;

.field private mUpdateMapVersion:Ljava/lang/String;

.field private mUpdateResVersion:I

.field private mUpdateType:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mZipExceptionId:I

.field private tvNoDownloadTask:Landroid/widget/TextView;

.field private tvNoDownloadingTask:Landroid/widget/TextView;

.field private tvNoNoDownloadTask:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDBaseActivity;-><init>()V

    iput-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->isUpdateMapData:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mUpdateMapVersion:Ljava/lang/String;

    iput v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mUpdateType:I

    iput v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mUpdateResVersion:I

    iput v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadItemPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadSelectItem:Ljava/util/ArrayList;

    iput v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectionCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectionTotalSize:J

    iput v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadItemPosition:I

    iput v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mRemoveDownloadItemPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectItem:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsEnterDeleteMode:Z

    iput v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mCurrentScreen:I

    iput-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->hasCheckNetworkSuccess:Z

    iput-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsNeedStartNavigtor:Z

    iput-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsGetDataListEnd:Z

    iput-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsGetDataListSuccess:Z

    iput-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->isInitViews:Z

    iput-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsDeleteMapdate:Z

    iput v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mZipExceptionId:I

    new-instance v0, Lcom/autonavi/xmgd/citydata/DataUpdate$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$1;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->homePressReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->isNeedStartDownloadWhenHaveWifi:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mLastNetType:I

    iput-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsAddNewTask:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mAddAdmincode:Ljava/util/ArrayList;

    new-instance v0, Lcom/autonavi/xmgd/citydata/DataUpdate$2;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$2;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/autonavi/xmgd/citydata/DataUpdate$36;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$36;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownSelectListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/autonavi/xmgd/citydata/DataUpdate$37;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$37;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    return-object v0
.end method

.method static synthetic access$002(Lcom/autonavi/xmgd/citydata/DataUpdate;Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/autonavi/xmgd/citydata/DataUpdate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->hasCheckNetworkSuccess:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->btnDeleAllDownloadTask:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/autonavi/xmgd/citydata/DataUpdate;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/xmgd/citydata/DataUpdate;->updateButtonStatus(ZZZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/autonavi/xmgd/citydata/DataUpdate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->isInitViews:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshNoDownloadScreen()V

    return-void
.end method

.method static synthetic access$1400(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshDownloadingScreen()V

    return-void
.end method

.method static synthetic access$1500(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshDownloadScreen()V

    return-void
.end method

.method static synthetic access$1600(Lcom/autonavi/xmgd/citydata/DataUpdate;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadSelectItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/autonavi/xmgd/citydata/DataUpdate;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mGrpNoDownDataBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->onTasksSelected()V

    return-void
.end method

.method static synthetic access$1900(Lcom/autonavi/xmgd/citydata/DataUpdate;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->startGetDataList()V

    return-void
.end method

.method static synthetic access$2000(Lcom/autonavi/xmgd/citydata/DataUpdate;Ljava/util/ArrayList;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->clearDataSelection(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/autonavi/xmgd/citydata/DataUpdate;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/autonavi/xmgd/citydata/DataUpdate;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/autonavi/xmgd/citydata/DataUpdate;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadItemPosition:I

    return p1
.end method

.method static synthetic access$2300(Lcom/autonavi/xmgd/citydata/DataUpdate;)Landroid/widget/ExpandableListView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadList:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/autonavi/xmgd/citydata/DataUpdate;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mRemoveDownloadItemPosition:I

    return v0
.end method

.method static synthetic access$2402(Lcom/autonavi/xmgd/citydata/DataUpdate;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mRemoveDownloadItemPosition:I

    return p1
.end method

.method static synthetic access$2500(Lcom/autonavi/xmgd/citydata/DataUpdate;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mGrpDownloadDataBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/autonavi/xmgd/citydata/DataUpdate;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/autonavi/xmgd/citydata/DataUpdate;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadItemPosition:I

    return p1
.end method

.method static synthetic access$2800(Lcom/autonavi/xmgd/citydata/DataUpdate;)Landroid/widget/ExpandableListView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadList:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->restartNavigation()V

    return-void
.end method

.method static synthetic access$300(Lcom/autonavi/xmgd/citydata/DataUpdate;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mLastNetType:I

    return v0
.end method

.method static synthetic access$3000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsGetDataListEnd:Z

    return v0
.end method

.method static synthetic access$302(Lcom/autonavi/xmgd/citydata/DataUpdate;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mLastNetType:I

    return p1
.end method

.method static synthetic access$3100(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshAllScreen()V

    return-void
.end method

.method static synthetic access$3200(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->addTaskToRemove()V

    return-void
.end method

.method static synthetic access$3300(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->exitNavigation()V

    return-void
.end method

.method static synthetic access$3400(Lcom/autonavi/xmgd/citydata/DataUpdate;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mZipExceptionId:I

    return v0
.end method

.method static synthetic access$3402(Lcom/autonavi/xmgd/citydata/DataUpdate;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mZipExceptionId:I

    return p1
.end method

.method static synthetic access$3500(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DownloadingAdapter;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadingAdapter:Lcom/autonavi/xmgd/citydata/DownloadingAdapter;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/autonavi/xmgd/citydata/DataUpdate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsEnterDeleteMode:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshNoDownSelectedInfo()V

    return-void
.end method

.method static synthetic access$3800(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshDownloadSelectedInfo()V

    return-void
.end method

.method static synthetic access$400(Lcom/autonavi/xmgd/citydata/DataUpdate;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnDownloadStart:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/autonavi/xmgd/citydata/DataUpdate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->isNeedStartDownloadWhenHaveWifi:Z

    return v0
.end method

.method static synthetic access$502(Lcom/autonavi/xmgd/citydata/DataUpdate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->isNeedStartDownloadWhenHaveWifi:Z

    return p1
.end method

.method static synthetic access$600(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->stopDownloadTask()V

    return-void
.end method

.method static synthetic access$700(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->startDownloadTask()V

    return-void
.end method

.method static synthetic access$900(Lcom/autonavi/xmgd/citydata/DataUpdate;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private addExternalTaskToDownload()V
    .locals 13

    const/4 v12, 0x5

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getNoDownloadDataList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mAddAdmincode:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mAddAdmincode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v7, v4

    move v3, v4

    :goto_0
    if-ge v7, v8, :cond_a

    if-nez v3, :cond_a

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getDownloadTaskItemList()[Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v5

    if-eqz v5, :cond_d

    array-length v0, v5

    if-lez v0, :cond_d

    array-length v6, v5

    move v1, v4

    :goto_1
    if-ge v1, v6, :cond_d

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mAddAdmincode:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit16 v0, v0, 0x2710

    mul-int/lit16 v9, v0, 0x2710

    aget-object v0, v5, v1

    iget v10, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->id:I

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mAddAdmincode:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v10, v0, :cond_2

    move v0, v2

    :goto_2
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v6, v4

    :goto_3
    if-ge v6, v9, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v5, v4

    :goto_4
    if-ge v5, v10, :cond_b

    iget-object v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xmgd/citydata/DataItem;

    iget v11, v1, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mAddAdmincode:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v11, v1, :cond_4

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->addDownloadTask(Lcom/autonavi/xmgd/citydata/DataItem;)I

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, v12}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    move v0, v2

    :goto_5
    move v3, v0

    move v0, v2

    :goto_6
    if-ne v0, v2, :cond_9

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->storeDownloadTask()Z

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mHandler:Lcom/autonavi/xmgd/citydata/DataUpdate$MyHandler;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/citydata/DataUpdate$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mHandler:Lcom/autonavi/xmgd/citydata/DataUpdate$MyHandler;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate$MyHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_0

    :cond_2
    aget-object v0, v5, v1

    iget v0, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->id:I

    if-ne v0, v9, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_4

    :cond_5
    iget v5, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mAddAdmincode:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v5, v1, :cond_7

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->addDownloadTask(Lcom/autonavi/xmgd/citydata/DataItem;)I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, v12}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    move v3, v2

    :cond_6
    move v0, v2

    goto :goto_6

    :cond_7
    iget v5, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mAddAdmincode:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit16 v1, v1, 0x2710

    mul-int/lit16 v1, v1, 0x2710

    if-ne v5, v1, :cond_b

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->addDownloadTask(Lcom/autonavi/xmgd/citydata/DataItem;)I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0, v12}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    move v3, v2

    :cond_8
    move v0, v2

    goto :goto_6

    :cond_9
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_3

    :cond_a
    return-void

    :cond_b
    move v0, v4

    goto :goto_6

    :cond_c
    move v0, v3

    goto :goto_5

    :cond_d
    move v0, v4

    goto/16 :goto_2
.end method

.method private addTaskToRemove()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v2, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-boolean v3, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v3, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->addTaskToRemove(Lcom/autonavi/xmgd/citydata/DataItem;)V

    goto :goto_1

    :cond_2
    iget-boolean v2, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v2, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->addTaskToRemove(Lcom/autonavi/xmgd/citydata/DataItem;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private clearDataSelection(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-boolean v5, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isRequired:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    iget v6, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    invoke-virtual {v5, v6}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->isCityDataDownloaded(I)Z

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloading:Z

    if-nez v5, :cond_4

    iput-boolean v2, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    move v1, v3

    :goto_0
    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iput-boolean v3, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    goto :goto_1

    :cond_4
    iput-boolean v3, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    goto :goto_0
.end method

.method private exitNavigation()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.plugin.action.exit_app"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->finish()V

    return-void
.end method

.method private initDownloadViews()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnDownloadSure:Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$13;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$13;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadView:Landroid/view/View;

    const v1, 0x7f0c0192

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnDownloadCancle:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnDownloadCancle:Landroid/widget/ImageButton;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$14;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$14;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/autonavi/xmgd/citydata/DownloadAdapter;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/autonavi/xmgd/citydata/DownloadAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadAdapter:Lcom/autonavi/xmgd/citydata/DownloadAdapter;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->tvNoDownloadTask:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadAdapter:Lcom/autonavi/xmgd/citydata/DownloadAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadList:Landroid/widget/ExpandableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadAdapter:Lcom/autonavi/xmgd/citydata/DownloadAdapter;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DownloadAdapter;->getGroupCount()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadList:Landroid/widget/ExpandableListView;

    iget v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadItemPosition:I

    if-lt v2, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setSelection(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadList:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$15;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$15;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshDownloadSelectedInfo()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->tvNoDownloadTask:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadItemPosition:I

    goto :goto_1
.end method

.method private initDownloadingViews()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getDownloadTaskItemList()[Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadItems:[Lcom/autonavi/xmgd/citydata/DownloadItem;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadItems:[Lcom/autonavi/xmgd/citydata/DownloadItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadItems:[Lcom/autonavi/xmgd/citydata/DownloadItem;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnDownloadStart:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->tvNoDownloadingTask:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    new-instance v0, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadItems:[Lcom/autonavi/xmgd/citydata/DownloadItem;

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    new-instance v3, Lcom/autonavi/xmgd/citydata/DataUpdate$11;

    invoke-direct {v3, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$11;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;-><init>(Landroid/content/Context;[Lcom/autonavi/xmgd/citydata/DownloadItem;Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadingAdapter:Lcom/autonavi/xmgd/citydata/DownloadingAdapter;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadingAdapter:Lcom/autonavi/xmgd/citydata/DownloadingAdapter;

    iget v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mZipExceptionId:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->setZipExceptionId(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDowningListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadingAdapter:Lcom/autonavi/xmgd/citydata/DownloadingAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDowningListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnDownloadStart:Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$12;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$12;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->isRunning()Z

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnDownloadStart:Landroid/widget/Button;

    const v1, 0x7f070208

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnDownloadStart:Landroid/widget/Button;

    const v1, 0x7f070207

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private initNoDownloadViews()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnNoDownSure:Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$8;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$8;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnNoDownCancle:Landroid/widget/ImageButton;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$9;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$9;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/autonavi/xmgd/citydata/NoDownloadAdapter;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownSelectListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/autonavi/xmgd/citydata/NoDownloadAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadAdapter:Lcom/autonavi/xmgd/citydata/NoDownloadAdapter;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->tvNoNoDownloadTask:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadAdapter:Lcom/autonavi/xmgd/citydata/NoDownloadAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadList:Landroid/widget/ExpandableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadAdapter:Lcom/autonavi/xmgd/citydata/NoDownloadAdapter;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/NoDownloadAdapter;->getGroupCount()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadList:Landroid/widget/ExpandableListView;

    iget v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadItemPosition:I

    if-lt v2, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setSelection(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadList:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$10;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$10;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshNoDownSelectedInfo()V

    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadItemPosition:I

    goto :goto_0
.end method

.method private initViews()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->initNoDownloadViews()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->initDownloadingViews()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->initDownloadViews()V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getDownloadTaskItemListSize()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->btnDeleAllDownloadTask:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->isInitViews:Z

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsAddNewTask:Z

    if-ne v0, v2, :cond_1

    iput-boolean v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsAddNewTask:Z

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->addExternalTaskToDownload()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshAllScreen()V

    :cond_1
    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->isUpdateMapData:Z

    if-ne v0, v2, :cond_2

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    iget v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mUpdateType:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getDownloadedDataList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->addTaskToRemove(I)V

    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->startRemoveDataTask()Z

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->btnDeleAllDownloadTask:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->addTaskToRemove(I)V

    goto :goto_1
.end method

.method private onTasksSelected()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->stopDownloadTask()V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3}, Lcom/autonavi/xmgd/citydata/DataUpdate;->selectItem(Ljava/util/ArrayList;Ljava/util/ArrayList;)J

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget v4, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v4, v0, v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->insertDownloadTask(Lcom/autonavi/xmgd/citydata/DataItem;I)I

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    move v0, v1

    :goto_1
    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshAllScreen()V

    :goto_2
    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->storeDownloadTask()Z

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mHandler:Lcom/autonavi/xmgd/citydata/DataUpdate$MyHandler;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdate$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mHandler:Lcom/autonavi/xmgd/citydata/DataUpdate$MyHandler;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate$MyHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void

    :cond_3
    iget-object v4, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v4, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->addDownloadTask(Lcom/autonavi/xmgd/citydata/DataItem;)I

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method private refreshAllScreen()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshNoDownloadScreen()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshDownloadingScreen()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshDownloadScreen()V

    return-void
.end method

.method private refreshDownloadScreen()V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getDownloadedDataList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v2

    :goto_0
    if-ge v4, v5, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iput-boolean v9, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v1, v2

    :goto_2
    if-ge v1, v7, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget v8, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    if-ne v8, v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iput-boolean v9, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadAdapter:Lcom/autonavi/xmgd/citydata/DownloadAdapter;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DownloadAdapter;->setData(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadAdapter:Lcom/autonavi/xmgd/citydata/DownloadAdapter;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DownloadAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->tvNoDownloadTask:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void

    :cond_7
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->tvNoDownloadTask:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshDownloadSelectedInfo()V

    goto :goto_3
.end method

.method private refreshDownloadSelectedInfo()V
    .locals 12

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v0, 0x0

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v3, v0

    move v1, v2

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v6, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v6, v3

    move v4, v1

    move v3, v5

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-boolean v10, v1, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    iget-wide v10, v1, Lcom/autonavi/xmgd/citydata/DataItem;->supposeSize:J

    add-long/2addr v6, v10

    move v1, v3

    move v3, v4

    :goto_3
    move v4, v3

    move v3, v1

    goto :goto_2

    :cond_1
    move v1, v2

    move v3, v4

    goto :goto_3

    :cond_2
    if-eqz v3, :cond_3

    iput-boolean v5, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    :goto_4
    move v0, v4

    move-wide v3, v6

    :goto_5
    move v1, v0

    goto :goto_1

    :cond_3
    iput-boolean v2, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    goto :goto_4

    :cond_4
    iget-boolean v6, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    iget-wide v6, v0, Lcom/autonavi/xmgd/citydata/DataItem;->supposeSize:J

    add-long/2addr v3, v6

    move v0, v1

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadAdapter:Lcom/autonavi/xmgd/citydata/DownloadAdapter;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DownloadAdapter;->notifyDataSetChanged()V

    if-lez v1, :cond_8

    move v0, v2

    :goto_6
    iget-object v6, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mGrpDownloadDataBar:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v6

    if-eq v0, v6, :cond_6

    iget-object v6, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mGrpDownloadDataBar:Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_6
    if-lez v1, :cond_7

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnDownloadSure:Landroid/widget/Button;

    const v6, 0x7f07021a

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v3, v4}, Lcom/autonavi/xmgd/citydata/GlobalCity;->formateFileSize(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iput v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectionCount:I

    iput-wide v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectionTotalSize:J

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x8

    goto :goto_6

    :cond_9
    move v0, v1

    goto :goto_5
.end method

.method private refreshDownloadingScreen()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getDownloadTaskItemList()[Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadItems:[Lcom/autonavi/xmgd/citydata/DownloadItem;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadItems:[Lcom/autonavi/xmgd/citydata/DownloadItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadItems:[Lcom/autonavi/xmgd/citydata/DownloadItem;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->tvNoDownloadingTask:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnDownloadStart:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->btnDeleAllDownloadTask:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadingAdapter:Lcom/autonavi/xmgd/citydata/DownloadingAdapter;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadItems:[Lcom/autonavi/xmgd/citydata/DownloadItem;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->setData([Lcom/autonavi/xmgd/citydata/DownloadItem;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->tvNoDownloadingTask:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnDownloadStart:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->btnDeleAllDownloadTask:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnDownloadStart:Landroid/widget/Button;

    const v1, 0x7f070208

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnDownloadStart:Landroid/widget/Button;

    const v1, 0x7f070207

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private refreshNoDownSelectedInfo()V
    .locals 13

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v0, 0x0

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v3, v0

    move v1, v2

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v6, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v6, v1

    move-wide v7, v3

    move v3, v2

    move v4, v5

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-boolean v11, v1, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    iget-wide v11, v1, Lcom/autonavi/xmgd/citydata/DataItem;->supposeSize:J

    add-long/2addr v7, v11

    :cond_2
    :goto_3
    if-nez v3, :cond_c

    iget-boolean v1, v1, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloading:Z

    if-nez v1, :cond_c

    move v1, v5

    :goto_4
    move v3, v1

    goto :goto_2

    :cond_3
    iget-boolean v11, v1, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloading:Z

    if-nez v11, :cond_2

    move v4, v2

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    iget-boolean v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    if-nez v1, :cond_5

    iget-boolean v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloading:Z

    if-nez v1, :cond_5

    iput-boolean v5, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    :cond_5
    :goto_5
    move v0, v6

    move-wide v3, v7

    :goto_6
    move v1, v0

    goto :goto_1

    :cond_6
    iget-boolean v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    if-eqz v1, :cond_5

    iput-boolean v2, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    goto :goto_5

    :cond_7
    iget-boolean v6, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v1, 0x1

    iget-wide v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->supposeSize:J

    add-long/2addr v3, v0

    move v0, v6

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadAdapter:Lcom/autonavi/xmgd/citydata/NoDownloadAdapter;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/NoDownloadAdapter;->notifyDataSetChanged()V

    if-lez v1, :cond_a

    move v0, v2

    :goto_7
    iget-object v6, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mGrpNoDownDataBar:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v6

    if-eq v0, v6, :cond_9

    iget-object v6, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mGrpNoDownDataBar:Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_9
    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnNoDownSure:Landroid/widget/Button;

    const v6, 0x7f070219

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v2

    invoke-static {v3, v4}, Lcom/autonavi/xmgd/citydata/GlobalCity;->formateFileSize(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x8

    goto :goto_7

    :cond_b
    move v0, v1

    goto :goto_6

    :cond_c
    move v1, v3

    goto :goto_4
.end method

.method private refreshNoDownloadScreen()V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getNoDownloadDataList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadSelectItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v2

    :goto_0
    if-ge v4, v5, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iput-boolean v9, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v1, v2

    :goto_2
    if-ge v1, v7, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget v8, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    if-ne v8, v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iput-boolean v9, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadAdapter:Lcom/autonavi/xmgd/citydata/NoDownloadAdapter;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/NoDownloadAdapter;->setData(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->tvNoNoDownloadTask:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void

    :cond_7
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->tvNoNoDownloadTask:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshNoDownSelectedInfo()V

    goto :goto_3
.end method

.method private restartNavigation()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.plugin.action.restart_app.tob"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->finish()V

    return-void
.end method

.method private selectItem(Ljava/util/ArrayList;Ljava/util/ArrayList;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_0
    move-wide v1, v0

    :cond_1
    return-wide v1

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-boolean v4, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/autonavi/xmgd/citydata/DataItem;->sourceUrl:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-wide v4, v0, Lcom/autonavi/xmgd/citydata/DataItem;->supposeSize:J

    add-long/2addr v1, v4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->selectItem(Ljava/util/ArrayList;Ljava/util/ArrayList;)J

    move-result-wide v4

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_0
.end method

.method private startDownloadTask()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->startDownloadTask()Z

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnDownloadStart:Landroid/widget/Button;

    const v1, 0x7f070208

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    return-void
.end method

.method private startGetDataList()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->finish()V

    const-string v0, "\u7ed1\u5b9a\u670d\u52a1\u4e3anull"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->isUpdateMapData:Z

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsGetDataListEnd:Z

    iget v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mUpdateType:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mUpdateMapVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->wantToUpdateMapdata(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsGetDataListEnd:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->initViews()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    iget v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mUpdateResVersion:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->wantToUpdateResource(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getDataList()Z

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    goto :goto_0
.end method

.method private stopDownloadTask()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->stopDownloadTask()V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnDownloadStart:Landroid/widget/Button;

    const v1, 0x7f070207

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    return-void
.end method

.method private updateButtonStatus(ZZZ)V
    .locals 6

    const v5, 0x7f08000c

    const v4, 0x7f08000b

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->btnNoDownload:Landroid/widget/Button;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->btnDownloading:Landroid/widget/Button;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->btnDownload:Landroid/widget/Button;

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->btnNoDownload:Landroid/widget/Button;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->btnDownloading:Landroid/widget/Button;

    if-eqz p2, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->btnDownload:Landroid/widget/Button;

    if-eqz p3, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsEnterDeleteMode:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autonavi.xmgd.citydata.STOP_DATA_UPDATE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->finish()V

    return-void
.end method

.method public isConnectInternet()Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnectWifi()Z
    .locals 3

    const/4 v1, 0x1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->isConnectInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->hasCheckNetworkSuccess:Z

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->startGetDataList()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAllCompletion()V
    .locals 0

    return-void
.end method

.method public onCompletion(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->isInitViews:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshAllScreen()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/autonavi/xmgd/citydata/GlobalCity;->getInstance()Lcom/autonavi/xmgd/citydata/GlobalCity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/GlobalCity;->getDataUpdateBundle()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "mDownloadSelectionCount"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectionCount:I

    const-string v0, "mDownloadSelectionTotalSize"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectionTotalSize:J

    const-string v0, "mDownloadItemPosition"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadItemPosition:I

    const-string v0, "mLastErrorStr"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mLastErrorStr:Ljava/lang/String;

    const-string v0, "hasCheckNetworkSuccess"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->hasCheckNetworkSuccess:Z

    const-string v0, "mLastNetType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mLastNetType:I

    const-string v0, "mNoDownloadItemPosition"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadItemPosition:I

    const-string v0, "mIsNeedStartNavigtor"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsNeedStartNavigtor:Z

    const-string v0, "mAddAdmincode"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mAddAdmincode:Ljava/util/ArrayList;

    const-string v0, "mIsGetDataListEnd"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsGetDataListEnd:Z

    const-string v0, "mDownloadData"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    const-string v0, "mNoDownloadData"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    const-string v0, "mCurrentScreen"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mCurrentScreen:I

    const-string v0, "mNoDownloadSelectItem"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadSelectItem:Ljava/util/ArrayList;

    const-string v0, "mDownloadSelectItem"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectItem:Ljava/util/ArrayList;

    const-string v0, "mRemoveDownloadItemPosition"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mRemoveDownloadItemPosition:I

    const-string v0, "mZipExceptionId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mZipExceptionId:I

    const-string v0, "isNeedStartDownloadWhenHaveWifi"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->isNeedStartDownloadWhenHaveWifi:Z

    const-string v0, "mIsGetDataListSuccess"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsGetDataListSuccess:Z

    const-string v0, "mIsAddNewTask"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsAddNewTask:Z

    const-string v0, "isUpdateMapData"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->isUpdateMapData:Z

    const-string v0, "mIsDeleteMapdate"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsDeleteMapdate:Z

    const-string v0, "mUpdateMapVersion"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mUpdateMapVersion:Ljava/lang/String;

    const-string v0, "mUpdateType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mUpdateType:I

    const-string v0, "mUpdateResVersion"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mUpdateResVersion:I

    const-string v0, "mIsEnterDeleteMode"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsEnterDeleteMode:Z

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v0, "admincode"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    const-string v0, "admincode"

    invoke-virtual {v1, v0, v7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    if-eqz v4, :cond_2

    iput-boolean v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsAddNewTask:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mAddAdmincode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v2

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_2

    aget v5, v4, v0

    const v6, 0xf4240

    if-ge v5, v6, :cond_1

    iget-object v5, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mAddAdmincode:Ljava/util/ArrayList;

    aget v6, v4, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mAddAdmincode:Ljava/util/ArrayList;

    aget v6, v4, v0

    div-int/lit8 v6, v6, 0x64

    mul-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v0, "updateMap"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->isUpdateMapData:Z

    const-string v0, "updateMapVersion"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mUpdateMapVersion:Ljava/lang/String;

    const-string v0, "type"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mUpdateType:I

    const-string v0, "mUpdateResVersion"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mUpdateResVersion:I

    const-string v0, "updateMap"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->setContentView(I)V

    new-instance v0, Lcom/autonavi/xmgd/citydata/DataUpdate$MyHandler;

    invoke-direct {v0, p0, v7}, Lcom/autonavi/xmgd/citydata/DataUpdate$MyHandler;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;Lcom/autonavi/xmgd/citydata/DataUpdate$1;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mHandler:Lcom/autonavi/xmgd/citydata/DataUpdate$MyHandler;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->homePressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v0, 0x7f0c002e

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDTitle;

    const v1, 0x7f0701f2

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    const v1, 0x7f0c002f

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->btnNoDownload:Landroid/widget/Button;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->btnNoDownload:Landroid/widget/Button;

    new-instance v4, Lcom/autonavi/xmgd/citydata/DataUpdate$3;

    invoke-direct {v4, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$3;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0c0030

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->btnDownloading:Landroid/widget/Button;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->btnDownloading:Landroid/widget/Button;

    new-instance v4, Lcom/autonavi/xmgd/citydata/DataUpdate$4;

    invoke-direct {v4, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$4;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0c0031

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->btnDownload:Landroid/widget/Button;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->btnDownload:Landroid/widget/Button;

    new-instance v4, Lcom/autonavi/xmgd/citydata/DataUpdate$5;

    invoke-direct {v4, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$5;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDTitle;->getRightView()Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->btnDeleAllDownloadTask:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->btnDeleAllDownloadTask:Landroid/widget/ImageButton;

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->btnDeleAllDownloadTask:Landroid/widget/ImageButton;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$6;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$6;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030062

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadView:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mListViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030060

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDowningView:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mListViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDowningView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030061

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadView:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mListViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/autonavi/xmgd/citydata/DataUpdate$MyPagerAdapter;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mListViews:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdate$MyPagerAdapter;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mPagerAdapter:Lcom/autonavi/xmgd/citydata/DataUpdate$MyPagerAdapter;

    const v0, 0x7f0c0032

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mPagerAdapter:Lcom/autonavi/xmgd/citydata/DataUpdate$MyPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mCurrentScreen:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mCurrentScreen:I

    if-nez v0, :cond_6

    move v0, v3

    :goto_2
    iget v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mCurrentScreen:I

    if-ne v1, v3, :cond_7

    move v1, v3

    :goto_3
    iget v4, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mCurrentScreen:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    move v2, v3

    :cond_4
    invoke-direct {p0, v0, v1, v2}, Lcom/autonavi/xmgd/citydata/DataUpdate;->updateButtonStatus(ZZZ)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$7;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$7;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadView:Landroid/view/View;

    const v1, 0x7f0c0194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->tvNoNoDownloadTask:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadView:Landroid/view/View;

    const v1, 0x7f0c0198

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadList:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadView:Landroid/view/View;

    const v1, 0x7f0c0196

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnNoDownSure:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadView:Landroid/view/View;

    const v1, 0x7f0c0197

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnNoDownCancle:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadView:Landroid/view/View;

    const v1, 0x7f0c0195

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mGrpNoDownDataBar:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDowningView:Landroid/view/View;

    const v1, 0x7f0c018c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->tvNoDownloadingTask:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDowningView:Landroid/view/View;

    const v1, 0x7f0c018d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDowningListView:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDowningView:Landroid/view/View;

    const v1, 0x7f0c018e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnDownloadStart:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadView:Landroid/view/View;

    const v1, 0x7f0c018f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->tvNoDownloadTask:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadView:Landroid/view/View;

    const v1, 0x7f0c0193

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadList:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadView:Landroid/view/View;

    const v1, 0x7f0c0191

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnDownloadSure:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadView:Landroid/view/View;

    const v1, 0x7f0c0190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mGrpDownloadDataBar:Landroid/view/ViewGroup;

    new-instance v0, Lcom/autonavi/xmgd/citydata/DataUpdate$DataUpdateServiceConnection;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$DataUpdateServiceConnection;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/autonavi/xmgd/citydata/DataUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v3}, Lcom/autonavi/xmgd/citydata/DataUpdate;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->hasCheckNetworkSuccess:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->isConnectInternet()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    :cond_5
    :goto_4
    return-void

    :cond_6
    move v0, v2

    goto/16 :goto_2

    :cond_7
    move v1, v2

    goto/16 :goto_3

    :cond_8
    iput-boolean v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->hasCheckNetworkSuccess:Z

    goto :goto_4
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const v6, 0x7f070016

    const v5, 0x7f07001a

    const v4, 0x7f070019

    const v2, 0x7f07020a

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$16;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$16;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0701ff

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$17;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$17;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070204

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070205

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070206

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$18;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$18;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07020c

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07020b

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$19;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$19;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07020e

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$20;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$20;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070210

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$21;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$21;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070213

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$22;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$22;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->dialogCheckRemoveData:Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->dialogCheckRemoveData:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->dialogCheckRemoveData:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070214

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->dialogCheckRemoveData:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->dialogCheckRemoveData:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->dialogCheckRemoveData:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->dialogCheckRemoveData:Lcom/autonavi/xmgd/utility/CustomDialog;

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$23;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$23;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070202

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$24;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$24;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070203

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$25;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$25;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070228

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0701f6

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setProgressBarContent(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07021b

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setProgressBarContent(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_c
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$26;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$26;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070215

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_d
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$27;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$27;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070225

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_e
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$28;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$28;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07022a

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_f
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$29;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$29;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070229

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_10
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$30;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$30;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07020f

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_11
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$31;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$31;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07022b

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_12
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$32;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$32;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07021e

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_13
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$33;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$33;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070200

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_14
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$34;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$34;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07022c

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_15
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdate$35;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdate$35;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07022f

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07020b

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070230

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignRightBtnVisibility(Z)V

    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleRightButtonBackGround(I)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method public onDataRemoved(II)V
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x1

    if-gtz p2, :cond_6

    iput-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsDeleteMapdate:Z

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->dismissDialog(I)V

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->isUpdateMapData:Z

    if-ne v0, v2, :cond_7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.plugin.action.exit_app"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->isUpdateMapData:Z

    iget v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mUpdateType:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->clearDownloadTasks()V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v2, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getNoDownloadDataList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getDownloadTaskItem(I)Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->removeDownloadTask(I)Lcom/autonavi/xmgd/citydata/DownloadItem;

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getDataItemBasiconId(I)Lcom/autonavi/xmgd/citydata/DataItem;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->isRunning()Z

    move-result v1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->stopDownloadTask()V

    :cond_4
    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshNoDownloadScreen()V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnNoDownSure:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    :cond_6
    :goto_2
    return-void

    :cond_7
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getIsMapRunning()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    goto :goto_2

    :cond_8
    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->exitNavigation()V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v1, "DataUpdate  onDestroy"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->removeOnGetDataListListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IGetDataListListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->removeOnAllCompletionListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IAllCompletionListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->removeFileDownloadListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->removeOnFileRemovedListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileRemovedListener;)V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->homePressReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->homePressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsGetDataListSuccess:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/autonavi/xmgd/citydata/GlobalCity;->shareInstance()Lcom/autonavi/xmgd/citydata/GlobalCity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/autonavi/xmgd/citydata/GlobalCity;->shareInstance()Lcom/autonavi/xmgd/citydata/GlobalCity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->setDataUpdateBundle(Landroid/os/Bundle;)V

    :cond_4
    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onError(I)V
    .locals 3

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->removeDialog(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsGetDataListEnd:Z

    invoke-static {p1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->saveDataUpdateLog(I)V

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get datalist errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07020e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mLastErrorStr:Ljava/lang/String;

    const/16 v0, 0x2720

    if-eq p1, v0, :cond_0

    const/16 v0, 0x271f

    if-ne p1, v0, :cond_1

    :cond_0
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x526b

    if-ne p1, v0, :cond_2

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x4e20

    if-le p1, v0, :cond_3

    const/16 v0, 0x7530

    if-ge p1, v0, :cond_3

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x2719

    if-eq p1, v0, :cond_4

    const/16 v0, 0x271c

    if-eq p1, v0, :cond_4

    const/16 v0, 0x271d

    if-eq p1, v0, :cond_4

    const/16 v0, 0x271e

    if-ne p1, v0, :cond_5

    :cond_4
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    goto :goto_0
.end method

.method public onError(II)V
    .locals 3

    invoke-static {p2}, Lcom/autonavi/xmgd/citydata/GlobalCity;->saveDataUpdateLog(I)V

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download data errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->stopDownloadTask()V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBtnDownloadStart:Landroid/widget/Button;

    const v1, 0x7f070207

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const/16 v0, 0x2723

    if-eq p2, v0, :cond_0

    const/16 v0, 0x2717

    if-ne p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mZipExceptionId:I

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadingAdapter:Lcom/autonavi/xmgd/citydata/DownloadingAdapter;

    iget v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mZipExceptionId:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->setZipExceptionId(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadingAdapter:Lcom/autonavi/xmgd/citydata/DownloadingAdapter;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->notifyDataSetChanged()V

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x2724

    if-ne p2, v0, :cond_2

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    goto :goto_0
.end method

.method public onGetDataList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getDownloadedDataList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getNoDownloadDataList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsGetDataListEnd:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsGetDataListSuccess:Z

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->removeDialog(I)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->initViews()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->isRunning()Z

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getIsDownloadBaseData()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->finish()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onPause()V

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsEnterDeleteMode:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mDownloadSelectionCount"

    iget v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectionCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mDownloadSelectionTotalSize"

    iget-wide v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectionTotalSize:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "mDownloadItemPosition"

    iget v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadItemPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mLastErrorStr"

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mLastErrorStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hasCheckNetworkSuccess"

    iget-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->hasCheckNetworkSuccess:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "mLastNetType"

    iget v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mLastNetType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mNoDownloadItemPosition"

    iget v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadItemPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mIsNeedStartNavigtor"

    iget-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsNeedStartNavigtor:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "mAddAdmincode"

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mAddAdmincode:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mIsGetDataListEnd"

    iget-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsGetDataListEnd:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "mDownloadData"

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mNoDownloadData"

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mCurrentScreen"

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mNoDownloadSelectItem"

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mNoDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mDownloadSelectItem"

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mRemoveDownloadItemPosition"

    iget v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mRemoveDownloadItemPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mZipExceptionId"

    iget v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mZipExceptionId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "isNeedStartDownloadWhenHaveWifi"

    iget-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->isNeedStartDownloadWhenHaveWifi:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "mIsGetDataListSuccess"

    iget-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsGetDataListSuccess:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "mIsAddNewTask"

    iget-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsAddNewTask:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "isUpdateMapData"

    iget-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->isUpdateMapData:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "mIsDeleteMapdate"

    iget-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsDeleteMapdate:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "mUpdateMapVersion"

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mUpdateMapVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mUpdateType"

    iget v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mUpdateType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mUpdateResVersion"

    iget v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mUpdateResVersion:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mIsEnterDeleteMode"

    iget-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsEnterDeleteMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/autonavi/xmgd/citydata/GlobalCity;->shareInstance()Lcom/autonavi/xmgd/citydata/GlobalCity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/citydata/GlobalCity;->shareInstance()Lcom/autonavi/xmgd/citydata/GlobalCity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/citydata/GlobalCity;->setDataUpdateBundle(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f070214

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectionCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadSelectionTotalSize:J

    invoke-static {v3, v4}, Lcom/autonavi/xmgd/citydata/GlobalCity;->formateFileSize(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->dialogCheckRemoveData:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepared(II)V
    .locals 0

    return-void
.end method

.method public onProgressUpdate(II)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadingAdapter:Lcom/autonavi/xmgd/citydata/DownloadingAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mDownloadingAdapter:Lcom/autonavi/xmgd/citydata/DownloadingAdapter;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getDownloadTaskItemList()[Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DownloadingAdapter;->setData([Lcom/autonavi/xmgd/citydata/DownloadItem;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onStart()V

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->isInitViews:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getIsInBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->setInBackground(Z)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshAllScreen()V

    goto :goto_0
.end method

.method public onStarted(I)V
    .locals 0

    return-void
.end method

.method public onStopped(I)V
    .locals 0

    return-void
.end method
