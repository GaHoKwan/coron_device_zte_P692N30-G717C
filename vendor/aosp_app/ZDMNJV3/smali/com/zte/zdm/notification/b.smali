.class public Lcom/zte/zdm/notification/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/notification/g;


# instance fields
.field private a:Lcom/zte/zdm/a/j;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/util/Timer;

.field private f:Landroid/media/MediaPlayer;

.field private g:Lcom/zte/zdm/g/e;


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/notification/b;->e:Ljava/util/Timer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/notification/b;->f:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/zte/zdm/g/e;

    invoke-direct {v0}, Lcom/zte/zdm/g/e;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/notification/b;->g:Lcom/zte/zdm/g/e;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/notification/b;->c:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/notification/b;->d:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/notification/b;Lcom/zte/zdm/a/j;)Lcom/zte/zdm/a/j;
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/notification/b;->a:Lcom/zte/zdm/a/j;

    return-object p1
.end method

.method static synthetic a(Lcom/zte/zdm/notification/b;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/notification/b;->b:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a()V
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

    iput-object v0, p0, Lcom/zte/zdm/notification/b;->f:Landroid/media/MediaPlayer;

    const-string v0, "start mediaPlayer!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/notification/b;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/notification/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/notification/b;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    const-string v0, "initial Transparent Activity"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
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

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/notification/b;->a:Lcom/zte/zdm/a/j;

    if-eqz v0, :cond_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/zte/zdm/notification/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/notification/b;->a()V

    return-void
.end method

.method static synthetic c(Lcom/zte/zdm/notification/b;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/notification/b;->e:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic d(Lcom/zte/zdm/notification/b;)Lcom/zte/zdm/a/j;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/notification/b;->a:Lcom/zte/zdm/a/j;

    return-object v0
.end method

.method static synthetic e(Lcom/zte/zdm/notification/b;)Lcom/zte/zdm/g/e;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/notification/b;->g:Lcom/zte/zdm/g/e;

    return-object v0
.end method

.method static synthetic f(Lcom/zte/zdm/notification/b;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/notification/b;->f:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic g(Lcom/zte/zdm/notification/b;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/notification/b;->d:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/os/PowerManager$WakeLock;)Landroid/app/AlertDialog$Builder;
    .locals 3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/zte/zdm/notification/b;->a:Lcom/zte/zdm/a/j;

    invoke-interface {v0}, Lcom/zte/zdm/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/zte/zdm/notification/d;

    invoke-direct {v2, p0, p2}, Lcom/zte/zdm/notification/d;-><init>(Lcom/zte/zdm/notification/b;Landroid/os/PowerManager$WakeLock;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object v1
.end method

.method protected a(Landroid/os/PowerManager$WakeLock;Landroid/app/AlertDialog;)V
    .locals 4

    iget-object v0, p0, Lcom/zte/zdm/notification/b;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "timeout is invalid"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/notification/b;->e:Ljava/util/Timer;

    new-instance v1, Lcom/zte/zdm/notification/e;

    invoke-direct {v1, p0, p2, p1}, Lcom/zte/zdm/notification/e;-><init>(Lcom/zte/zdm/notification/b;Landroid/app/AlertDialog;Landroid/os/PowerManager$WakeLock;)V

    iget-object v2, p0, Lcom/zte/zdm/notification/b;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    new-instance v0, Lcom/zte/zdm/notification/c;

    invoke-direct {v0, p0, p1}, Lcom/zte/zdm/notification/c;-><init>(Lcom/zte/zdm/notification/b;Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/zte/zdm/notification/b;->g:Lcom/zte/zdm/g/e;

    invoke-static {v0}, Lcom/zte/zdm/g/b;->a(Lcom/zte/zdm/g/e;)V

    iget-object v0, p0, Lcom/zte/zdm/notification/b;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
