.class public Lcom/farben/faq/e/a;
.super Ljava/lang/Object;


# static fields
.field private static j:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/farben/faq/e/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/farben/faq/e/a;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/farben/faq/e/a;->a:Landroid/content/Context;

    iput-wide v0, p0, Lcom/farben/faq/e/a;->b:J

    iput-wide v0, p0, Lcom/farben/faq/e/a;->c:J

    iput-wide v0, p0, Lcom/farben/faq/e/a;->d:J

    iput-wide v0, p0, Lcom/farben/faq/e/a;->e:J

    iput-object v3, p0, Lcom/farben/faq/e/a;->f:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/farben/faq/e/a;->h:Z

    iput-boolean v2, p0, Lcom/farben/faq/e/a;->i:Z

    iput-object p1, p0, Lcom/farben/faq/e/a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/farben/faq/e/a;I[F)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DOWNLOAD_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    const-string v1, "DOWNLOAD_INFO"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.farben.faq.service.FAQ_BROADCAST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "DOWNLOAD_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/farben/faq/e/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/farben/faq/e/a;J)V
    .locals 0

    iput-wide p1, p0, Lcom/farben/faq/e/a;->e:J

    return-void
.end method

.method static synthetic a(Lcom/farben/faq/e/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/farben/faq/e/a;->h:Z

    return v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/farben/faq/e/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/farben/faq/e/a;J)V
    .locals 0

    iput-wide p1, p0, Lcom/farben/faq/e/a;->d:J

    return-void
.end method

.method static synthetic b(Lcom/farben/faq/e/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/farben/faq/e/a;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/farben/faq/e/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/farben/faq/e/a;->d:J

    return-wide v0
.end method

.method static synthetic c(Lcom/farben/faq/e/a;J)V
    .locals 0

    iput-wide p1, p0, Lcom/farben/faq/e/a;->c:J

    return-void
.end method

.method static synthetic d(Lcom/farben/faq/e/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/farben/faq/e/a;->b:J

    return-wide v0
.end method

.method static synthetic d(Lcom/farben/faq/e/a;J)V
    .locals 0

    iput-wide p1, p0, Lcom/farben/faq/e/a;->b:J

    return-void
.end method

.method static synthetic e(Lcom/farben/faq/e/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/farben/faq/e/a;->c:J

    return-wide v0
.end method

.method static synthetic f(Lcom/farben/faq/e/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/farben/faq/e/a;->e:J

    return-wide v0
.end method

.method static synthetic g(Lcom/farben/faq/e/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/e/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/farben/faq/e/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/e/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/farben/faq/e/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/e/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/farben/faq/e/a;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/farben/faq/e/a;->i:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/farben/faq/e/a;->i:Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-object p1, p0, Lcom/farben/faq/e/a;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/farben/faq/e/a;->g:Ljava/lang/String;

    iput-wide v0, p0, Lcom/farben/faq/e/a;->b:J

    iput-wide v0, p0, Lcom/farben/faq/e/a;->c:J

    iput-wide v0, p0, Lcom/farben/faq/e/a;->d:J

    iput-wide v0, p0, Lcom/farben/faq/e/a;->e:J

    iput-boolean v2, p0, Lcom/farben/faq/e/a;->h:Z

    iput-boolean v2, p0, Lcom/farben/faq/e/a;->i:Z

    new-instance v0, Lcom/farben/faq/e/b;

    invoke-direct {v0, p0}, Lcom/farben/faq/e/b;-><init>(Lcom/farben/faq/e/a;)V

    invoke-virtual {v0}, Lcom/farben/faq/e/b;->start()V

    new-instance v0, Lcom/farben/faq/e/c;

    invoke-direct {v0, p0}, Lcom/farben/faq/e/c;-><init>(Lcom/farben/faq/e/a;)V

    invoke-virtual {v0}, Lcom/farben/faq/e/c;->start()V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/farben/faq/e/a;->h:Z

    return-void
.end method
