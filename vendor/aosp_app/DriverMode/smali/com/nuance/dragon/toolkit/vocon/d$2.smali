.class final Lcom/nuance/dragon/toolkit/vocon/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CleanListener;

.field final synthetic c:Lcom/nuance/dragon/toolkit/vocon/d;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d;Ljava/util/List;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CleanListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$2;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$2;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/vocon/d$2;->b:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$CleanListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$2;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$2;->c:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->b(Lcom/nuance/dragon/toolkit/vocon/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/nuance/dragon/toolkit/vocon/d$2$1;

    invoke-direct {v2, p0}, Lcom/nuance/dragon/toolkit/vocon/d$2$1;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$2;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
