.class public Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

.field private final e:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field private final f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 7

    const/16 v6, 0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/audio/AudioType;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/audio/AudioType;I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "command"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ttsParamName"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ttsParamData"

    invoke-static {v0, p4}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ttsParamData"

    const-string v4, "not empty"

    invoke-virtual {p4}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->getEntries()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "audioType"

    invoke-static {v0, p5}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "timeout"

    const-string v3, "greater than 0"

    if-ltz p6, :cond_1

    :goto_1
    invoke-static {v0, v3, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->b:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->c:Ljava/lang/String;

    invoke-static {p4}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->a(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->d:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    iput-object p5, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->e:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iput p6, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->f:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static a(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;
    .locals 5

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->getEntries()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/16 v3, 0xc1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/data/Data;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/data/Data;->getType()S

    move-result v1

    if-ne v3, v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/data/Data$String;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    const/16 v3, 0x1b

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\!"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;
    .locals 7

    const-string v0, "cmd"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "pname"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "pdata"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v4

    const-string v0, "settings"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v2

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/AudioType;->fromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-result-object v5

    const-string v0, "timeout"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/audio/AudioType;I)V

    return-object v0
.end method


# virtual methods
.method public getAudioType()Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->e:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSettings()Lcom/nuance/dragon/toolkit/data/Data$Dictionary;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->b:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->f:I

    return v0
.end method

.method public getTtsParamData()Lcom/nuance/dragon/toolkit/data/Data$Dictionary;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->d:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    return-object v0
.end method

.method public getTtsParamName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v1, "cmd"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "settings"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->b:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "pname"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "pdata"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->d:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "type"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->e:Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/audio/AudioType;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "timeout"

    iget v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/vocalizer/TtsSpec;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v0
.end method
