.class public Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "contentManager"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;)Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$ContentManagerEntry;->b:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    return-object v0
.end method
