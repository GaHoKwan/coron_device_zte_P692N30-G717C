.class final Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/language/LanguageEvent$Listener;

.field final synthetic b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;Lcom/nuance/dragon/toolkit/language/LanguageEvent$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$5;->b:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$5;->a:Lcom/nuance/dragon/toolkit/language/LanguageEvent$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$5;->a:Lcom/nuance/dragon/toolkit/language/LanguageEvent$Listener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$5;->a:Lcom/nuance/dragon/toolkit/language/LanguageEvent$Listener;

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/nuance/dragon/toolkit/language/LanguageEvent$Listener;->onComplete(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
