.class final Lcom/nuance/dragon/toolkit/vocon/d$c$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/vocon/d$c;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$c;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$5;->a:Lcom/nuance/dragon/toolkit/vocon/d$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$5;->a:Lcom/nuance/dragon/toolkit/vocon/d$c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$5;->a:Lcom/nuance/dragon/toolkit/vocon/d$c;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/VoconError;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconError;-><init>(I)V

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/vocon/d$c;Lcom/nuance/dragon/toolkit/vocon/VoconError;)V

    return-void
.end method
