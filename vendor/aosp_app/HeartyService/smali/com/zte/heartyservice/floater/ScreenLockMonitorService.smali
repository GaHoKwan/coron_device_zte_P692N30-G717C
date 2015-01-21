.class public Lcom/zte/heartyservice/floater/ScreenLockMonitorService;
.super Landroid/app/Service;
.source "ScreenLockMonitorService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SCREENLOCKMONITOR"

.field protected static final WHAT:I = 0x1234

.field static offScreenTime:J

.field static onScreenTime:J

.field static usedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/floater/AppUsedData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allScreenLockData:J

.field private mHandler:Landroid/os/Handler;

.field private mLockUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

.field offScreenTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 43
    sput-wide v0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->offScreenTime:J

    .line 44
    sput-wide v0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->onScreenTime:J

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->usedList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->allScreenLockData:J

    .line 46
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->offScreenTimeMap:Ljava/util/Map;

    .line 77
    new-instance v0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService$1;-><init>(Lcom/zte/heartyservice/floater/ScreenLockMonitorService;)V

    iput-object v0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->mLockUnlockReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/floater/ScreenLockMonitorService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->cancelNotification()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/floater/ScreenLockMonitorService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->getOffScreenTimeStamp()V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/floater/ScreenLockMonitorService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->allScreenLockData:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/zte/heartyservice/floater/ScreenLockMonitorService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->allScreenLockData:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/floater/ScreenLockMonitorService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->getScreenLockDataMonitor()V

    return-void
.end method

.method private cancelNotification()V
    .locals 2

    .prologue
    .line 117
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 119
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 120
    return-void
.end method

.method private getOffScreenTimeStamp()V
    .locals 19

    .prologue
    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/16 v15, 0x3000

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    .line 198
    .local v6, packinfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 199
    .local v4, info:Landroid/content/pm/PackageInfo;
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 200
    .local v8, premissions:[Ljava/lang/String;
    if-eqz v8, :cond_0

    array-length v14, v8

    if-lez v14, :cond_0

    .line 201
    move-object v1, v8

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v7, v1, v3

    .line 202
    .local v7, premission:Ljava/lang/String;
    const-string v14, "android.permission.INTERNET"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 203
    iget-object v14, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 204
    .local v13, uid:I
    invoke-static {v13}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v9

    .line 205
    .local v9, rx:J
    invoke-static {v13}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v11

    .line 206
    .local v11, tx:J
    const-wide/16 v14, 0x0

    cmp-long v14, v9, v14

    if-gtz v14, :cond_2

    const-wide/16 v14, 0x0

    cmp-long v14, v11, v14

    if-gtz v14, :cond_2

    .line 207
    const-string v14, "SCREENLOCKMONITOR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "no data"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v9           #rx:J
    .end local v11           #tx:J
    .end local v13           #uid:I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    .restart local v9       #rx:J
    .restart local v11       #tx:J
    .restart local v13       #uid:I
    :cond_2
    const-string v14, "SCREENLOCKMONITOR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data info:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->offScreenTimeMap:Ljava/util/Map;

    iget-object v15, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v16, Ljava/lang/Long;

    add-long v17, v9, v11

    invoke-direct/range {v16 .. v18}, Ljava/lang/Long;-><init>(J)V

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 217
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #info:Landroid/content/pm/PackageInfo;
    .end local v5           #len$:I
    .end local v7           #premission:Ljava/lang/String;
    .end local v8           #premissions:[Ljava/lang/String;
    .end local v9           #rx:J
    .end local v11           #tx:J
    .end local v13           #uid:I
    :cond_3
    return-void
.end method

.method private getScreenLockDataMonitor()V
    .locals 23

    .prologue
    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v20, 0x3000

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v11

    .line 222
    .local v11, packinfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 223
    .local v8, info:Landroid/content/pm/PackageInfo;
    iget-object v13, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 224
    .local v13, premissions:[Ljava/lang/String;
    if-eqz v13, :cond_0

    array-length v0, v13

    move/from16 v19, v0

    if-lez v19, :cond_0

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "com.tencent.android.qqplaza4zte"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "com.zte.heartyservice"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 226
    move-object v3, v13

    .local v3, arr$:[Ljava/lang/String;
    array-length v9, v3

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v12, v3, v7

    .line 227
    .local v12, premission:Ljava/lang/String;
    const-string v19, "android.permission.INTERNET"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 229
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    .line 230
    .local v18, uid:I
    invoke-static/range {v18 .. v18}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v14

    .line 231
    .local v14, rx:J
    invoke-static/range {v18 .. v18}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v16

    .line 232
    .local v16, tx:J
    const-wide/16 v19, 0x0

    cmp-long v19, v14, v19

    if-gtz v19, :cond_2

    const-wide/16 v19, 0x0

    cmp-long v19, v16, v19

    if-gtz v19, :cond_2

    .line 233
    const-string v19, "SCREENLOCKMONITOR"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "no data"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v14           #rx:J
    .end local v16           #tx:J
    .end local v18           #uid:I
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 235
    .restart local v14       #rx:J
    .restart local v16       #tx:J
    .restart local v18       #uid:I
    :cond_2
    const-string v19, "SCREENLOCKMONITOR"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "data flow:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->offScreenTimeMap:Ljava/util/Map;

    move-object/from16 v19, v0

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->offScreenTimeMap:Ljava/util/Map;

    move-object/from16 v19, v0

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 239
    .local v10, oldValue:Ljava/lang/Long;
    add-long v19, v14, v16

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    sub-long v4, v19, v21

    .line 240
    .local v4, diff:J
    const-wide/16 v19, 0x320

    cmp-long v19, v4, v19

    if-lez v19, :cond_3

    .line 242
    const-string v19, "SCREENLOCKMONITOR"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " info.packageName ============="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-object v19, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->usedList:Ljava/util/List;

    new-instance v20, Lcom/zte/heartyservice/floater/AppUsedData;

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v5, v8}, Lcom/zte/heartyservice/floater/AppUsedData;-><init>(JLandroid/content/pm/PackageInfo;)V

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->allScreenLockData:J

    move-wide/from16 v19, v0

    add-long v19, v19, v4

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->allScreenLockData:J

    .line 247
    const-string v19, "SCREENLOCKMONITOR"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "allScreenLockData ============="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->allScreenLockData:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v19, "SCREENLOCKMONITOR"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " usedList.size() ==============="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->usedList:Ljava/util/List;

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 259
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #diff:J
    .end local v7           #i$:I
    .end local v8           #info:Landroid/content/pm/PackageInfo;
    .end local v9           #len$:I
    .end local v10           #oldValue:Ljava/lang/Long;
    .end local v12           #premission:Ljava/lang/String;
    .end local v13           #premissions:[Ljava/lang/String;
    .end local v14           #rx:J
    .end local v16           #tx:J
    .end local v18           #uid:I
    :cond_4
    return-void
.end method

.method static insert(Ljava/util/List;Lcom/zte/heartyservice/floater/AppUsedData;)V
    .locals 6
    .parameter
    .parameter "m"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/floater/AppUsedData;",
            ">;",
            "Lcom/zte/heartyservice/floater/AppUsedData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/floater/AppUsedData;>;"
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 65
    .local v1, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/zte/heartyservice/floater/AppUsedData;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/floater/AppUsedData;

    .line 68
    .local v0, in:Lcom/zte/heartyservice/floater/AppUsedData;
    iget-wide v2, p1, Lcom/zte/heartyservice/floater/AppUsedData;->usedData:J

    iget-wide v4, v0, Lcom/zte/heartyservice/floater/AppUsedData;->usedData:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 70
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 71
    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 75
    .end local v0           #in:Lcom/zte/heartyservice/floater/AppUsedData;
    :cond_1
    return-void
.end method


# virtual methods
.method public notifyMe()V
    .locals 15

    .prologue
    const v14, 0x7f0201a0

    const/4 v13, 0x1

    const v12, 0x7f0a061d

    const/4 v11, 0x0

    .line 124
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 127
    .local v4, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020017

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const-string v6, "SCREENLOCKMONITOR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allScreenLockData =========xxx======"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->allScreenLockData:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v5, ""

    .line 133
    .local v5, valueAll:Ljava/lang/String;
    iget-wide v6, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->allScreenLockData:J

    const-wide/16 v8, 0x400

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->allScreenLockData:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "B"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 141
    :goto_0
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/zte/heartyservice/floater/ScreenLockMonitor;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v11, v6, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 144
    .local v1, i:Landroid/app/PendingIntent;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v7, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->offScreenTime:J

    invoke-virtual {p0, v7, v8}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->refFormatNowDate(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v7, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->onScreenTime:J

    invoke-virtual {p0, v7, v8}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->refFormatNowDate(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0a0619

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, mShowTitle:Ljava/lang/String;
    const/4 v3, 0x0

    .line 148
    .local v3, myNotify:Landroid/app/Notification;
    const-string v6, "SCREENLOCKMONITOR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    Integer.valueOf(Build.VERSION.SDK)   ==="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0xf

    if-le v6, v7, :cond_1

    .line 150
    new-instance v6, Landroid/app/Notification$Builder;

    invoke-direct {v6, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    new-array v8, v13, [Ljava/lang/Object;

    aput-object v5, v8, v11

    invoke-virtual {v7, v12, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    new-array v8, v13, [Ljava/lang/Object;

    aput-object v5, v8, v11

    invoke-virtual {v7, v12, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 172
    :goto_1
    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 173
    invoke-virtual {v4, v11, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 174
    return-void

    .line 138
    .end local v1           #i:Landroid/app/PendingIntent;
    .end local v2           #mShowTitle:Ljava/lang/String;
    .end local v3           #myNotify:Landroid/app/Notification;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->allScreenLockData:J

    long-to-float v7, v7

    const/high16 v8, 0x4480

    div-float/2addr v7, v8

    const/high16 v8, 0x4120

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-double v7, v7

    const-wide/high16 v9, 0x4024

    div-double/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 161
    .restart local v1       #i:Landroid/app/PendingIntent;
    .restart local v2       #mShowTitle:Ljava/lang/String;
    .restart local v3       #myNotify:Landroid/app/Notification;
    :cond_1
    new-instance v3, Landroid/app/Notification;

    .end local v3           #myNotify:Landroid/app/Notification;
    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 162
    .restart local v3       #myNotify:Landroid/app/Notification;
    iput v14, v3, Landroid/app/Notification;->icon:I

    .line 163
    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/app/Notification;->when:J

    .line 166
    invoke-virtual {p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p0, v6, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 309
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 263
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 265
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 266
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->mLockUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 270
    invoke-static {p0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    .line 271
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/zte/heartyservice/floater/ScreenLockMonitorService$2;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService$2;-><init>(Lcom/zte/heartyservice/floater/ScreenLockMonitorService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 294
    new-instance v1, Lcom/zte/heartyservice/floater/ScreenLockMonitorService$3;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService$3;-><init>(Lcom/zte/heartyservice/floater/ScreenLockMonitorService;)V

    iput-object v1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->mHandler:Landroid/os/Handler;

    .line 305
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 314
    const-string v0, "SCREENLOCKMONITOR"

    const-string v1, "stopping ScreenLockMonitor Background Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->mLockUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 316
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 317
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 321
    const-string v0, "SCREENLOCKMONITOR"

    const-string v1, "starting ScreenLockMonitor Background Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 324
    return-void
.end method

.method public refFormatNowDate(J)Ljava/lang/String;
    .locals 6
    .parameter "m"

    .prologue
    .line 178
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 179
    .local v0, mCalendar:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 180
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 181
    .local v1, mHour:I
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 184
    .local v2, mMinutes:I
    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, retStrFormatNowDate:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 189
    .end local v3           #retStrFormatNowDate:Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #retStrFormatNowDate:Ljava/lang/String;
    goto :goto_0
.end method
