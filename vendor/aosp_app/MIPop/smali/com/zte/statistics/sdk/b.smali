.class public Lcom/zte/statistics/sdk/b;
.super Ljava/lang/Object;


# static fields
.field private static dI:Landroid/content/Context;

.field public static final dJ:[Ljava/lang/Byte;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/statistics/sdk/b;->dI:Landroid/content/Context;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Byte;

    sput-object v0, Lcom/zte/statistics/sdk/b;->dJ:[Ljava/lang/Byte;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static U()V
    .locals 2

    sget-object v1, Lcom/zte/statistics/sdk/b;->dJ:[Ljava/lang/Byte;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zte/statistics/sdk/b;->dI:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/statistics/sdk/a/b;->l(Landroid/content/Context;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(Lcom/zte/statistics/sdk/d;)V
    .locals 2

    sget-object v1, Lcom/zte/statistics/sdk/b;->dJ:[Ljava/lang/Byte;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/a/a;->P()Lcom/zte/statistics/sdk/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/statistics/sdk/a/a;->a(Lcom/zte/statistics/sdk/d;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, ""

    if-ne p0, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine;->dB:Ljava/lang/String;

    sput-object v0, Lcom/zte/statistics/sdk/a;->dl:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    sput-object p0, Lcom/zte/statistics/sdk/a;->dl:Ljava/lang/String;

    goto :goto_0
.end method

.method public static clear()V
    .locals 2

    sget-object v1, Lcom/zte/statistics/sdk/b;->dJ:[Ljava/lang/Byte;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zte/statistics/sdk/b;->dI:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/statistics/sdk/a/b;->k(Landroid/content/Context;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static init()V
    .locals 9

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    sget-boolean v0, Lcom/zte/statistics/sdk/a;->dc:Z

    if-eqz v0, :cond_0

    const-string v0, "Already initialized..."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Initializing..."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7d0

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string v3, "GMT"

    invoke-direct {v1, v4, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    div-long/2addr v0, v5

    sput-wide v0, Lcom/zte/statistics/sdk/a;->dk:J

    :try_start_0
    sget-object v0, Lcom/zte/statistics/sdk/b;->dI:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/zte/statistics/sdk/b;->dI:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_7

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "appuid"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "appuid"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_6

    :try_start_1
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_6

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "marketinfo"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "marketinfo"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_2
    const-string v3, "No ZTEStatistics api key specified. Please make sure you have specified your api key in your AndroidManifest.xml"

    if-eqz v1, :cond_1

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/zte/statistics/sdk/c;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_3

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-string v0, "preload"

    :cond_4
    sput-object v1, Lcom/zte/statistics/sdk/a;->dg:Ljava/lang/String;

    sput-object v0, Lcom/zte/statistics/sdk/a;->dh:Ljava/lang/String;

    sget-object v0, Lcom/zte/statistics/sdk/b;->dI:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/statistics/sdk/a;->carrier:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/statistics/sdk/a;->dd:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    sput v1, Lcom/zte/statistics/sdk/a;->de:I

    sget-object v1, Lcom/zte/statistics/sdk/b;->dI:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/statistics/sdk/c/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/statistics/sdk/a;->di:Ljava/lang/String;

    sget-object v1, Lcom/zte/statistics/sdk/b;->dI:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/statistics/sdk/c/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/statistics/sdk/a;->dj:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/statistics/sdk/a;->df:Ljava/lang/String;

    :goto_3
    sget-object v0, Lcom/zte/statistics/sdk/a;->df:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/statistics/sdk/c/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/statistics/sdk/a;->df:Ljava/lang/String;

    invoke-static {}, Lcom/zte/statistics/sdk/a/a;->P()Lcom/zte/statistics/sdk/a/a;

    move-result-object v0

    sget-object v1, Lcom/zte/statistics/sdk/b;->dI:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/statistics/sdk/a/a;->setContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/zte/statistics/sdk/a/a;->P()Lcom/zte/statistics/sdk/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/a/a;->init()V

    sget-object v0, Lcom/zte/statistics/sdk/b;->dI:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/statistics/sdk/b/a/b;->setContext(Landroid/content/Context;)V

    :try_start_2
    sget-object v0, Lcom/zte/statistics/sdk/b;->dI:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/zte/statistics/sdk/b;->dI:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sget-object v1, Lcom/zte/statistics/sdk/b;->dI:Landroid/content/Context;

    const-string v3, "STATISTICS"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "app_version_code"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/statistics/sdk/a;->version:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    sput-boolean v2, Lcom/zte/statistics/sdk/a;->dc:Z

    const-string v0, "Done initializing..."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    :goto_5
    const-string v3, "Unexpected error while reading application info."

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v5}, Lcom/zte/statistics/sdk/c;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_2

    :cond_5
    const-string v0, "NO IMEI"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/c;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine;->dC:Ljava/lang/String;

    sput-object v0, Lcom/zte/statistics/sdk/a;->df:Ljava/lang/String;

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_5

    :cond_6
    move-object v0, v7

    goto/16 :goto_2

    :cond_7
    move-object v1, v7

    goto/16 :goto_1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    sget-object v1, Lcom/zte/statistics/sdk/b;->dJ:[Ljava/lang/Byte;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/zte/statistics/sdk/b;->dI:Landroid/content/Context;

    invoke-static {}, Lcom/zte/statistics/sdk/b;->init()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zte/statistics/sdk/b;->c(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
