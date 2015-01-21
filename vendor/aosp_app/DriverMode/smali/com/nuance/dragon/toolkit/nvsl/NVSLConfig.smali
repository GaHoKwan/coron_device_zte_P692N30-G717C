.class public Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# static fields
.field private static final KEY_LANGIDFILE:Ljava/lang/String; = "langidfile"

.field private static final KEY_SPKIDFILE:Ljava/lang/String; = "spkidfile"

.field private static final KEY_XMLCONFFILE:Ljava/lang/String; = "xmlconffile"


# instance fields
.field final languageIdFile:Ljava/lang/String;

.field final speakerIdFile:Ljava/lang/String;

.field final xmlConfFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "NVSLEngine.xml"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "NVSLEngine.xml"

    invoke-direct {p0, v0, p1, p2}, Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "xmlConfFile"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "speakerIdFile"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p3, :cond_0

    const-string v0, "languageIdFile"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;->xmlConfFile:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;->speakerIdFile:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;->languageIdFile:Ljava/lang/String;

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;
    .locals 4

    const/4 v3, 0x0

    const-string v0, "xmlconffile"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "spkidfile"

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "langidfile"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;

    invoke-direct {v3, v0, v1, v2}, Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;->speakerIdFile:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;->speakerIdFile:Ljava/lang/String;

    const-string v1, ".nsrpkg"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;->languageIdFile:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;->languageIdFile:Ljava/lang/String;

    const-string v2, ".nlrpkg"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v1, "xmlconffile"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;->xmlConfFile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "spkidfile"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;->speakerIdFile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "langidfile"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/nvsl/NVSLConfig;->languageIdFile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v0
.end method
