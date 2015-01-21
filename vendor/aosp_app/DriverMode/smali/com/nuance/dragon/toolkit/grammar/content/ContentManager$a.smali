.class final Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:Landroid/os/Handler;

.field private c:Z

.field private d:Z


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;->b:Landroid/os/Handler;

    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$1;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$a;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;->a:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;->a:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;->d:Z

    return v0
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;->c:Z

    return-void
.end method

.method final b()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;->d:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
