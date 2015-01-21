.class public Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addInteger(Ljava/lang/String;I)V
    .locals 5

    const-string v0, "key"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$b;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;->a:Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$b;-><init>(Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData;Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;Ljava/lang/Object;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addInteger(Ljava/lang/String;II)V
    .locals 4

    const-string v0, "key"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$b;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;->a:Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p3}, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$b;-><init>(Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData;Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;Ljava/lang/Object;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addSpeakableString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "key"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "value"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$b;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;->c:Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    const/16 v3, 0xb

    invoke-direct {v1, p0, v2, p2, v3}, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$b;-><init>(Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData;Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;Ljava/lang/Object;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addSpeakableString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "key"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "value"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$b;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;->c:Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    invoke-direct {v1, p0, v2, p2, p3}, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$b;-><init>(Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData;Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;Ljava/lang/Object;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "key"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "value"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$b;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;->b:Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    const/16 v3, 0xa

    invoke-direct {v1, p0, v2, p2, v3}, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$b;-><init>(Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData;Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;Ljava/lang/Object;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "key"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "value"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$b;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;->b:Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;

    invoke-direct {v1, p0, v2, p2, p3}, Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$b;-><init>(Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData;Lcom/nuance/dragon/toolkit/vocon/FuzzyMatchData$a;Ljava/lang/Object;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
