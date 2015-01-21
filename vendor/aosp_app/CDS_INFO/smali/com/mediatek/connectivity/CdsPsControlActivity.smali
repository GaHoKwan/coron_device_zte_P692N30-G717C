.class public Lcom/mediatek/connectivity/CdsPsControlActivity;
.super Landroid/app/Activity;
.source "CdsPsControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;
    }
.end annotation


# static fields
.field private static final ADB_PORT:I = 0x13ad

.field private static final DATAFILE:Ljava/lang/String; = "datafile"

.field private static final FW_ENABLED:Ljava/lang/String; = "fw_enable"

.field private static final FW_GCFSTK:Ljava/lang/String; = "fw_gcf_stk"

.field private static final HTTP_PORT:I = 0x50

.field private static final INTERNET:Ljava/lang/String; = "android.permission.INTERNET"

.field private static final MDLOGGER_PORT:I = 0x7541

.field private static final TAG:Ljava/lang/String; = "CdsPsControlActivity"

.field private static sStatsService:Landroid/net/INetworkStatsService;


# instance fields
.field private cbListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mAdapter:Landroid/widget/SimpleAdapter;

.field private mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListViw:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field private mDataStore:Landroid/content/SharedPreferences;

.field private mDisableFwBtn:Landroid/widget/Button;

.field private mEnableFwBtn:Landroid/widget/Button;

.field private mFwStatus:Landroid/widget/TextView;

.field private mGcfChk:Landroid/widget/CheckBox;

.field private mIsEnabled:Z

.field private mIsGcfStk:Z

.field private mNetd:Landroid/os/INetworkManagementService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 96
    iput-object v0, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mEnableFwBtn:Landroid/widget/Button;

    .line 97
    iput-object v0, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mDisableFwBtn:Landroid/widget/Button;

    .line 98
    iput-object v0, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mGcfChk:Landroid/widget/CheckBox;

    .line 267
    new-instance v0, Lcom/mediatek/connectivity/CdsPsControlActivity$3;

    invoke-direct {v0, p0}, Lcom/mediatek/connectivity/CdsPsControlActivity$3;-><init>(Lcom/mediatek/connectivity/CdsPsControlActivity;)V

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->cbListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 370
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/connectivity/CdsPsControlActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/mediatek/connectivity/CdsPsControlActivity;->setFirewallEnabled(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/connectivity/CdsPsControlActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mIsGcfStk:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/connectivity/CdsPsControlActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsPsControlActivity;->setGcfFwRule()V

    return-void
.end method

.method private getData()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, i:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 344
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;

    .line 345
    .local v3, myApp:Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 346
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "appText"

    invoke-virtual {v3}, Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    .end local v2           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #myApp:Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;
    :cond_0
    return-object v1
.end method

.method private static getNetworkStatsForUid(I)Landroid/net/NetworkStats;
    .locals 2
    .parameter "uid"

    .prologue
    .line 363
    :try_start_0
    invoke-static {}, Lcom/mediatek/connectivity/CdsPsControlActivity;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/net/INetworkStatsService;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static declared-synchronized getStatsService()Landroid/net/INetworkStatsService;
    .locals 2

    .prologue
    .line 354
    const-class v1, Lcom/mediatek/connectivity/CdsPsControlActivity;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/connectivity/CdsPsControlActivity;->sStatsService:Landroid/net/INetworkStatsService;

    if-nez v0, :cond_0

    .line 355
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    sput-object v0, Lcom/mediatek/connectivity/CdsPsControlActivity;->sStatsService:Landroid/net/INetworkStatsService;

    .line 358
    :cond_0
    sget-object v0, Lcom/mediatek/connectivity/CdsPsControlActivity;->sStatsService:Landroid/net/INetworkStatsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setFirewallEnabled(Z)V
    .locals 7
    .parameter "enabled"

    .prologue
    .line 179
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mNetd:Landroid/os/INetworkManagementService;

    if-nez v3, :cond_0

    .line 180
    const-string v3, "CdsPsControlActivity"

    const-string v4, "INetworkManagementService is null"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_0
    return-void

    .line 184
    :cond_0
    const-string v3, "CdsPsControlActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set firewall:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-boolean v3, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mIsEnabled:Z

    if-ne v3, p1, :cond_1

    .line 187
    const-string v3, "CdsPsControlActivity"

    const-string v4, "No change"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_1
    iput-boolean p1, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mIsEnabled:Z

    .line 195
    if-eqz p1, :cond_2

    .line 196
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V

    .line 197
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mNetd:Landroid/os/INetworkManagementService;

    const-string v4, "icmp"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressProtoRule(Ljava/lang/String;Z)V

    .line 198
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mNetd:Landroid/os/INetworkManagementService;

    const-string v4, "lo"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 202
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mNetd:Landroid/os/INetworkManagementService;

    const-string v4, "1.1.1.0/24"

    const/16 v5, 0x50

    iget-boolean v6, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mIsGcfStk:Z

    invoke-interface {v3, v4, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mNetd:Landroid/os/INetworkManagementService;

    const-string v4, ""

    const/16 v5, 0x7541

    invoke-interface {v3, v4, v5, p1}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 208
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mNetd:Landroid/os/INetworkManagementService;

    const-string v4, ""

    const/16 v5, 0x13ad

    invoke-interface {v3, v4, v5, p1}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 214
    if-nez p1, :cond_3

    .line 215
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mNetd:Landroid/os/INetworkManagementService;

    const-string v4, "icmp"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressProtoRule(Ljava/lang/String;Z)V

    .line 216
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mNetd:Landroid/os/INetworkManagementService;

    const-string v4, "lo"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 217
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 222
    :cond_3
    invoke-direct {p0, p1}, Lcom/mediatek/connectivity/CdsPsControlActivity;->updateFwButton(Z)V

    .line 226
    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mDataStore:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 227
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "fw_enable"

    iget-boolean v4, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mIsEnabled:Z

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 228
    const-string v3, "fw_gcf_stk"

    iget-boolean v4, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mIsGcfStk:Z

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 229
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 230
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 203
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 204
    .local v2, ee:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 219
    .end local v2           #ee:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 220
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 222
    invoke-direct {p0, p1}, Lcom/mediatek/connectivity/CdsPsControlActivity;->updateFwButton(Z)V

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-direct {p0, p1}, Lcom/mediatek/connectivity/CdsPsControlActivity;->updateFwButton(Z)V

    throw v3
.end method

.method private setGcfFwRule()V
    .locals 6

    .prologue
    .line 163
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mNetd:Landroid/os/INetworkManagementService;

    const-string v3, "1.1.1.0/24"

    const/16 v4, 0x50

    iget-boolean v5, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mIsGcfStk:Z

    invoke-interface {v2, v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mDataStore:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 171
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "fw_gcf_stk"

    iget-boolean v3, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mIsGcfStk:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_1
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 173
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 174
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private updateAppList()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method private updateFwButton(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 241
    if-eqz p1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mFwStatus:Landroid/widget/TextView;

    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :goto_0
    const-string v0, "CdsPsControlActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsGcfStk:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mIsGcfStk:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mGcfChk:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mIsGcfStk:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 249
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mFwStatus:Landroid/widget/TextView;

    const-string v1, "disabled"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method getApps(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 286
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 287
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v8

    .line 288
    .local v8, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mAppList:Ljava/util/ArrayList;

    .line 289
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 292
    .local v2, apps:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ApplicationInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 293
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 294
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget-object v7, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 295
    .local v7, packageName:Ljava/lang/String;
    const-string v10, "android.permission.INTERNET"

    invoke-virtual {v6, v10, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_0

    .line 296
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 297
    .local v9, uid:I
    const-string v10, "CdsPsControlActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "packageName:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {v9}, Lcom/mediatek/connectivity/CdsPsControlActivity;->getNetworkStatsForUid(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 301
    .local v3, dataStats:Landroid/net/NetworkStats;
    new-instance v5, Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;

    invoke-direct {v5, p0, v7, v0}, Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;-><init>(Lcom/mediatek/connectivity/CdsPsControlActivity;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 302
    .local v5, myApp:Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;
    iget-object v10, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    .end local v2           #apps:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ApplicationInfo;>;"
    .end local v3           #dataStats:Landroid/net/NetworkStats;
    .end local v5           #myApp:Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;
    .end local v6           #packageManager:Landroid/content/pm/PackageManager;
    .end local v7           #packageName:Ljava/lang/String;
    .end local v8           #packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v9           #uid:I
    :catch_0
    move-exception v4

    .line 333
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 335
    .end local v4           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 307
    .restart local v2       #apps:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v6       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v8       #packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 308
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    const-string v10, "root"

    invoke-static {v10}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v10

    iput v10, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 309
    const-string v10, "root Applications"

    iput-object v10, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 310
    new-instance v5, Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;

    iget-object v10, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, p0, v10, v1}, Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;-><init>(Lcom/mediatek/connectivity/CdsPsControlActivity;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 311
    .restart local v5       #myApp:Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;
    iget-object v10, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    const-string v10, "media"

    invoke-static {v10}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v10

    iput v10, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 314
    const-string v10, "Media server"

    iput-object v10, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 315
    new-instance v5, Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;

    .end local v5           #myApp:Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;
    iget-object v10, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, p0, v10, v1}, Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;-><init>(Lcom/mediatek/connectivity/CdsPsControlActivity;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 316
    .restart local v5       #myApp:Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;
    iget-object v10, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    const-string v10, "vpn"

    invoke-static {v10}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v10

    iput v10, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 319
    const-string v10, "VPN networking"

    iput-object v10, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 320
    new-instance v5, Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;

    .end local v5           #myApp:Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;
    iget-object v10, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, p0, v10, v1}, Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;-><init>(Lcom/mediatek/connectivity/CdsPsControlActivity;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 321
    .restart local v5       #myApp:Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;
    iget-object v10, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    const-string v10, "shell"

    invoke-static {v10}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v10

    iput v10, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 324
    const-string v10, "Linux shell"

    iput-object v10, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 325
    new-instance v5, Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;

    .end local v5           #myApp:Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;
    iget-object v10, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, p0, v10, v1}, Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;-><init>(Lcom/mediatek/connectivity/CdsPsControlActivity;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 326
    .restart local v5       #myApp:Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;
    iget-object v10, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    const-string v10, "gps"

    invoke-static {v10}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v10

    iput v10, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 329
    const-string v10, "GPS"

    iput-object v10, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 330
    new-instance v5, Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;

    .end local v5           #myApp:Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;
    iget-object v10, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, p0, v10, v1}, Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;-><init>(Lcom/mediatek/connectivity/CdsPsControlActivity;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 331
    .restart local v5       #myApp:Lcom/mediatek/connectivity/CdsPsControlActivity$MyAppInfo;
    iget-object v10, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 281
    .local v0, buttonId:I
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mContext:Landroid/content/Context;

    .line 113
    const v2, 0x7f03000a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 115
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 116
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mNetd:Landroid/os/INetworkManagementService;

    .line 118
    const-string v2, "datafile"

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mDataStore:Landroid/content/SharedPreferences;

    .line 121
    const v2, 0x7f070002

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mEnableFwBtn:Landroid/widget/Button;

    .line 122
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mEnableFwBtn:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mEnableFwBtn:Landroid/widget/Button;

    new-instance v3, Lcom/mediatek/connectivity/CdsPsControlActivity$1;

    invoke-direct {v3, p0}, Lcom/mediatek/connectivity/CdsPsControlActivity$1;-><init>(Lcom/mediatek/connectivity/CdsPsControlActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    :cond_0
    const v2, 0x7f070030

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mDisableFwBtn:Landroid/widget/Button;

    .line 131
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mDisableFwBtn:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 132
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mDisableFwBtn:Landroid/widget/Button;

    new-instance v3, Lcom/mediatek/connectivity/CdsPsControlActivity$2;

    invoke-direct {v3, p0}, Lcom/mediatek/connectivity/CdsPsControlActivity$2;-><init>(Lcom/mediatek/connectivity/CdsPsControlActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    :cond_1
    const v2, 0x7f07002f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mFwStatus:Landroid/widget/TextView;

    .line 141
    const v2, 0x7f070031

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mGcfChk:Landroid/widget/CheckBox;

    .line 142
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mGcfChk:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->cbListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 144
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mNetd:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_2

    .line 145
    const-string v2, "CdsPsControlActivity"

    const-string v3, "INetworkManagementService is null"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    return-void

    .line 150
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mDataStore:Landroid/content/SharedPreferences;

    const-string v3, "fw_enable"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mIsEnabled:Z

    .line 151
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mDataStore:Landroid/content/SharedPreferences;

    const-string v3, "fw_gcf_stk"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mIsGcfStk:Z

    .line 152
    iget-boolean v2, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mIsEnabled:Z

    invoke-direct {p0, v2}, Lcom/mediatek/connectivity/CdsPsControlActivity;->setFirewallEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_1
    const-string v2, "CdsPsControlActivity"

    const-string v3, "CdsPsControlActivity is started"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 265
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 254
    :try_start_0
    iget-boolean v1, p0, Lcom/mediatek/connectivity/CdsPsControlActivity;->mIsEnabled:Z

    invoke-direct {p0, v1}, Lcom/mediatek/connectivity/CdsPsControlActivity;->updateFwButton(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 260
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
