.class final Lcom/nuance/dragon/toolkit/vocon/d$a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:Lcom/nuance/dragon/toolkit/vocon/d$a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$3;->e:Lcom/nuance/dragon/toolkit/vocon/d$a;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$3;->c:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$3;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$3;->e:Lcom/nuance/dragon/toolkit/vocon/d$a;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$a;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$3;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$3;->e:Lcom/nuance/dragon/toolkit/vocon/d$a;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/d$a;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d;->e(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$3;->c:Ljava/lang/Runnable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$a$3;->d:Ljava/lang/Runnable;

    goto :goto_0
.end method
