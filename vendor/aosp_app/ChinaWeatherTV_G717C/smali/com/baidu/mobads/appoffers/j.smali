.class Lcom/baidu/mobads/appoffers/j;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static a:Lcom/baidu/mobads/appoffers/j;

.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mobads/appoffers/t;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mobads/appoffers/j;->a:Lcom/baidu/mobads/appoffers/j;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/mobads/appoffers/j;->b:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/mobads/appoffers/j;
    .locals 1

    sget-object v0, Lcom/baidu/mobads/appoffers/j;->a:Lcom/baidu/mobads/appoffers/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/mobads/appoffers/j;

    invoke-direct {v0}, Lcom/baidu/mobads/appoffers/j;-><init>()V

    sput-object v0, Lcom/baidu/mobads/appoffers/j;->a:Lcom/baidu/mobads/appoffers/j;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobads/appoffers/j;->c:Landroid/content/Context;

    invoke-static {}, Lcom/baidu/mobads/appoffers/j;->a()V

    :cond_0
    sget-object v0, Lcom/baidu/mobads/appoffers/j;->a:Lcom/baidu/mobads/appoffers/j;

    return-object v0
.end method

.method private static a()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "InstallReceiver"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "registerReceiver"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/mobads/appoffers/j;->c:Landroid/content/Context;

    sget-object v2, Lcom/baidu/mobads/appoffers/j;->a:Lcom/baidu/mobads/appoffers/j;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected declared-synchronized a(Ljava/lang/String;)Lcom/baidu/mobads/appoffers/t;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/baidu/mobads/appoffers/j;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobads/appoffers/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    const/4 v3, 0x1

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "InstallReceiver"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "addPackMap:packName is:"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    new-instance v0, Lcom/baidu/mobads/appoffers/t;

    invoke-direct {v0}, Lcom/baidu/mobads/appoffers/t;-><init>()V

    iput-object p1, v0, Lcom/baidu/mobads/appoffers/t;->a:Ljava/lang/String;

    iput-object p2, v0, Lcom/baidu/mobads/appoffers/t;->b:Ljava/lang/String;

    iput p3, v0, Lcom/baidu/mobads/appoffers/t;->c:I

    sget-object v1, Lcom/baidu/mobads/appoffers/j;->b:Ljava/util/Map;

    iget-object v2, v0, Lcom/baidu/mobads/appoffers/t;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "InstallReceiver"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "removePackMap:packName is:"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    sget-object v0, Lcom/baidu/mobads/appoffers/j;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "InstallReceiver"

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---------------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    const-string v1, "package:"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/mobads/appoffers/j;->a(Ljava/lang/String;)Lcom/baidu/mobads/appoffers/t;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x258

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    iget v0, v0, Lcom/baidu/mobads/appoffers/t;->c:I

    invoke-static {p1, v1, v0}, Lcom/baidu/mobads/appoffers/q;->a(Landroid/content/Context;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/baidu/mobads/appoffers/j;->b(Ljava/lang/String;)Z

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v2, "InstallReceiver"

    invoke-static {v2, v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "InstallReceiver"

    aput-object v1, v0, v4

    const-string v1, "Not Registed"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    goto :goto_1
.end method
