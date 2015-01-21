.class public final Lcom/b/b/a/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/Byte;

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/b/b/a/d;->b:Landroid/content/Context;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Byte;

    sput-object v0, Lcom/b/b/a/d;->a:[Ljava/lang/Byte;

    return-void
.end method

.method public static a()V
    .locals 2

    sget-object v1, Lcom/b/b/a/d;->a:[Ljava/lang/Byte;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/b/b/a/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/b/b/a/c/a;->a(Landroid/content/Context;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 9

    const/4 v7, 0x0

    sget-object v8, Lcom/b/b/a/d;->a:[Ljava/lang/Byte;

    monitor-enter v8

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/b/b/a/d;->b:Landroid/content/Context;

    sget-boolean v0, Lcom/b/b/a/b;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "Already initialized..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    sget-object v0, Lcom/b/b/a/a/a;->d:Ljava/lang/String;

    sput-object v0, Lcom/b/b/a/b;->m:Ljava/lang/String;

    monitor-exit v8

    return-void

    :cond_0
    const-string v0, "Initializing..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7d0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sput-wide v0, Lcom/b/b/a/b;->l:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/b/b/a/d;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/b/b/a/d;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_9

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "appuid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "appuid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_5

    :try_start_2
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "marketinfo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "marketinfo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    move-object v0, v7

    :goto_2
    :try_start_3
    const-string v2, "No ZTEStatistics api key specified. Please make sure you have specified your api key in your AndroidManifest.xml"

    if-eqz v1, :cond_1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/b/b/a/c;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_3

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v0, "preload"

    :cond_4
    sput-object v1, Lcom/b/b/a/b;->h:Ljava/lang/String;

    sput-object v0, Lcom/b/b/a/b;->i:Ljava/lang/String;

    sget-object v0, Lcom/b/b/a/d;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/b/b/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/b/b/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    sput v1, Lcom/b/b/a/b;->f:I

    sget-object v1, Lcom/b/b/a/d;->b:Landroid/content/Context;

    const-string v2, "android.permission.GET_ACCOUNTS"

    invoke-static {v1, v2}, Lcom/b/b/a/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Lcom/b/b/a/d/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    :goto_3
    sput-object v1, Lcom/b/b/a/b;->j:Ljava/lang/String;

    sget-object v1, Lcom/b/b/a/d;->b:Landroid/content/Context;

    const-string v2, "android.permission.GET_ACCOUNTS"

    invoke-static {v1, v2}, Lcom/b/b/a/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v1}, Lcom/b/b/a/d/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    :goto_4
    sput-object v1, Lcom/b/b/a/b;->k:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/b/a/b;->g:Ljava/lang/String;

    :goto_5
    sget-object v0, Lcom/b/b/a/b;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/b/a/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/b/a/b;->g:Ljava/lang/String;

    invoke-static {}, Lcom/b/b/a/c/c;->a()Lcom/b/b/a/c/c;

    move-result-object v0

    sget-object v1, Lcom/b/b/a/d;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/b/b/a/c/c;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/b/b/a/c/c;->a()Lcom/b/b/a/c/c;

    invoke-static {}, Lcom/b/b/a/c/c;->b()V

    sget-object v0, Lcom/b/b/a/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/b/b/a/b/a/a;->a(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v0, Lcom/b/b/a/d;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/b/b/a/d;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sget-object v1, Lcom/b/b/a/d;->b:Landroid/content/Context;

    const-string v2, "STATISTICS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "app_version_code"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/b/a/b;->c:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_6
    const/4 v0, 0x1

    :try_start_5
    sput-boolean v0, Lcom/b/b/a/b;->b:Z

    const-string v0, "Done initializing..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    :catch_0
    move-exception v0

    move-object v1, v7

    :goto_7
    :try_start_6
    const-string v2, "Unexpected error while reading application info."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/b/b/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_5
    move-object v0, v7

    goto/16 :goto_2

    :cond_6
    const-string v1, ""

    goto/16 :goto_3

    :cond_7
    const-string v1, ""

    goto :goto_4

    :cond_8
    const-string v0, "NO IMEI"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/b/a/c;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/b/b/a/a/a;->e:Ljava/lang/String;

    sput-object v0, Lcom/b/b/a/b;->g:Ljava/lang/String;

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_7

    :cond_9
    move-object v1, v7

    goto/16 :goto_1
.end method

.method public static a(Lcom/b/b/a/a;)V
    .locals 2

    sget-object v1, Lcom/b/b/a/d;->a:[Ljava/lang/Byte;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/b/b/a/c/c;->a()Lcom/b/b/a/c/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/b/a/c/c;->a(Lcom/b/b/a/a;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
