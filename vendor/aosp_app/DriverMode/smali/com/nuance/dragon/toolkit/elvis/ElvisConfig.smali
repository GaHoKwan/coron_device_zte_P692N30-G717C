.class public final Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:I


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;I)V
    .locals 1

    const-string v0, "unspecified"

    invoke-direct {p0, p1, v0, p2}, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "language"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "quality"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->b:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/language/Language;I)V
    .locals 1

    const-string v0, "unspecified"

    invoke-direct {p0, p1, v0, p2}, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;-><init>(Lcom/nuance/dragon/toolkit/language/Language;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/language/Language;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "language"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "quality"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/language/Language;->getElvisLanguage()Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->b:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "binfile"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->d:I

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->a:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->d:I

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->c:Ljava/lang/String;

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;
    .locals 4

    const-string v0, "binfile"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;

    const-string v1, "language"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "quality"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sampling_rate"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public final toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "language"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "quality"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "sampling_rate"

    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "binfile"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method
