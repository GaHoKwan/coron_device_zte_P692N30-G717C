.class public Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;
.super Ljava/lang/Object;
.source "EngineDataUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$UpdateListener;,
        Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$CheckListener;,
        Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;
    }
.end annotation


# static fields
.field private static final AUTO_UPDATE_ACTION:Ljava/lang/String; = "com.zte.heartyservice.VirusLibAutoUpdate"

.field public static final CHECKING:I = 0x1

.field public static final DO_NOTHING:I = 0x0

.field private static final MSG_ERROR:I = 0x3

.field private static final MSG_FINISH:I = 0x1

.field private static final MSG_SET_IS_NEED_UPDATE:I = 0x4

.field private static final MSG_UPDATE_FINISH:I = 0x0

.field private static final MSG_UPDATE_PROGRESS:I = 0x2

.field public static final NETWORK_ERR:I = -0x80e

.field private static final TAG:Ljava/lang/String; = "EngineDataUpdateManager"

.field private static final THREE_DAY_MILLIS:J = 0xf731400L

.field public static final UPDATING:I = 0x2

.field private static final VIRUS_LIB_TIME_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field private static sInstance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;",
            ">;"
        }
    .end annotation
.end field

.field private static sReceiver:Landroid/content/BroadcastReceiver;

.field private static sStrongRef:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;


# instance fields
.field private mAlsoUpdate:Z

.field private mCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCheckListener:Ltmsdk/common/module/update/ICheckListener;

.field private mHandler:Landroid/os/Handler;

.field private mInfo:I

.field private mUpdateListener:Ltmsdk/common/module/update/IUpdateListener;

.field private mUpdateManager:Ltmsdk/common/module/update/UpdateManager;

.field private mUpdateState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->sInstance:Ljava/lang/ref/WeakReference;

    .line 45
    sput-object v1, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->sStrongRef:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    .line 281
    sput-object v1, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->sReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mUpdateManager:Ltmsdk/common/module/update/UpdateManager;

    .line 35
    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mCheckListener:Ltmsdk/common/module/update/ICheckListener;

    .line 36
    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mUpdateListener:Ltmsdk/common/module/update/IUpdateListener;

    .line 40
    iput v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mUpdateState:I

    .line 41
    iput v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mInfo:I

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mCallBacks:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$1;-><init>(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)V

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mHandler:Landroid/os/Handler;

    .line 184
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mUpdateManager:Ltmsdk/common/module/update/UpdateManager;

    if-nez v0, :cond_0

    .line 185
    const-class v0, Ltmsdk/common/module/update/UpdateManager;

    invoke-static {v0}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/update/UpdateManager;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mUpdateManager:Ltmsdk/common/module/update/UpdateManager;

    .line 186
    new-instance v0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$CheckListener;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$CheckListener;-><init>(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)V

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mCheckListener:Ltmsdk/common/module/update/ICheckListener;

    .line 187
    new-instance v0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$UpdateListener;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$UpdateListener;-><init>(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)V

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mUpdateListener:Ltmsdk/common/module/update/IUpdateListener;

    .line 189
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mUpdateState:I

    return v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->notifyChange(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->setIsNeedUpdate(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mAlsoUpdate:Z

    return v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)Ltmsdk/common/module/update/IUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mUpdateListener:Ltmsdk/common/module/update/IUpdateListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)Ltmsdk/common/module/update/UpdateManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mUpdateManager:Ltmsdk/common/module/update/UpdateManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)Ltmsdk/common/module/update/ICheckListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mCheckListener:Ltmsdk/common/module/update/ICheckListener;

    return-object v0
.end method

.method public static checkAutoUpdate()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 284
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->checkThreadValid()V

    .line 285
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v7

    .line 286
    .local v7, context:Landroid/content/Context;
    const-string v1, "virusdb_auto_update_enable"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v8

    .line 288
    .local v8, enable:Z
    const-string v1, "alarm"

    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 290
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v10, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.VirusLibAutoUpdate"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v10, intent:Landroid/content/Intent;
    invoke-static {v7, v3, v10, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 293
    .local v6, operation:Landroid/app/PendingIntent;
    const-string v1, "EngineDataUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAutoUpdate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    if-eqz v8, :cond_1

    .line 295
    sget-object v1, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->sReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 296
    new-instance v1, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$3;

    invoke-direct {v1}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$3;-><init>()V

    sput-object v1, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 337
    new-instance v9, Landroid/content/IntentFilter;

    const-string v1, "com.zte.heartyservice.VirusLibAutoUpdate"

    invoke-direct {v9, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 338
    .local v9, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    sget-object v1, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v1, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 340
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xf731400

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 351
    .end local v9           #filter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    sget-object v1, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->sReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 346
    sget-object v1, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 347
    const/4 v1, 0x0

    sput-object v1, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 349
    :cond_2
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;
    .locals 4

    .prologue
    .line 57
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->checkThreadValid()V

    .line 58
    sget-object v1, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->sInstance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    .line 59
    .local v0, instance:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;
    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    .end local v0           #instance:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;
    invoke-direct {v0}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;-><init>()V

    .line 61
    .restart local v0       #instance:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->sInstance:Ljava/lang/ref/WeakReference;

    .line 62
    const-string v1, "EngineDataUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new EngineDataUpdateManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->sInstance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    return-object v0
.end method

.method public static getVirusLibTime()J
    .locals 3

    .prologue
    .line 361
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    move-result-object v0

    iget-object v0, v0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mUpdateManager:Ltmsdk/common/module/update/UpdateManager;

    const-wide/32 v1, 0x40000000

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/update/UpdateManager;->getTimeStamp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVirusLibTimeString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 354
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 355
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->getVirusLibTime()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 356
    .local v0, curDate:Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, str:Ljava/lang/String;
    return-object v2
.end method

.method private notifyChange(II)V
    .locals 7
    .parameter "state"
    .parameter "info"

    .prologue
    .line 217
    iput p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mUpdateState:I

    .line 218
    iput p2, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mInfo:I

    .line 220
    iget v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mUpdateState:I

    if-nez v4, :cond_0

    .line 221
    const/4 v4, 0x0

    sput-object v4, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->sStrongRef:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    .line 231
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v1, cbList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 233
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;

    .line 234
    .local v0, cb:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;
    if-eqz v0, :cond_3

    .line 235
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 223
    .end local v0           #cb:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;
    .end local v1           #cbList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;>;"
    .end local v2           #i:I
    :cond_0
    sget-object v4, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->sInstance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne p0, v4, :cond_1

    sget-object v4, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->sStrongRef:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->sStrongRef:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    if-eq v4, p0, :cond_2

    .line 225
    :cond_1
    const-string v4, "EngineDataUpdateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error more than one Instance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->sInstance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->sStrongRef:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_2
    sput-object p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->sStrongRef:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    goto :goto_0

    .line 237
    .restart local v0       #cb:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;
    .restart local v1       #cbList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;>;"
    .restart local v2       #i:I
    :cond_3
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 238
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 242
    .end local v0           #cb:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;

    .line 243
    .restart local v0       #cb:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;
    iget v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mUpdateState:I

    iget v5, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mInfo:I

    invoke-interface {v0, v4, v5}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;->onStateChange(II)V

    goto :goto_3

    .line 246
    .end local v0           #cb:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;
    :cond_5
    const-string v4, "EngineDataUpdateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyChange:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mUpdateState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mInfo:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void
.end method

.method private setIsNeedUpdate(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 104
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 105
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 106
    return-void

    .line 104
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addEngineDataUpdateCallBacks(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 192
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->checkThreadValid()V

    .line 193
    if-nez p1, :cond_0

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mCallBacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    iget v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mUpdateState:I

    iget v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mInfo:I

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->notifyChange(II)V

    goto :goto_0
.end method

.method public check(Z)V
    .locals 2
    .parameter "alsoUpdate"

    .prologue
    .line 251
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->checkThreadValid()V

    .line 252
    iget v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mUpdateState:I

    if-eqz v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 255
    :cond_0
    iput-boolean p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mAlsoUpdate:Z

    .line 257
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->notifyChange(II)V

    .line 258
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$2;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$2;-><init>(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public removeEngineDataUpdateCallBacks(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;)V
    .locals 4
    .parameter "cb"

    .prologue
    .line 201
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->checkThreadValid()V

    .line 202
    if-nez p1, :cond_0

    .line 214
    :goto_0
    return-void

    .line 205
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 206
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;

    .line 207
    .local v0, callback:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_2

    .line 208
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 209
    add-int/lit8 v1, v1, -0x1

    .line 205
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 213
    .end local v0           #callback:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;
    :cond_3
    iget v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mUpdateState:I

    iget v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mInfo:I

    invoke-direct {p0, v2, v3}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->notifyChange(II)V

    goto :goto_0
.end method
