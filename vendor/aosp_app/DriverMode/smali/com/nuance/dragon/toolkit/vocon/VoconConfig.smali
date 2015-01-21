.class public Lcom/nuance/dragon/toolkit/vocon/VoconConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:I

.field final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/language/Language;)V
    .locals 2

    const/4 v0, -0x1

    const-string v1, "unspecified"

    invoke-direct {p0, p1, v0, v1}, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;-><init>(Lcom/nuance/dragon/toolkit/language/Language;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/language/Language;ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "language"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "domain"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/language/Language;->getVoconLanguage()Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->c:Ljava/lang/String;

    iput p2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->d:I

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;)V
    .locals 2

    const/4 v0, -0x1

    const-string v1, "unspecified"

    invoke-direct {p0, p1, v0, v1}, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;-><init>(Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "language"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "domain"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->c:Ljava/lang/String;

    iput p2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->d:I

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->c:Ljava/lang/String;

    iput p2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->d:I

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "acmodfile"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "clcfile"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->d:I

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->e:Ljava/lang/String;

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/vocon/VoconConfig;
    .locals 4

    const/4 v2, 0x0

    const-string v0, "acmodfile"

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "clcfile"

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;

    const-string v1, "language"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "domain"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "language"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "size"

    iget v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "domain"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "acmodfile"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "clcfile"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method
