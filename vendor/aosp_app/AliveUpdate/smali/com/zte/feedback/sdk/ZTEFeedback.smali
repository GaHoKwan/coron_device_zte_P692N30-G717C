.class public Lcom/zte/feedback/sdk/ZTEFeedback;
.super Ljava/lang/Object;
.source "ZTEFeedback.java"


# static fields
.field private static appContext:Landroid/content/Context;

.field public static final sync:[Ljava/lang/Byte;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/feedback/sdk/ZTEFeedback;->appContext:Landroid/content/Context;

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Byte;

    sput-object v0, Lcom/zte/feedback/sdk/ZTEFeedback;->sync:[Ljava/lang/Byte;

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static init()V
    .locals 16

    .prologue
    .line 52
    sget-boolean v1, Lcom/zte/feedback/sdk/GlobalInfo;->initialized:Z

    if-eqz v1, :cond_0

    .line 53
    const-string v1, "Already initialized..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/zte/feedback/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    .local v0, gc:Ljava/util/GregorianCalendar;
    .local v10, errorString:Ljava/lang/String;
    .local v11, market:Ljava/lang/String;
    .local v14, tm:Landroid/telephony/TelephonyManager;
    .local v15, uid:Ljava/lang/String;
    :goto_0
    return-void

    .line 56
    .end local v0           #gc:Ljava/util/GregorianCalendar;
    .end local v10           #errorString:Ljava/lang/String;
    .end local v11           #market:Ljava/lang/String;
    .end local v14           #tm:Landroid/telephony/TelephonyManager;
    .end local v15           #uid:Ljava/lang/String;
    :cond_0
    const-string v1, "Initializing..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/zte/feedback/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7d0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 59
    .restart local v0       #gc:Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 60
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    sput-wide v1, Lcom/zte/feedback/sdk/GlobalInfo;->criterion:J

    .line 62
    const/4 v15, 0x0

    .line 63
    .restart local v15       #uid:Ljava/lang/String;
    const/4 v11, 0x0

    .line 65
    .restart local v11       #market:Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/zte/feedback/sdk/ZTEFeedback;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/zte/feedback/sdk/ZTEFeedback;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 66
    const/16 v3, 0x80

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 67
    .local v7, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_1

    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "appuid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "appuid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 70
    :cond_1
    if-eqz v7, :cond_2

    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "marketinfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "marketinfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 80
    .end local v7           #ai:Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_1
    const-string v10, "No ZTEStatistics api key specified. Please make sure you have specified your api key in your AndroidManifest.xml"

    .line 81
    .restart local v10       #errorString:Ljava/lang/String;
    if-eqz v15, :cond_3

    const-string v1, ""

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 82
    :cond_3
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v10, v1}, Lcom/zte/feedback/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_4
    if-eqz v11, :cond_5

    const-string v1, ""

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 86
    :cond_5
    const-string v11, "preload"

    .line 89
    :cond_6
    sput-object v15, Lcom/zte/feedback/sdk/GlobalInfo;->apiKey:Ljava/lang/String;

    .line 90
    sput-object v11, Lcom/zte/feedback/sdk/GlobalInfo;->market:Ljava/lang/String;

    .line 93
    sget-object v1, Lcom/zte/feedback/sdk/ZTEFeedback;->appContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    .line 94
    .restart local v14       #tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/feedback/sdk/GlobalInfo;->carrier:Ljava/lang/String;

    .line 95
    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/feedback/sdk/GlobalInfo;->currentCarrier:Ljava/lang/String;

    .line 96
    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    sput v1, Lcom/zte/feedback/sdk/GlobalInfo;->networkType:I

    .line 97
    sget-object v1, Lcom/zte/feedback/sdk/ZTEFeedback;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/feedback/sdk/GlobalInfo;->appPackage:Ljava/lang/String;

    .line 98
    sget-object v1, Lcom/zte/feedback/sdk/ZTEFeedback;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 99
    const-string v2, "android_id"

    .line 98
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/feedback/sdk/GlobalInfo;->androidId:Ljava/lang/String;

    .line 100
    sget-object v1, Lcom/zte/feedback/sdk/ZTEFeedback;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/feedback/sdk/util/Util;->getUserEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/feedback/sdk/GlobalInfo;->userEmail:Ljava/lang/String;

    .line 101
    sget-object v1, Lcom/zte/feedback/sdk/ZTEFeedback;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/feedback/sdk/util/Util;->getUserPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/feedback/sdk/GlobalInfo;->userPhone:Ljava/lang/String;

    .line 103
    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 104
    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/feedback/sdk/GlobalInfo;->imei:Ljava/lang/String;

    .line 110
    :goto_2
    sget-object v1, Lcom/zte/feedback/sdk/GlobalInfo;->imei:Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/feedback/sdk/util/Util;->transferDid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/feedback/sdk/GlobalInfo;->imei:Ljava/lang/String;

    .line 114
    :try_start_1
    sget-object v1, Lcom/zte/feedback/sdk/ZTEFeedback;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 115
    .local v13, packageManager:Landroid/content/pm/PackageManager;
    sget-object v1, Lcom/zte/feedback/sdk/ZTEFeedback;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 116
    .local v12, packageInfo:Landroid/content/pm/PackageInfo;
    iget v8, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 118
    .local v8, currentVersionCode:I
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/feedback/sdk/GlobalInfo;->version:Ljava/lang/String;

    .line 120
    iget-object v1, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    sput-object v1, Lcom/zte/feedback/sdk/GlobalInfo;->appDisplayName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    .end local v8           #currentVersionCode:I
    .end local v12           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v13           #packageManager:Landroid/content/pm/PackageManager;
    :goto_3
    const/4 v1, 0x1

    sput-boolean v1, Lcom/zte/feedback/sdk/GlobalInfo;->initialized:Z

    .line 129
    const-string v1, "Done initializing..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/zte/feedback/sdk/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 74
    .end local v10           #errorString:Ljava/lang/String;
    .end local v14           #tm:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v9

    .line 75
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "Unexpected error while reading application info."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v9, v2}, Lcom/zte/feedback/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 106
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v10       #errorString:Ljava/lang/String;
    .restart local v14       #tm:Landroid/telephony/TelephonyManager;
    :cond_7
    const-string v1, "NO IMEI"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/zte/feedback/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    sget-object v1, Lcom/zte/feedback/sdk/comm/ConstantDefine;->defualtIMEI:Ljava/lang/String;

    sput-object v1, Lcom/zte/feedback/sdk/GlobalInfo;->imei:Ljava/lang/String;

    goto :goto_2

    .line 123
    :catch_1
    move-exception v9

    .line 125
    .local v9, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "this app"

    sput-object v1, Lcom/zte/feedback/sdk/GlobalInfo;->appDisplayName:Ljava/lang/String;

    goto :goto_3
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    sget-object v1, Lcom/zte/feedback/sdk/ZTEFeedback;->sync:[Ljava/lang/Byte;

    monitor-enter v1

    .line 45
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/zte/feedback/sdk/ZTEFeedback;->appContext:Landroid/content/Context;

    .line 46
    invoke-static {}, Lcom/zte/feedback/sdk/ZTEFeedback;->init()V

    .line 44
    monitor-exit v1

    .line 48
    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static sendFeedBackDirect(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "content"
    .parameter "contactInfo"

    .prologue
    .line 139
    sget-object v4, Lcom/zte/feedback/sdk/ZTEFeedback;->sync:[Ljava/lang/Byte;

    monitor-enter v4

    .line 140
    :try_start_0
    new-instance v1, Lcom/zte/feedback/sdk/offline/FeedbackPayload;

    invoke-direct {v1}, Lcom/zte/feedback/sdk/offline/FeedbackPayload;-><init>()V

    .line 141
    .local v1, feedback:Lcom/zte/feedback/sdk/offline/FeedbackPayload;
    invoke-virtual {v1, p1}, Lcom/zte/feedback/sdk/offline/FeedbackPayload;->setContactInfo(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1, p0}, Lcom/zte/feedback/sdk/offline/FeedbackPayload;->setFeedback(Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;

    invoke-direct {v0}, Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;-><init>()V

    .line 144
    .local v0, client:Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;
    invoke-virtual {v1}, Lcom/zte/feedback/sdk/offline/FeedbackPayload;->getAsJSON()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;->postJSON(Ljava/lang/String;)I

    move-result v2

    .line 145
    .local v2, result:I
    const/16 v3, 0xc8

    if-lt v2, v3, :cond_0

    const/16 v3, 0x12c

    if-ge v2, v3, :cond_0

    .line 146
    monitor-exit v4

    const/4 v3, 0x1

    .line 148
    :goto_0
    return v3

    :cond_0
    monitor-exit v4

    const/4 v3, 0x0

    goto :goto_0

    .line 139
    .end local v0           #client:Lcom/zte/feedback/sdk/comm/ZTEFeedbackClient;
    .end local v1           #feedback:Lcom/zte/feedback/sdk/offline/FeedbackPayload;
    .end local v2           #result:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
