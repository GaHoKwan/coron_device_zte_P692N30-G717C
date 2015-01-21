.class final Lcom/nuance/dragon/toolkit/vocon/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/language/LanguageEvent$Listener;

.field final synthetic b:Lcom/nuance/dragon/toolkit/vocon/d;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d;Lcom/nuance/dragon/toolkit/language/LanguageEvent$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$3;->b:Lcom/nuance/dragon/toolkit/vocon/d;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$3;->a:Lcom/nuance/dragon/toolkit/language/LanguageEvent$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/nuance/dragon/toolkit/vocon/Grammar;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$3;->a:Lcom/nuance/dragon/toolkit/language/LanguageEvent$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$3;->a:Lcom/nuance/dragon/toolkit/language/LanguageEvent$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/language/LanguageEvent$Listener;->onComplete(Z)V

    :cond_0
    return-void
.end method

.method public final onError(Lcom/nuance/dragon/toolkit/vocon/VoconError;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$3;->a:Lcom/nuance/dragon/toolkit/language/LanguageEvent$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$3;->a:Lcom/nuance/dragon/toolkit/language/LanguageEvent$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/language/LanguageEvent$Listener;->onComplete(Z)V

    :cond_0
    return-void
.end method
