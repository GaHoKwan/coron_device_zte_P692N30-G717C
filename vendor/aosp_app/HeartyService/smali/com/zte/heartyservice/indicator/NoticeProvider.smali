.class public Lcom/zte/heartyservice/indicator/NoticeProvider;
.super Landroid/content/BroadcastReceiver;
.source "NoticeProvider.java"

# interfaces
.implements Lcom/zte/heartyservice/interceptad/AdFilterTask$AdFilterCallback;


# static fields
.field public static final ACTION_UPDATABLE_SUM_CHANGE:Ljava/lang/String; = "qqplaza.intent.action.UPDATABLE_SUM_CHANGE"

.field public static NOTICE_VIRUS_VIEWED:Ljava/lang/String; = null

.field public static NOTICE_VIRUS_VIEWED_KEY:Ljava/lang/String; = null

.field private static final UPDATE_AD_ITEM:I = 0x1

.field private static final UPDATE_ALL_ITEM:I = 0x0

.field private static final UPDATE_PERMISSION_ITEM:I = 0x2

.field private static adCount:I

.field private static appUpdateCount:I

.field private static checkScore:I

.field private static isInstallByHeartyService:Z

.field private static level:I

.field private static mInstance:Lcom/zte/heartyservice/indicator/NoticeProvider;

.field private static newAppName:Ljava/lang/String;

.field private static permCount:I

.field private static shortCutList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/main/ShortCutItem;",
            ">;"
        }
    .end annotation
.end field

.field private static virusCount:I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    sput v1, Lcom/zte/heartyservice/indicator/NoticeProvider;->adCount:I

    .line 29
    sput v1, Lcom/zte/heartyservice/indicator/NoticeProvider;->permCount:I

    .line 30
    sput v1, Lcom/zte/heartyservice/indicator/NoticeProvider;->virusCount:I

    .line 31
    sput v1, Lcom/zte/heartyservice/indicator/NoticeProvider;->appUpdateCount:I

    .line 32
    sput v1, Lcom/zte/heartyservice/indicator/NoticeProvider;->level:I

    .line 33
    const/4 v0, -0x1

    sput v0, Lcom/zte/heartyservice/indicator/NoticeProvider;->checkScore:I

    .line 35
    sput-boolean v1, Lcom/zte/heartyservice/indicator/NoticeProvider;->isInstallByHeartyService:Z

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/indicator/NoticeProvider;->newAppName:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/indicator/NoticeProvider;->shortCutList:Ljava/util/List;

    .line 41
    const-string v0, "virus_viewed_key"

    sput-object v0, Lcom/zte/heartyservice/indicator/NoticeProvider;->NOTICE_VIRUS_VIEWED_KEY:Ljava/lang/String;

    .line 42
    const-string v0, "virus_viewed"

    sput-object v0, Lcom/zte/heartyservice/indicator/NoticeProvider;->NOTICE_VIRUS_VIEWED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/zte/heartyservice/indicator/NoticeProvider;->mContext:Landroid/content/Context;

    .line 56
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v1, batteryIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, batteryIntent:Landroid/content/Intent;
    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/zte/heartyservice/indicator/NoticeProvider;->level:I

    .line 60
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    invoke-virtual {p0}, Lcom/zte/heartyservice/indicator/NoticeProvider;->updateBatteryNotice()V

    .line 62
    return-void
.end method

.method public static getInstance()Lcom/zte/heartyservice/indicator/NoticeProvider;
    .locals 2

    .prologue
    .line 152
    sget-object v0, Lcom/zte/heartyservice/indicator/NoticeProvider;->mInstance:Lcom/zte/heartyservice/indicator/NoticeProvider;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/zte/heartyservice/indicator/NoticeProvider;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/indicator/NoticeProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/heartyservice/indicator/NoticeProvider;->mInstance:Lcom/zte/heartyservice/indicator/NoticeProvider;

    .line 155
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/indicator/NoticeProvider;->mInstance:Lcom/zte/heartyservice/indicator/NoticeProvider;

    return-object v0
.end method

.method public static registerCallback(Lcom/zte/heartyservice/main/ShortCutItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 188
    sget-object v0, Lcom/zte/heartyservice/indicator/NoticeProvider;->shortCutList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    return-void
.end method

.method public static resetCallback()V
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/zte/heartyservice/indicator/NoticeProvider;->shortCutList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 193
    return-void
.end method

.method private updateNotifier()V
    .locals 1

    .prologue
    .line 196
    invoke-static {}, Lcom/zte/heartyservice/indicator/Notifier;->getInstance()Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v0

    .line 197
    .local v0, notifier:Lcom/zte/heartyservice/indicator/Notifier;
    invoke-virtual {v0}, Lcom/zte/heartyservice/indicator/Notifier;->notifyNow()V

    .line 198
    return-void
.end method

.method private updateSecurityUI()V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/zte/heartyservice/indicator/NoticeProvider;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zte.heartyservice.intent.action.REFRESH_SECURITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 208
    return-void
.end method

.method private updateShortCut()V
    .locals 3

    .prologue
    .line 201
    sget-object v2, Lcom/zte/heartyservice/indicator/NoticeProvider;->shortCutList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/main/ShortCutItem;

    .line 202
    .local v1, item:Lcom/zte/heartyservice/main/ShortCutItem;
    invoke-virtual {v1}, Lcom/zte/heartyservice/main/ShortCutItem;->updateNotice()V

    goto :goto_0

    .line 204
    .end local v1           #item:Lcom/zte/heartyservice/main/ShortCutItem;
    :cond_0
    return-void
.end method


# virtual methods
.method public getAdCount()I
    .locals 1

    .prologue
    .line 167
    sget v0, Lcom/zte/heartyservice/indicator/NoticeProvider;->adCount:I

    return v0
.end method

.method public getAllVirusCount()I
    .locals 2

    .prologue
    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, ret:I
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getDetectedNotSecurityAppList()Ljava/util/List;

    move-result-object v0

    .line 239
    .local v0, loaclVirusScanResultList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    if-eqz v0, :cond_0

    .line 240
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 242
    :cond_0
    return v1
.end method

.method public getAppUpdateCount()I
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v0

    .line 173
    .local v0, netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isBestSoftwaresEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getUpdateSumRead()I

    move-result v1

    if-nez v1, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getUpdateSum()I

    move-result v1

    .line 178
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCheckScore()I
    .locals 1

    .prologue
    .line 159
    sget v0, Lcom/zte/heartyservice/indicator/NoticeProvider;->checkScore:I

    return v0
.end method

.method public getNewAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/zte/heartyservice/indicator/NoticeProvider;->newAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionCount()I
    .locals 1

    .prologue
    .line 163
    sget v0, Lcom/zte/heartyservice/indicator/NoticeProvider;->permCount:I

    return v0
.end method

.method public getVirusCount()I
    .locals 6

    .prologue
    .line 221
    const/4 v3, 0x0

    .line 222
    .local v3, ret:I
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getDetectedNotSecurityAppList()Ljava/util/List;

    move-result-object v1

    .line 223
    .local v1, loaclVirusScanResultList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    if-eqz v1, :cond_2

    .line 224
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    .line 225
    .local v2, result:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    iget v4, v2, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    iget v4, v2, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    iget v4, v2, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    iget v4, v2, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 229
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #result:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    :cond_2
    return v3
.end method

.method public onFilterCompleted(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lcom/zte/heartyservice/indicator/NoticeProvider;->adCount:I

    .line 212
    invoke-direct {p0}, Lcom/zte/heartyservice/indicator/NoticeProvider;->updateNotifier()V

    .line 213
    invoke-direct {p0}, Lcom/zte/heartyservice/indicator/NoticeProvider;->updateShortCut()V

    .line 214
    invoke-direct {p0}, Lcom/zte/heartyservice/indicator/NoticeProvider;->updateSecurityUI()V

    .line 215
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x0

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.zte.heartyservice.intent.action.clean_ad_notice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    sput v6, Lcom/zte/heartyservice/indicator/NoticeProvider;->adCount:I

    .line 70
    invoke-direct {p0}, Lcom/zte/heartyservice/indicator/NoticeProvider;->updateNotifier()V

    .line 71
    invoke-direct {p0}, Lcom/zte/heartyservice/indicator/NoticeProvider;->updateShortCut()V

    .line 72
    invoke-direct {p0}, Lcom/zte/heartyservice/indicator/NoticeProvider;->updateSecurityUI()V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string v3, "com.zte.heartyservice.intent.action.clean_permission_notice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    sput v6, Lcom/zte/heartyservice/indicator/NoticeProvider;->permCount:I

    .line 75
    const/4 v3, 0x0

    sput-object v3, Lcom/zte/heartyservice/indicator/NoticeProvider;->newAppName:Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Lcom/zte/heartyservice/indicator/NoticeProvider;->updateNotifier()V

    .line 77
    invoke-direct {p0}, Lcom/zte/heartyservice/indicator/NoticeProvider;->updateShortCut()V

    .line 78
    invoke-direct {p0}, Lcom/zte/heartyservice/indicator/NoticeProvider;->updateSecurityUI()V

    goto :goto_0

    .line 79
    :cond_2
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 81
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/zte/heartyservice/indicator/NoticeProvider;->newAppName:Ljava/lang/String;

    .line 85
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " newAppName ==========="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/zte/heartyservice/indicator/NoticeProvider;->newAppName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-boolean v3, Lcom/zte/heartyservice/indicator/NoticeProvider;->isInstallByHeartyService:Z

    if-nez v3, :cond_3

    sget-object v3, Lcom/zte/heartyservice/indicator/NoticeProvider;->newAppName:Ljava/lang/String;

    const-string v4, "com.tencent.android.qqplaza4zte"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 89
    :cond_3
    sput v6, Lcom/zte/heartyservice/indicator/NoticeProvider;->permCount:I

    .line 95
    :goto_1
    sput-boolean v6, Lcom/zte/heartyservice/indicator/NoticeProvider;->isInstallByHeartyService:Z

    goto :goto_0

    .line 92
    :cond_4
    sget-object v3, Lcom/zte/heartyservice/indicator/NoticeProvider;->newAppName:Ljava/lang/String;

    invoke-static {v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getPermissionNumber(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/zte/heartyservice/indicator/NoticeProvider;->permCount:I

    .line 93
    new-instance v3, Lcom/zte/heartyservice/interceptad/AdFilterTask;

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4, p0}, Lcom/zte/heartyservice/interceptad/AdFilterTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/zte/heartyservice/interceptad/AdFilterTask$AdFilterCallback;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/interceptad/AdFilterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 97
    .end local v2           #uri:Landroid/net/Uri;
    :cond_5
    const-string v3, "com.zte.heartyservice.intent.action.REFRESH_NOTIFICATION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 98
    invoke-virtual {p0, p2}, Lcom/zte/heartyservice/indicator/NoticeProvider;->updateVirusCount(Landroid/content/Intent;)V

    .line 100
    invoke-direct {p0}, Lcom/zte/heartyservice/indicator/NoticeProvider;->updateNotifier()V

    .line 101
    invoke-direct {p0}, Lcom/zte/heartyservice/indicator/NoticeProvider;->updateShortCut()V

    .line 102
    invoke-direct {p0}, Lcom/zte/heartyservice/indicator/NoticeProvider;->updateSecurityUI()V

    goto/16 :goto_0

    .line 103
    :cond_6
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 104
    const-string v3, "level"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 105
    .local v1, levelNew:I
    sget v3, Lcom/zte/heartyservice/indicator/NoticeProvider;->level:I

    if-eq v3, v1, :cond_0

    .line 106
    sput v1, Lcom/zte/heartyservice/indicator/NoticeProvider;->level:I

    .line 107
    invoke-virtual {p0}, Lcom/zte/heartyservice/indicator/NoticeProvider;->updateBatteryNotice()V

    goto/16 :goto_0

    .line 109
    .end local v1           #levelNew:I
    :cond_7
    const-string v3, "com.zte.heartyservice.intent.action.update_battery_notification"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 110
    invoke-virtual {p0}, Lcom/zte/heartyservice/indicator/NoticeProvider;->updateBatteryNotice()V

    goto/16 :goto_0

    .line 111
    :cond_8
    const-string v3, "com.zte.heartyservice.appwidget.WidgetReceiver.updatePowerMode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 112
    invoke-virtual {p0}, Lcom/zte/heartyservice/indicator/NoticeProvider;->updateBatteryNotice()V

    goto/16 :goto_0

    .line 113
    :cond_9
    const-string v3, "com.zte.heartyservice.intent.action.notice_autocheck_score"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 114
    const-string v3, "autocheck_score"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/zte/heartyservice/indicator/NoticeProvider;->checkScore:I

    .line 115
    invoke-direct {p0}, Lcom/zte/heartyservice/indicator/NoticeProvider;->updateNotifier()V

    goto/16 :goto_0

    .line 116
    :cond_a
    const-string v3, "com.zte.heartyservice.intent.action.clean_autocheck_score"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 117
    sput v4, Lcom/zte/heartyservice/indicator/NoticeProvider;->checkScore:I

    .line 118
    invoke-direct {p0}, Lcom/zte/heartyservice/indicator/NoticeProvider;->updateNotifier()V

    goto/16 :goto_0

    .line 119
    :cond_b
    const-string v3, "com.zte.heartyservice.intent.action.install_by_heartyservice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 121
    const/4 v3, 0x1

    sput-boolean v3, Lcom/zte/heartyservice/indicator/NoticeProvider;->isInstallByHeartyService:Z

    goto/16 :goto_0

    .line 122
    :cond_c
    const-string v3, "qqplaza.intent.action.UPDATABLE_SUM_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0
.end method

.method public updateBatteryNotice()V
    .locals 4

    .prologue
    .line 132
    invoke-static {}, Lcom/zte/heartyservice/indicator/Notifier;->getInstance()Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v0

    .line 133
    .local v0, notifier:Lcom/zte/heartyservice/indicator/Notifier;
    iget-object v1, p0, Lcom/zte/heartyservice/indicator/NoticeProvider;->mContext:Landroid/content/Context;

    const-string v2, "show_battery_notice"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    sget v1, Lcom/zte/heartyservice/indicator/NoticeProvider;->level:I

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/indicator/Notifier;->showBatteryNotification(I)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {v0}, Lcom/zte/heartyservice/indicator/Notifier;->cancelBatteryNotification()V

    goto :goto_0
.end method

.method public updateDialog(Ljava/lang/String;)V
    .locals 0
    .parameter "appName"

    .prologue
    .line 218
    return-void
.end method

.method public updateVirusCount(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 141
    const-string v2, "from"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, from:Ljava/lang/String;
    sget-object v2, Lcom/zte/heartyservice/indicator/NoticeProvider;->NOTICE_VIRUS_VIEWED_KEY:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, viewed:Ljava/lang/String;
    const-string v2, "antivirus"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "antivirus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getVirusCount()I

    move-result v2

    sput v2, Lcom/zte/heartyservice/indicator/NoticeProvider;->virusCount:I

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const-string v2, "antivirus"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getAllVirusCount()I

    move-result v2

    sput v2, Lcom/zte/heartyservice/indicator/NoticeProvider;->virusCount:I

    goto :goto_0
.end method
