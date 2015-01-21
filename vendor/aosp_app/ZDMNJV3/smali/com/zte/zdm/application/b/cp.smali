.class public Lcom/zte/zdm/application/b/cp;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/lang/String; = "zDM"

.field private static final d:Landroid/content/Context;

.field private static final e:Lcom/zte/zdm/application/b/cp;


# instance fields
.field protected a:Lcom/zte/zdm/application/b/g;

.field private b:Lcom/zte/zdm/application/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/application/b/cp;->d:Landroid/content/Context;

    new-instance v0, Lcom/zte/zdm/application/b/cp;

    sget-object v1, Lcom/zte/zdm/application/b/cp;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/zdm/application/b/cp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zdm/application/b/cp;->e:Lcom/zte/zdm/application/b/cp;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/zte/zdm/application/b/cp;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/b/cp;->b:Lcom/zte/zdm/application/a/a;

    return-void
.end method

.method public static b()Lcom/zte/zdm/application/b/cp;
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/b/cp;->e:Lcom/zte/zdm/application/b/cp;

    return-object v0
.end method

.method private d()V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/b/cp;->b:Lcom/zte/zdm/application/a/a;

    const-string v1, "delay_install"

    invoke-virtual {v0, v1, v3}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cp;->b:Lcom/zte/zdm/application/a/a;

    const-string v2, "report"

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "zDM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[com.zte.zdm.application.controller.AndroidPowerOnResumeController]delayInstall is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "zDM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[com.zte.zdm.application.controller.AndroidPowerOnResumeController]report is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/application/b/cp;->e()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->e()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcom/zte/zdm/application/b/cp;->c()V

    return-void
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/b/cp;->d()V

    return-void
.end method
