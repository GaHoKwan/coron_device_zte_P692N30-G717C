.class public Lcom/zte/heartyservice/power/NewStaticsFragment;
.super Landroid/app/Fragment;
.source "NewStaticsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_APP_LIST:Ljava/lang/String; = "app_list"

.field private static final KEY_BATTERY_STATUS:Ljava/lang/String; = "battery_status"

.field private static final LIST_HARDWARE:I = 0x1

.field private static final LIST_SOFTWARE:I = 0x0

.field private static final MAX_ITEMS_TO_LIST:I = 0x14

.field private static final MENU_STATS_REFRESH:I = 0x2

.field private static final MENU_STATS_TYPE:I = 0x1

.field private static final MIN_POWER_THRESHOLD:I = 0x0

.field private static final REFRESH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PowerUsageSummary"

.field private static sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl; = null

.field private static final tag:Ljava/lang/String; = "StaticsFragment"


# instance fields
.field private SelectedPosition:I

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private mAbnormalApps:Landroid/widget/TextView;

.field private mAbort:Z

.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mAppWifiRunning:J

.field mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryStatusPref:Landroid/preference/Preference;

.field private mBatteryType:Landroid/widget/RadioGroup;

.field private mBatteryUsedTime:Landroid/view/View;

.field private mBluetoothPower:D

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/power/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListTitle:Landroid/widget/TextView;

.field private mListToBeDisplay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/power/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mListType:I

.field private mMaxPower:D

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/power/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestThread:Ljava/lang/Thread;

.field private mRunningAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStaticsList:Landroid/widget/ListView;

.field private mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mTotalPower:D

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/power/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiPower:D

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/power/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private myAdapter:Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 71
    iput v2, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->SelectedPosition:I

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsPeriod:J

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mUsageList:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mWifiSippers:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mBluetoothSippers:Ljava/util/List;

    .line 110
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mMaxPower:D

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mRequestQueue:Ljava/util/ArrayList;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mListToBeDisplay:Ljava/util/List;

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mRunningAppList:Ljava/util/List;

    .line 131
    iput v2, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mListType:I

    .line 283
    new-instance v0, Lcom/zte/heartyservice/power/NewStaticsFragment$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/power/NewStaticsFragment$1;-><init>(Lcom/zte/heartyservice/power/NewStaticsFragment;)V

    iput-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mHandler:Landroid/os/Handler;

    .line 943
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/power/NewStaticsFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->SelectedPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/zte/heartyservice/power/NewStaticsFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->SelectedPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/power/NewStaticsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->refreshSoftWareStats()V

    return-void
.end method

.method static synthetic access$1400(Lcom/zte/heartyservice/power/NewStaticsFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mListType:I

    return v0
.end method

.method static synthetic access$1600(Lcom/zte/heartyservice/power/NewStaticsFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mRunningAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/zte/heartyservice/power/NewStaticsFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mUsageList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/zte/heartyservice/power/NewStaticsFragment;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mTotalPower:D

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/zte/heartyservice/power/NewStaticsFragment;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mMaxPower:D

    return-wide v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/power/NewStaticsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->refreshHardWareStats()V

    return-void
.end method

.method static synthetic access$2000(Lcom/zte/heartyservice/power/NewStaticsFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mListTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/zte/heartyservice/power/NewStaticsFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mAbnormalApps:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/power/NewStaticsFragment;)Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->myAdapter:Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/zte/heartyservice/power/NewStaticsFragment;Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;)Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->myAdapter:Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/power/NewStaticsFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStaticsList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/power/NewStaticsFragment;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mBatteryType:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/power/NewStaticsFragment;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/power/NewStaticsFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/power/NewStaticsFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mListToBeDisplay:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/power/NewStaticsFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private addBluetoothUsage(J)V
    .locals 12
    .parameter "uSecNow"

    .prologue
    .line 893
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    div-long v3, v0, v5

    .line 894
    .local v3, btOnTimeMs:J
    long-to-double v0, v3

    iget-object v2, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v10, v0, v5

    .line 895
    .local v10, btPower:D
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v9

    .line 896
    .local v9, btPingCount:I
    int-to-double v0, v9

    iget-object v2, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.at"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double/2addr v0, v5

    add-double/2addr v10, v0

    .line 897
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0180

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zte/heartyservice/power/BatterySipper$DrainType;->BLUETOOTH:Lcom/zte/heartyservice/power/BatterySipper$DrainType;

    const v5, 0x7f0200de

    iget-wide v6, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mBluetoothPower:D

    add-double/2addr v6, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/zte/heartyservice/power/NewStaticsFragment;->addEntry(Ljava/lang/String;Lcom/zte/heartyservice/power/BatterySipper$DrainType;JID)Lcom/zte/heartyservice/power/BatterySipper;

    move-result-object v8

    .line 899
    .local v8, bs:Lcom/zte/heartyservice/power/BatterySipper;
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mBluetoothSippers:Ljava/util/List;

    const-string v1, "Bluetooth"

    invoke-direct {p0, v8, v0, v1}, Lcom/zte/heartyservice/power/NewStaticsFragment;->aggregateSippers(Lcom/zte/heartyservice/power/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 900
    return-void
.end method

.method private addEntry(Ljava/lang/String;Lcom/zte/heartyservice/power/BatterySipper$DrainType;JID)Lcom/zte/heartyservice/power/BatterySipper;
    .locals 9
    .parameter "label"
    .parameter "drainType"
    .parameter "time"
    .parameter "iconId"
    .parameter "power"

    .prologue
    .line 926
    iget-wide v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mMaxPower:D

    cmpl-double v1, p6, v1

    if-lez v1, :cond_0

    .line 927
    iput-wide p6, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mMaxPower:D

    .line 928
    :cond_0
    iget-wide v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mTotalPower:D

    add-double/2addr v1, p6

    iput-wide v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mTotalPower:D

    .line 929
    new-instance v0, Lcom/zte/heartyservice/power/BatterySipper;

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mRequestQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    new-array v8, v4, [D

    const/4 v4, 0x0

    aput-wide p6, v8, v4

    move-object v4, p1

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/zte/heartyservice/power/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/zte/heartyservice/power/BatterySipper$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 931
    .local v0, bs:Lcom/zte/heartyservice/power/BatterySipper;
    iput-wide p3, v0, Lcom/zte/heartyservice/power/BatterySipper;->usageTime:J

    .line 932
    iput p5, v0, Lcom/zte/heartyservice/power/BatterySipper;->iconId:I

    .line 933
    iget-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    return-object v0
.end method

.method private addIdleUsage(J)V
    .locals 10
    .parameter "uSecNow"

    .prologue
    .line 886
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    .line 887
    .local v3, idleTimeMs:J
    long-to-double v0, v3

    iget-object v2, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.idle"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    .line 888
    .local v6, idlePower:D
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a017f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zte/heartyservice/power/BatterySipper$DrainType;->IDLE:Lcom/zte/heartyservice/power/BatterySipper$DrainType;

    const v5, 0x7f020137

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/zte/heartyservice/power/NewStaticsFragment;->addEntry(Ljava/lang/String;Lcom/zte/heartyservice/power/BatterySipper$DrainType;JID)Lcom/zte/heartyservice/power/BatterySipper;

    .line 890
    return-void
.end method

.method private addPhoneUsage(J)V
    .locals 10
    .parameter "uSecNow"

    .prologue
    .line 800
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    .line 801
    .local v3, phoneOnTimeMs:J
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v8, v3

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    .line 802
    .local v6, phoneOnPower:D
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a017a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zte/heartyservice/power/BatterySipper$DrainType;->PHONE:Lcom/zte/heartyservice/power/BatterySipper$DrainType;

    const v5, 0x7f020273

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/zte/heartyservice/power/NewStaticsFragment;->addEntry(Ljava/lang/String;Lcom/zte/heartyservice/power/BatterySipper$DrainType;JID)Lcom/zte/heartyservice/power/BatterySipper;

    .line 804
    return-void
.end method

.method private addRadioUsage(J)V
    .locals 21
    .parameter "uSecNow"

    .prologue
    .line 825
    const-wide/16 v8, 0x0

    .line 826
    .local v8, power:D
    const/4 v10, 0x5

    .line 829
    .local v10, BINS:I
    :try_start_0
    const-string v2, "android.telephony.SignalStrength"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 830
    .local v12, cls:Ljava/lang/Class;
    const-string v2, "NUM_SIGNAL_STRENGTH_BINS"

    invoke-virtual {v12, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 836
    .end local v12           #cls:Ljava/lang/Class;
    :goto_0
    const-wide/16 v5, 0x0

    .line 837
    .local v5, signalTimeMs:J
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    if-ge v14, v10, :cond_0

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v14, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v19, 0x3e8

    div-long v17, v2, v19

    .line 839
    .local v17, strengthTimeMs:J
    const-wide/16 v2, 0x3e8

    div-long v2, v17, v2

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.on"

    invoke-virtual {v4, v7, v14}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v19

    mul-double v2, v2, v19

    add-double/2addr v8, v2

    .line 840
    add-long v5, v5, v17

    .line 837
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 831
    .end local v5           #signalTimeMs:J
    .end local v14           #i:I
    .end local v17           #strengthTimeMs:J
    :catch_0
    move-exception v13

    .line 833
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 842
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v5       #signalTimeMs:J
    .restart local v14       #i:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalScanningTime(JI)J

    move-result-wide v2

    const-wide/16 v19, 0x3e8

    div-long v15, v2, v19

    .line 843
    .local v15, scanningTimeMs:J
    const-wide/16 v2, 0x3e8

    div-long v2, v15, v2

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.scanning"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v19

    mul-double v2, v2, v19

    add-double/2addr v8, v2

    .line 844
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a017c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/zte/heartyservice/power/BatterySipper$DrainType;->CELL:Lcom/zte/heartyservice/power/BatterySipper$DrainType;

    const v7, 0x7f02012a

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/zte/heartyservice/power/NewStaticsFragment;->addEntry(Ljava/lang/String;Lcom/zte/heartyservice/power/BatterySipper$DrainType;JID)Lcom/zte/heartyservice/power/BatterySipper;

    move-result-object v11

    .line 846
    .local v11, bs:Lcom/zte/heartyservice/power/BatterySipper;
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-eqz v2, :cond_1

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v19, 0x3e8

    div-long v2, v2, v19

    long-to-double v2, v2

    const-wide/high16 v19, 0x4059

    mul-double v2, v2, v19

    long-to-double v0, v5

    move-wide/from16 v19, v0

    div-double v2, v2, v19

    iput-wide v2, v11, Lcom/zte/heartyservice/power/BatterySipper;->noCoveragePercent:D

    .line 850
    :cond_1
    return-void
.end method

.method private addScreenUsage(J)V
    .locals 19
    .parameter "uSecNow"

    .prologue
    .line 807
    const-wide/16 v8, 0x0

    .line 808
    .local v8, power:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v5, v2, v17

    .line 809
    .local v5, screenOnTimeMs:J
    long-to-double v2, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "screen.on"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v17

    mul-double v2, v2, v17

    add-double/2addr v8, v2

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "screen.full"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v15

    .line 811
    .local v15, screenFullPower:D
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v12, v2, :cond_0

    .line 812
    int-to-float v2, v12

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, v15

    const-wide/high16 v17, 0x4014

    div-double v13, v2, v17

    .line 813
    .local v13, screenBinPower:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v12, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v10, v2, v17

    .line 814
    .local v10, brightnessTime:J
    long-to-double v2, v10

    mul-double/2addr v2, v13

    add-double/2addr v8, v2

    .line 811
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 819
    .end local v10           #brightnessTime:J
    .end local v13           #screenBinPower:D
    :cond_0
    const-wide v2, 0x408f400000000000L

    div-double/2addr v8, v2

    .line 820
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a017b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/zte/heartyservice/power/BatterySipper$DrainType;->SCREEN:Lcom/zte/heartyservice/power/BatterySipper$DrainType;

    const v7, 0x7f0200f4

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/zte/heartyservice/power/NewStaticsFragment;->addEntry(Ljava/lang/String;Lcom/zte/heartyservice/power/BatterySipper$DrainType;JID)Lcom/zte/heartyservice/power/BatterySipper;

    .line 822
    return-void
.end method

.method private addWiFiUsage(J)V
    .locals 17
    .parameter "uSecNow"

    .prologue
    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiOnTime(JI)J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    div-long v11, v2, v7

    .line 869
    .local v11, onTimeMs:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    div-long v5, v2, v7

    .line 872
    .local v5, runningTimeMs:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mAppWifiRunning:J

    sub-long/2addr v5, v2

    .line 873
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-gez v2, :cond_0

    .line 874
    const-wide/16 v5, 0x0

    .line 875
    :cond_0
    const-wide/16 v2, 0x0

    mul-long/2addr v2, v11

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "wifi.on"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v2, v7

    long-to-double v7, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.on"

    invoke-virtual {v4, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v15

    mul-double/2addr v7, v15

    add-double/2addr v2, v7

    const-wide v7, 0x408f400000000000L

    div-double v13, v2, v7

    .line 880
    .local v13, wifiPower:D
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a017e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/zte/heartyservice/power/BatterySipper$DrainType;->WIFI:Lcom/zte/heartyservice/power/BatterySipper$DrainType;

    const v7, 0x7f020142

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mWifiPower:D

    add-double/2addr v8, v13

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/zte/heartyservice/power/NewStaticsFragment;->addEntry(Ljava/lang/String;Lcom/zte/heartyservice/power/BatterySipper$DrainType;JID)Lcom/zte/heartyservice/power/BatterySipper;

    move-result-object v10

    .line 882
    .local v10, bs:Lcom/zte/heartyservice/power/BatterySipper;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mWifiSippers:Ljava/util/List;

    const-string v3, "WIFI"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v3}, Lcom/zte/heartyservice/power/NewStaticsFragment;->aggregateSippers(Lcom/zte/heartyservice/power/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 883
    return-void
.end method

.method private aggregateSippers(Lcom/zte/heartyservice/power/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .parameter "bs"
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/heartyservice/power/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/power/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 853
    .local p2, from:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/power/BatterySipper;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 854
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/power/BatterySipper;

    .line 857
    .local v1, wbs:Lcom/zte/heartyservice/power/BatterySipper;
    iget-wide v2, p1, Lcom/zte/heartyservice/power/BatterySipper;->cpuTime:J

    iget-wide v4, v1, Lcom/zte/heartyservice/power/BatterySipper;->cpuTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/zte/heartyservice/power/BatterySipper;->cpuTime:J

    .line 858
    iget-wide v2, p1, Lcom/zte/heartyservice/power/BatterySipper;->gpsTime:J

    iget-wide v4, v1, Lcom/zte/heartyservice/power/BatterySipper;->gpsTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/zte/heartyservice/power/BatterySipper;->gpsTime:J

    .line 859
    iget-wide v2, p1, Lcom/zte/heartyservice/power/BatterySipper;->wifiRunningTime:J

    iget-wide v4, v1, Lcom/zte/heartyservice/power/BatterySipper;->wifiRunningTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/zte/heartyservice/power/BatterySipper;->wifiRunningTime:J

    .line 860
    iget-wide v2, p1, Lcom/zte/heartyservice/power/BatterySipper;->cpuFgTime:J

    iget-wide v4, v1, Lcom/zte/heartyservice/power/BatterySipper;->cpuFgTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/zte/heartyservice/power/BatterySipper;->cpuFgTime:J

    .line 861
    iget-wide v2, p1, Lcom/zte/heartyservice/power/BatterySipper;->wakeLockTime:J

    iget-wide v4, v1, Lcom/zte/heartyservice/power/BatterySipper;->wakeLockTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/zte/heartyservice/power/BatterySipper;->wakeLockTime:J

    .line 862
    iget-wide v2, p1, Lcom/zte/heartyservice/power/BatterySipper;->tcpBytesReceived:J

    iget-wide v4, v1, Lcom/zte/heartyservice/power/BatterySipper;->tcpBytesReceived:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/zte/heartyservice/power/BatterySipper;->tcpBytesReceived:J

    .line 863
    iget-wide v2, p1, Lcom/zte/heartyservice/power/BatterySipper;->tcpBytesSent:J

    iget-wide v4, v1, Lcom/zte/heartyservice/power/BatterySipper;->tcpBytesSent:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/zte/heartyservice/power/BatterySipper;->tcpBytesSent:J

    .line 853
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 865
    .end local v1           #wbs:Lcom/zte/heartyservice/power/BatterySipper;
    :cond_0
    return-void
.end method

.method private getAverageDataCost()D
    .locals 26

    .prologue
    .line 903
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x13

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 904
    invoke-direct/range {p0 .. p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->getMobilePowerPerByte()D

    move-result-wide v22

    .line 921
    :goto_0
    return-wide v22

    .line 906
    :cond_0
    const-wide/32 v6, 0xf4240

    .line 907
    .local v6, WIFI_BPS:J
    const-wide/32 v2, 0x30d40

    .line 908
    .local v2, MOBILE_BPS:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v22, v0

    const-string v23, "wifi.active"

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v22

    const-wide v24, 0x40ac200000000000L

    div-double v8, v22, v24

    .line 909
    .local v8, WIFI_POWER:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v22, v0

    const-string v23, "radio.active"

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v22

    const-wide v24, 0x40ac200000000000L

    div-double v4, v22, v24

    .line 910
    .local v4, MOBILE_POWER:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v24

    add-long v14, v22, v24

    .line 911
    .local v14, mobileData:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v24

    add-long v22, v22, v24

    sub-long v20, v22, v14

    .line 913
    .local v20, wifiData:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v16, v22, v24

    .line 914
    .local v16, radioDataUptimeMs:J
    const-wide/16 v22, 0x0

    cmp-long v22, v16, v22

    if-eqz v22, :cond_1

    const-wide/16 v22, 0x8

    mul-long v22, v22, v14

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    div-long v10, v22, v16

    .line 916
    .local v10, mobileBps:J
    :goto_1
    const-wide/16 v22, 0x8

    div-long v22, v10, v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v12, v4, v22

    .line 917
    .local v12, mobileCostPerByte:D
    const-wide v22, 0x40fe848000000000L

    div-double v18, v8, v22

    .line 918
    .local v18, wifiCostPerByte:D
    add-long v22, v20, v14

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_2

    .line 919
    long-to-double v0, v14

    move-wide/from16 v22, v0

    mul-double v22, v22, v12

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v18

    add-double v22, v22, v24

    add-long v24, v14, v20

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    goto/16 :goto_0

    .line 914
    .end local v10           #mobileBps:J
    .end local v12           #mobileCostPerByte:D
    .end local v18           #wifiCostPerByte:D
    :cond_1
    const-wide/32 v10, 0x30d40

    goto :goto_1

    .line 921
    .restart local v10       #mobileBps:J
    .restart local v12       #mobileCostPerByte:D
    .restart local v18       #wifiCostPerByte:D
    :cond_2
    const-wide/16 v22, 0x0

    goto/16 :goto_0
.end method

.method private getMobilePowerPerByte()D
    .locals 19

    .prologue
    .line 563
    const-wide/32 v1, 0x30d40

    .line 564
    .local v1, MOBILE_BPS:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v16, "radio.active"

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v15

    const-wide v17, 0x40ac200000000000L

    div-double v3, v15, v17

    .line 567
    .local v3, MOBILE_POWER:D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/common/porting/PortFunction;->getMobileTcpBytesReceived(Lcom/android/internal/os/BatteryStatsImpl;I)J

    move-result-wide v9

    .line 568
    .local v9, mobileRx:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/common/porting/PortFunction;->getMobileTcpBytesSent(Lcom/android/internal/os/BatteryStatsImpl;I)J

    move-result-wide v11

    .line 569
    .local v11, mobileTx:J
    add-long v7, v9, v11

    .line 571
    .local v7, mobileData:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v15}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    div-long v13, v15, v17

    .line 572
    .local v13, radioDataUptimeMs:J
    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-eqz v15, :cond_0

    const-wide/16 v15, 0x8

    mul-long/2addr v15, v7

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    div-long v5, v15, v13

    .line 576
    .local v5, mobileBps:J
    :goto_0
    const-wide/16 v15, 0x8

    div-long v15, v5, v15

    long-to-double v15, v15

    div-double v15, v3, v15

    return-wide v15

    .line 572
    .end local v5           #mobileBps:J
    :cond_0
    const-wide/32 v5, 0x30d40

    goto :goto_0
.end method

.method private getRunningApp()V
    .locals 3

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 195
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mRunningAppList:Ljava/util/List;

    .line 196
    return-void
.end method

.method private getWifiPowerPerByte()D
    .locals 8

    .prologue
    .line 556
    const-wide/32 v0, 0xf4240

    .line 557
    .local v0, WIFI_BPS:J
    iget-object v4, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "wifi.active"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x40ac200000000000L

    div-double v2, v4, v6

    .line 559
    .local v2, WIFI_POWER:D
    const-wide v4, 0x40fe848000000000L

    div-double v4, v2, v4

    return-wide v4
.end method

.method private load()V
    .locals 6

    .prologue
    .line 269
    const-string v3, "StaticsFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load() Enter: mBatteryInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 272
    .local v0, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 273
    .local v2, parcel:Landroid/os/Parcel;
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 274
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 275
    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v3, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 276
    iget-object v3, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v0           #data:[B
    .end local v2           #parcel:Landroid/os/Parcel;
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "StaticsFragment"

    const-string v4, "Exception:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processAppUsage()V
    .locals 88

    .prologue
    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "sensor"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/hardware/SensorManager;

    .line 581
    .local v48, sensorManager:Landroid/hardware/SensorManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    move/from16 v78, v0

    .line 582
    .local v78, which:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v53

    .line 583
    .local v53, speedSteps:I
    move/from16 v0, v53

    new-array v0, v0, [D

    move-object/from16 v38, v0

    .line 584
    .local v38, powerCpuNormal:[D
    move/from16 v0, v53

    new-array v0, v0, [J

    move-object/from16 v20, v0

    .line 585
    .local v20, cpuSpeedStepTimes:[J
    const/16 v35, 0x0

    .local v35, p:I
    :goto_0
    move/from16 v0, v35

    move/from16 v1, v53

    if-ge v0, v1, :cond_0

    .line 586
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "cpu.active"

    move/from16 v0, v35

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v5

    aput-wide v5, v38, v35

    .line 585
    add-int/lit8 v35, v35, 0x1

    goto :goto_0

    .line 588
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->getAverageDataCost()D

    move-result-wide v16

    .line 589
    .local v16, averageCostPerByte:D
    invoke-direct/range {p0 .. p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->getWifiPowerPerByte()D

    move-result-wide v79

    .line 590
    .local v79, wifiPowerPerByte:D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    move/from16 v0, v78

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v66

    .line 591
    .local v66, uSecTime:J
    const-wide/16 v14, 0x0

    .line 592
    .local v14, appWakelockTime:J
    const/16 v34, 0x0

    .line 593
    .local v34, osApp:Lcom/zte/heartyservice/power/BatterySipper;
    move-wide/from16 v0, v66

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsPeriod:J

    .line 594
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v68

    .line 595
    .local v68, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v68 .. v68}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 596
    .local v13, NU:I
    const/16 v31, 0x0

    .local v31, iu:I
    :goto_1
    move/from16 v0, v31

    if-ge v0, v13, :cond_12

    .line 597
    move-object/from16 v0, v68

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid;

    .line 598
    .local v11, u:Landroid/os/BatteryStats$Uid;
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v61

    .line 599
    .local v61, testUid:I
    const-string v5, "SoftWareUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "testUid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const-wide/16 v36, 0x0

    .line 601
    .local v36, power:D
    const-wide/16 v28, 0x0

    .line 602
    .local v28, highestDrain:D
    const/4 v8, 0x0

    .line 604
    .local v8, packageWithHighestDrain:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v41

    .line 605
    .local v41, processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v21, 0x0

    .line 606
    .local v21, cpuTime:J
    const-wide/16 v18, 0x0

    .line 607
    .local v18, cpuFgTime:J
    const-wide/16 v76, 0x0

    .line 608
    .local v76, wakelockTime:J
    const-wide/16 v26, 0x0

    .line 609
    .local v26, gpsTime:J
    invoke-interface/range {v41 .. v41}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 610
    const-string v5, "SoftWareUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v41 .. v41}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-interface/range {v41 .. v41}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 615
    .local v23, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/os/BatteryStats$Uid$Proc;

    .line 616
    .local v42, ps:Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v42

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v69

    .line 617
    .local v69, userTime:J
    move-object/from16 v0, v42

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v55

    .line 618
    .local v55, systemTime:J
    move-object/from16 v0, v42

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v24

    .line 619
    .local v24, foregroundTime:J
    const-wide/16 v5, 0xa

    mul-long v5, v5, v24

    add-long v18, v18, v5

    .line 620
    add-long v5, v69, v55

    const-wide/16 v9, 0xa

    mul-long v63, v5, v9

    .line 621
    .local v63, tmpCpuTime:J
    const/16 v65, 0x0

    .line 623
    .local v65, totalTimeAtSpeeds:I
    const/16 v54, 0x0

    .local v54, step:I
    :goto_3
    move/from16 v0, v54

    move/from16 v1, v53

    if-ge v0, v1, :cond_2

    .line 624
    move-object/from16 v0, v42

    move/from16 v1, v54

    move/from16 v2, v78

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v5

    aput-wide v5, v20, v54

    .line 625
    move/from16 v0, v65

    int-to-long v5, v0

    aget-wide v9, v20, v54

    add-long/2addr v5, v9

    long-to-int v0, v5

    move/from16 v65, v0

    .line 623
    add-int/lit8 v54, v54, 0x1

    goto :goto_3

    .line 627
    :cond_2
    if-nez v65, :cond_3

    .line 628
    const/16 v65, 0x1

    .line 630
    :cond_3
    const-wide/16 v39, 0x0

    .line 631
    .local v39, processPower:D
    const/16 v54, 0x0

    :goto_4
    move/from16 v0, v54

    move/from16 v1, v53

    if-ge v0, v1, :cond_4

    .line 632
    aget-wide v5, v20, v54

    long-to-double v5, v5

    move/from16 v0, v65

    int-to-double v9, v0

    div-double v43, v5, v9

    .line 633
    .local v43, ratio:D
    move-wide/from16 v0, v63

    long-to-double v5, v0

    mul-double v5, v5, v43

    aget-wide v9, v38, v54

    mul-double/2addr v5, v9

    add-double v39, v39, v5

    .line 631
    add-int/lit8 v54, v54, 0x1

    goto :goto_4

    .line 635
    .end local v43           #ratio:D
    :cond_4
    add-long v21, v21, v63

    .line 636
    add-double v36, v36, v39

    .line 637
    if-eqz v8, :cond_5

    const-string v5, "*"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 638
    :cond_5
    move-wide/from16 v28, v39

    .line 639
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 640
    :cond_6
    cmpg-double v5, v28, v39

    if-gez v5, :cond_1

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 641
    move-wide/from16 v28, v39

    .line 642
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 648
    .end local v23           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v24           #foregroundTime:J
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v39           #processPower:D
    .end local v42           #ps:Landroid/os/BatteryStats$Uid$Proc;
    .end local v54           #step:I
    .end local v55           #systemTime:J
    .end local v63           #tmpCpuTime:J
    .end local v65           #totalTimeAtSpeeds:I
    .end local v69           #userTime:J
    :cond_7
    cmp-long v5, v18, v21

    if-lez v5, :cond_8

    .line 652
    move-wide/from16 v21, v18

    .line 654
    :cond_8
    const-wide v5, 0x408f400000000000L

    div-double v36, v36, v5

    .line 657
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v75

    .line 658
    .local v75, wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v75 .. v75}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Ljava/util/Map$Entry;

    .line 659
    .local v74, wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v74 .. v74}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 662
    .local v73, wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v5, 0x0

    move-object/from16 v0, v73

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v62

    .line 663
    .local v62, timer:Landroid/os/BatteryStats$Timer;
    if-eqz v62, :cond_9

    .line 664
    move-object/from16 v0, v62

    move-wide/from16 v1, v66

    move/from16 v3, v78

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    add-long v76, v76, v5

    goto :goto_5

    .line 667
    .end local v62           #timer:Landroid/os/BatteryStats$Timer;
    .end local v73           #wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v74           #wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_a
    const-wide/16 v5, 0x3e8

    div-long v76, v76, v5

    .line 668
    add-long v14, v14, v76

    .line 671
    move-wide/from16 v0, v76

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "cpu.awake"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double/2addr v5, v9

    add-double v36, v36, v5

    .line 674
    move-object/from16 v0, p0

    iget v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    invoke-static {v11, v5}, Lcom/zte/heartyservice/common/porting/PortFunction;->getTcpBytesReceived(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v57

    .line 675
    .local v57, tcpBytesReceived:J
    move-object/from16 v0, p0

    iget v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    invoke-static {v11, v5}, Lcom/zte/heartyservice/common/porting/PortFunction;->getTcpBytesSent(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v59

    .line 676
    .local v59, tcpBytesSent:J
    add-long v5, v57, v59

    long-to-double v5, v5

    mul-double v5, v5, v16

    add-double v36, v36, v5

    .line 678
    move-object/from16 v0, p0

    iget v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    invoke-static {v11, v5}, Lcom/zte/heartyservice/common/porting/PortFunction;->getWifiBytesReceived(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v83

    .line 679
    .local v83, wifiRx:J
    move-object/from16 v0, p0

    iget v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    invoke-static {v11, v5}, Lcom/zte/heartyservice/common/porting/PortFunction;->getWifiBytesSent(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v85

    .line 680
    .local v85, wifiTx:J
    add-long v5, v83, v85

    long-to-double v5, v5

    mul-double v5, v5, v79

    add-double v36, v36, v5

    .line 683
    move-wide/from16 v0, v66

    move/from16 v2, v78

    invoke-virtual {v11, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v81, v5, v9

    .line 684
    .local v81, wifiRunningTimeMs:J
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mAppWifiRunning:J

    add-long v5, v5, v81

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mAppWifiRunning:J

    .line 685
    move-wide/from16 v0, v81

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.on"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double/2addr v5, v9

    add-double v36, v36, v5

    .line 688
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v49

    .line 689
    .local v49, sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v49 .. v49}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_6
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/Map$Entry;

    .line 690
    .local v47, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v47 .. v47}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/os/BatteryStats$Uid$Sensor;

    .line 691
    .local v45, sensor:Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual/range {v45 .. v45}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v52

    .line 692
    .local v52, sensorType:I
    invoke-virtual/range {v45 .. v45}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v62

    .line 693
    .restart local v62       #timer:Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v62

    move-wide/from16 v1, v66

    move/from16 v3, v78

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v50, v5, v9

    .line 694
    .local v50, sensorTime:J
    const-wide/16 v32, 0x0

    .line 695
    .local v32, multiplier:D
    packed-switch v52, :pswitch_data_0

    .line 701
    move-object/from16 v0, v48

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v46

    .line 702
    .local v46, sensorData:Landroid/hardware/Sensor;
    if-eqz v46, :cond_b

    .line 703
    invoke-virtual/range {v46 .. v46}, Landroid/hardware/Sensor;->getPower()F

    move-result v5

    float-to-double v0, v5

    move-wide/from16 v32, v0

    .line 709
    .end local v46           #sensorData:Landroid/hardware/Sensor;
    :cond_b
    :goto_7
    move-wide/from16 v0, v50

    long-to-double v5, v0

    mul-double v5, v5, v32

    const-wide v9, 0x408f400000000000L

    div-double/2addr v5, v9

    add-double v36, v36, v5

    .line 710
    goto :goto_6

    .line 697
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "gps.on"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v32

    .line 698
    move-wide/from16 v26, v50

    .line 699
    goto :goto_7

    .line 714
    .end local v32           #multiplier:D
    .end local v45           #sensor:Landroid/os/BatteryStats$Uid$Sensor;
    .end local v47           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v50           #sensorTime:J
    .end local v52           #sensorType:I
    .end local v62           #timer:Landroid/os/BatteryStats$Timer;
    :cond_c
    const-string v5, "SoftWareUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "befor add into usageList: power = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v36

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    new-instance v4, Lcom/zte/heartyservice/power/BatterySipper;

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mRequestQueue:Ljava/util/ArrayList;

    const/4 v7, 0x0

    sget-object v9, Lcom/zte/heartyservice/power/BatterySipper$DrainType;->APP:Lcom/zte/heartyservice/power/BatterySipper$DrainType;

    const/4 v10, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [D

    const/16 v87, 0x0

    aput-wide v36, v12, v87

    invoke-direct/range {v4 .. v12}, Lcom/zte/heartyservice/power/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/zte/heartyservice/power/BatterySipper$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 720
    .local v4, app:Lcom/zte/heartyservice/power/BatterySipper;
    invoke-virtual {v4}, Lcom/zte/heartyservice/power/BatterySipper;->getNameIcon()V

    .line 721
    const-string v5, "test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "default package name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/zte/heartyservice/power/BatterySipper;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    move-wide/from16 v0, v21

    iput-wide v0, v4, Lcom/zte/heartyservice/power/BatterySipper;->cpuTime:J

    .line 723
    move-wide/from16 v0, v26

    iput-wide v0, v4, Lcom/zte/heartyservice/power/BatterySipper;->gpsTime:J

    .line 724
    move-wide/from16 v0, v81

    iput-wide v0, v4, Lcom/zte/heartyservice/power/BatterySipper;->wifiRunningTime:J

    .line 725
    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/zte/heartyservice/power/BatterySipper;->cpuFgTime:J

    .line 726
    move-wide/from16 v0, v76

    iput-wide v0, v4, Lcom/zte/heartyservice/power/BatterySipper;->wakeLockTime:J

    .line 727
    move-wide/from16 v0, v57

    iput-wide v0, v4, Lcom/zte/heartyservice/power/BatterySipper;->tcpBytesReceived:J

    .line 728
    move-wide/from16 v0, v59

    iput-wide v0, v4, Lcom/zte/heartyservice/power/BatterySipper;->tcpBytesSent:J

    .line 733
    iget-object v5, v4, Lcom/zte/heartyservice/power/BatterySipper;->defaultPackageName:Ljava/lang/String;

    if-eqz v5, :cond_d

    iget-object v5, v4, Lcom/zte/heartyservice/power/BatterySipper;->defaultPackageName:Ljava/lang/String;

    const-string v6, "com.zte.heartyservice"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 734
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mUsageList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    :cond_d
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_f

    .line 738
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mWifiPower:D

    add-double v5, v5, v36

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mWifiPower:D

    .line 596
    :cond_e
    :goto_8
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_1

    .line 739
    :cond_f
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x7d0

    if-ne v5, v6, :cond_10

    .line 740
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mBluetoothPower:D

    add-double v5, v5, v36

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mBluetoothPower:D

    goto :goto_8

    .line 742
    :cond_10
    iget-object v5, v4, Lcom/zte/heartyservice/power/BatterySipper;->defaultPackageName:Ljava/lang/String;

    if-eqz v5, :cond_e

    iget-object v5, v4, Lcom/zte/heartyservice/power/BatterySipper;->defaultPackageName:Ljava/lang/String;

    const-string v6, "com.zte.heartyservice"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 743
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mMaxPower:D

    cmpl-double v5, v36, v5

    if-lez v5, :cond_11

    .line 744
    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/zte/heartyservice/power/NewStaticsFragment;->mMaxPower:D

    .line 745
    :cond_11
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mTotalPower:D

    add-double v5, v5, v36

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mTotalPower:D

    goto :goto_8

    .line 756
    .end local v4           #app:Lcom/zte/heartyservice/power/BatterySipper;
    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    .end local v11           #u:Landroid/os/BatteryStats$Uid;
    .end local v18           #cpuFgTime:J
    .end local v21           #cpuTime:J
    .end local v26           #gpsTime:J
    .end local v28           #highestDrain:D
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v36           #power:D
    .end local v41           #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v49           #sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v57           #tcpBytesReceived:J
    .end local v59           #tcpBytesSent:J
    .end local v61           #testUid:I
    .end local v75           #wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v76           #wakelockTime:J
    .end local v81           #wifiRunningTimeMs:J
    .end local v83           #wifiRx:J
    .end local v85           #wifiTx:J
    :cond_12
    if-eqz v34, :cond_15

    .line 757
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    move/from16 v0, v78

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v71, v5, v9

    .line 758
    .local v71, wakeTimeMillis:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move/from16 v0, v78

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long/2addr v5, v9

    sub-long v5, v14, v5

    sub-long v71, v71, v5

    .line 759
    const-wide/16 v5, 0x0

    cmp-long v5, v71, v5

    if-lez v5, :cond_14

    .line 760
    move-wide/from16 v0, v71

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "cpu.awake"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v36, v5, v9

    .line 761
    .restart local v36       #power:D
    move-object/from16 v0, v34

    iget-wide v5, v0, Lcom/zte/heartyservice/power/BatterySipper;->wakeLockTime:J

    add-long v5, v5, v71

    move-object/from16 v0, v34

    iput-wide v5, v0, Lcom/zte/heartyservice/power/BatterySipper;->wakeLockTime:J

    .line 762
    move-object/from16 v0, v34

    iget-wide v5, v0, Lcom/zte/heartyservice/power/BatterySipper;->value:D

    add-double v5, v5, v36

    move-object/from16 v0, v34

    iput-wide v5, v0, Lcom/zte/heartyservice/power/BatterySipper;->value:D

    .line 763
    move-object/from16 v0, v34

    iget-object v5, v0, Lcom/zte/heartyservice/power/BatterySipper;->values:[D

    const/4 v6, 0x0

    aget-wide v9, v5, v6

    add-double v9, v9, v36

    aput-wide v9, v5, v6

    .line 764
    move-object/from16 v0, v34

    iget-wide v5, v0, Lcom/zte/heartyservice/power/BatterySipper;->value:D

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mMaxPower:D

    cmpl-double v5, v5, v9

    if-lez v5, :cond_13

    .line 765
    move-object/from16 v0, v34

    iget-wide v5, v0, Lcom/zte/heartyservice/power/BatterySipper;->value:D

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mMaxPower:D

    .line 766
    :cond_13
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mTotalPower:D

    add-double v5, v5, v36

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mTotalPower:D

    .line 768
    .end local v36           #power:D
    :cond_14
    const-string v5, "SoftWareUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enter osApp value ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    iget-wide v9, v0, Lcom/zte/heartyservice/power/BatterySipper;->value:D

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; osApp.Values[0] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/zte/heartyservice/power/BatterySipper;->values:[D

    const/4 v9, 0x0

    aget-wide v9, v7, v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; TotalPower = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mTotalPower:D

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    .end local v71           #wakeTimeMillis:J
    :cond_15
    return-void

    .line 695
    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private processMiscUsage()V
    .locals 11

    .prologue
    .line 780
    iget v6, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    .line 781
    .local v6, which:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v4, v7, v9

    .line 782
    .local v4, uSecTime:J
    iget-object v7, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v7, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v2

    .line 783
    .local v2, uSecNow:J
    move-wide v0, v2

    .line 788
    .local v0, timeSinceUnplugged:J
    invoke-direct {p0, v2, v3}, Lcom/zte/heartyservice/power/NewStaticsFragment;->addPhoneUsage(J)V

    .line 789
    invoke-direct {p0, v2, v3}, Lcom/zte/heartyservice/power/NewStaticsFragment;->addScreenUsage(J)V

    .line 790
    invoke-direct {p0, v2, v3}, Lcom/zte/heartyservice/power/NewStaticsFragment;->addWiFiUsage(J)V

    .line 791
    invoke-direct {p0, v2, v3}, Lcom/zte/heartyservice/power/NewStaticsFragment;->addBluetoothUsage(J)V

    .line 792
    invoke-direct {p0, v2, v3}, Lcom/zte/heartyservice/power/NewStaticsFragment;->addIdleUsage(J)V

    .line 795
    invoke-direct {p0, v2, v3}, Lcom/zte/heartyservice/power/NewStaticsFragment;->addRadioUsage(J)V

    .line 797
    return-void
.end method

.method private refreshHardWareStats()V
    .locals 4

    .prologue
    const-wide/16 v1, 0x0

    .line 492
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v0, :cond_0

    .line 493
    invoke-direct {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->load()V

    .line 495
    :cond_0
    iput-wide v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mMaxPower:D

    .line 496
    iput-wide v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mTotalPower:D

    .line 497
    iput-wide v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mWifiPower:D

    .line 498
    iput-wide v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mBluetoothPower:D

    .line 499
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mAppWifiRunning:J

    .line 501
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mListToBeDisplay:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 502
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mUsageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 503
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mWifiSippers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 504
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 506
    const-string v0, "PowerUsageSummary"

    const-string v1, "********PowerProfile.POWER_SCREEN_FULL = screen.full"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const-string v0, "PowerUsageSummary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "********mPowerProfile.getAveragePower = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "screen.full"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "screen.full"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x3fb999999999999aL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_1
    invoke-direct {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->processMiscUsage()V

    .line 518
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mListType:I

    goto :goto_0
.end method

.method private refreshSoftWareStats()V
    .locals 4

    .prologue
    const-wide/16 v1, 0x0

    .line 524
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v0, :cond_0

    .line 525
    invoke-direct {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->load()V

    .line 527
    :cond_0
    iput-wide v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mMaxPower:D

    .line 528
    iput-wide v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mTotalPower:D

    .line 529
    iput-wide v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mWifiPower:D

    .line 530
    iput-wide v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mBluetoothPower:D

    .line 531
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mAppWifiRunning:J

    .line 533
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mListToBeDisplay:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 534
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mUsageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 535
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mWifiSippers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 536
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 540
    const-string v0, "PowerUsageSummary"

    const-string v1, "********PowerProfile.POWER_SCREEN_FULL = screen.full"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v0, "PowerUsageSummary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "********mPowerProfile.getAveragePower = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "screen.full"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "screen.full"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x3fb999999999999aL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_1
    invoke-direct {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->processAppUsage()V

    .line 551
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mListType:I

    goto :goto_0
.end method

.method private refreshTime()V
    .locals 5

    .prologue
    .line 255
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->load()V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iget v3, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsType:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsPeriod:J

    .line 263
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mBatteryUsedTime:Landroid/view/View;

    iget-wide v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStatsPeriod:J

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v0, v1}, Lcom/zte/heartyservice/power/Utils;->setTimeAmount(Landroid/view/View;I)V

    .line 266
    return-void
.end method


# virtual methods
.method public MathNoRound(DI)D
    .locals 8
    .parameter "value"
    .parameter "digital"

    .prologue
    const-wide/16 v6, 0x0

    .line 1237
    const-wide/high16 v2, 0x4024

    int-to-double v4, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 1238
    .local v0, d:D
    if-nez p3, :cond_1

    .line 1239
    cmpl-double v2, p1, v6

    if-lez v2, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 1240
    :goto_0
    return-wide v2

    .line 1239
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    goto :goto_0

    .line 1240
    :cond_1
    cmpl-double v2, p1, v6

    if-lez v2, :cond_2

    mul-double v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    goto :goto_0

    :cond_2
    mul-double v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const-string v0, "StaticsFragment"

    const-string v1, "onCreate Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "powermanager"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->sp:Landroid/content/SharedPreferences;

    .line 140
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->editor:Landroid/content/SharedPreferences$Editor;

    .line 144
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 145
    iget-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    if-nez v0, :cond_0

    .line 146
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 148
    :cond_0
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-virtual {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 149
    const-string v0, "StaticsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBatteryInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 309
    const v1, 0x7f030117

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 311
    .local v0, rootView:Landroid/view/View;
    iput-object p1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 313
    const v1, 0x7f0e03b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mBatteryUsedTime:Landroid/view/View;

    .line 400
    const v1, 0x7f0e0398

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mListTitle:Landroid/widget/TextView;

    .line 401
    const v1, 0x7f0e0399

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mAbnormalApps:Landroid/widget/TextView;

    .line 402
    iget-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mAbnormalApps:Landroid/widget/TextView;

    new-instance v2, Lcom/zte/heartyservice/power/NewStaticsFragment$2;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/power/NewStaticsFragment$2;-><init>(Lcom/zte/heartyservice/power/NewStaticsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    const v1, 0x7f0e0395

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mBatteryType:Landroid/widget/RadioGroup;

    .line 410
    iget-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mBatteryType:Landroid/widget/RadioGroup;

    new-instance v2, Lcom/zte/heartyservice/power/NewStaticsFragment$3;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/power/NewStaticsFragment$3;-><init>(Lcom/zte/heartyservice/power/NewStaticsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 439
    const v1, 0x7f0e039a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStaticsList:Landroid/widget/ListView;

    .line 440
    iget-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStaticsList:Landroid/widget/ListView;

    new-instance v2, Lcom/zte/heartyservice/power/NewStaticsFragment$4;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/power/NewStaticsFragment$4;-><init>(Lcom/zte/heartyservice/power/NewStaticsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 457
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 252
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 4
    .parameter "hidden"

    .prologue
    .line 202
    const-string v1, "StaticsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnHiddenChanged Enter hidden = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-nez p1, :cond_3

    .line 204
    const-string v1, "StaticsFragment"

    const-string v2, "Enter if !hidden"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v1, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->load()V

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v1, :cond_2

    .line 209
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 210
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 228
    .end local v0           #activity:Landroid/app/Activity;
    :cond_1
    :goto_0
    return-void

    .line 215
    :cond_2
    invoke-direct {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->refreshTime()V

    .line 216
    iget v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->SelectedPosition:I

    if-nez v1, :cond_4

    .line 217
    invoke-direct {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->refreshSoftWareStats()V

    .line 222
    :cond_3
    :goto_1
    new-instance v1, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;-><init>(Lcom/zte/heartyservice/power/NewStaticsFragment;)V

    iput-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->myAdapter:Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;

    .line 223
    iget-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStaticsList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->myAdapter:Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    if-eqz p1, :cond_1

    .line 226
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    goto :goto_0

    .line 218
    :cond_4
    iget v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->SelectedPosition:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 219
    invoke-direct {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->refreshHardWareStats()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 233
    iget-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 234
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mAbort:Z

    .line 235
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 238
    return-void

    .line 235
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 155
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 157
    iget-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v1, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->load()V

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v1, :cond_2

    .line 161
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 162
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 191
    .end local v0           #activity:Landroid/app/Activity;
    :cond_1
    :goto_0
    return-void

    .line 168
    :cond_2
    const-string v1, "StaticsFragment"

    const-string v2, "On Resume Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->sp:Landroid/content/SharedPreferences;

    const-string v2, "statics_spinner_position"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->SelectedPosition:I

    .line 172
    iget v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->SelectedPosition:I

    if-ne v1, v3, :cond_3

    .line 173
    iget-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mBatteryType:Landroid/widget/RadioGroup;

    const v2, 0x7f0e0397

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 178
    :goto_1
    invoke-direct {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->refreshTime()V

    .line 181
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mAbort:Z

    .line 187
    invoke-direct {p0}, Lcom/zte/heartyservice/power/NewStaticsFragment;->getRunningApp()V

    .line 188
    iget-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->myAdapter:Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->myAdapter:Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;

    invoke-virtual {v1}, Lcom/zte/heartyservice/power/NewStaticsFragment$StaticsListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 175
    :cond_3
    iget-object v1, p0, Lcom/zte/heartyservice/power/NewStaticsFragment;->mBatteryType:Landroid/widget/RadioGroup;

    const v2, 0x7f0e0396

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1
.end method
