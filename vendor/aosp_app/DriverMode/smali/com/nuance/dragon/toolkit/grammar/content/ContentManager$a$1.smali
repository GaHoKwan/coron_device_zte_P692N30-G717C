.class final Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$a;

.field final synthetic d:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;

.field private e:I


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$a;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$1;->d:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;

    const/16 v0, 0x2710

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$1;->a:I

    const v0, 0x36ee80

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$1;->b:I

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$1;->c:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$1;->d:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;->a(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$1;->e:I

    iget v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$1;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$1;->e:I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$1;->d:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;->b(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$1;->e:I

    iget v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$1;->b:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$1;->d:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;->c(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$1;->d:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;->e(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$1;->d:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;->d(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;)Ljava/lang/Runnable;

    move-result-object v1

    iget v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$1;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$1;->d:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;->f(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$1;->c:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$1;->d:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$a;->a()V

    goto :goto_0
.end method
