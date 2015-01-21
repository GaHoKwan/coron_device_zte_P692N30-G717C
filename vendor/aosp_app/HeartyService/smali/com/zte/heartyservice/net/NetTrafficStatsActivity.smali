.class public Lcom/zte/heartyservice/net/NetTrafficStatsActivity;
.super Landroid/app/ListActivity;
.source "NetTrafficStatsActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/net/AppListAdapter$AppListAdapterCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;,
        Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;,
        Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetTrafficStatsActivity"

.field private static final TRAFFICS:I = 0x0

.field private static final WIFI_TRAFFICS:I = 0x1

.field private static mdisableDataAll:Z

.field private static mdisableWifiAll:Z


# instance fields
.field private WifiswitchTask:Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;

.field private appUsageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/net/AppUsageItem;",
            ">;"
        }
    .end annotation
.end field

.field endTime:J

.field private lv:Landroid/widget/ListView;

.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mAllSwitch:Landroid/widget/Button;

.field private mAppCount:Landroid/widget/TextView;

.field private mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mCurrentSim:I

.field private mDBHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

.field private mDataTextViewListener:Landroid/view/View$OnClickListener;

.field private mNetTrafficUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

.field private mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSimListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mSimManager:Lcom/zte/heartyservice/msim/SimManager;

.field private mSimSwitch:Landroid/widget/RadioGroup;

.field private mTextView1:Landroid/widget/TextView;

.field private mTextView2:Landroid/widget/TextView;

.field private mWifiAllSwitch:Landroid/widget/Button;

.field private mWifiCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mWifiProgressDialog:Landroid/app/ProgressDialog;

.field private mWifiTextViewListener:Landroid/view/View$OnClickListener;

.field private mlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/net/AppUsageItem;",
            ">;"
        }
    .end annotation
.end field

.field private msimSwitchLayout:Landroid/view/View;

.field startTime:J

.field private stats:Landroid/net/NetworkStats;

.field private statsWifi:Landroid/net/NetworkStats;

.field private switchTask:Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    sput-boolean v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mdisableDataAll:Z

    .line 58
    sput-boolean v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mdisableWifiAll:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->lv:Landroid/widget/ListView;

    .line 45
    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->appUsageList:Ljava/util/ArrayList;

    .line 46
    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    .line 47
    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mNetTrafficUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    .line 55
    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mWifiProgressDialog:Landroid/app/ProgressDialog;

    .line 56
    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->WifiswitchTask:Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;

    .line 76
    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 79
    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->switchTask:Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;

    .line 82
    new-instance v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$1;-><init>(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 94
    new-instance v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$2;-><init>(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mWifiCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 105
    new-instance v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$3;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$3;-><init>(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mDataTextViewListener:Landroid/view/View$OnClickListener;

    .line 123
    new-instance v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$4;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$4;-><init>(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mWifiTextViewListener:Landroid/view/View$OnClickListener;

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mCurrentSim:I

    .line 145
    new-instance v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$5;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$5;-><init>(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mSimListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 487
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mdisableDataAll:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    sput-boolean p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mdisableDataAll:Z

    return p0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mAllSwitch:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Lcom/zte/heartyservice/net/NetTrafficUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mNetTrafficUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mlist:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mAppCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mAdapter:Landroid/widget/BaseAdapter;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->lv:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->updateCheckBoxState()V

    return-void
.end method

.method static synthetic access$1800(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->putWifiCheckedInt(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->updateWifiCheckBoxState()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mdisableWifiAll:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    sput-boolean p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mdisableWifiAll:Z

    return p0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mWifiAllSwitch:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mCurrentSim:I

    return v0
.end method

.method static synthetic access$402(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mCurrentSim:I

    return p1
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->updateUI()V

    return-void
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;Ljava/lang/String;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->getWifiCheckedInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/net/NetworkStats;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->stats:Landroid/net/NetworkStats;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)Landroid/net/NetworkStats;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->statsWifi:Landroid/net/NetworkStats;

    return-object v0
.end method

.method private getCheckBoxState()Z
    .locals 3

    .prologue
    .line 313
    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/net/AppUsageItem;

    .line 314
    .local v1, pi:Lcom/zte/heartyservice/net/AppUsageItem;
    invoke-virtual {v1}, Lcom/zte/heartyservice/net/AppUsageItem;->getPermissonType()I

    move-result v2

    if-nez v2, :cond_0

    .line 316
    const/4 v2, 0x0

    .line 319
    .end local v1           #pi:Lcom/zte/heartyservice/net/AppUsageItem;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getWifiCheckBoxState()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 392
    iget-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/net/AppUsageItem;

    .line 393
    .local v1, pi:Lcom/zte/heartyservice/net/AppUsageItem;
    invoke-virtual {v1}, Lcom/zte/heartyservice/net/AppUsageItem;->getWifiPermissonType()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 394
    const-string v2, "LIXI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ssss pi.getPackageinfo.packageName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/zte/heartyservice/net/AppUsageItem;->getPackageinfo()Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v2, 0x0

    .line 399
    .end local v1           #pi:Lcom/zte/heartyservice/net/AppUsageItem;
    :goto_0
    return v2

    .line 398
    :cond_1
    const-string v3, "LIXI"

    const-string v4, "ssss getWifiCheckBoxState"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getWifiCheckedInt(Ljava/lang/String;I)I
    .locals 5
    .parameter "packageName"
    .parameter "def"

    .prologue
    .line 338
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mDBHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    invoke-virtual {v4, p1}, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->fetchData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 339
    .local v1, cur:Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 354
    .end local p2
    :goto_0
    return p2

    .line 342
    .restart local p2
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_2

    .line 343
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 344
    .local v2, miCount:I
    const/4 v3, 0x0

    .line 345
    .local v3, type:I
    if-lez v2, :cond_1

    .line 346
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    .line 347
    const-string v4, "num"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 348
    .local v0, Column:I
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 350
    .end local v0           #Column:I
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move p2, v3

    .line 351
    goto :goto_0

    .line 353
    .end local v2           #miCount:I
    .end local v3           #type:I
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private initMSimState()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 270
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mSimManager:Lcom/zte/heartyservice/msim/SimManager;

    .line 271
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mSimManager:Lcom/zte/heartyservice/msim/SimManager;

    invoke-virtual {v0}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mSimManager:Lcom/zte/heartyservice/msim/SimManager;

    invoke-virtual {v0}, Lcom/zte/heartyservice/msim/SimManager;->isAllSimReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->msimSwitchLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    const v1, 0x7f0e01b7

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 275
    iput v2, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mCurrentSim:I

    .line 283
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->msimSwitchLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mSimManager:Lcom/zte/heartyservice/msim/SimManager;

    invoke-virtual {v0}, Lcom/zte/heartyservice/msim/SimManager;->getFirstReadyId()I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mCurrentSim:I

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->msimSwitchLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private putWifiCheckedInt(Ljava/lang/String;I)V
    .locals 7
    .parameter "packageName"
    .parameter "value"

    .prologue
    .line 359
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mDBHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    invoke-virtual {v4, p1}, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->fetchData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 360
    .local v0, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 361
    .local v2, pkgManager:Landroid/content/pm/PackageManager;
    const/4 v3, -0x1

    .line 363
    .local v3, uid:I
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 364
    const-string v4, "weijun"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "app uid  found="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 369
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mDBHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    invoke-virtual {v4, p1, p2}, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->updateMarkedData(Ljava/lang/String;I)V

    .line 373
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 374
    return-void

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "weijun"

    const-string v5, "app uid can\'t be found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mDBHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    invoke-virtual {v4, p1, p2, v3}, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->insertData(Ljava/lang/String;II)J

    goto :goto_1
.end method

.method private updateCheckBoxState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 297
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mAllSwitch:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->getCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mAllSwitch:Landroid/widget/Button;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 300
    sput-boolean v3, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mdisableDataAll:Z

    .line 301
    const-string v0, "dataAlldisable"

    invoke-direct {p0, v0, v3}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->putWifiCheckedInt(Ljava/lang/String;I)V

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mAllSwitch:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mDataTextViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    return-void

    .line 304
    :cond_0
    sput-boolean v2, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mdisableDataAll:Z

    .line 305
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mAllSwitch:Landroid/widget/Button;

    const v1, -0x663400

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 306
    const-string v0, "dataAlldisable"

    invoke-direct {p0, v0, v2}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->putWifiCheckedInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private updateUI()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const v13, -0x777778

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 557
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mNetTrafficUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    invoke-virtual {v0, p0, v2}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getCalculateTime(Landroid/content/Context;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->startTime:J

    .line 558
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mNetTrafficUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    invoke-virtual {v0, p0, v12}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getCalculateTime(Landroid/content/Context;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->endTime:J

    .line 560
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mNetTrafficUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    iget v1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mCurrentSim:I

    iget-wide v3, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->startTime:J

    iget-wide v5, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->endTime:J

    invoke-virtual/range {v0 .. v6}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getAppNetworkStats(IIJJ)Landroid/net/NetworkStats;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->stats:Landroid/net/NetworkStats;

    .line 563
    iget-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mNetTrafficUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    iget v4, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mCurrentSim:I

    iget-wide v6, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->startTime:J

    iget-wide v8, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->endTime:J

    move v5, v12

    invoke-virtual/range {v3 .. v9}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getAppNetworkStats(IIJJ)Landroid/net/NetworkStats;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->statsWifi:Landroid/net/NetworkStats;

    .line 564
    const-string v0, "dataAlldisable"

    invoke-direct {p0, v0, v2}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->getWifiCheckedInt(Ljava/lang/String;I)I

    move-result v10

    .line 565
    .local v10, dataAlldisable:I
    const-string v0, "weijun"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataAlldisable"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    if-nez v10, :cond_3

    .line 567
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mAllSwitch:Landroid/widget/Button;

    const v1, -0x663400

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 568
    sput-boolean v2, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mdisableDataAll:Z

    .line 574
    :goto_0
    const-string v0, "wifiAlldisable"

    invoke-direct {p0, v0, v2}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->getWifiCheckedInt(Ljava/lang/String;I)I

    move-result v11

    .line 575
    .local v11, wifiAlldisable:I
    const-string v0, "weijun"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifiAlldisable"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    if-nez v11, :cond_4

    .line 577
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mWifiAllSwitch:Landroid/widget/Button;

    const v1, -0xcc4a1b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 578
    sput-boolean v2, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mdisableWifiAll:Z

    .line 585
    :goto_1
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->switchTask:Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->switchTask:Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;

    invoke-virtual {v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->WifiswitchTask:Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->WifiswitchTask:Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;

    invoke-virtual {v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v14}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 588
    new-instance v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;

    invoke-direct {v0, p0, p0, v14}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;-><init>(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;Landroid/content/Context;Lcom/zte/heartyservice/net/NetTrafficStatsActivity$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$LoadingTrafficStatsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 590
    :cond_2
    return-void

    .line 570
    .end local v11           #wifiAlldisable:I
    :cond_3
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mAllSwitch:Landroid/widget/Button;

    invoke-virtual {v0, v13}, Landroid/widget/Button;->setTextColor(I)V

    .line 571
    sput-boolean v12, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mdisableDataAll:Z

    goto :goto_0

    .line 580
    .restart local v11       #wifiAlldisable:I
    :cond_4
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mWifiAllSwitch:Landroid/widget/Button;

    invoke-virtual {v0, v13}, Landroid/widget/Button;->setTextColor(I)V

    .line 581
    sput-boolean v12, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mdisableWifiAll:Z

    goto :goto_1
.end method

.method private updateWifiCheckBoxState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 377
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mWifiAllSwitch:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->getWifiCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    sput-boolean v3, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mdisableWifiAll:Z

    .line 380
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mWifiAllSwitch:Landroid/widget/Button;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 381
    const-string v0, "wifiAlldisable"

    invoke-direct {p0, v0, v3}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->putWifiCheckedInt(Ljava/lang/String;I)V

    .line 388
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mWifiAllSwitch:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mWifiTextViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    return-void

    .line 384
    :cond_0
    sput-boolean v2, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mdisableWifiAll:Z

    .line 385
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mWifiAllSwitch:Landroid/widget/Button;

    const v1, -0xcc4a1b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 386
    const-string v0, "wifiAlldisable"

    invoke-direct {p0, v0, v2}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->putWifiCheckedInt(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public WifiswitchAll(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 403
    new-instance v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;-><init>(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;Landroid/content/Context;Lcom/zte/heartyservice/net/NetTrafficStatsActivity$1;)V

    .line 404
    .local v0, task:Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;
    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->WifiswitchTask:Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;

    .line 405
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$7;

    invoke-direct {v2, p0, v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$7;-><init>(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 413
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$WifiSwitchTrafficStatsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 414
    return-void
.end method

.method protected dismissUpdateListProgressDialog()V
    .locals 1

    .prologue
    .line 625
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 628
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x8

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 225
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 226
    const v0, 0x7f03008b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->setContentView(I)V

    .line 227
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mPermUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    .line 228
    invoke-static {p0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mNetTrafficUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    .line 229
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->lv:Landroid/widget/ListView;

    .line 231
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 238
    invoke-static {}, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->getInstance()Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mDBHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    .line 239
    const v0, 0x7f0e01ed

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mAllSwitch:Landroid/widget/Button;

    .line 240
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mAllSwitch:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mDataTextViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 242
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mAllSwitch:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 245
    :cond_0
    const v0, 0x7f0e01ee

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mWifiAllSwitch:Landroid/widget/Button;

    .line 246
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mWifiAllSwitch:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mWifiTextViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 248
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mWifiAllSwitch:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 252
    :cond_1
    const v0, 0x7f0e01eb

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mTextView1:Landroid/widget/TextView;

    .line 253
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mTextView1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 255
    const v0, 0x7f0e01ec

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mTextView2:Landroid/widget/TextView;

    .line 256
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mTextView2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 258
    const v0, 0x7f0e01ea

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mAppCount:Landroid/widget/TextView;

    .line 262
    const v0, 0x7f0e01b5

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->msimSwitchLayout:Landroid/view/View;

    .line 263
    const v0, 0x7f0e01b6

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    .line 264
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->initMSimState()V

    .line 265
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mSimListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 267
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 601
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 602
    return-void
.end method

.method public onListSwitchChanged()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->updateCheckBoxState()V

    .line 288
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->updateWifiCheckBoxState()V

    .line 290
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 594
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 595
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->updateUI()V

    .line 596
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V

    .line 597
    return-void
.end method

.method public showUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "titleResID"
    .parameter "message"
    .parameter "bCancelable"

    .prologue
    .line 607
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0a0148

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 611
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 614
    const-string v0, "wangwei"

    const-string v1, "mProgressDialog show......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 616
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 619
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public switchAll(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 323
    new-instance v0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;-><init>(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;Landroid/content/Context;Lcom/zte/heartyservice/net/NetTrafficStatsActivity$1;)V

    .line 324
    .local v0, task:Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;
    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->switchTask:Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;

    .line 325
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$6;-><init>(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 333
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$SwitchTrafficStatsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 334
    return-void
.end method
