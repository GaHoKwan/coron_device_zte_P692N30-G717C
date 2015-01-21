.class public Lcom/autonavi/xmgd/citydata/DataUpdateService;
.super Landroid/app/Service;


# static fields
.field public static final BASE_ERRORCODE:I = 0x2710

.field public static final DATAUPDATSERVICE_ISRUNNING:Ljava/lang/String; = "isrunning"

.field public static final DATAUPDATSERVICE_IS_SAVE_INTENT:Ljava/lang/String; = "isSaveIntent"

.field public static final DATA_ID_ALLDATA:I = 0x2

.field public static final DATA_ID_BASE_MAP_DATA:I = 0x7

.field public static final DATA_ID_BASE_RESOURCES:I = 0x6

.field public static final DATA_ID_TMC:I = 0x1

.field public static final Extra_bundle:Ljava/lang/String; = "bundle"

.field public static final Extra_mApkVersion:Ljava/lang/String; = "mApkVersion"

.field public static final Extra_mAssetsPath:Ljava/lang/String; = "mAssetsPath"

.field public static final Extra_mEngineVersion:Ljava/lang/String; = "mEngineVersion"

.field public static final Extra_mHttpurl:Ljava/lang/String; = "mHttpurl"

.field public static final Extra_mImei:Ljava/lang/String; = "mImei"

.field public static final Extra_mMapDataPath:Ljava/lang/String; = "mMapDataPath"

.field public static final Extra_mNaviDataPath:Ljava/lang/String; = "mNaviDataPath"

.field public static final Extra_mRequestMapVersion:Ljava/lang/String; = "mRequestMapVersion"

.field public static final Extra_mSyscode:Ljava/lang/String; = "mSyscode"

.field public static final INVALID_DOWNLOAD_TASK_ID:I = 0x0

.field public static final NOTIFY_ID_ALL_COMPLETE:I = 0x1

.field public static final NOTIFY_ID_TASK_RUNNING:I = 0x0

.field public static final PREF_DATAUPDATE:Ljava/lang/String; = "dataupdate"

.field private static final STORE_DATA_LIST_NAME:Ljava/lang/String; = "download/datalist_lst"

.field private static final STORE_DOWNLOAD_TASKS_FILE_NAME:Ljava/lang/String; = "download/downloadtasks_dtl"

.field private static final STORE_REMOVE_TASKS_FILE_NAME:Ljava/lang/String; = "download/removetasks_dtl"

.field private static final TMC_DATA_KEY_FILES:[Ljava/lang/String;

.field public static cache_dataupdate:Landroid/content/SharedPreferences;


# instance fields
.field private final REQUEST_CONTENT:Ljava/lang/String;

.field private final WHAT_ON_COMPLETION:I

.field private final WHAT_ON_DATA_LIST_GETERROR:I

.field private final WHAT_ON_DATA_LIST_GETTED:I

.field private final WHAT_ON_DATA_REMOVED:I

.field private final WHAT_ON_DOWNLOAD_COMPLETION:I

.field private final WHAT_ON_DOWNLOAD_ERROR:I

.field private final WHAT_ON_DOWNLOAD_PREPARED:I

.field private final WHAT_ON_DOWNLOAD_PROGRESS_UPDATE:I

.field private final WHAT_ON_DOWNLOAD_STARTED:I

.field private final WHAT_ON_DOWNLOAD_STOPPED:I

.field handler:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;

.field private isGettingCityList:Z

.field private isInitService:Z

.field private isNeedStartDownloadWhenHaveNet:Z

.field private isStopService:Z

.field private lastType:I

.field private mApkVersion:Ljava/lang/String;

.field private mAssetsPath:Ljava/lang/String;

.field private mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

.field private mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private mCityDataList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mDataBaseDirPath:Ljava/lang/String;

.field private mDataListFile:Ljava/io/File;

.field private mDataRemover:Lcom/autonavi/xmgd/citydata/DataRemover;

.field private mDataUpdateReciver:Landroid/content/BroadcastReceiver;

.field private mDownloadDir:Ljava/io/File;

.field private mDownloadDirPath:Ljava/lang/String;

.field private mDownloadInterface:Lcom/autonavi/xmgd/citydata/DownloadInterface;

.field private mDownloadListFile:Ljava/io/File;

.field private mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

.field private mEngineVersion:Ljava/lang/String;

.field private mFileDownloadListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFileRemovedListener:Lcom/autonavi/xmgd/citydata/DataRemover$OnFileRemovedListener;

.field private mHttpurl:Ljava/lang/String;

.field private mImei:Ljava/lang/String;

.field private mIsDownloadBaseData:Z

.field private mIsInBackground:Z

.field private mIsMapRunning:Z

.field private mIsRunning:Z

.field private mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

.field private mMapDataBaseDirPath:Ljava/lang/String;

.field private mMapDataPath:Ljava/lang/String;

.field private mMapVersion:Ljava/lang/String;

.field private mNaviDataPath:Ljava/lang/String;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOnAllCompletionListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataUpdateService$IAllCompletionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFileRemovedListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileRemovedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnGetDataListListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataUpdateService$IGetDataListListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestMapVersion:Ljava/lang/String;

.field private mResVersion:I

.field private mResponseContent:Ljava/lang/String;

.field private mRspcode:Ljava/lang/String;

.field private mSyscode:I

.field private mZipId:I

.field parseHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;

.field private progressMax:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gtmc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cityidx.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->TMC_DATA_KEY_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isStopService:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsMapRunning:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsDownloadBaseData:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsRunning:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsInBackground:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isGettingCityList:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnAllCompletionListener:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnFileRemovedListener:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnGetDataListListener:Ljava/util/ArrayList;

    new-instance v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$1;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mHttpurl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mAssetsPath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mNaviDataPath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMapDataPath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mEngineVersion:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mApkVersion:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mImei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mRequestMapVersion:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMapVersion:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->lastType:I

    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isNeedStartDownloadWhenHaveNet:Z

    iput-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$1;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadInterface:Lcom/autonavi/xmgd/citydata/DownloadInterface;

    new-instance v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$2;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$2;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileRemovedListener:Lcom/autonavi/xmgd/citydata/DataRemover$OnFileRemovedListener;

    iput-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isInitService:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mCityDataList:Ljava/util/HashMap;

    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\" ?><opg><activitycode>0001</activitycode><processtime>%1$s</processtime><actioncode>0</actioncode><protversion>2</protversion><svccont><info><udid>%2$s</udid><syscode>%3$s</syscode><engine_version>%4$s</engine_version><app_version>%5$s</app_version><map_version>%6$s</map_version><res_version>%7$s</res_version><suburl>%8$s</suburl><sign>%9$s</sign><cellid></cellid><wifi></wifi><cx></cx><cy></cy></info></svccont></opg>"

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->REQUEST_CONTENT:Ljava/lang/String;

    iput-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResponseContent:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mRspcode:Ljava/lang/String;

    new-instance v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;

    invoke-direct {v0, p0, v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$1;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->parseHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;

    iput v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mZipId:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->WHAT_ON_DOWNLOAD_PREPARED:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->WHAT_ON_DOWNLOAD_PROGRESS_UPDATE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->WHAT_ON_DOWNLOAD_COMPLETION:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->WHAT_ON_DOWNLOAD_ERROR:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->WHAT_ON_COMPLETION:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->WHAT_ON_DATA_REMOVED:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->WHAT_ON_DATA_LIST_GETTED:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->WHAT_ON_DOWNLOAD_STARTED:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->WHAT_ON_DOWNLOAD_STOPPED:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->WHAT_ON_DATA_LIST_GETERROR:I

    new-instance v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    new-instance v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;

    invoke-direct {v0, p0, v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$1;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->handler:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;

    return-void
.end method

.method static synthetic access$100(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsInBackground:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->unzipData(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsInBackground:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mHttpurl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getImageType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/autonavi/xmgd/citydata/DataUpdateService;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResVersion:I

    return v0
.end method

.method static synthetic access$1500(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/autonavi/xmgd/citydata/DataUpdateService;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mSyscode:I

    return v0
.end method

.method static synthetic access$1700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mEngineVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mApkVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mRequestMapVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResponseContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/autonavi/xmgd/citydata/DataUpdateService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResponseContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getXmlInfomation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mRspcode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataListFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMapVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isGettingCityList:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isInDownloadingList(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)Lcom/autonavi/xmgd/citydata/DownloadItem;
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDownloadTaskItem(I)Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2902(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mZipId:I

    return p1
.end method

.method static synthetic access$300(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isNeedStartDownloadWhenHaveNet:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataBaseDirPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isNeedStartDownloadWhenHaveNet:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/autonavi/xmgd/citydata/DataUpdateService;)J
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->availableDiskSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3200(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->notifyDownloadStarted(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->notifyDownloadStopped(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/autonavi/xmgd/citydata/DataUpdateService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->notifyDownloadPrepared(II)V

    return-void
.end method

.method static synthetic access$3500(Lcom/autonavi/xmgd/citydata/DataUpdateService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->notifyDownloadProgressUpdate(II)V

    return-void
.end method

.method static synthetic access$3600(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->notifyDownloadCompletion(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/autonavi/xmgd/citydata/DataUpdateService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->notifyDownloadError(II)V

    return-void
.end method

.method static synthetic access$3800(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/autonavi/xmgd/citydata/DataUpdateService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->notifyDataRemoved(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->stopDownloadTask()V

    return-void
.end method

.method static synthetic access$4000(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnGetDataListListener:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->loadDataList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataItem;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->addDownloadTask(Lcom/autonavi/xmgd/citydata/DataItem;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->addTaskToRemove(Lcom/autonavi/xmgd/citydata/DataItem;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->addTaskToRemove(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->clearDownloadTasks()V

    return-void
.end method

.method static synthetic access$4600(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->clearRemoveTasks()V

    return-void
.end method

.method static synthetic access$4700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDataList()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDownloadedDataList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)Lcom/autonavi/xmgd/citydata/DataItem;
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDataItemBasiconId(I)Lcom/autonavi/xmgd/citydata/DataItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/autonavi/xmgd/citydata/DataUpdateService;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->lastType:I

    return v0
.end method

.method static synthetic access$5000(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDownloadTaskDownloadedSize(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->lastType:I

    return p1
.end method

.method static synthetic access$5100(Lcom/autonavi/xmgd/citydata/DataUpdateService;)[Lcom/autonavi/xmgd/citydata/DownloadItem;
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDownloadTaskItemList()[Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/autonavi/xmgd/citydata/DataUpdateService;)I
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDownloadTaskItemListSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDownloadTaskTotalSize(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5400(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->setInBackground(Z)V

    return-void
.end method

.method static synthetic access$5500(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getIsInBackground()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->setIsUseLazyProgressNotify(Z)V

    return-void
.end method

.method static synthetic access$5700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getIsUseLazyProgressNotify()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getRequestMapVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5900(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getMapVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->startDownloadTask()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->setMinNotifyDownloadSize(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/autonavi/xmgd/citydata/DataUpdateService;)I
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getMinNotifyDownloadSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getNoDownloadDataList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6300(Lcom/autonavi/xmgd/citydata/DataUpdateService;)I
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getRemoveListSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->hasTaskToRun()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataItem;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->insertDownloadTask(Lcom/autonavi/xmgd/citydata/DataItem;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isBaseResourceFilesExists()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)Lcom/autonavi/xmgd/citydata/DownloadItem;
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->removeDownloadTask(I)Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6800(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->setFileDownloadListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->removeFileDownloadListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$IAllCompletionListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->setOnAllCompletionListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IAllCompletionListener;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$IAllCompletionListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->removeOnAllCompletionListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IAllCompletionListener;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileRemovedListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->setOnFileRemovedListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileRemovedListener;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileRemovedListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->removeOnFileRemovedListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileRemovedListener;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$IGetDataListListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->setOnGetDataListListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IGetDataListListener;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$IGetDataListListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->removeOnGetDataListListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IGetDataListListener;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/autonavi/xmgd/citydata/DataUpdateService;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->sortDownloadTaskById(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->startRemoveDataTask()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->stopRemoveTask()V

    return-void
.end method

.method static synthetic access$7900(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->storeDownloadTask()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsDownloadBaseData:Z

    return v0
.end method

.method static synthetic access$8000(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->storeRemoveTasks()Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsDownloadBaseData:Z

    return p1
.end method

.method static synthetic access$8100(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsMapRunning:Z

    return v0
.end method

.method static synthetic access$8102(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsMapRunning:Z

    return p1
.end method

.method static synthetic access$8200(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isInitService:Z

    return v0
.end method

.method static synthetic access$8300(Lcom/autonavi/xmgd/citydata/DataUpdateService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->wantToUpdateMapdata(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->wantToUpdateResource(I)V

    return-void
.end method

.method static synthetic access$8500(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDownloadedDataListFromLocal()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8700(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mNaviDataPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMapDataPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/autonavi/xmgd/citydata/DataUpdateService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mCityDataList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->checkIsDownloadBaseData(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9000(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->stopService()V

    return-void
.end method

.method static synthetic access$9102(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isStopService:Z

    return p1
.end method

.method static synthetic access$9200(Lcom/autonavi/xmgd/citydata/DataUpdateService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->setIsRunning(Z)V

    return-void
.end method

.method private addCityDataToMapEngine(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->addDataToEngine(I)V

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7a1e8

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->addDataToEngine(I)V

    const v0, 0x7a184

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->addDataToEngine(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7a120
        :pswitch_0
    .end packed-switch
.end method

.method private addDataToEngine(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autonavi.xmgd.citydata.ADD_CITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "adminCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private addDownloadTask(Lcom/autonavi/xmgd/citydata/DataItem;)I
    .locals 9

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->availableDiskSpace()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/autonavi/xmgd/citydata/DataItem;->unzipSize:J

    iget-wide v4, p1, Lcom/autonavi/xmgd/citydata/DataItem;->supposeSize:J

    invoke-direct {p0, v4, v5}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDownloadTaskTotalSizes(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    iget v1, p1, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    iget-object v2, p1, Lcom/autonavi/xmgd/citydata/DataItem;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/autonavi/xmgd/citydata/DataItem;->sourceUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadDirPath:Ljava/lang/String;

    iget-wide v5, p1, Lcom/autonavi/xmgd/citydata/DataItem;->supposeSize:J

    iget-wide v7, p1, Lcom/autonavi/xmgd/citydata/DataItem;->unzipSize:J

    invoke-virtual/range {v0 .. v8}, Lcom/autonavi/xmgd/citydata/DownloadManager;->addTask(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)I

    move-result v0

    goto :goto_0
.end method

.method private addTaskToRemove(I)V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMapDataBaseDirPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tmc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataRemover:Lcom/autonavi/xmgd/citydata/DataRemover;

    invoke-virtual {v1, p1, v0}, Lcom/autonavi/xmgd/citydata/DataRemover;->addTask(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-ne p1, v3, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataRemover:Lcom/autonavi/xmgd/citydata/DataRemover;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataBaseDirPath:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/autonavi/xmgd/citydata/DataRemover;->addTask(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataBaseDirPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "assets"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataBaseDirPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Resource5.irf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataBaseDirPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "yaho"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataBaseDirPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "res_version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataRemover:Lcom/autonavi/xmgd/citydata/DataRemover;

    invoke-virtual {v1, v3, v0}, Lcom/autonavi/xmgd/citydata/DataRemover;->addTask(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_2
    const v0, 0x7a120

    if-ne p1, v0, :cond_3

    const v0, 0x7a184

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->addTaskToRemoveByDataName(I)V

    const v0, 0x7a1e8

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->addTaskToRemoveByDataName(I)V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->addTaskToRemoveByDataName(I)V

    goto/16 :goto_0
.end method

.method private addTaskToRemove(Lcom/autonavi/xmgd/citydata/DataItem;)V
    .locals 1

    iget v0, p1, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->addTaskToRemove(I)V

    return-void
.end method

.method private addTaskToRemoveByDataName(I)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataRemover:Lcom/autonavi/xmgd/citydata/DataRemover;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mNaviDataPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMapDataPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/autonavi/xmgd/citydata/DataRemover;->addTask(ILjava/lang/String;)V

    return-void
.end method

.method private availableDiskSpace()J
    .locals 7

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DataUpdateService] addDownloadTask mDownloadDir.getPath() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v5, 0x4

    sub-long/2addr v3, v5

    mul-long v0, v1, v3

    goto :goto_0
.end method

.method private checkIsDownloadBaseData(I)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsDownloadBaseData:Z

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanPreferences()V
    .locals 2

    sget-object v0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "dataupdate"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v1, "[DataUpdateService] cleanPreferences"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private clearAllListeners()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnAllCompletionListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnFileRemovedListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnGetDataListListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private clearDownloadTasks()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DownloadManager;->clearTasks()V

    return-void
.end method

.method private clearRemoveTasks()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataRemover:Lcom/autonavi/xmgd/citydata/DataRemover;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataRemover;->clearTasks()V

    return-void
.end method

.method private dearIntent(Landroid/content/Intent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object v1, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v2, "[DataUpdateService]  end--------onStartCommand --------intent is null , return START_NOT_STICKY"

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v1, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v2, "[DataUpdateService]  end--------onStartCommand --------action is null , return START_NOT_STICKY"

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.autonavi.xmgd.citydata.SERVICE_START_DATAUPDATE_SERVICE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v1, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v2, "[DataUpdateService]  end--------onStartCommand --------action is error , return START_NOT_STICKY"

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "bundle"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_3

    sget-object v1, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v2, "[DataUpdateService]  end--------onStartCommand --------intent.bundle is null , return START_NOT_STICKY"

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "mHttpurl"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mHttpurl:Ljava/lang/String;

    const-string v3, "mAssetsPath"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mAssetsPath:Ljava/lang/String;

    const-string v3, "mNaviDataPath"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mNaviDataPath:Ljava/lang/String;

    const-string v3, "mMapDataPath"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMapDataPath:Ljava/lang/String;

    const-string v3, "mSyscode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mSyscode:I

    const-string v3, "mRequestMapVersion"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mRequestMapVersion:Ljava/lang/String;

    const-string v3, "mEngineVersion"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mEngineVersion:Ljava/lang/String;

    const-string v3, "mApkVersion"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mApkVersion:Ljava/lang/String;

    const-string v3, "mImei"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mImei:Ljava/lang/String;

    sget-object v2, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    if-nez v2, :cond_4

    const-string v2, "dataupdate"

    invoke-virtual {p0, v2, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    :cond_4
    sget-object v0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "isSaveIntent"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "mHttpurl"

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mHttpurl:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "mAssetsPath"

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mAssetsPath:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "mNaviDataPath"

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mNaviDataPath:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "mMapDataPath"

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMapDataPath:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "mSyscode"

    iget v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mSyscode:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "mRequestMapVersion"

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mRequestMapVersion:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "mEngineVersion"

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mEngineVersion:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "mApkVersion"

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mApkVersion:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "mImei"

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mImei:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v1

    goto/16 :goto_0
.end method

.method private getDataItemBasiconId(I)Lcom/autonavi/xmgd/citydata/DataItem;
    .locals 8

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->loadDataList()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v3

    :goto_1
    if-ge v2, v7, :cond_3

    iget-object v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xmgd/citydata/DataItem;

    iget v1, v1, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    if-ne v1, p1, :cond_1

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    iget v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    if-eq v1, p1, :cond_0

    iget v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    div-int/lit16 v2, p1, 0x2710

    mul-int/lit16 v2, v2, 0x2710

    if-eq v1, v2, :cond_0

    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private getDataList()Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResponseContent:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResponseContent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->postDownloadDataList()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getDownloadTaskDownloadedSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/citydata/DownloadManager;->getTaskDownloadedSize(I)I

    move-result v0

    return v0
.end method

.method private getDownloadTaskItem(I)Lcom/autonavi/xmgd/citydata/DownloadItem;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/citydata/DownloadManager;->getTaskItem(I)Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method private getDownloadTaskItemList()[Lcom/autonavi/xmgd/citydata/DownloadItem;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DownloadManager;->getTaskItemList()[Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method private getDownloadTaskItemListSize()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DownloadManager;->getTaskItemListSize()I

    move-result v0

    return v0
.end method

.method private getDownloadTaskTotalSize(I)J
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/citydata/DownloadManager;->getTaskTotalSize(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getDownloadTaskTotalSizes(J)J
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/citydata/DownloadManager;->getTaskTotalSizes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getDownloadedDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->loadDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->loadDownloadedDataList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getDownloadedDataListFromLocal()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataListFile:Ljava/io/File;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataListFile:Ljava/io/File;

    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/FileUtils;->readFile(Ljava/io/File;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    new-instance v3, Ljava/io/ByteArrayInputStream;

    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->handler:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;

    invoke-virtual {v1, v3, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->handler:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->getDataList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->loadDownloadedDataList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getImageType()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mAssetsPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getIsInBackground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsInBackground:Z

    return v0
.end method

.method private getIsUseLazyProgressNotify()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DownloadManager;->getIsUseLazyProgressNotify()Z

    move-result v0

    return v0
.end method

.method private getMapVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMapVersion:Ljava/lang/String;

    return-object v0
.end method

.method private getMinNotifyDownloadSize()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DownloadManager;->getMinNotifyDownloadSize()I

    move-result v0

    return v0
.end method

.method private getNoDownloadDataList()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->loadDataList()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-boolean v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloaded:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isRequired:Z

    if-nez v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    iget-boolean v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloading:Z

    if-nez v1, :cond_6

    iget-boolean v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isUpdate:Z

    if-eq v1, v10, :cond_3

    iget v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isCityDataDownloaded(I)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_3
    iput-boolean v10, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    :cond_4
    :goto_2
    iget-object v4, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-boolean v6, v1, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloaded:Z

    if-eqz v6, :cond_5

    iget-boolean v6, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isRequired:Z

    if-nez v6, :cond_5

    iget-wide v6, v0, Lcom/autonavi/xmgd/citydata/DataItem;->supposeSize:J

    iget-wide v8, v1, Lcom/autonavi/xmgd/citydata/DataItem;->supposeSize:J

    sub-long/2addr v6, v8

    iput-wide v6, v0, Lcom/autonavi/xmgd/citydata/DataItem;->supposeSize:J

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_8
    move-object v0, v2

    goto :goto_0
.end method

.method private getRemoveListSize()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataRemover:Lcom/autonavi/xmgd/citydata/DataRemover;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataRemover;->getTaskListSize()I

    move-result v0

    return v0
.end method

.method private getRequestMapVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mRequestMapVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getResVersion(ILjava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/res_version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/GlobalCity;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/GlobalCity;->getString([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p0

    :cond_0
    :goto_0
    return p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getXmlInfomation()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResponseContent:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "rspcode"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mRspcode:Ljava/lang/String;

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mRspcode:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mRspcode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mRspcode:Ljava/lang/String;

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mRspcode:Ljava/lang/String;

    const-string v3, "0000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "version_data"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMapVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMapVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMapVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMapVersion:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResponseContent:Ljava/lang/String;

    const-string v4, "GBK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private hasTaskToRun()Z
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getRemoveListSize()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDownloadTaskItemListSize()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initPreferences()Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    const-string v1, "dataupdate"

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v1, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    const-string v2, "isSaveIntent"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    const-string v2, "mHttpurl"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mHttpurl:Ljava/lang/String;

    sget-object v1, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    const-string v2, "mAssetsPath"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mAssetsPath:Ljava/lang/String;

    sget-object v1, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    const-string v2, "mNaviDataPath"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mNaviDataPath:Ljava/lang/String;

    sget-object v1, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    const-string v2, "mMapDataPath"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMapDataPath:Ljava/lang/String;

    sget-object v1, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    const-string v2, "mSyscode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mSyscode:I

    sget-object v0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    const-string v1, "mRequestMapVersion"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mRequestMapVersion:Ljava/lang/String;

    sget-object v0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    const-string v1, "mEngineVersion"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mEngineVersion:Ljava/lang/String;

    sget-object v0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    const-string v1, "mApkVersion"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mApkVersion:Ljava/lang/String;

    sget-object v0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    const-string v1, "mImei"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mImei:Ljava/lang/String;

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private initService()V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isInitService:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v5, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isInitService:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mRequestMapVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mRequestMapVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mRequestMapVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mRequestMapVersion:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mEngineVersion:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mEngineVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mEngineVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mEngineVersion:Ljava/lang/String;

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mNaviDataPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataBaseDirPath:Ljava/lang/String;

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DataUpdateService]mDataBaseDirPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataBaseDirPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataBaseDirPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMapDataPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMapDataBaseDirPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataBaseDirPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadDirPath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadDirPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadDir:Ljava/io/File;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataBaseDirPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "download/downloadtasks_dtl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadListFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataBaseDirPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "download/datalist_lst"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataListFile:Ljava/io/File;

    new-instance v0, Lcom/autonavi/xmgd/citydata/DataRemover;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataBaseDirPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "download/removetasks_dtl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/autonavi/xmgd/citydata/DataRemover;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataRemover:Lcom/autonavi/xmgd/citydata/DataRemover;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataRemover:Lcom/autonavi/xmgd/citydata/DataRemover;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileRemovedListener:Lcom/autonavi/xmgd/citydata/DataRemover$OnFileRemovedListener;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataRemover;->setOnFileDeletedListener(Lcom/autonavi/xmgd/citydata/DataRemover$OnFileRemovedListener;)V

    new-instance v0, Lcom/autonavi/xmgd/citydata/DownloadManager;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadListFile:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/autonavi/xmgd/citydata/DownloadManager;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadInterface:Lcom/autonavi/xmgd/citydata/DownloadInterface;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DownloadManager;->setListener(Lcom/autonavi/xmgd/citydata/DownloadInterface;)V

    const-string v1, ""

    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "citylist.txt"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v1

    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v2

    if-gtz v2, :cond_8

    :cond_4
    :goto_2
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    :try_start_2
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    new-instance v2, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityListParseHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityListParseHandler;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;Lcom/autonavi/xmgd/citydata/DataUpdateService$1;)V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataBaseDirPath:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getResVersion(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResVersion:I

    sget-object v0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    if-nez v0, :cond_6

    const-string v0, "dataupdate"

    invoke-virtual {p0, v0, v4}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    :cond_6
    sget-object v0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    const-string v1, "isrunning"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v1, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DataUpdateService] LastTime isRUNNING: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v5, :cond_7

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->startDownloadTask()Z

    invoke-direct {p0, v5}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->setInBackground(Z)V

    :cond_7
    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v1, "[DataUpdateService]  --------Service init success -------- "

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_4
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    sget-boolean v1, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DataUpdateService]CityListParseHandler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_4
    move-exception v0

    sget-boolean v1, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DataUpdateService]CityListParseHandler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_5
    move-exception v0

    sget-boolean v1, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DataUpdateService]CityListParseHandler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4
.end method

.method private insertDownloadTask(Lcom/autonavi/xmgd/citydata/DataItem;I)I
    .locals 10

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->availableDiskSpace()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/autonavi/xmgd/citydata/DataItem;->unzipSize:J

    iget-wide v4, p1, Lcom/autonavi/xmgd/citydata/DataItem;->supposeSize:J

    invoke-direct {p0, v4, v5}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDownloadTaskTotalSizes(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    iget v1, p1, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    iget-object v2, p1, Lcom/autonavi/xmgd/citydata/DataItem;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/autonavi/xmgd/citydata/DataItem;->sourceUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadDirPath:Ljava/lang/String;

    iget-wide v5, p1, Lcom/autonavi/xmgd/citydata/DataItem;->supposeSize:J

    iget-wide v7, p1, Lcom/autonavi/xmgd/citydata/DataItem;->unzipSize:J

    move v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/autonavi/xmgd/citydata/DownloadManager;->insertTask(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)I

    move-result v0

    goto :goto_0
.end method

.method public static isBaseMapDataFilesExists(Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dbdata"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "china"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dbdata"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "idx"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    sget-boolean v1, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DataUpdateService]Global isBaseMapDataFilesExists not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private isBaseResourceFilesExists()Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mNaviDataPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mAssetsPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isBaseResourceFilesExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isBaseResourceFilesExists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v1, "assetsPath == null"

    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->saveDataUpdateLog(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string v1, "imagePath == null"

    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->saveDataUpdateLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "image/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    const-string v2, "Resource5.irf"

    aput-object v2, v3, v1

    const/4 v2, 0x2

    const-string v4, "yaho"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "GNaviRes/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Gconfig.ini"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v5, v3, v2

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBaseResourceFilesExists is not exist = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->saveDataUpdateLog(Ljava/lang/String;)V

    sget-object v1, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBaseResourceFilesExists is not exist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method

.method private isInDownloadingList(I)Z
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDownloadTaskItemList()[Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget v4, v4, Lcom/autonavi/xmgd/citydata/DownloadItem;->id:I

    if-ne p1, v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isTMCDataExists()Z
    .locals 9

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mNaviDataPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMapDataPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tmc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xmgd/citydata/DataUpdateService;->TMC_DATA_KEY_FILES:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private loadDataList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v6, 0xa

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->parseHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->getDataList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResponseContent:Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResponseContent:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->parseHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;

    invoke-virtual {v0, v2, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->parseHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataListParseHandler;->getDataList()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    const/16 v3, 0x271c

    invoke-virtual {v2, v6, v3, v5}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    sget-boolean v2, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v3, "[DataUpdateService]DataUpdateService loadDataList ParserConfigurationException"

    invoke-static {v2, v3, v0}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    const/16 v3, 0x271d

    invoke-virtual {v2, v6, v3, v5}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    sget-boolean v2, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v3, "[DataUpdateService]DataUpdateService loadDataList SAXException"

    invoke-static {v2, v3, v0}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    const/16 v3, 0x271e

    invoke-virtual {v2, v6, v3, v5}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    sget-boolean v2, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v3, "[DataUpdateService]DataUpdateService loadDataList IOException"

    invoke-static {v2, v3, v0}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private loadDownloadedDataList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-boolean v4, v1, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloaded:Z

    if-nez v4, :cond_3

    iget-wide v4, v0, Lcom/autonavi/xmgd/citydata/DataItem;->supposeSize:J

    iget-wide v6, v1, Lcom/autonavi/xmgd/citydata/DataItem;->supposeSize:J

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lcom/autonavi/xmgd/citydata/DataItem;->supposeSize:J

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    iget-boolean v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isDownloaded:Z

    if-nez v1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_6
    iget-boolean v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isRequired:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    goto :goto_0
.end method

.method private notifyAllCompletion()V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsInBackground:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsInBackground:Z

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->showAllCompleteNotification()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnAllCompletionListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnAllCompletionListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnAllCompletionListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$IAllCompletionListener;

    invoke-interface {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$IAllCompletionListener;->onAllCompletion()V

    goto :goto_0
.end method

.method private notifyDataRemoved(II)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->removeCityDataFromMapEngine(I)V

    if-gtz p2, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->setIsRunning(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsInBackground:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->updateTaskProgressNotification(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnFileRemovedListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnFileRemovedListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnFileRemovedListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileRemovedListener;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileRemovedListener;->onDataRemoved(II)V

    goto :goto_0
.end method

.method private notifyDownloadCompletion(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/citydata/DownloadManager;->removeTask(I)Lcom/autonavi/xmgd/citydata/DownloadItem;

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->addCityDataToMapEngine(I)V

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsInBackground:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;->onCompletion(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->pickNextDownloadTask()V

    return-void
.end method

.method private notifyDownloadError(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsInBackground:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->stopDownloadTask()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;->onError(II)V

    goto :goto_0
.end method

.method private notifyDownloadPrepared(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsInBackground:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;->onPrepared(II)V

    goto :goto_0
.end method

.method private notifyDownloadProgressUpdate(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsInBackground:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x42c8

    int-to-float v1, p2

    mul-float/2addr v0, v1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDownloadTaskTotalSize(I)J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->updateTaskProgressNotification(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;->onProgressUpdate(II)V

    goto :goto_0
.end method

.method private notifyDownloadStarted(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsInBackground:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;->onStarted(I)V

    goto :goto_0
.end method

.method private notifyDownloadStopped(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsInBackground:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;->onStopped(I)V

    goto :goto_0
.end method

.method private notifyNewDownloadTask(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsInBackground:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->showTaskNotification(Ljava/lang/String;IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private pickNextDownloadTask()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsRunning:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DownloadManager;->getTaskItemList()[Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    aget-object v0, v0, v4

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/citydata/DownloadManager;->getTaskItemList()[Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v1}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/autonavi/xmgd/citydata/DownloadItem;->startDownloadTime:Ljava/lang/String;

    iget v0, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->id:I

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->startDownloadTask(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->setIsRunning(Z)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->notifyAllCompletion()V

    goto :goto_0
.end method

.method private postDownloadDataList()V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isGettingCityList:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isGettingCityList:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$3;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private removeCityDataFromMapEngine(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->removeDataFromEngine(I)V

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7a1e8

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->removeDataFromEngine(I)V

    const v0, 0x7a184

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->removeDataFromEngine(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7a120
        :pswitch_0
    .end packed-switch
.end method

.method private removeDataFromEngine(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autonavi.xmgd.citydata.DEL_CITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "adminCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private removeDownloadTask(I)Lcom/autonavi/xmgd/citydata/DownloadItem;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/citydata/DownloadManager;->removeTask(I)Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsRunning:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->pickNextDownloadTask()V

    :cond_0
    return-object v0
.end method

.method private removeFileDownloadListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private removeOnAllCompletionListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IAllCompletionListener;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnAllCompletionListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnAllCompletionListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnAllCompletionListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private removeOnFileRemovedListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileRemovedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnFileRemovedListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnFileRemovedListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnFileRemovedListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private removeOnGetDataListListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IGetDataListListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnGetDataListListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnGetDataListListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnGetDataListListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private setFileDownloadListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileDownloadListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mFileDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private setInBackground(Z)V
    .locals 6

    const/4 v5, 0x0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsInBackground:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mMainHandler:Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$MainHandler;->removeMessages(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->setIsUseLazyProgressNotify(Z)V

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsRunning:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDownloadTaskItemList()[Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v0, v0, v5

    iget-object v1, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->name:Ljava/lang/String;

    const/high16 v2, 0x42c8

    iget-wide v3, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->downloadedSize:J

    long-to-float v3, v3

    mul-float/2addr v2, v3

    iget-wide v3, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->totalSize:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->startDownloadTime:Ljava/lang/String;

    invoke-direct {p0, v1, v5, v2, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->showTaskNotification(Ljava/lang/String;IILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    invoke-direct {p0, v5}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->setIsUseLazyProgressNotify(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setIsRunning(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsRunning:Z

    sget-object v0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "dataupdate"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cache_dataupdate:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isrunning"

    iget-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsRunning:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setIsUseLazyProgressNotify(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/citydata/DownloadManager;->setIsUseLazyProgressNotify(Z)V

    :cond_0
    return-void
.end method

.method private setMinNotifyDownloadSize(I)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/citydata/DownloadManager;->setMinNotifyDownloadSize(I)Z

    move-result v0

    return v0
.end method

.method private setOnAllCompletionListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IAllCompletionListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnAllCompletionListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private setOnFileRemovedListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileRemovedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnFileRemovedListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private setOnGetDataListListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IGetDataListListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mOnGetDataListListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private showAllCompleteNotification()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->stopService()V

    return-void
.end method

.method private showTaskNotification(Ljava/lang/String;IILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0701fa

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput p2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->progressMax:I

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v1, :cond_0

    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const v2, 0x1080081

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-lez p2, :cond_1

    :goto_0
    invoke-virtual {v1, p2, p3, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autonavi.xmgd.navigator.dataupdate"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x800

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->startForeground(ILandroid/app/Notification;)V

    return-void

    :cond_1
    const/16 p2, 0x64

    goto :goto_0
.end method

.method private sortDownloadTaskById(II)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/citydata/DownloadManager;->sortTaskById(II)Z

    move-result v0

    return v0
.end method

.method private startDownloadTask(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/citydata/DownloadManager;->startTask(I)V

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getDownloadTaskItem(I)Lcom/autonavi/xmgd/citydata/DownloadItem;

    move-result-object v0

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DownloadItem;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->notifyNewDownloadTask(Ljava/lang/String;)V

    return-void
.end method

.method private startDownloadTask()Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v2, "startDownloadTask"

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsRunning:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->setIsRunning(Z)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->pickNextDownloadTask()V

    goto :goto_0
.end method

.method private startRemoveDataTask()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsRunning:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->setIsRunning(Z)V

    sget-object v2, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDataRemover.getTaskListSize() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataRemover:Lcom/autonavi/xmgd/citydata/DataRemover;

    invoke-virtual {v4}, Lcom/autonavi/xmgd/citydata/DataRemover;->getTaskListSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataRemover:Lcom/autonavi/xmgd/citydata/DataRemover;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/citydata/DataRemover;->getTaskListSize()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataRemover:Lcom/autonavi/xmgd/citydata/DataRemover;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataRemover;->start()V

    move v0, v1

    goto :goto_0
.end method

.method private stopDownloadTask()V
    .locals 2

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v1, "stopDownloadTask"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->setIsRunning(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DownloadManager;->shutdown()V

    return-void
.end method

.method private stopRemoveTask()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->setIsRunning(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataRemover:Lcom/autonavi/xmgd/citydata/DataRemover;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataRemover;->stop()V

    return-void
.end method

.method private stopService()V
    .locals 3

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DataUpdateSerivce] stopService  +mIsRunning = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isStopService ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isStopService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mIsMapRunning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsMapRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isStopService:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsMapRunning:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v1, "[DataUpdateSerivce] cannot stop self!!"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isStopService:Z

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->cleanPreferences()V

    invoke-static {}, Lcom/autonavi/xmgd/citydata/GlobalCity;->onDestroy()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->stopSelf()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.plugin.action.exit_update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private storeDownloadTask()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DownloadManager;->store()Z

    move-result v0

    return v0
.end method

.method private storeRemoveTasks()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataRemover:Lcom/autonavi/xmgd/citydata/DataRemover;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataRemover;->store()Z

    move-result v0

    return v0
.end method

.method private unzipData(I)V
    .locals 2

    iget v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mZipId:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdateService$UnZipRunner;

    invoke-direct {v1, p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$UnZipRunner;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private updateTaskProgressNotification(I)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTaskProgressNotification progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->progressMax:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->progressMax:I

    :goto_1
    invoke-virtual {v1, v0, p1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    goto :goto_1
.end method

.method private wantToUpdateMapdata(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResponseContent:Ljava/lang/String;

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mRequestMapVersion:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResVersion:I

    return-void
.end method

.method private wantToUpdateResource(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResponseContent:Ljava/lang/String;

    iput p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mResVersion:I

    return-void
.end method


# virtual methods
.method public getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCityDataDownloaded(I)Z
    .locals 8

    const/4 v7, 0x1

    const v6, 0x7a1e8

    const v5, 0x7a184

    const/4 v1, 0x0

    new-array v2, v7, [Z

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mCityDataList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isTMCDataExists()Z

    move-result v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mNaviDataPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mAssetsPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isBaseResourceFilesExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mCityDataList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;

    move-result-object v3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mCityDataList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->GDBL_IsGlobalDataAvailable(Ljava/lang/String;[Z)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-boolean v0, v2, v1

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mCityDataList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;

    move-result-object v3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mCityDataList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v0, v5, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->GDBL_GetAdareaDataFlag(Ljava/lang/String;I[Z)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-boolean v0, v2, v1

    if-ne v0, v7, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mCityDataList:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;

    move-result-object v3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mCityDataList:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v0, v6, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->GDBL_GetAdareaDataFlag(Ljava/lang/String;I[Z)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-boolean v0, v2, v1

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;

    move-result-object v3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mCityDataList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$CityDataInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v0, p1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->GDBL_GetAdareaDataFlag(Ljava/lang/String;I[Z)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-boolean v0, v2, v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
        0x7a120 -> :sswitch_3
    .end sparse-switch
.end method

.method isDownloadTaskStarted(I)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/citydata/DownloadManager;->isTaskStarted(I)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DataUpdateService]  onCreate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateReceiver;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateReceiver;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataUpdateReciver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.autonavi.xmgd.citydata.SERVICE_RESTART_DATAUPDATE_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autonavi.xmgd.citydata.STOP_DATA_UPDATE_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autonavi.xmgd.citydata.BROADCAST_ENTER_MAP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autonavi.xmgd.citydata.BROADCAST_EXIT_MAP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataUpdateReciver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/autonavi/xmgd/citydata/DataUpdateService$NetworkChangesReceiver;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$NetworkChangesReceiver;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateService;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->startForeground(ILandroid/app/Notification;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->initPreferences()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->initService()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DataUpdateService]  onDestroy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-virtual {p0, v4}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->stopForeground(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataUpdateReciver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataUpdateReciver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataRemover:Lcom/autonavi/xmgd/citydata/DataRemover;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDataRemover:Lcom/autonavi/xmgd/citydata/DataRemover;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataRemover;->stop()V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mDownloadManager:Lcom/autonavi/xmgd/citydata/DownloadManager;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DownloadManager;->shutdown()V

    :cond_3
    iput-boolean v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mIsInBackground:Z

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->clearAllListeners()V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_4
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const/4 v0, 0x1

    sget-object v1, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DataUpdateService]  start--------onStartCommand -------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateService;->isInitService:Z

    if-ne v1, v0, :cond_0

    sget-object v1, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v2, "[DataUpdateService]  end--------onStartCommand --------isInitService is true , return START_STICKY"

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->dearIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->initService()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method
