.class public Lcom/zte/heartyservice/net/NetTrafficUtils;
.super Ljava/lang/Object;
.source "NetTrafficUtils.java"


# static fields
.field public static final CALCULATE_TYPE_END:I = 0x1

.field public static final CALCULATE_TYPE_START:I = 0x0

.field public static final CONVERT_TYPE_G:I = 0x2

.field public static final CONVERT_TYPE_K:I = 0x0

.field public static final CONVERT_TYPE_M:I = 0x1

.field private static final DEBUG:Z = false

.field private static final JELLY_BEAN:I = 0x10

.field private static final TAG:Ljava/lang/String; = "NetTrafficUtils"

.field private static mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;


# instance fields
.field private getHistoryForUid:Ljava/lang/reflect/Method;

.field private getSummaryForAllUid4ICS:Ljava/lang/reflect/Method;

.field private getSummaryForAllUid4JB:Ljava/lang/reflect/Method;

.field private getSummaryForNetwork4ICS:Ljava/lang/reflect/Method;

.field private getSummaryForNetwork4JB:Ljava/lang/reflect/Method;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Ljava/lang/Object;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

.field private subscriberId:Ljava/lang/String;

.field private template:Landroid/net/NetworkTemplate;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "mContext"

    .prologue
    const/4 v0, 0x0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->mStatsSession:Ljava/lang/Object;

    .line 55
    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForNetwork4ICS:Ljava/lang/reflect/Method;

    .line 56
    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForAllUid4ICS:Ljava/lang/reflect/Method;

    .line 57
    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForNetwork4JB:Ljava/lang/reflect/Method;

    .line 58
    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForAllUid4JB:Ljava/lang/reflect/Method;

    .line 60
    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->getHistoryForUid:Ljava/lang/reflect/Method;

    .line 299
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->mStatsService:Landroid/net/INetworkStatsService;

    .line 301
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 307
    invoke-static {p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    .line 310
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getNetStatsSession()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->mStatsSession:Ljava/lang/Object;

    .line 311
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->initLocalMethods()V

    .line 313
    return-void
.end method

.method private getCurrentApiVersion()I
    .locals 1

    .prologue
    .line 185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 3
    .parameter "template"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"
    .parameter "fields"

    .prologue
    .line 222
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/Object;

    .line 223
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 224
    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 225
    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 226
    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 227
    const/4 v1, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 229
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->mStatsSession:Ljava/lang/Object;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->getHistoryForUid:Ljava/lang/reflect/Method;

    invoke-static {v1, v2, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficUtils;
    .locals 2
    .parameter "mContext"

    .prologue
    .line 321
    sget-object v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Lcom/zte/heartyservice/net/NetTrafficUtils;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    .line 324
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    return-object v0
.end method

.method private getNetStatsSession()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->mStatsService:Landroid/net/INetworkStatsService;

    const-string v1, "openSession"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getNetTemplate()Landroid/net/NetworkTemplate;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->subscriberId:Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->subscriberId:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method private getNetTemplate(I)Landroid/net/NetworkTemplate;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 610
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 611
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->subscriberId:Ljava/lang/String;

    .line 612
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->subscriberId:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 615
    :goto_0
    return-object v1

    .line 614
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v0

    .line 615
    .local v0, mgr:Lcom/zte/heartyservice/msim/SimManager;
    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/msim/SimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    goto :goto_0
.end method

.method private getNetTemplateforWifi()Landroid/net/NetworkTemplate;
    .locals 1

    .prologue
    .line 621
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifi()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method private getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    .locals 3
    .parameter "template"
    .parameter "start"
    .parameter "end"
    .parameter "includeTags"

    .prologue
    .line 207
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    .line 208
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 209
    const/4 v1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 210
    const/4 v1, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 211
    const/4 v1, 0x3

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 213
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getCurrentApiVersion()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 214
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->mStatsSession:Ljava/lang/Object;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForAllUid4JB:Ljava/lang/reflect/Method;

    invoke-static {v1, v2, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStats;

    .line 216
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->mStatsService:Landroid/net/INetworkStatsService;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForAllUid4ICS:Ljava/lang/reflect/Method;

    invoke-static {v1, v2, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStats;

    goto :goto_0
.end method

.method private getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 3
    .parameter "template"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 193
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    .line 194
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 195
    const/4 v1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 196
    const/4 v1, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 198
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getCurrentApiVersion()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 199
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->mStatsSession:Ljava/lang/Object;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForNetwork4JB:Ljava/lang/reflect/Method;

    invoke-static {v1, v2, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStats;

    .line 201
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->mStatsService:Landroid/net/INetworkStatsService;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForNetwork4ICS:Ljava/lang/reflect/Method;

    invoke-static {v1, v2, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStats;

    goto :goto_0
.end method

.method private getTrafficMonthRegularHoursUsed(I)D
    .locals 65
    .parameter "subscription"

    .prologue
    .line 868
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v51

    .line 869
    .local v51, localCalendar:Ljava/util/Calendar;
    const/4 v3, 0x1

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v64

    .line 870
    .local v64, year:I
    const/4 v3, 0x2

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v52

    .line 871
    .local v52, month:I
    const/4 v3, 0x5

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v40

    .line 873
    .local v40, day:I
    const/16 v45, 0x0

    .line 876
    .local v45, hasAdj:Z
    const/16 v38, 0x0

    .line 877
    .local v38, cycleStartDay:I
    const/16 v36, 0x0

    .line 878
    .local v36, cycleEndDay:I
    const-wide/16 v30, 0x0

    .line 880
    .local v30, adjValue:D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getCalcDay(I)I

    move-result v35

    .line 881
    .local v35, calcDay:I
    const/4 v3, -0x1

    move/from16 v0, v35

    if-ne v3, v0, :cond_0

    .line 882
    const/16 v35, 0x1

    .line 884
    :cond_0
    move/from16 v0, v35

    move/from16 v1, v40

    if-gt v0, v1, :cond_2

    .line 885
    move/from16 v39, v52

    .line 889
    .local v39, cycleStartMonth:I
    :goto_0
    add-int/lit8 v37, v39, 0x1

    .line 890
    .local v37, cycleEndMonth:I
    move/from16 v36, v35

    move/from16 v38, v35

    .line 892
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getRegularHoursStatsAdj(I)Ljava/lang/String;

    move-result-object v63

    .line 893
    .local v63, statsAdj:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 894
    const-string v3, "|"

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v50

    .line 895
    .local v50, index:I
    const/4 v3, 0x0

    move-object/from16 v0, v63

    move/from16 v1, v50

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 896
    .local v27, adjDate:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 897
    .local v32, adjYear:I
    const/4 v3, 0x4

    const/4 v4, 0x6

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v29, v3, -0x1

    .line 898
    .local v29, adjMon:I
    const/4 v3, 0x6

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 900
    .local v28, adjDay:I
    add-int/lit8 v3, v50, 0x1

    :try_start_0
    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-wide v30

    .line 904
    :goto_1
    move/from16 v0, v32

    move/from16 v1, v64

    if-ne v0, v1, :cond_1

    .line 905
    move/from16 v0, v29

    move/from16 v1, v39

    if-ne v0, v1, :cond_3

    .line 906
    move/from16 v0, v28

    move/from16 v1, v35

    if-lt v0, v1, :cond_1

    .line 907
    move/from16 v38, v28

    .line 908
    move/from16 v36, v35

    .line 909
    const/16 v45, 0x1

    .line 925
    .end local v27           #adjDate:Ljava/lang/String;
    .end local v28           #adjDay:I
    .end local v29           #adjMon:I
    .end local v32           #adjYear:I
    .end local v50           #index:I
    :cond_1
    :goto_2
    sget-object v3, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move/from16 v0, v64

    move/from16 v1, v39

    move/from16 v2, v38

    invoke-virtual {v3, v0, v1, v2}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getDateMills(III)J

    move-result-wide v5

    .line 926
    .local v5, start:J
    sget-object v3, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move/from16 v0, v64

    move/from16 v1, v37

    move/from16 v2, v36

    invoke-virtual {v3, v0, v1, v2}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getDateMills(III)J

    move-result-wide v7

    .line 927
    .local v7, end:J
    const-wide/16 v33, 0x0

    .line 929
    .local v33, allTotalBytes:J
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getNetTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v4

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v62

    .line 930
    .local v62, stats:Landroid/net/NetworkStats;
    invoke-virtual/range {v62 .. v62}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v33

    .line 942
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursStartHour(I)I

    move-result v13

    .line 943
    .local v13, startHour:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursStartMinute(I)I

    move-result v14

    .line 944
    .local v14, startMinute:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursEndHour(I)I

    move-result v19

    .line 945
    .local v19, endHour:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursEndMinute(I)I

    move-result v20

    .line 946
    .local v20, endMinute:I
    mul-int/lit8 v3, v13, 0x3c

    add-int v61, v3, v14

    .line 947
    .local v61, startTime:I
    mul-int/lit8 v3, v19, 0x3c

    add-int v43, v3, v20

    .line 951
    .local v43, endTime:I
    move/from16 v0, v43

    move/from16 v1, v61

    if-lt v0, v1, :cond_5

    .line 952
    sget-object v9, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    const/16 v10, 0x7dd

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {v9 .. v14}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v59

    .line 953
    .local v59, startInOneDay:J
    sget-object v15, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    const/16 v16, 0x7dd

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v20}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v41

    .line 958
    .local v41, endInOneDay:J
    :goto_3
    sub-long v46, v41, v59

    .line 959
    .local v46, idleHour:J
    sget-object v21, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    const/16 v22, 0x7dd

    const/16 v23, 0x1

    const/16 v24, 0x2

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v21 .. v26}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v3

    sget-object v21, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    const/16 v22, 0x7dd

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v21 .. v26}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v9

    sub-long v54, v3, v9

    .line 960
    .local v54, oneDay:J
    const-wide/16 v48, 0x0

    .line 962
    .local v48, idleTotalBytes:J
    sget-object v9, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move/from16 v10, v64

    move/from16 v11, v39

    move/from16 v12, v38

    invoke-virtual/range {v9 .. v14}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v5

    .line 963
    sget-object v15, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move/from16 v16, v64

    move/from16 v17, v37

    move/from16 v18, v36

    invoke-virtual/range {v15 .. v20}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v7

    .line 965
    move-wide/from16 v23, v5

    .local v23, i:J
    :goto_4
    cmp-long v3, v23, v7

    if-gtz v3, :cond_6

    .line 967
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getNetTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v22

    add-long v25, v23, v46

    move-object/from16 v21, p0

    invoke-direct/range {v21 .. v26}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v62

    .line 968
    invoke-virtual/range {v62 .. v62}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v3

    add-long v48, v48, v3

    .line 965
    add-long v23, v23, v54

    goto :goto_4

    .line 887
    .end local v5           #start:J
    .end local v7           #end:J
    .end local v13           #startHour:I
    .end local v14           #startMinute:I
    .end local v19           #endHour:I
    .end local v20           #endMinute:I
    .end local v23           #i:J
    .end local v33           #allTotalBytes:J
    .end local v37           #cycleEndMonth:I
    .end local v39           #cycleStartMonth:I
    .end local v41           #endInOneDay:J
    .end local v43           #endTime:I
    .end local v46           #idleHour:J
    .end local v48           #idleTotalBytes:J
    .end local v54           #oneDay:J
    .end local v59           #startInOneDay:J
    .end local v61           #startTime:I
    .end local v62           #stats:Landroid/net/NetworkStats;
    .end local v63           #statsAdj:Ljava/lang/String;
    :cond_2
    add-int/lit8 v39, v52, -0x1

    .restart local v39       #cycleStartMonth:I
    goto/16 :goto_0

    .line 911
    .restart local v27       #adjDate:Ljava/lang/String;
    .restart local v28       #adjDay:I
    .restart local v29       #adjMon:I
    .restart local v32       #adjYear:I
    .restart local v37       #cycleEndMonth:I
    .restart local v50       #index:I
    .restart local v63       #statsAdj:Ljava/lang/String;
    :cond_3
    move/from16 v0, v29

    move/from16 v1, v37

    if-ne v0, v1, :cond_1

    .line 912
    move/from16 v0, v28

    move/from16 v1, v35

    if-ge v0, v1, :cond_1

    .line 913
    move/from16 v39, v37

    .line 914
    move/from16 v38, v28

    .line 915
    move/from16 v36, v35

    .line 916
    const/16 v45, 0x1

    goto/16 :goto_2

    .line 921
    .end local v27           #adjDate:Ljava/lang/String;
    .end local v28           #adjDay:I
    .end local v29           #adjMon:I
    .end local v32           #adjYear:I
    .end local v50           #index:I
    :cond_4
    move/from16 v36, v35

    move/from16 v38, v35

    goto/16 :goto_2

    .line 931
    .restart local v5       #start:J
    .restart local v7       #end:J
    .restart local v33       #allTotalBytes:J
    :catch_0
    move-exception v58

    .line 932
    .local v58, se:Ljava/lang/SecurityException;
    const-string v3, "NetTrafficUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTrafficMonthUsed throws SecurityException  "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v58

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const-wide/16 v3, 0x0

    .line 983
    .end local v58           #se:Ljava/lang/SecurityException;
    :goto_5
    return-wide v3

    .line 934
    :catch_1
    move-exception v53

    .line 935
    .local v53, ne:Ljava/lang/NullPointerException;
    const-string v3, "NetTrafficUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTrafficMonthUsed throws NullPointerException  "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    const-wide/16 v3, 0x0

    goto :goto_5

    .line 955
    .end local v53           #ne:Ljava/lang/NullPointerException;
    .restart local v13       #startHour:I
    .restart local v14       #startMinute:I
    .restart local v19       #endHour:I
    .restart local v20       #endMinute:I
    .restart local v43       #endTime:I
    .restart local v61       #startTime:I
    .restart local v62       #stats:Landroid/net/NetworkStats;
    :cond_5
    sget-object v9, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    const/16 v10, 0x7dd

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {v9 .. v14}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v59

    .line 956
    .restart local v59       #startInOneDay:J
    sget-object v15, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    const/16 v16, 0x7dd

    const/16 v17, 0x1

    const/16 v18, 0x2

    invoke-virtual/range {v15 .. v20}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v41

    .restart local v41       #endInOneDay:J
    goto/16 :goto_3

    .line 969
    .restart local v23       #i:J
    .restart local v46       #idleHour:J
    .restart local v48       #idleTotalBytes:J
    .restart local v54       #oneDay:J
    :catch_2
    move-exception v44

    .line 970
    .local v44, ex:Ljava/lang/Exception;
    invoke-virtual/range {v44 .. v44}, Ljava/lang/Exception;->printStackTrace()V

    .line 971
    const-wide/16 v3, 0x0

    goto :goto_5

    .line 977
    .end local v44           #ex:Ljava/lang/Exception;
    :cond_6
    sub-long v56, v33, v48

    .line 979
    .local v56, regularTotal:J
    const/4 v3, 0x1

    move/from16 v0, v45

    if-ne v0, v3, :cond_7

    .line 980
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/heartyservice/net/NetTrafficUtils;->convertBytes(JI)D

    move-result-wide v3

    add-double v3, v3, v30

    goto :goto_5

    .line 983
    :cond_7
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/heartyservice/net/NetTrafficUtils;->convertBytes(JI)D

    move-result-wide v3

    goto :goto_5

    .line 901
    .end local v5           #start:J
    .end local v7           #end:J
    .end local v13           #startHour:I
    .end local v14           #startMinute:I
    .end local v19           #endHour:I
    .end local v20           #endMinute:I
    .end local v23           #i:J
    .end local v33           #allTotalBytes:J
    .end local v41           #endInOneDay:J
    .end local v43           #endTime:I
    .end local v46           #idleHour:J
    .end local v48           #idleTotalBytes:J
    .end local v54           #oneDay:J
    .end local v56           #regularTotal:J
    .end local v59           #startInOneDay:J
    .end local v61           #startTime:I
    .end local v62           #stats:Landroid/net/NetworkStats;
    .restart local v27       #adjDate:Ljava/lang/String;
    .restart local v28       #adjDay:I
    .restart local v29       #adjMon:I
    .restart local v32       #adjYear:I
    .restart local v50       #index:I
    :catch_3
    move-exception v3

    goto/16 :goto_1
.end method

.method private initLocalMethods()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->mStatsService:Landroid/net/INetworkStatsService;

    const-string v1, "getSummaryForNetwork"

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->getTargetMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForNetwork4ICS:Ljava/lang/reflect/Method;

    .line 234
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->mStatsSession:Ljava/lang/Object;

    const-string v1, "getSummaryForNetwork"

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->getTargetMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForNetwork4JB:Ljava/lang/reflect/Method;

    .line 236
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->mStatsService:Landroid/net/INetworkStatsService;

    const-string v1, "getSummaryForAllUid"

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->getTargetMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForAllUid4ICS:Ljava/lang/reflect/Method;

    .line 237
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->mStatsSession:Ljava/lang/Object;

    const-string v1, "getSummaryForAllUid"

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->getTargetMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForAllUid4JB:Ljava/lang/reflect/Method;

    .line 239
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->mStatsSession:Ljava/lang/Object;

    const-string v1, "getHistoryForUid"

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->getTargetMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->getHistoryForUid:Ljava/lang/reflect/Method;

    .line 241
    return-void
.end method


# virtual methods
.method public convertBytes(JI)D
    .locals 8
    .parameter "initialValue"
    .parameter "type"

    .prologue
    .line 257
    const-wide/16 v0, 0x0

    .line 258
    .local v0, accurateValue:D
    const-wide/16 v2, 0x0

    .line 259
    .local v2, convertScale:J
    if-nez p3, :cond_1

    .line 261
    const-wide/16 v2, 0x400

    .line 269
    :cond_0
    :goto_0
    long-to-double v4, p1

    long-to-double v6, v2

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getDivisionValue(DD)D

    move-result-wide v4

    return-wide v4

    .line 262
    :cond_1
    const/4 v4, 0x1

    if-ne p3, v4, :cond_2

    .line 264
    const-wide/32 v2, 0x100000

    goto :goto_0

    .line 265
    :cond_2
    const/4 v4, 0x2

    if-ne p3, v4, :cond_0

    .line 267
    const-wide/32 v2, 0x40000000

    goto :goto_0
.end method

.method public getAppHistoryForUid(II)Landroid/net/NetworkStatsHistory;
    .locals 7
    .parameter "subscription"
    .parameter "uid"

    .prologue
    .line 289
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getNetTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    .line 290
    :catch_0
    move-exception v6

    .line 292
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "NetTrafficUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " error ====================="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppNetworkStats(IIJJ)Landroid/net/NetworkStats;
    .locals 9
    .parameter "subscription"
    .parameter "networktype"
    .parameter "statrTime"
    .parameter "endTime"

    .prologue
    .line 580
    if-nez p2, :cond_0

    .line 581
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getNetTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v1

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v0

    .line 591
    :goto_0
    return-object v0

    .line 583
    :cond_0
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getNetTemplateforWifi()Landroid/net/NetworkTemplate;

    move-result-object v1

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 586
    :catch_0
    move-exception v8

    .line 587
    .local v8, se:Ljava/lang/SecurityException;
    const-string v0, "NetTrafficUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppNetworkStats throws SecurityException  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/4 v0, 0x0

    goto :goto_0

    .line 589
    .end local v8           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v7

    .line 590
    .local v7, ne:Ljava/lang/NullPointerException;
    const-string v0, "NetTrafficUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppNetworkStats throws NullPointerException  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppNetworkStats(JJ)Landroid/net/NetworkStats;
    .locals 7
    .parameter "statrTime"
    .parameter "endTime"

    .prologue
    .line 281
    const/4 v1, -0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getAppNetworkStats(IIJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public getCalculateTime(Landroid/content/Context;I)J
    .locals 11
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v10, 0x1

    .line 118
    const/4 v4, 0x0

    .line 119
    .local v4, cycleStartMonth:I
    const/4 v2, 0x0

    .line 120
    .local v2, cycleEndMonth:I
    const/4 v3, 0x0

    .line 121
    .local v3, cycleStartDay:I
    const/4 v1, 0x0

    .line 123
    .local v1, cycleEndDay:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 124
    .local v6, localCalendar:Ljava/util/Calendar;
    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 125
    .local v8, year:I
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 126
    .local v7, month:I
    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 127
    .local v5, day:I
    invoke-static {p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v9

    invoke-virtual {v9}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getCalcDay()I

    move-result v0

    .line 128
    .local v0, calcDay:I
    const/4 v9, -0x1

    if-ne v9, v0, :cond_0

    .line 129
    const/4 v0, 0x1

    .line 131
    :cond_0
    if-gt v0, v5, :cond_1

    .line 132
    move v4, v7

    .line 136
    :goto_0
    add-int/lit8 v2, v4, 0x1

    .line 137
    move v1, v0

    move v3, v0

    .line 139
    if-nez p2, :cond_2

    .line 143
    sget-object v9, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    invoke-virtual {v9, v8, v4, v3}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getDateMills(III)J

    move-result-wide v9

    .line 151
    :goto_1
    return-wide v9

    .line 134
    :cond_1
    add-int/lit8 v4, v7, -0x1

    goto :goto_0

    .line 145
    :cond_2
    if-ne v10, p2, :cond_3

    .line 149
    sget-object v9, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    invoke-virtual {v9, v8, v2, v1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getDateMills(III)J

    move-result-wide v9

    goto :goto_1

    .line 151
    :cond_3
    const-wide/16 v9, 0x0

    goto :goto_1
.end method

.method public getCurrentDate()Ljava/lang/String;
    .locals 5

    .prologue
    .line 63
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 64
    .local v3, mDateFormat:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 65
    .local v1, localCalendar:Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 66
    .local v2, localDate:Ljava/util/Date;
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, dateStr:Ljava/lang/String;
    return-object v0
.end method

.method public getDateMills(III)J
    .locals 5
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 71
    .local v0, c:Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 72
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 73
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 74
    const/16 v3, 0xb

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 75
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 76
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 77
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 78
    .local v1, miliSecs:J
    return-wide v1
.end method

.method public getDivisionValue(DD)D
    .locals 6
    .parameter "divisor"
    .parameter "dividend"

    .prologue
    .line 168
    const-wide/16 v0, 0x0

    .line 170
    .local v0, accurateValue:D
    div-double v0, p1, p3

    .line 171
    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    .line 172
    .local v2, mValue:Ljava/math/BigDecimal;
    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    return-wide v3
.end method

.method public getIdleHoursOpen(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursOpen(I)Z

    move-result v0

    return v0
.end method

.method public getPercentValue(DD)J
    .locals 4
    .parameter "numerator"
    .parameter "denominator"

    .prologue
    .line 114
    div-double v0, p1, p3

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public getTimeMills(IIIII)J
    .locals 7
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 627
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeMills(IIIIII)J
    .locals 4
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "minute"
    .parameter "second"

    .prologue
    .line 630
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 631
    .local v0, c:Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 632
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 633
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 634
    const/16 v3, 0xb

    invoke-virtual {v0, v3, p4}, Ljava/util/Calendar;->set(II)V

    .line 635
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p5}, Ljava/util/Calendar;->set(II)V

    .line 636
    const/16 v3, 0xd

    invoke-virtual {v0, v3, p6}, Ljava/util/Calendar;->set(II)V

    .line 637
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 638
    .local v1, miliSecs:J
    return-wide v1
.end method

.method public getTrafficDayThreshold()J
    .locals 2

    .prologue
    .line 277
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficDayThreshold(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrafficDayThreshold(I)J
    .locals 3
    .parameter "subscription"

    .prologue
    .line 337
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v1, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getDayThreshold(I)I

    move-result v0

    .line 338
    .local v0, dayThreshold:I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 339
    const-wide/16 v1, 0x0

    .line 341
    :goto_0
    return-wide v1

    :cond_0
    int-to-long v1, v0

    goto :goto_0
.end method

.method public getTrafficDisplayString(D)Ljava/lang/String;
    .locals 10
    .parameter "initialValue"

    .prologue
    const/16 v9, 0x8

    const-wide/high16 v7, 0x4090

    .line 83
    const-wide/16 v2, 0x0

    .line 85
    .local v2, accurateValue:D
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "###.##"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 87
    .local v5, df:Ljava/text/DecimalFormat;
    cmpl-double v6, p1, v7

    if-lez v6, :cond_2

    .line 88
    invoke-virtual {p0, p1, p2, v7, v8}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getDivisionValue(DD)D

    move-result-wide v2

    .line 93
    invoke-virtual {v5, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, accurateG:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 95
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v6, "###.#"

    invoke-direct {v4, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 96
    .local v4, d:Ljava/text/DecimalFormat;
    invoke-virtual {v4, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .end local v4           #d:Ljava/text/DecimalFormat;
    :cond_0
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "G"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 109
    .end local v0           #accurateG:Ljava/lang/String;
    :goto_1
    return-object v6

    .line 97
    .restart local v0       #accurateG:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_0

    .line 98
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    .end local v0           #accurateG:Ljava/lang/String;
    :cond_2
    const-wide/high16 v6, 0x3ff0

    invoke-virtual {p0, p1, p2, v6, v7}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getDivisionValue(DD)D

    move-result-wide v2

    .line 108
    invoke-virtual {v5, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, accurateM:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "M"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public getTrafficMonthIdleHoursThreshold(I)J
    .locals 3
    .parameter "subscription"

    .prologue
    .line 642
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v1, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursMax(I)I

    move-result v0

    .line 643
    .local v0, monthThreshold:I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 644
    const-wide/16 v1, 0x0

    .line 646
    :goto_0
    return-wide v1

    :cond_0
    int-to-long v1, v0

    goto :goto_0
.end method

.method public getTrafficMonthIdleHoursUsed(I)D
    .locals 57
    .parameter "subscription"

    .prologue
    .line 697
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v27

    .line 698
    .local v27, c:Ljava/util/Calendar;
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v56

    .line 699
    .local v56, year:I
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v44

    .line 700
    .local v44, month:I
    const/4 v3, 0x5

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v33

    .line 702
    .local v33, day:I
    const/16 v40, 0x0

    .line 707
    .local v40, hasAdj:Z
    const-wide/16 v24, 0x0

    .line 709
    .local v24, adjValue:D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursStartHour(I)I

    move-result v7

    .line 710
    .local v7, startHour:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursStartMinute(I)I

    move-result v8

    .line 711
    .local v8, startMinute:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursEndHour(I)I

    move-result v13

    .line 712
    .local v13, endHour:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursEndMinute(I)I

    move-result v14

    .line 713
    .local v14, endMinute:I
    mul-int/lit8 v3, v7, 0x3c

    add-int v51, v3, v8

    .line 714
    .local v51, startTime:I
    mul-int/lit8 v3, v13, 0x3c

    add-int v38, v3, v14

    .line 716
    .local v38, endTime:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getCalcDay(I)I

    move-result v28

    .line 717
    .local v28, calcDay:I
    const/4 v3, -0x1

    move/from16 v0, v28

    if-ne v3, v0, :cond_0

    .line 718
    const/16 v28, 0x1

    .line 721
    :cond_0
    move/from16 v0, v28

    move/from16 v1, v33

    if-gt v0, v1, :cond_2

    .line 722
    move/from16 v32, v44

    .line 727
    .local v32, cycleStartMonth:I
    :goto_0
    add-int/lit8 v30, v32, 0x1

    .line 728
    .local v30, cycleEndMonth:I
    move/from16 v29, v28

    .local v29, cycleEndDay:I
    move/from16 v31, v28

    .line 730
    .local v31, cycleStartDay:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursStatsAdj(I)Ljava/lang/String;

    move-result-object v53

    .line 731
    .local v53, statsAdj:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 732
    const-string v3, "|"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v43

    .line 733
    .local v43, index:I
    const/4 v3, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v43

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 734
    .local v21, adjDate:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 735
    .local v26, adjYear:I
    const/4 v3, 0x4

    const/4 v4, 0x6

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v23, v3, -0x1

    .line 736
    .local v23, adjMon:I
    const/4 v3, 0x6

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 738
    .local v22, adjDay:I
    add-int/lit8 v3, v43, 0x1

    :try_start_0
    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v24

    .line 743
    :goto_1
    move/from16 v0, v26

    move/from16 v1, v56

    if-ne v0, v1, :cond_1

    .line 744
    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 745
    move/from16 v0, v22

    move/from16 v1, v28

    if-lt v0, v1, :cond_1

    .line 746
    move/from16 v31, v22

    .line 747
    move/from16 v29, v28

    .line 748
    const/16 v40, 0x1

    .line 765
    .end local v21           #adjDate:Ljava/lang/String;
    .end local v22           #adjDay:I
    .end local v23           #adjMon:I
    .end local v26           #adjYear:I
    .end local v43           #index:I
    :cond_1
    :goto_2
    move/from16 v0, v38

    move/from16 v1, v51

    if-lt v0, v1, :cond_5

    .line 766
    sget-object v3, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    const/16 v4, 0x7dd

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v49

    .line 767
    .local v49, startInOneDay:J
    sget-object v9, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    const/16 v10, 0x7dd

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {v9 .. v14}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v36

    .line 772
    .local v36, endInOneDay:J
    :goto_3
    sub-long v41, v36, v49

    .line 773
    .local v41, idleHour:J
    sget-object v15, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    const/16 v16, 0x7dd

    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v3

    sget-object v15, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    const/16 v16, 0x7dd

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v5

    sub-long v45, v3, v5

    .line 774
    .local v45, oneDay:J
    const-wide/16 v54, 0x0

    .line 776
    .local v54, totalBytes:J
    sget-object v3, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move/from16 v4, v56

    move/from16 v5, v32

    move/from16 v6, v31

    invoke-virtual/range {v3 .. v8}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v47

    .line 777
    .local v47, start:J
    sget-object v9, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move/from16 v10, v56

    move/from16 v11, v30

    move/from16 v12, v29

    invoke-virtual/range {v9 .. v14}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v34

    .line 779
    .local v34, end:J
    move-wide/from16 v17, v47

    .local v17, i:J
    :goto_4
    cmp-long v3, v17, v34

    if-gtz v3, :cond_6

    .line 781
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getNetTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v16

    add-long v19, v17, v41

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v20}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v52

    .line 782
    .local v52, stats:Landroid/net/NetworkStats;
    invoke-virtual/range {v52 .. v52}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v3

    add-long v54, v54, v3

    .line 779
    add-long v17, v17, v45

    goto :goto_4

    .line 724
    .end local v17           #i:J
    .end local v29           #cycleEndDay:I
    .end local v30           #cycleEndMonth:I
    .end local v31           #cycleStartDay:I
    .end local v32           #cycleStartMonth:I
    .end local v34           #end:J
    .end local v36           #endInOneDay:J
    .end local v41           #idleHour:J
    .end local v45           #oneDay:J
    .end local v47           #start:J
    .end local v49           #startInOneDay:J
    .end local v52           #stats:Landroid/net/NetworkStats;
    .end local v53           #statsAdj:Ljava/lang/String;
    .end local v54           #totalBytes:J
    :cond_2
    add-int/lit8 v32, v44, -0x1

    .restart local v32       #cycleStartMonth:I
    goto/16 :goto_0

    .line 739
    .restart local v21       #adjDate:Ljava/lang/String;
    .restart local v22       #adjDay:I
    .restart local v23       #adjMon:I
    .restart local v26       #adjYear:I
    .restart local v29       #cycleEndDay:I
    .restart local v30       #cycleEndMonth:I
    .restart local v31       #cycleStartDay:I
    .restart local v43       #index:I
    .restart local v53       #statsAdj:Ljava/lang/String;
    :catch_0
    move-exception v39

    .line 740
    .local v39, ex:Ljava/lang/Exception;
    const-string v3, "NetTrafficUtils"

    const-string v4, "exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 750
    .end local v39           #ex:Ljava/lang/Exception;
    :cond_3
    move/from16 v0, v23

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    .line 751
    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    .line 752
    move/from16 v32, v30

    .line 753
    move/from16 v31, v22

    .line 754
    move/from16 v29, v28

    .line 755
    const/16 v40, 0x1

    goto/16 :goto_2

    .line 760
    .end local v21           #adjDate:Ljava/lang/String;
    .end local v22           #adjDay:I
    .end local v23           #adjMon:I
    .end local v26           #adjYear:I
    .end local v43           #index:I
    :cond_4
    move/from16 v29, v28

    move/from16 v31, v28

    goto/16 :goto_2

    .line 769
    :cond_5
    sget-object v3, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    const/16 v4, 0x7dd

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v49

    .line 770
    .restart local v49       #startInOneDay:J
    sget-object v9, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    const/16 v10, 0x7dd

    const/4 v11, 0x1

    const/4 v12, 0x2

    invoke-virtual/range {v9 .. v14}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v36

    .restart local v36       #endInOneDay:J
    goto/16 :goto_3

    .line 783
    .restart local v17       #i:J
    .restart local v34       #end:J
    .restart local v41       #idleHour:J
    .restart local v45       #oneDay:J
    .restart local v47       #start:J
    .restart local v54       #totalBytes:J
    :catch_1
    move-exception v39

    .line 784
    .restart local v39       #ex:Ljava/lang/Exception;
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Exception;->printStackTrace()V

    .line 785
    const-wide/16 v3, 0x0

    .line 793
    .end local v39           #ex:Ljava/lang/Exception;
    :goto_5
    return-wide v3

    .line 789
    :cond_6
    const/4 v3, 0x1

    move/from16 v0, v40

    if-ne v0, v3, :cond_7

    .line 790
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/heartyservice/net/NetTrafficUtils;->convertBytes(JI)D

    move-result-wide v3

    add-double v3, v3, v24

    goto :goto_5

    .line 793
    :cond_7
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/heartyservice/net/NetTrafficUtils;->convertBytes(JI)D

    move-result-wide v3

    goto :goto_5
.end method

.method public getTrafficMonthThreshold()J
    .locals 2

    .prologue
    .line 273
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthThreshold(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrafficMonthThreshold(I)J
    .locals 3
    .parameter "subscription"

    .prologue
    .line 329
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v1, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonthThreshold(I)I

    move-result v0

    .line 330
    .local v0, monthThreshold:I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 331
    const-wide/16 v1, 0x0

    .line 333
    :goto_0
    return-wide v1

    :cond_0
    int-to-long v1, v0

    goto :goto_0
.end method

.method public getTrafficMonthUsed()D
    .locals 2

    .prologue
    .line 253
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthUsed(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTrafficMonthUsed(I)D
    .locals 37
    .parameter "subscription"

    .prologue
    .line 466
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursOpen(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 467
    invoke-direct/range {p0 .. p1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthRegularHoursUsed(I)D

    move-result-wide v3

    .line 571
    :goto_0
    return-wide v3

    .line 470
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v27

    .line 471
    .local v27, localCalendar:Ljava/util/Calendar;
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v35

    .line 472
    .local v35, year:I
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v28

    .line 473
    .local v28, month:I
    const/4 v3, 0x5

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v24

    .line 478
    .local v24, day:I
    const/16 v25, 0x0

    .line 481
    .local v25, hasAdj:Z
    const/16 v22, 0x0

    .line 482
    .local v22, cycleStartDay:I
    const/16 v20, 0x0

    .line 483
    .local v20, cycleEndDay:I
    const-wide/16 v12, 0x0

    .line 486
    .local v12, adjValue:D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getCalcDay(I)I

    move-result v19

    .line 487
    .local v19, calcDay:I
    const/4 v3, -0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_1

    .line 488
    const/16 v19, 0x1

    .line 490
    :cond_1
    move/from16 v0, v19

    move/from16 v1, v24

    if-gt v0, v1, :cond_3

    .line 491
    move/from16 v23, v28

    .line 495
    .local v23, cycleStartMonth:I
    :goto_1
    add-int/lit8 v21, v23, 0x1

    .line 496
    .local v21, cycleEndMonth:I
    move/from16 v20, v19

    move/from16 v22, v19

    .line 503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getStatsAdj(I)Ljava/lang/String;

    move-result-object v32

    .line 504
    .local v32, statsAdj:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 505
    const-string v3, "|"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    .line 506
    .local v26, index:I
    const/4 v3, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 507
    .local v9, adjDate:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 508
    .local v14, adjYear:I
    const/4 v3, 0x4

    const/4 v4, 0x6

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v11, v3, -0x1

    .line 509
    .local v11, adjMon:I
    const/4 v3, 0x6

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 511
    .local v10, adjDay:I
    add-int/lit8 v3, v26, 0x1

    :try_start_0
    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v12

    .line 520
    :goto_2
    move/from16 v0, v35

    if-ne v14, v0, :cond_2

    .line 521
    move/from16 v0, v23

    if-ne v11, v0, :cond_4

    .line 522
    move/from16 v0, v19

    if-lt v10, v0, :cond_2

    .line 523
    move/from16 v22, v10

    .line 524
    move/from16 v20, v19

    .line 525
    const/16 v25, 0x1

    .line 549
    :cond_2
    :goto_3
    sget-object v3, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move/from16 v0, v35

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v3, v0, v1, v2}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getDateMills(III)J

    move-result-wide v5

    .line 550
    .local v5, start:J
    sget-object v3, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move/from16 v0, v35

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v3, v0, v1, v2}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getDateMills(III)J

    move-result-wide v7

    .line 551
    .local v7, end:J
    const-wide/16 v33, 0x0

    .line 556
    .local v33, totalBytes:J
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getNetTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v4

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v31

    .line 558
    .local v31, stats:Landroid/net/NetworkStats;
    invoke-virtual/range {v31 .. v31}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v33

    .line 559
    const-string v3, "NetTrafficUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "getTrafficMonthUsed: month used is: "

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v33

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 568
    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_6

    .line 569
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/heartyservice/net/NetTrafficUtils;->convertBytes(JI)D

    move-result-wide v3

    add-double/2addr v3, v12

    goto/16 :goto_0

    .line 493
    .end local v5           #start:J
    .end local v7           #end:J
    .end local v9           #adjDate:Ljava/lang/String;
    .end local v10           #adjDay:I
    .end local v11           #adjMon:I
    .end local v14           #adjYear:I
    .end local v21           #cycleEndMonth:I
    .end local v23           #cycleStartMonth:I
    .end local v26           #index:I
    .end local v31           #stats:Landroid/net/NetworkStats;
    .end local v32           #statsAdj:Ljava/lang/String;
    .end local v33           #totalBytes:J
    :cond_3
    add-int/lit8 v23, v28, -0x1

    .restart local v23       #cycleStartMonth:I
    goto/16 :goto_1

    .line 527
    .restart local v9       #adjDate:Ljava/lang/String;
    .restart local v10       #adjDay:I
    .restart local v11       #adjMon:I
    .restart local v14       #adjYear:I
    .restart local v21       #cycleEndMonth:I
    .restart local v26       #index:I
    .restart local v32       #statsAdj:Ljava/lang/String;
    :cond_4
    move/from16 v0, v21

    if-ne v11, v0, :cond_2

    .line 528
    move/from16 v0, v19

    if-ge v10, v0, :cond_2

    .line 529
    move/from16 v23, v21

    .line 530
    move/from16 v22, v10

    .line 531
    move/from16 v20, v19

    .line 532
    const/16 v25, 0x1

    goto :goto_3

    .line 537
    .end local v9           #adjDate:Ljava/lang/String;
    .end local v10           #adjDay:I
    .end local v11           #adjMon:I
    .end local v14           #adjYear:I
    .end local v26           #index:I
    :cond_5
    move/from16 v20, v19

    move/from16 v22, v19

    .line 539
    invoke-virtual/range {p0 .. p1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthIdleHoursUsed(I)D

    move-result-wide v15

    .line 540
    .local v15, allIdle:D
    invoke-direct/range {p0 .. p1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthRegularHoursUsed(I)D

    move-result-wide v17

    .line 541
    .local v17, allRegular:D
    add-double v3, v15, v17

    goto/16 :goto_0

    .line 560
    .end local v15           #allIdle:D
    .end local v17           #allRegular:D
    .restart local v5       #start:J
    .restart local v7       #end:J
    .restart local v9       #adjDate:Ljava/lang/String;
    .restart local v10       #adjDay:I
    .restart local v11       #adjMon:I
    .restart local v14       #adjYear:I
    .restart local v26       #index:I
    .restart local v33       #totalBytes:J
    :catch_0
    move-exception v30

    .line 561
    .local v30, se:Ljava/lang/SecurityException;
    const-string v3, "NetTrafficUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "getTrafficMonthUsed throws SecurityException  "

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const-wide/16 v3, 0x0

    goto/16 :goto_0

    .line 563
    .end local v30           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v29

    .line 564
    .local v29, ne:Ljava/lang/NullPointerException;
    const-string v3, "NetTrafficUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "getTrafficMonthUsed throws NullPointerException  "

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const-wide/16 v3, 0x0

    goto/16 :goto_0

    .line 571
    .end local v29           #ne:Ljava/lang/NullPointerException;
    .restart local v31       #stats:Landroid/net/NetworkStats;
    :cond_6
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/heartyservice/net/NetTrafficUtils;->convertBytes(JI)D

    move-result-wide v3

    goto/16 :goto_0

    .line 512
    .end local v5           #start:J
    .end local v7           #end:J
    .end local v31           #stats:Landroid/net/NetworkStats;
    .end local v33           #totalBytes:J
    :catch_2
    move-exception v3

    goto/16 :goto_2
.end method

.method public getTrafficTodayIdleHoursUsed(I)D
    .locals 34
    .parameter "subscription"

    .prologue
    .line 650
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v27

    .line 651
    .local v27, c:Ljava/util/Calendar;
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 652
    .local v4, year:I
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 653
    .local v5, month:I
    const/4 v3, 0x5

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 655
    .local v6, day:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursStartHour(I)I

    move-result v7

    .line 656
    .local v7, startHour:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursStartMinute(I)I

    move-result v8

    .line 657
    .local v8, startMinute:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursEndHour(I)I

    move-result v13

    .line 658
    .local v13, endHour:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursEndMinute(I)I

    move-result v14

    .line 659
    .local v14, endMinute:I
    mul-int/lit8 v3, v7, 0x3c

    add-int v30, v3, v8

    .line 660
    .local v30, startTime:I
    mul-int/lit8 v3, v13, 0x3c

    add-int v28, v3, v14

    .line 662
    .local v28, endTime:I
    const-wide/16 v32, 0x0

    .line 663
    .local v32, totalBytes:J
    move/from16 v0, v28

    move/from16 v1, v30

    if-lt v0, v1, :cond_0

    .line 664
    sget-object v3, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    invoke-virtual/range {v3 .. v8}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v17

    .line 665
    .local v17, start:J
    sget-object v9, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual/range {v9 .. v14}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v19

    .line 667
    .local v19, end:J
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getNetTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v16

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v20}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v31

    .line 668
    .local v31, stats:Landroid/net/NetworkStats;
    invoke-virtual/range {v31 .. v31}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v32

    .line 692
    .end local v31           #stats:Landroid/net/NetworkStats;
    :goto_0
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/heartyservice/net/NetTrafficUtils;->convertBytes(JI)D

    move-result-wide v9

    return-wide v9

    .line 669
    :catch_0
    move-exception v29

    .line 670
    .local v29, ex:Ljava/lang/Exception;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 673
    .end local v17           #start:J
    .end local v19           #end:J
    .end local v29           #ex:Ljava/lang/Exception;
    :cond_0
    sget-object v21, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v6

    invoke-virtual/range {v21 .. v26}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v17

    .line 674
    .restart local v17       #start:J
    sget-object v9, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual/range {v9 .. v14}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v19

    .line 676
    .restart local v19       #end:J
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getNetTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v16

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v20}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v31

    .line 677
    .restart local v31       #stats:Landroid/net/NetworkStats;
    invoke-virtual/range {v31 .. v31}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v32

    .line 682
    .end local v31           #stats:Landroid/net/NetworkStats;
    :goto_1
    sget-object v3, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    invoke-virtual/range {v3 .. v8}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v17

    .line 683
    sget-object v21, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    add-int/lit8 v24, v6, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v22, v4

    move/from16 v23, v5

    invoke-virtual/range {v21 .. v26}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v19

    .line 685
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getNetTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v16

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v20}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v31

    .line 686
    .restart local v31       #stats:Landroid/net/NetworkStats;
    invoke-virtual/range {v31 .. v31}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v9

    add-long v32, v32, v9

    goto :goto_0

    .line 678
    .end local v31           #stats:Landroid/net/NetworkStats;
    :catch_1
    move-exception v29

    .line 679
    .restart local v29       #ex:Ljava/lang/Exception;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 687
    .end local v29           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v29

    .line 688
    .restart local v29       #ex:Ljava/lang/Exception;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getTrafficTodayRegularHoursUsed(I)D
    .locals 38
    .parameter "subscription"

    .prologue
    .line 819
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v33

    .line 820
    .local v33, localCalendar:Ljava/util/Calendar;
    const/4 v3, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 821
    .local v4, year:I
    const/4 v3, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 822
    .local v5, month:I
    const/4 v3, 0x5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 823
    .local v6, day:I
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficUsedByDate(IIII)J

    move-result-wide v27

    .line 826
    .local v27, allToday:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursStartHour(I)I

    move-result v7

    .line 827
    .local v7, startHour:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursStartMinute(I)I

    move-result v8

    .line 828
    .local v8, startMinute:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursEndHour(I)I

    move-result v13

    .line 829
    .local v13, endHour:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursEndMinute(I)I

    move-result v14

    .line 830
    .local v14, endMinute:I
    mul-int/lit8 v3, v7, 0x3c

    add-int v36, v3, v8

    .line 831
    .local v36, startTime:I
    mul-int/lit8 v3, v13, 0x3c

    add-int v29, v3, v14

    .line 833
    .local v29, endTime:I
    const-wide/16 v31, 0x0

    .line 834
    .local v31, idleToday:J
    move/from16 v0, v29

    move/from16 v1, v36

    if-lt v0, v1, :cond_0

    .line 835
    sget-object v3, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    invoke-virtual/range {v3 .. v8}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v17

    .line 836
    .local v17, start:J
    sget-object v9, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual/range {v9 .. v14}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v19

    .line 838
    .local v19, end:J
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getNetTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v16

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v20}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v37

    .line 839
    .local v37, stats:Landroid/net/NetworkStats;
    invoke-virtual/range {v37 .. v37}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v31

    .line 863
    .end local v37           #stats:Landroid/net/NetworkStats;
    :goto_0
    sub-long v34, v27, v31

    .line 864
    .local v34, regular:J
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/heartyservice/net/NetTrafficUtils;->convertBytes(JI)D

    move-result-wide v9

    return-wide v9

    .line 840
    .end local v34           #regular:J
    :catch_0
    move-exception v30

    .line 841
    .local v30, ex:Ljava/lang/Exception;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 844
    .end local v17           #start:J
    .end local v19           #end:J
    .end local v30           #ex:Ljava/lang/Exception;
    :cond_0
    sget-object v21, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v6

    invoke-virtual/range {v21 .. v26}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v17

    .line 845
    .restart local v17       #start:J
    sget-object v9, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual/range {v9 .. v14}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v19

    .line 847
    .restart local v19       #end:J
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getNetTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v16

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v20}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v37

    .line 848
    .restart local v37       #stats:Landroid/net/NetworkStats;
    invoke-virtual/range {v37 .. v37}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v31

    .line 853
    .end local v37           #stats:Landroid/net/NetworkStats;
    :goto_1
    sget-object v3, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    invoke-virtual/range {v3 .. v8}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v17

    .line 854
    sget-object v21, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    add-int/lit8 v24, v6, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v22, v4

    move/from16 v23, v5

    invoke-virtual/range {v21 .. v26}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTimeMills(IIIII)J

    move-result-wide v19

    .line 856
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getNetTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v16

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v20}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v37

    .line 857
    .restart local v37       #stats:Landroid/net/NetworkStats;
    invoke-virtual/range {v37 .. v37}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v9

    add-long v31, v31, v9

    goto :goto_0

    .line 849
    .end local v37           #stats:Landroid/net/NetworkStats;
    :catch_1
    move-exception v30

    .line 850
    .restart local v30       #ex:Ljava/lang/Exception;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 858
    .end local v30           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v30

    .line 859
    .restart local v30       #ex:Ljava/lang/Exception;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getTrafficTodayUsed()D
    .locals 2

    .prologue
    .line 249
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficTodayUsed(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTrafficTodayUsed(I)D
    .locals 7
    .parameter "subscription"

    .prologue
    const/4 v6, 0x1

    .line 597
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v4, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursOpen(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 598
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficTodayRegularHoursUsed(I)D

    move-result-wide v4

    .line 605
    :goto_0
    return-wide v4

    .line 601
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 602
    .local v1, localCalendar:Ljava/util/Calendar;
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 603
    .local v3, year:I
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 604
    .local v2, month:I
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 605
    .local v0, day:I
    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficUsedByDate(IIII)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v6}, Lcom/zte/heartyservice/net/NetTrafficUtils;->convertBytes(JI)D

    move-result-wide v4

    goto :goto_0
.end method

.method public getTrafficUsedByDate(III)J
    .locals 2
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 245
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficUsedByDate(IIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrafficUsedByDate(IIII)J
    .locals 15
    .parameter "subscription"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 416
    sget-object v3, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v3, v0, v1, v2}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getDateMills(III)J

    move-result-wide v5

    .line 417
    .local v5, start:J
    const-wide/32 v3, 0x5265c00

    add-long v7, v5, v3

    .line 418
    .local v7, end:J
    const-wide/16 v12, 0x0

    .line 423
    .local v12, totalBytes:J
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getNetTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v4

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v11

    .line 425
    .local v11, stats:Landroid/net/NetworkStats;
    invoke-virtual {v11}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v12

    .line 426
    const-string v3, "NetTrafficUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getTrafficUsedByDate: this day used is: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-wide v3, v12

    .line 434
    .end local v11           #stats:Landroid/net/NetworkStats;
    :goto_0
    return-wide v3

    .line 427
    :catch_0
    move-exception v10

    .line 428
    .local v10, se:Ljava/lang/SecurityException;
    const-string v3, "NetTrafficUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getTrafficUsedByDate throws SecurityException  "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 430
    .end local v10           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v9

    .line 431
    .local v9, ne:Ljava/lang/NullPointerException;
    const-string v3, "NetTrafficUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getTrafficUsedByDate throws NullPointerException  "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-wide/16 v3, 0x0

    goto :goto_0
.end method

.method public getWifiTrafficUsedByDate(III)J
    .locals 12
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 442
    sget-object v0, Lcom/zte/heartyservice/net/NetTrafficUtils;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getDateMills(III)J

    move-result-wide v2

    .line 443
    .local v2, start:J
    const-wide/32 v0, 0x5265c00

    add-long v4, v2, v0

    .line 444
    .local v4, end:J
    const-wide/16 v9, 0x0

    .line 449
    .local v9, totalBytes:J
    :try_start_0
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getNetTemplateforWifi()Landroid/net/NetworkTemplate;

    move-result-object v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v8

    .line 451
    .local v8, stats:Landroid/net/NetworkStats;
    invoke-virtual {v8}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v9

    .line 452
    const-string v0, "NetTrafficUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getWifiTrafficUsedByDate: this day wifi used is: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-wide v0, v9

    .line 460
    .end local v8           #stats:Landroid/net/NetworkStats;
    :goto_0
    return-wide v0

    .line 453
    :catch_0
    move-exception v7

    .line 454
    .local v7, se:Ljava/lang/SecurityException;
    const-string v0, "NetTrafficUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getTrafficUsedByDate throws SecurityException  "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 456
    .end local v7           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v6

    .line 457
    .local v6, ne:Ljava/lang/NullPointerException;
    const-string v0, "NetTrafficUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getTrafficUsedByDate throws NullPointerException  "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public isNowInIdleHour(I)Z
    .locals 13
    .parameter "subscription"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 987
    iget-object v12, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v12, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursStartHour(I)I

    move-result v7

    .line 988
    .local v7, startHour:I
    iget-object v12, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v12, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursStartMinute(I)I

    move-result v8

    .line 989
    .local v8, startMinute:I
    iget-object v12, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v12, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursEndHour(I)I

    move-result v0

    .line 990
    .local v0, endHour:I
    iget-object v12, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v12, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursEndMinute(I)I

    move-result v1

    .line 991
    .local v1, endMinute:I
    mul-int/lit8 v12, v7, 0x3c

    add-int v9, v12, v8

    .line 992
    .local v9, startTime:I
    mul-int/lit8 v12, v0, 0x3c

    add-int v2, v12, v1

    .line 994
    .local v2, endTime:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 995
    .local v3, localCalendar:Ljava/util/Calendar;
    const/16 v12, 0xb

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 996
    .local v4, nowHour:I
    const/16 v12, 0xc

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 997
    .local v5, nowMinute:I
    mul-int/lit8 v12, v4, 0x3c

    add-int v6, v12, v5

    .line 999
    .local v6, nowTime:I
    if-lt v2, v9, :cond_2

    .line 1000
    if-lt v6, v9, :cond_1

    if-gt v6, v2, :cond_1

    .line 1011
    :cond_0
    :goto_0
    return v10

    :cond_1
    move v10, v11

    .line 1003
    goto :goto_0

    .line 1006
    :cond_2
    if-ltz v6, :cond_3

    if-le v6, v2, :cond_0

    .line 1008
    :cond_3
    if-ge v6, v9, :cond_0

    move v10, v11

    .line 1011
    goto :goto_0
.end method

.method public isOverIdleHoursLimit(I)Z
    .locals 7
    .parameter "subscription"

    .prologue
    const/4 v4, 0x0

    .line 799
    iget-object v5, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v5, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursMax(I)I

    move-result v5

    int-to-double v0, v5

    .line 800
    .local v0, idleHoursThreadshold:D
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthIdleHoursUsed(I)D

    move-result-wide v2

    .line 801
    .local v2, idleHoursUsed:D
    const-wide/high16 v5, -0x4010

    cmpl-double v5, v0, v5

    if-nez v5, :cond_1

    .line 807
    :cond_0
    :goto_0
    return v4

    .line 804
    :cond_1
    cmpl-double v5, v2, v0

    if-lez v5, :cond_0

    .line 805
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public isOverMonthLimit()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->isOverMonthLimit(I)Z

    move-result v0

    return v0
.end method

.method public isOverMonthLimit(I)Z
    .locals 12
    .parameter "subscription"

    .prologue
    const-wide/high16 v10, 0x4059

    .line 379
    const/4 v6, 0x0

    .line 380
    .local v6, overMonthLimit:Z
    const-wide/16 v2, 0x0

    .line 384
    .local v2, monthThresholdStats:D
    iget-object v8, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v8, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursOpen(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 385
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthRegularHoursUsed(I)D

    move-result-wide v4

    .line 390
    .local v4, monthUsed:D
    :goto_0
    iget-object v8, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v8, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonthThreshold(I)I

    move-result v8

    int-to-long v0, v8

    .line 391
    .local v0, monthThreshold:J
    iget-object v8, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v8, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonthFlowWarnPct(I)I

    move-result v7

    .line 393
    .local v7, percent:I
    const-wide/16 v8, -0x1

    cmp-long v8, v8, v0

    if-nez v8, :cond_1

    .line 394
    const/4 v8, 0x0

    .line 408
    :goto_1
    return v8

    .line 387
    .end local v0           #monthThreshold:J
    .end local v4           #monthUsed:D
    .end local v7           #percent:I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthUsed(I)D

    move-result-wide v4

    .restart local v4       #monthUsed:D
    goto :goto_0

    .line 397
    .restart local v0       #monthThreshold:J
    .restart local v7       #percent:I
    :cond_1
    const/4 v8, -0x1

    if-ne v8, v7, :cond_3

    .line 398
    const-wide/16 v8, 0x5a

    mul-long/2addr v8, v0

    long-to-double v8, v8

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getDivisionValue(DD)D

    move-result-wide v2

    .line 403
    :goto_2
    cmpl-double v8, v4, v2

    if-lez v8, :cond_2

    .line 404
    const/4 v6, 0x1

    :cond_2
    move v8, v6

    .line 408
    goto :goto_1

    .line 400
    :cond_3
    int-to-long v8, v7

    mul-long/2addr v8, v0

    long-to-double v8, v8

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getDivisionValue(DD)D

    move-result-wide v2

    goto :goto_2
.end method

.method public isOverTodayLimit()Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->isOverTodayLimit(I)Z

    move-result v0

    return v0
.end method

.method public isOverTodayLimit(I)Z
    .locals 13
    .parameter "subscription"

    .prologue
    const-wide/16 v10, -0x1

    .line 345
    const/4 v6, 0x0

    .line 350
    .local v6, overDayLimit:Z
    iget-object v9, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v9, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursOpen(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 351
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficTodayRegularHoursUsed(I)D

    move-result-wide v7

    .line 356
    .local v7, todayUsed:D
    :goto_0
    iget-object v9, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v9, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getDayThreshold(I)I

    move-result v9

    int-to-long v0, v9

    .line 357
    .local v0, dayThreshold:J
    iget-object v9, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v9, p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonthThreshold(I)I

    move-result v9

    int-to-long v4, v9

    .line 359
    .local v4, monthThreshold:J
    cmp-long v9, v10, v0

    if-nez v9, :cond_1

    cmp-long v9, v10, v4

    if-nez v9, :cond_1

    .line 360
    const/4 v9, 0x0

    .line 374
    :goto_1
    return v9

    .line 353
    .end local v0           #dayThreshold:J
    .end local v4           #monthThreshold:J
    .end local v7           #todayUsed:D
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficTodayUsed(I)D

    move-result-wide v7

    .restart local v7       #todayUsed:D
    goto :goto_0

    .line 363
    .restart local v0       #dayThreshold:J
    .restart local v4       #monthThreshold:J
    :cond_1
    cmp-long v9, v10, v0

    if-nez v9, :cond_3

    .line 364
    long-to-double v9, v4

    const-wide/high16 v11, 0x403e

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getDivisionValue(DD)D

    move-result-wide v2

    .line 369
    .local v2, dayThresholdStats:D
    :goto_2
    cmpl-double v9, v7, v2

    if-lez v9, :cond_2

    .line 370
    const/4 v6, 0x1

    :cond_2
    move v9, v6

    .line 374
    goto :goto_1

    .line 366
    .end local v2           #dayThresholdStats:D
    :cond_3
    long-to-double v2, v0

    .restart local v2       #dayThresholdStats:D
    goto :goto_2
.end method

.method public refreshNetStats()V
    .locals 5

    .prologue
    .line 156
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficUtils;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 165
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NetTrafficUtils"

    const-string v3, "Failed to fetch network stats."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 161
    .local v1, se:Ljava/lang/SecurityException;
    const-string v2, "NetTrafficUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshNetStats throws SecurityException  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "NetTrafficUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "has a IllegalStateException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
