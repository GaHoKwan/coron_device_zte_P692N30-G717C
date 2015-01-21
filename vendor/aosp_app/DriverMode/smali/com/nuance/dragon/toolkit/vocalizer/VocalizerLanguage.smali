.class public final Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field public final description:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final voices:[Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;->description:Ljava/lang/String;

    invoke-static {p3, p4, p0}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;->a([Ljava/lang/String;[Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;)[Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;->voices:[Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;

    return-void
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;)[Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;
    .locals 5

    array-length v0, p0

    new-array v1, v0, [Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;

    aget-object v3, p0, v0

    aget-object v4, p1, v0

    invoke-direct {v2, v3, v4, p2}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerVoice;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;
    .locals 6

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->ALL_LANGUAGES:[Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    iget-object v5, v4, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;->name:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid language name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
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
    instance-of v1, p1, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v1, "name"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;->description:Ljava/lang/String;

    return-object v0
.end method
