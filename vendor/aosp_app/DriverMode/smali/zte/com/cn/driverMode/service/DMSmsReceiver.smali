.class public Lzte/com/cn/driverMode/service/DMSmsReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field protected a:Lzte/com/cn/driverMode/service/bv;

.field protected b:Lzte/com/cn/driverMode/service/DMApplication;

.field private c:Lzte/com/cn/driverMode/service/DMService;

.field private d:Lzte/com/cn/driverMode/service/by;

.field private e:Z

.field private f:Landroid/content/Context;

.field private g:Lzte/com/cn/driverMode/service/bz;


# direct methods
.method public constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->e:Z

    new-instance v0, Lzte/com/cn/driverMode/service/bz;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lzte/com/cn/driverMode/service/bz;-><init>(Lzte/com/cn/driverMode/service/DMSmsReceiver;Landroid/os/Handler;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->g:Lzte/com/cn/driverMode/service/bz;

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->c:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->c:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/DMApplication;

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->b:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->c:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->b()Lzte/com/cn/driverMode/service/bv;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->a:Lzte/com/cn/driverMode/service/bv;

    return-void
.end method

.method static synthetic a(Lzte/com/cn/driverMode/service/DMSmsReceiver;Lzte/com/cn/driverMode/service/by;)Lzte/com/cn/driverMode/service/by;
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->d:Lzte/com/cn/driverMode/service/by;

    return-object p1
.end method

.method static synthetic a(Lzte/com/cn/driverMode/service/DMSmsReceiver;)Z
    .locals 1

    iget-boolean v0, p0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->e:Z

    return v0
.end method

.method static synthetic b(Lzte/com/cn/driverMode/service/DMSmsReceiver;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->e:Z

    return v0
.end method

.method static synthetic c(Lzte/com/cn/driverMode/service/DMSmsReceiver;)Lzte/com/cn/driverMode/service/DMService;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->c:Lzte/com/cn/driverMode/service/DMService;

    return-object v0
.end method

.method static synthetic d(Lzte/com/cn/driverMode/service/DMSmsReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lzte/com/cn/driverMode/service/DMSmsReceiver;)Lzte/com/cn/driverMode/service/by;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->d:Lzte/com/cn/driverMode/service/by;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->a:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/bv;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3001

    iput v1, v0, Landroid/os/Message;->what:I

    const-string v1, "DMSmsReceiver"

    const-string v2, "send EVENT: message=12289"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->a:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/bv;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->f:Landroid/content/Context;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->b:Lzte/com/cn/driverMode/service/DMApplication;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->b:Lzte/com/cn/driverMode/service/DMApplication;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMApplication;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DMSmsReceiver"

    const-string v1, "onReceive---bRunningBackground=true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DMSmsReceiver"

    const-string v1, "SMS onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->e:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMSmsReceiver;->g:Lzte/com/cn/driverMode/service/bz;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method
