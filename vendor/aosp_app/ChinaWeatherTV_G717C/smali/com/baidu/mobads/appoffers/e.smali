.class Lcom/baidu/mobads/appoffers/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobads/appoffers/e$a;,
        Lcom/baidu/mobads/appoffers/e$b;
    }
.end annotation


# static fields
.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/Integer;

.field private static d:Ljava/lang/String;


# instance fields
.field protected a:Landroid/content/Context;

.field private e:Landroid/app/Notification;

.field private f:Landroid/app/NotificationManager;

.field private g:Landroid/app/PendingIntent;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Landroid/webkit/WebView;

.field private s:Lcom/baidu/mobads/appoffers/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/mobads/appoffers/e;->b:Ljava/util/Map;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/baidu/mobads/appoffers/e;->c:Ljava/lang/Integer;

    const-string v0, ""

    sput-object v0, Lcom/baidu/mobads/appoffers/e;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bdwallcache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobads/appoffers/e;->d:Ljava/lang/String;

    :cond_0
    iput-object v6, p0, Lcom/baidu/mobads/appoffers/e;->e:Landroid/app/Notification;

    iput-object v6, p0, Lcom/baidu/mobads/appoffers/e;->f:Landroid/app/NotificationManager;

    iput-object v6, p0, Lcom/baidu/mobads/appoffers/e;->g:Landroid/app/PendingIntent;

    iput v2, p0, Lcom/baidu/mobads/appoffers/e;->h:I

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobads/appoffers/e;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobads/appoffers/e;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobads/appoffers/e;->k:Ljava/lang/String;

    iput v2, p0, Lcom/baidu/mobads/appoffers/e;->l:I

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobads/appoffers/e;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobads/appoffers/e;->n:Ljava/lang/String;

    iput-object v6, p0, Lcom/baidu/mobads/appoffers/e;->r:Landroid/webkit/WebView;

    iput-object v6, p0, Lcom/baidu/mobads/appoffers/e;->s:Lcom/baidu/mobads/appoffers/e$a;

    iput-object p1, p0, Lcom/baidu/mobads/appoffers/e;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobads/appoffers/e;->i:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mobads/appoffers/e;->o:Ljava/lang/String;

    iput p5, p0, Lcom/baidu/mobads/appoffers/e;->p:I

    iput-object p2, p0, Lcom/baidu/mobads/appoffers/e;->q:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DownloaderTask"

    aput-object v1, v0, v5

    const-string v1, "the Url is:"

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/e;->q:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobads/appoffers/e;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/e;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "DownloaderTask"

    aput-object v1, v0, v5

    const-string v1, " add to download list"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    iput v5, p0, Lcom/baidu/mobads/appoffers/e;->l:I

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->j:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobads/appoffers/e;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v1, Lcom/baidu/mobads/appoffers/e;->c:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/mobads/appoffers/e;->c:Ljava/lang/Integer;

    sget-object v2, Lcom/baidu/mobads/appoffers/e;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/baidu/mobads/appoffers/e;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/baidu/mobads/appoffers/e;->h:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DownloaderTask"

    aput-object v1, v0, v5

    const-string v1, " add to download list,and notifId is:"

    aput-object v1, v0, v7

    iget v1, p0, Lcom/baidu/mobads/appoffers/e;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/baidu/mobads/appoffers/e;->f:Landroid/app/NotificationManager;

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobads/appoffers/e;->e:Landroid/app/Notification;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/e;->a:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobads/appoffers/e;->g:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->e:Landroid/app/Notification;

    const v1, 0x1080081

    iput v1, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->e:Landroid/app/Notification;

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/e;->i:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->e:Landroid/app/Notification;

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobads/appoffers/e;->i:Ljava/lang/String;

    const-string v3, "\u6b63\u5728\u4e0b\u8f7d: 0%"

    iget-object v4, p0, Lcom/baidu/mobads/appoffers/e;->g:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->f:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/baidu/mobads/appoffers/e;->h:I

    iget-object v2, p0, Lcom/baidu/mobads/appoffers/e;->e:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->a:Landroid/content/Context;

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d "

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mobads/appoffers/e;->r:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->r:Landroid/webkit/WebView;

    new-instance v1, Lcom/baidu/mobads/appoffers/f;

    invoke-direct {v1, p0}, Lcom/baidu/mobads/appoffers/f;-><init>(Lcom/baidu/mobads/appoffers/e;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->r:Landroid/webkit/WebView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->r:Landroid/webkit/WebView;

    new-instance v1, Lcom/baidu/mobads/appoffers/e$b;

    invoke-direct {v1, p0, v6}, Lcom/baidu/mobads/appoffers/e$b;-><init>(Lcom/baidu/mobads/appoffers/e;Lcom/baidu/mobads/appoffers/f;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/baidu/mobads/appoffers/g;

    invoke-direct {v1, p0}, Lcom/baidu/mobads/appoffers/g;-><init>(Lcom/baidu/mobads/appoffers/e;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iput v2, p0, Lcom/baidu/mobads/appoffers/e;->l:I

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "DownloaderTask"

    aput-object v2, v1, v5

    const-string v2, " duplicate download"

    aput-object v2, v1, v7

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->a:Landroid/content/Context;

    const-string v1, "\u6b64\u5e94\u7528\u5df2\u7ecf\u4e0b\u8f7d"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->a:Landroid/content/Context;

    const-string v1, "\u6b64\u5e94\u7528\u6b63\u5728\u4e0b\u8f7d"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/mobads/appoffers/e;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/mobads/appoffers/e;->l:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/mobads/appoffers/e;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->r:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobads/appoffers/e;Lcom/baidu/mobads/appoffers/e$a;)Lcom/baidu/mobads/appoffers/e$a;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/appoffers/e;->s:Lcom/baidu/mobads/appoffers/e$a;

    return-object p1
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/baidu/mobads/appoffers/e;->d:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bdwallcache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobads/appoffers/e;->d:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/baidu/mobads/appoffers/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobads/appoffers/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mobads/appoffers/e;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/mobads/appoffers/e;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/mobads/appoffers/e;)Lcom/baidu/mobads/appoffers/e$a;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->s:Lcom/baidu/mobads/appoffers/e$a;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/mobads/appoffers/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/appoffers/e;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/baidu/mobads/appoffers/e;->d:Ljava/lang/String;

    return-object p0
.end method

.method private static declared-synchronized b(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    const-class v1, Lcom/baidu/mobads/appoffers/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/mobads/appoffers/e;->b:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/mobads/appoffers/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/appoffers/e;->n:Ljava/lang/String;

    return-object p1
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->f:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->f:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/baidu/mobads/appoffers/e;->h:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/e;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->r:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    return-void
.end method

.method private static declared-synchronized d(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const-class v1, Lcom/baidu/mobads/appoffers/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/mobads/appoffers/e;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/mobads/appoffers/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/mobads/appoffers/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/appoffers/e;->k:Ljava/lang/String;

    return-object p1
.end method

.method private e()J
    .locals 2

    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    mul-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method static synthetic e(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/mobads/appoffers/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mobads/appoffers/e;->f(Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized e(Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/baidu/mobads/appoffers/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/mobads/appoffers/e;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic f(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .locals 14

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/baidu/mobads/appoffers/h;

    invoke-direct {v1, p0}, Lcom/baidu/mobads/appoffers/h;-><init>(Lcom/baidu/mobads/appoffers/e;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v4, v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "validateRes-->fileName:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/baidu/mobads/appoffers/i;

    invoke-direct {v0, p0}, Lcom/baidu/mobads/appoffers/i;-><init>(Lcom/baidu/mobads/appoffers/e;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-wide/16 v1, 0x0

    array-length v3, v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v5, v4, v0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "DownloaderTask"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v5, "VideoPool.validateRes delete["

    aput-object v5, v0, v3

    const/4 v3, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v3

    const/4 v3, 0x2

    const-string v5, "/"

    aput-object v5, v0, v3

    const/4 v3, 0x3

    const/high16 v5, 0x320

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    const/4 v3, 0x4

    const-string v5, "avail"

    aput-object v5, v0, v3

    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/baidu/mobads/appoffers/e;->e()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v3

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    invoke-direct {p0}, Lcom/baidu/mobads/appoffers/e;->e()J

    move-result-wide v5

    const-wide/32 v7, 0xa00000

    cmp-long v0, v5, v7

    if-gez v0, :cond_2

    const/4 v0, 0x1

    move v3, v0

    :goto_2
    const-wide/32 v5, 0x3200000

    cmp-long v0, v1, v5

    if-gtz v0, :cond_3

    if-nez v3, :cond_3

    :goto_3
    return-void

    :cond_2
    const/4 v0, 0x0

    move v3, v0

    goto :goto_2

    :cond_3
    array-length v5, v4

    const/4 v0, 0x0

    move v11, v0

    move-wide v12, v1

    move-wide v0, v12

    move v2, v11

    :goto_4
    if-ge v2, v5, :cond_5

    aget-object v6, v4, v2

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "VideoPool.validateRes delete"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    sub-long/2addr v0, v7

    :cond_4
    const-wide/32 v6, 0x3200000

    cmp-long v6, v0, v6

    if-gtz v6, :cond_6

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/baidu/mobads/appoffers/e;->e()J

    move-result-wide v6

    const-wide/32 v8, 0xa00000

    cmp-long v6, v6, v8

    if-ltz v6, :cond_6

    :cond_5
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "VideoPool.validateRes delete]"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v1, "/"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const/high16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "avail"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/baidu/mobads/appoffers/e;->e()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method static synthetic g(Lcom/baidu/mobads/appoffers/e;)I
    .locals 1

    iget v0, p0, Lcom/baidu/mobads/appoffers/e;->h:I

    return v0
.end method

.method static synthetic h(Lcom/baidu/mobads/appoffers/e;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->f:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/baidu/mobads/appoffers/e;)I
    .locals 1

    iget v0, p0, Lcom/baidu/mobads/appoffers/e;->p:I

    return v0
.end method

.method static synthetic l(Lcom/baidu/mobads/appoffers/e;)I
    .locals 1

    iget v0, p0, Lcom/baidu/mobads/appoffers/e;->l:I

    return v0
.end method

.method static synthetic m(Lcom/baidu/mobads/appoffers/e;)I
    .locals 1

    iget v0, p0, Lcom/baidu/mobads/appoffers/e;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/mobads/appoffers/e;->l:I

    return v0
.end method

.method static synthetic n(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/baidu/mobads/appoffers/e;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->g:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic p(Lcom/baidu/mobads/appoffers/e;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->e:Landroid/app/Notification;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lcom/baidu/mobads/appoffers/e;->l:I

    return v0
.end method

.method public c()V
    .locals 2

    const/4 v0, -0x5

    iput v0, p0, Lcom/baidu/mobads/appoffers/e;->l:I

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->s:Lcom/baidu/mobads/appoffers/e$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->s:Lcom/baidu/mobads/appoffers/e$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/appoffers/e$a;->cancel(Z)Z

    :cond_0
    iget v0, p0, Lcom/baidu/mobads/appoffers/e;->h:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    const-string v0, "\u4e0b\u8f7d\u53d6\u6d88"

    invoke-direct {p0, v0}, Lcom/baidu/mobads/appoffers/e;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
