.class public Lcom/powermo/SmartBar/SmartBarService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/powermo/SmartBar/SmartApplication;

.field private b:Lcom/powermo/b/a;

.field private c:Lcom/powermo/SmartBar/ay;

.field private d:Lcom/powermo/SmartBar/bo;

.field private e:Lcom/powermo/SmartBar/c;

.field private f:Lcom/powermo/SmartBar/db;

.field private g:Lcom/powermo/SmartBar/bz;

.field private h:Lcom/powermo/SmartBar/cm;

.field private i:Landroid/content/BroadcastReceiver;

.field private j:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/powermo/SmartBar/cs;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/cs;-><init>(Lcom/powermo/SmartBar/SmartBarService;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->i:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->j:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/SmartBarService;)Lcom/powermo/SmartBar/db;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->f:Lcom/powermo/SmartBar/db;

    return-object v0
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->j:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->j:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->j:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->j:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.powermo.smartbar.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "cmd_toggle_shopm"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.powermo.smartbar.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "cmd_show_toast"

    const-string v2, "Customized"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cmd_show_toast_content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cmd_show_toast_duration"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.powermo.smartbar.action"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "status_in_edit_mode"

    if-eqz p1, :cond_0

    const-string v0, "0"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method

.method static synthetic a(Lcom/powermo/SmartBar/SmartBarService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/SmartBar/SmartBarService;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/SmartBarService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/powermo/SmartBar/SmartBarService;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->j:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->j:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->j:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->j:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic b(Lcom/powermo/SmartBar/SmartBarService;)Lcom/powermo/SmartBar/ay;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->c:Lcom/powermo/SmartBar/ay;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.powermo.smartbar.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "cmd_reload"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c(Lcom/powermo/SmartBar/SmartBarService;)Lcom/powermo/SmartBar/bz;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->g:Lcom/powermo/SmartBar/bz;

    return-object v0
.end method

.method static synthetic d(Lcom/powermo/SmartBar/SmartBarService;)Lcom/powermo/SmartBar/bo;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->d:Lcom/powermo/SmartBar/bo;

    return-object v0
.end method

.method static synthetic e(Lcom/powermo/SmartBar/SmartBarService;)Lcom/powermo/b/a;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->b:Lcom/powermo/b/a;

    return-object v0
.end method

.method static synthetic f(Lcom/powermo/SmartBar/SmartBarService;)Lcom/powermo/SmartBar/SmartApplication;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->a:Lcom/powermo/SmartBar/SmartApplication;

    return-object v0
.end method

.method static synthetic g(Lcom/powermo/SmartBar/SmartBarService;)Lcom/powermo/SmartBar/cm;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->h:Lcom/powermo/SmartBar/cm;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->d:Lcom/powermo/SmartBar/bo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/bo;->a(Z)V

    return-void
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->h:Lcom/powermo/SmartBar/cm;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/cm;->a()V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->c:Lcom/powermo/SmartBar/ay;

    invoke-virtual {v0, p1}, Lcom/powermo/SmartBar/ay;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->f:Lcom/powermo/SmartBar/db;

    invoke-virtual {v0, p1}, Lcom/powermo/SmartBar/db;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->g:Lcom/powermo/SmartBar/bz;

    invoke-virtual {v0, p1}, Lcom/powermo/SmartBar/bz;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->d:Lcom/powermo/SmartBar/bo;

    invoke-virtual {v0, p1}, Lcom/powermo/SmartBar/bo;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->h:Lcom/powermo/SmartBar/cm;

    invoke-virtual {v0, p1}, Lcom/powermo/SmartBar/cm;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 4

    invoke-virtual {p0}, Lcom/powermo/SmartBar/SmartBarService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/powermo/SmartBar/SmartApplication;

    iput-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->a:Lcom/powermo/SmartBar/SmartApplication;

    invoke-static {}, Lcom/powermo/b/a;->a()Lcom/powermo/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->b:Lcom/powermo/b/a;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.powermo.smartbar.action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.powermo.poptoast.action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.powermo.app.violation"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.powermo.activity.violation"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/powermo/SmartBar/SmartBarService;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/powermo/SmartBar/SmartBarService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/powermo/SmartBar/SmartBarService;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/powermo/SmartBar/SmartBarService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/powermo/SmartBar/ay;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/ay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->c:Lcom/powermo/SmartBar/ay;

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->c:Lcom/powermo/SmartBar/ay;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/ay;->a()V

    new-instance v0, Lcom/powermo/SmartBar/db;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/db;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->f:Lcom/powermo/SmartBar/db;

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->f:Lcom/powermo/SmartBar/db;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/db;->a()V

    new-instance v0, Lcom/powermo/SmartBar/bz;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/bz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->g:Lcom/powermo/SmartBar/bz;

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->g:Lcom/powermo/SmartBar/bz;

    invoke-virtual {v0, p0}, Lcom/powermo/SmartBar/bz;->a(Lcom/powermo/SmartBar/SmartBarService;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->a:Lcom/powermo/SmartBar/SmartApplication;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/SmartApplication;->c()Lcom/powermo/SmartBar/c;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->e:Lcom/powermo/SmartBar/c;

    new-instance v0, Lcom/powermo/SmartBar/bo;

    iget-object v1, p0, Lcom/powermo/SmartBar/SmartBarService;->g:Lcom/powermo/SmartBar/bz;

    iget-object v2, p0, Lcom/powermo/SmartBar/SmartBarService;->e:Lcom/powermo/SmartBar/c;

    iget-object v3, p0, Lcom/powermo/SmartBar/SmartBarService;->a:Lcom/powermo/SmartBar/SmartApplication;

    invoke-virtual {v3}, Lcom/powermo/SmartBar/SmartApplication;->a()Lcom/powermo/SmartBar/ad;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/powermo/SmartBar/bo;-><init>(Landroid/content/Context;Lcom/powermo/SmartBar/bz;Lcom/powermo/SmartBar/c;Lcom/powermo/SmartBar/ad;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->d:Lcom/powermo/SmartBar/bo;

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->d:Lcom/powermo/SmartBar/bo;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/bo;->a()V

    new-instance v0, Lcom/powermo/SmartBar/cm;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/cm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->h:Lcom/powermo/SmartBar/cm;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.powermo.smartshow.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "cmd_get_status"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/SmartBarService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/SmartBarService;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/SmartBarService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
