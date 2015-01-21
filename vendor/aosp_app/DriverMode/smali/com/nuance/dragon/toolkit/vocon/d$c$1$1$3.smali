.class final Lcom/nuance/dragon/toolkit/vocon/d$c$1$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;I)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1$3;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;

    iput p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1$3;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;->c:Lcom/nuance/dragon/toolkit/vocon/d$c$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$1;->e:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/vocon/d$c;)Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1$3;->b:Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1;->c:Lcom/nuance/dragon/toolkit/vocon/d$c$1;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c$1;->e:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/vocon/d$c;)Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;

    move-result-object v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$1$1$3;->a:I

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$SignalListener;->onUpdate(F)V

    :cond_0
    return-void
.end method
