.class public final Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:I


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "language"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "voice"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;->language:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "language"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "language"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "freqKhz"

    const-string v2, "equals to one of the values from \"Vocalizer.Frequencies\" class"

    if-eqz p2, :cond_0

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/16 v0, 0xb

    if-eq p2, v0, :cond_0

    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    const/16 v0, 0x16

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->b:Ljava/lang/String;

    iput p2, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->c:I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "language and voice"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->b:Ljava/lang/String;

    iput v3, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "language and voice"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v0

    aput-object p2, v3, v1

    invoke-static {v2, v3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "freqKhz"

    const-string v3, "equals to one of the values from \"Vocalizer.Frequencies\" class"

    if-eqz p3, :cond_0

    const/16 v4, 0x8

    if-eq p3, v4, :cond_0

    const/16 v4, 0xb

    if-eq p3, v4, :cond_0

    const/16 v4, 0x10

    if-eq p3, v4, :cond_0

    const/16 v4, 0x16

    if-ne p3, v4, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    invoke-static {v2, v3, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->b:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->c:I

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;
    .locals 4

    const/4 v3, 0x0

    const-string v0, "frequency"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "language"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "voice"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v3, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;

    invoke-direct {v3, v2, v0, v1}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3

    :cond_0
    const-string v0, "voice"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v1, "language"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "voice"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "frequency"

    iget v2, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v0
.end method
