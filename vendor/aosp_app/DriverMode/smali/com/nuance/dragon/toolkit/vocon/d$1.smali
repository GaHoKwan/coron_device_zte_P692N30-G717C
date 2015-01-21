.class final Lcom/nuance/dragon/toolkit/vocon/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nuance/dragon/toolkit/vocon/VoconConfig;

.field final synthetic c:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$InitializeListener;

.field final synthetic d:Lcom/nuance/dragon/toolkit/vocon/d;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d;Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/VoconConfig;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$InitializeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$1;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/vocon/d$1;->b:Lcom/nuance/dragon/toolkit/vocon/VoconConfig;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/vocon/d$1;->c:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$InitializeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$1;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$1;->b:Lcom/nuance/dragon/toolkit/vocon/VoconConfig;

    iget-object v3, v0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$1;->b:Lcom/nuance/dragon/toolkit/vocon/VoconConfig;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$1;->b:Lcom/nuance/dragon/toolkit/vocon/VoconConfig;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$1;->b:Lcom/nuance/dragon/toolkit/vocon/VoconConfig;

    iget v2, v2, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->d:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$1;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v2, v3}, Lcom/nuance/dragon/toolkit/vocon/d;->b(Lcom/nuance/dragon/toolkit/vocon/d;Ljava/lang/String;)I

    move-result v2

    :goto_0
    if-nez v0, :cond_0

    if-eqz v3, :cond_0

    invoke-static {v3, v2}, Lcom/nuance/dragon/toolkit/vocon/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$1;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, "unspecified"

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/vocon/d$1;->b:Lcom/nuance/dragon/toolkit/vocon/VoconConfig;

    iget-object v4, v4, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$1;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v2, v3}, Lcom/nuance/dragon/toolkit/vocon/d;->c(Lcom/nuance/dragon/toolkit/vocon/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-nez v1, :cond_1

    if-eqz v3, :cond_1

    invoke-static {v3, v2}, Lcom/nuance/dragon/toolkit/vocon/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$1;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$1;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$1;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;Z)Z

    :cond_2
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$1;->d:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/vocon/d;->b(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nuance/dragon/toolkit/vocon/d$1$1;

    invoke-direct {v2, p0, v0}, Lcom/nuance/dragon/toolkit/vocon/d$1$1;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$1;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$1;->b:Lcom/nuance/dragon/toolkit/vocon/VoconConfig;

    iget v2, v2, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->d:I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$1;->b:Lcom/nuance/dragon/toolkit/vocon/VoconConfig;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->e:Ljava/lang/String;

    goto :goto_1
.end method
