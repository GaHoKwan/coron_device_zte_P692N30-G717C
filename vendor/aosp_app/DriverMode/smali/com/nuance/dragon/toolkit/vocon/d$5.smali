.class final Lcom/nuance/dragon/toolkit/vocon/d$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$WakeupCheckListener;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/nuance/dragon/toolkit/vocon/d;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$WakeupCheckListener;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$5;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$5;->a:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$WakeupCheckListener;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/vocon/d$5;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$5;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->f(Lcom/nuance/dragon/toolkit/vocon/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$5;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->b(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/d$5$1;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/vocon/d$5$1;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$5;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/vocon/d$5;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->a(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/vocon/d$5;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$5;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$5;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->b(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/nuance/dragon/toolkit/vocon/d$5$2;

    invoke-direct {v2, p0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$5$2;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$5;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
