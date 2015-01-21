.class Lcom/baidu/mobads/appoffers/JsInterface;
.super Ljava/lang/Object;


# static fields
.field protected static final STATUS_DONE:Ljava/lang/String; = "DONE"

.field protected static final STATUS_DOWNLOADED:Ljava/lang/String; = "DOWNLOADED"

.field protected static final STATUS_DOWNLOADING:Ljava/lang/String; = "DOWNLOADING"

.field protected static final STATUS_DOWNLOAD_FAILED:Ljava/lang/String; = "DOWNLOAD_FAILED"

.field protected static final STATUS_INSTALLED:Ljava/lang/String; = "INSTALLED"

.field protected static final STATUS_INSTALLING:Ljava/lang/String; = "INSTALLING"

.field protected static final STATUS_NONE:Ljava/lang/String; = "NONE"

.field public static final TAG:Ljava/lang/String; = "JsInterface"

.field protected static final TYPE_DOWNLOAD:I = 0x2

.field protected static final TYPE_VIDEO:I = 0x40

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mobads/appoffers/e;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/baidu/mobads/appoffers/OffersActivity;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/mobads/appoffers/JsInterface;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/mobads/appoffers/JsInterface;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mobads/appoffers/OffersActivity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->b:Z

    iput-object v1, p0, Lcom/baidu/mobads/appoffers/JsInterface;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mobads/appoffers/JsInterface;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobads/appoffers/JsInterface;)Lcom/baidu/mobads/appoffers/OffersActivity;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "__mobads_ta=[^&]+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__mobads_charge=[^&]+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/baidu/mobads/appoffers/JsInterface;->e:Ljava/util/Map;

    return-object v0
.end method

.method private a(Landroid/content/pm/PackageInfo;)Z
    .locals 1

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/baidu/mobads/appoffers/e;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mobads/appoffers/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/baidu/mobads/appoffers/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/baidu/mobads/appoffers/JsInterface;->f:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public addPoints(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "JsInterface"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "addPoints"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "po"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "pk"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobads/appoffers/s;->a()Lcom/baidu/mobads/appoffers/s;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-virtual {v0, v2, v1}, Lcom/baidu/mobads/appoffers/s;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "false"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    const-string v0, "false"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public backPressed()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "JsInterface"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "backPressed"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/OffersActivity;->finish()V

    return-void
.end method

.method public cancelDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "JsInterface"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cancelDownload"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/baidu/mobads/appoffers/JsInterface;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobads/appoffers/e;

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/e;->c()V

    sget-object v0, Lcom/baidu/mobads/appoffers/JsInterface;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "true"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    const-string v0, "false"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public changeProgressStatus(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "hasProgress"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->b:Z

    iget-boolean v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/OffersActivity;->destroyWebView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected cleanWatchBack()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->c:Ljava/lang/String;

    return-void
.end method

.method protected fireBackKey()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "JsInterface"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "fireBackKey"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "fireEvent"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-static {p2}, Lcom/baidu/mobads/appoffers/a/b;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-virtual {v1}, Lcom/baidu/mobads/appoffers/OffersActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/baidu/mobads/appoffers/m;

    invoke-direct {v2, p0, p1, v0}, Lcom/baidu/mobads/appoffers/m;-><init>(Lcom/baidu/mobads/appoffers/JsInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/OffersActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/mobads/appoffers/m;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/mobads/appoffers/m;-><init>(Lcom/baidu/mobads/appoffers/JsInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-virtual {v1}, Lcom/baidu/mobads/appoffers/OffersActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/baidu/mobads/appoffers/m;

    invoke-direct {v2, p0, p1, p2}, Lcom/baidu/mobads/appoffers/m;-><init>(Lcom/baidu/mobads/appoffers/JsInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method

.method protected fireResumeKey()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "JsInterface"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "fireResumeKey"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveType(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/baidu/mobads/appoffers/JsInterface;->getContext()Lcom/baidu/mobads/appoffers/OffersActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/c;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "MobadsSdk.getActiveType"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getConfs(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/mobads/appoffers/JsInterface;->getContext()Lcom/baidu/mobads/appoffers/OffersActivity;

    move-result-object v2

    const-string v0, "APPSID"

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "APPSEC"

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "PACK"

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/c;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "CS"

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-static {v2}, Lcom/baidu/mobads/appoffers/c;->l(Landroid/content/Context;)Lcom/baidu/mobads/appoffers/a/f;

    move-result-object v0

    const-string v3, "W"

    iget v4, v0, Lcom/baidu/mobads/appoffers/a/f;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "H"

    iget v0, v0, Lcom/baidu/mobads/appoffers/a/f;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "WRAPPER"

    sget-object v3, Lcom/baidu/mobads/appoffers/a/a;->b:Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "WRAPPER_VER"

    sget-object v3, Lcom/baidu/mobads/appoffers/a/a;->c:Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "N"

    sget v3, Lcom/baidu/mobads/appoffers/a/a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v0, "window"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    :try_start_4
    const-string v0, "DENSITY"

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "MODEL"

    invoke-static {}, Lcom/baidu/mobads/appoffers/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "BRAND"

    invoke-static {}, Lcom/baidu/mobads/appoffers/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "OS"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "BDR"

    invoke-static {}, Lcom/baidu/mobads/appoffers/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/c;->k(Landroid/content/Context;)Lcom/baidu/mobads/appoffers/a/f;

    move-result-object v0

    const-string v3, "SW"

    iget v4, v0, Lcom/baidu/mobads/appoffers/a/f;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "SH"

    iget v0, v0, Lcom/baidu/mobads/appoffers/a/f;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "SN"

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    const-string v0, "ISP"

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_2
    :try_start_6
    const-string v0, "IMSI"

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_3
    :try_start_7
    const-string v0, "CELL"

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/c;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobads/appoffers/a/b;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    :goto_4
    :try_start_8
    const-string v0, "WIFI"

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/c;->o(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobads/appoffers/a/b;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    :goto_5
    :try_start_9
    const-string v0, "GPS"

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/c;->n(Landroid/content/Context;)[D

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobads/appoffers/a/b;->a([D)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    :goto_6
    :try_start_a
    invoke-static {v2}, Lcom/baidu/mobads/appoffers/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "TEL"

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "SWI"

    const-string v3, "wifi"

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/c;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "prod"

    const-string v2, "wall"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "SDC"

    invoke-static {}, Lcom/baidu/mobads/appoffers/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "MobadsSdk.getConfs"

    aput-object v2, v1, v6

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-void

    :catch_0
    move-exception v0

    :try_start_b
    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_c
    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "MobadsSdk.getConfs"

    aput-object v2, v1, v6

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_2
    move-exception v0

    :try_start_d
    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "MobadsSdk.getConfs"

    aput-object v3, v2, v6

    aput-object v1, v2, v5

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    invoke-virtual {p0, p1, v1}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    :try_start_e
    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :catch_7
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_6
.end method

.method public getContext()Lcom/baidu/mobads/appoffers/OffersActivity;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    return-object v0
.end method

.method public getDLProgress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    const/16 v2, 0x64

    const/4 v12, 0x2

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/16 v1, -0x64

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x2

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "JsInterface"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "getDLProgress"

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "url"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/baidu/mobads/appoffers/JsInterface;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "JsInterface"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "url is:"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v8, v9, v10

    invoke-static {v9}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    const-string v9, "status"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "po"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v7, v12, :cond_f

    const-string v7, "pk"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "NONE"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "JsInterface"

    aput-object v6, v0, v2

    const/4 v2, 0x1

    const-string v6, "status is still NONE"

    aput-object v6, v0, v2

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    :cond_0
    :goto_0
    :try_start_1
    const-string v2, "progress"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "pointAdded"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "stop"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    :cond_1
    :try_start_3
    const-string v7, "DOWNLOADING"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v8}, Lcom/baidu/mobads/appoffers/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/baidu/mobads/appoffers/JsInterface;->e:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobads/appoffers/e;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-virtual {p0, v0, v6}, Lcom/baidu/mobads/appoffers/JsInterface;->checkApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xc8

    :cond_2
    :goto_3
    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_3
    invoke-direct {p0, v8}, Lcom/baidu/mobads/appoffers/JsInterface;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/e;->b()I

    move-result v0

    if-lt v0, v2, :cond_2

    iget-object v2, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-virtual {p0, v2, v6}, Lcom/baidu/mobads/appoffers/JsInterface;->checkApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xc8

    goto :goto_3

    :cond_6
    const-string v7, "DOWNLOAD_FAILED"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "JsInterface"

    aput-object v6, v0, v2

    const/4 v2, 0x1

    const-string v6, "status is download_failed"

    aput-object v6, v0, v2

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    move v0, v3

    goto :goto_0

    :cond_7
    const-string v7, "DOWNLOADED"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-virtual {p0, v0, v6}, Lcom/baidu/mobads/appoffers/JsInterface;->checkApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0xc8

    move v0, v3

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, v8}, Lcom/baidu/mobads/appoffers/JsInterface;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_4
    move v0, v3

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto :goto_4

    :cond_a
    const-string v7, "INSTALLED"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    if-eqz v10, :cond_10

    iget-object v7, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-static {v7, v6}, Lcom/baidu/mobads/appoffers/a;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v7

    if-eqz v7, :cond_c

    :goto_5
    :try_start_4
    iget-object v3, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-virtual {p0, v3, v6}, Lcom/baidu/mobads/appoffers/JsInterface;->checkApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/16 v1, 0xc8

    if-nez v0, :cond_b

    if-nez v10, :cond_0

    :cond_b
    const/16 v1, 0x12c

    goto/16 :goto_0

    :cond_c
    move v0, v3

    goto :goto_5

    :cond_d
    invoke-direct {p0, v8}, Lcom/baidu/mobads/appoffers/JsInterface;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v3

    if-eqz v3, :cond_0

    move v1, v2

    goto/16 :goto_0

    :cond_e
    :try_start_5
    const-string v0, "DONE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v0

    if-eqz v0, :cond_f

    :cond_f
    move v0, v3

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :goto_6
    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    move v0, v3

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :catch_3
    move-exception v2

    move v3, v0

    move-object v0, v2

    goto :goto_6

    :cond_10
    move v0, v3

    goto :goto_5
.end method

.method public getInstalled(Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "JsInterface"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "getInstalled"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/mobads/appoffers/JsInterface;->getContext()Lcom/baidu/mobads/appoffers/OffersActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "p"

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "s"

    new-instance v5, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getIsp(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, ""

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/mobads/appoffers/JsInterface;->getContext()Lcom/baidu/mobads/appoffers/OffersActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/c;->g(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "MobadsSdk.getIsp"

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "MobadsSdk.getIsp"

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    invoke-virtual {p0, p1, v1}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "MobadsSdk.getIsp"

    aput-object v3, v2, v4

    aput-object v1, v2, v5

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    invoke-virtual {p0, p1, v1}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getPoints(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "JsInterface"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "getPoints"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    invoke-static {}, Lcom/baidu/mobads/appoffers/s;->a()Lcom/baidu/mobads/appoffers/s;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/appoffers/s;->b(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"points\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    const-string v0, "0"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hasProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->b:Z

    return v0
.end method

.method protected hasWatchBack()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v1, ""

    const/4 v0, 0x5

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "invoke"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    const/4 v2, 0x3

    aput-object p2, v0, v2

    const/4 v2, 0x4

    aput-object p4, v0, v2

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/baidu/mobads/appoffers/JsInterface;->getContext()Lcom/baidu/mobads/appoffers/OffersActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/c;->p(Landroid/content/Context;)Ldalvik/system/DexClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p2, v1}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\|\\|\\|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "{activity}"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-class v0, Landroid/content/Context;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/baidu/mobads/appoffers/JsInterface;->getContext()Lcom/baidu/mobads/appoffers/OffersActivity;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, p2, v1}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_3
    const-class v7, Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0, p2, v1}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x6

    :try_start_4
    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v7, "invoke"

    aput-object v7, v6, v0

    const/4 v0, 0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_3
    aput-object v0, v6, v7

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v7

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v6}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v2, p3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    :goto_4
    invoke-virtual {p0, p2, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :try_start_5
    const-string v0, ""

    goto :goto_3

    :cond_5
    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    aput-object v0, v3, v6

    invoke-virtual {v2, p3, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    aput-object v0, v3, v6

    const/4 v6, 0x1

    const/4 v0, 0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    aput-object v0, v3, v6

    invoke-virtual {v2, p3, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    aput-object v0, v3, v6

    const/4 v6, 0x1

    const/4 v0, 0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    aput-object v0, v3, v6

    const/4 v6, 0x2

    const/4 v0, 0x2

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    aput-object v0, v3, v6

    invoke-virtual {v2, p3, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v0

    goto/16 :goto_4

    :cond_8
    move-object v0, v1

    goto/16 :goto_4
.end method

.method public nativeAjax(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "nativeAjax"

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;)I

    new-instance v0, Lcom/baidu/mobads/appoffers/n;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobads/appoffers/n;-><init>(Lcom/baidu/mobads/appoffers/JsInterface;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/n;->start()V

    return-void
.end method

.method public onInited(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobadsSdk.setInited"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;)I

    return-void
.end method

.method public onJsReady(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public onLoaded()V
    .locals 3

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "JsInterface"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "onLoaded"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/appoffers/OffersActivity;->loading(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onTaskStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "JsInterface"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "onTaskStart"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/baidu/mobads/appoffers/JsInterface;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "status"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "po"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v3, v6, :cond_0

    const-string v3, "pk"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    const/4 v3, 0x0

    :try_start_1
    const-string v6, "name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    :goto_0
    if-nez v3, :cond_1

    const/4 v0, 0x2

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "JsInterface"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "no name in json"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    const-string v0, "false"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string v6, "JsInterface"

    invoke-static {v6, v1}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    const-string v0, "false"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_3
    const-string v1, "NONE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "DOWNLOAD_FAILED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_2
    const-string v1, "DOWNLOAD_FAILED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_3
    invoke-direct {p0, v2}, Lcom/baidu/mobads/appoffers/JsInterface;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/OffersActivity;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v0, Lcom/baidu/mobads/appoffers/o;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobads/appoffers/o;-><init>(Lcom/baidu/mobads/appoffers/JsInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v7

    :cond_4
    move v7, v0

    :cond_5
    :goto_2
    const-string v0, "DOWNLOADED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v7, :cond_0

    :cond_6
    invoke-direct {p0, v2}, Lcom/baidu/mobads/appoffers/JsInterface;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "JsInterface"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "downloaded file is not well"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    const-string v0, "false"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v0, "DOWNLOADING"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "INSTALLED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-eqz v0, :cond_8

    :try_start_4
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-static {v0, v4, v5}, Lcom/baidu/mobads/appoffers/q;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    const-string v0, "true"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mobads/appoffers/JsInterface;->f:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_5
    const-string v1, "JsInterface"

    invoke-static {v1, v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "false"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v0, "DONE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-static {v0, v4}, Lcom/baidu/mobads/appoffers/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "true"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mobads/appoffers/JsInterface;->f:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :cond_9
    :try_start_6
    iget-object v1, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-static {v1, v0}, Lcom/baidu/mobads/appoffers/q;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/j;->a(Landroid/content/Context;)Lcom/baidu/mobads/appoffers/j;

    move-result-object v0

    invoke-virtual {v0, v4, v2, v5}, Lcom/baidu/mobads/appoffers/j;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v0, "true"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mobads/appoffers/JsInterface;->f:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    :try_start_7
    const-string v0, "false"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1
.end method

.method public openPointMode(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "JsInterface"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "openPointMode"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "currencyName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mobads/appoffers/s;->a()Lcom/baidu/mobads/appoffers/s;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/mobads/appoffers/s;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public refreshUrl()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/OffersActivity;->getWebview()Lcom/baidu/mobads/appoffers/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/a/d;->reload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAppTip(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/OffersActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/mobads/appoffers/k;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobads/appoffers/k;-><init>(Lcom/baidu/mobads/appoffers/JsInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setConfs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "setConfs"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    invoke-virtual {p0, p2, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, ""

    invoke-virtual {p0, p2, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, ""

    invoke-virtual {p0, p2, v1}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public setNetworkState()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/q;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public subPoints(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "JsInterface"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "subPoints"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "po"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/baidu/mobads/appoffers/s;->a()Lcom/baidu/mobads/appoffers/s;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobads/appoffers/JsInterface;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/mobads/appoffers/s;->b(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "false"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    const-string v0, "false"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updatePatch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "MobadsSdk.updatePatch"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    new-instance v0, Lcom/baidu/mobads/appoffers/l;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/baidu/mobads/appoffers/l;-><init>(Lcom/baidu/mobads/appoffers/JsInterface;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/l;->start()V

    return-void
.end method

.method public watchBack(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "JsInterface"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "watchBack"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    iput-object p1, p0, Lcom/baidu/mobads/appoffers/JsInterface;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public watchResume(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "JsInterface"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "watchResume"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    iput-object p1, p0, Lcom/baidu/mobads/appoffers/JsInterface;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
