.class public Lcom/zte/zdm/application/b/cy;
.super Lcom/zte/zdm/e/i;

# interfaces
.implements Lcom/zte/zdm/e/a;


# instance fields
.field private b:Lcom/zte/zdm/a/j;

.field private c:Landroid/media/MediaPlayer;

.field private d:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Lcom/zte/zdm/e/f;)V
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/e/i;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/application/b/cy;->c:Landroid/media/MediaPlayer;

    iput-object p1, p0, Lcom/zte/zdm/application/b/cy;->a:Lcom/zte/zdm/e/f;

    const-string v0, "AndroidTDConfirmationMmiDialog construct"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/b/cy;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/cy;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic b(Lcom/zte/zdm/application/b/cy;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/cy;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/cy;->c:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/zte/zdm/application/b/cy;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method static synthetic c(Lcom/zte/zdm/application/b/cy;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/cy;->d:Landroid/os/Looper;

    return-object v0
.end method

.method private c()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/application/b/cy;->b:Lcom/zte/zdm/a/j;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========================startActivity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SystemUpdateTransparentActivity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    :cond_0
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/zte/zdm/application/b/cy;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/cy;->a()V

    return-void
.end method

.method static synthetic e(Lcom/zte/zdm/application/b/cy;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/cy;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic f(Lcom/zte/zdm/application/b/cy;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/cy;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic g(Lcom/zte/zdm/application/b/cy;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/cy;->a()V

    return-void
.end method

.method static synthetic h(Lcom/zte/zdm/application/b/cy;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/cy;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method

.method static synthetic i(Lcom/zte/zdm/application/b/cy;)Lcom/zte/zdm/e/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/cy;->a:Lcom/zte/zdm/e/f;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Landroid/os/PowerManager$WakeLock;)Landroid/app/AlertDialog$Builder;
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/zte/zdm/application/b/cy;->b:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090183

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090184

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/zte/zdm/application/b/da;

    invoke-direct {v0, p0, p2}, Lcom/zte/zdm/application/b/da;-><init>(Lcom/zte/zdm/application/b/cy;Landroid/os/PowerManager$WakeLock;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090185

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/zte/zdm/application/b/db;

    invoke-direct {v2, p0, p2}, Lcom/zte/zdm/application/b/db;-><init>(Lcom/zte/zdm/application/b/cy;Landroid/os/PowerManager$WakeLock;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object v1
.end method

.method protected a(ILandroid/os/PowerManager$WakeLock;Landroid/app/AlertDialog;)V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/b/cy;->a:Lcom/zte/zdm/e/f;

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p1

    new-instance v2, Lcom/zte/zdm/application/b/cz;

    invoke-direct {v2, p0, p3, p2}, Lcom/zte/zdm/application/b/cz;-><init>(Lcom/zte/zdm/application/b/cy;Landroid/app/AlertDialog;Landroid/os/PowerManager$WakeLock;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/zte/zdm/application/b/cy;->a(JLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Landroid/os/PowerManager$WakeLock;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/cy;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/b/cy;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_1
    return-void
.end method

.method public a(Lcom/zte/zdm/e/f;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "before Looper.prepare()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const-string v0, "after Looper.prepare() into dialog.show"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x3000001a

    const-string v2, "dm"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tdconfirmation: isScreenOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-direct {p0}, Lcom/zte/zdm/application/b/cy;->c()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===========create dlg! screen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/zte/zdm/application/b/cy;->b:Lcom/zte/zdm/a/j;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v1}, Lcom/zte/zdm/application/b/cy;->a(Ljava/lang/String;Landroid/os/PowerManager$WakeLock;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-direct {p0}, Lcom/zte/zdm/application/b/cy;->b()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===========show dlg! screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/application/b/cy;->b:Lcom/zte/zdm/a/j;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zdm_alert_test: timeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, -0x1

    if-eq p4, v2, :cond_0

    invoke-virtual {p0, p4, v1, v0}, Lcom/zte/zdm/application/b/cy;->a(ILandroid/os/PowerManager$WakeLock;Landroid/app/AlertDialog;)V

    :cond_0
    const-string v0, "Looper.loop()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/cy;->d:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v0, "screen finish"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cy;->b:Lcom/zte/zdm/a/j;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
