.class public final Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field public final description:Ljava/lang/String;

.field public final language:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;->description:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;->language:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;
    .locals 5

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/d;->ALL_VOICES:[Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;
    .locals 4

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;->a(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid voice name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v1, "name"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;->description:Ljava/lang/String;

    return-object v0
.end method
