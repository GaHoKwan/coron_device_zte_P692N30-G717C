.class public Lcom/nuance/dragon/toolkit/grammar/Word;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

.field private final d:I


# direct methods
.method public constructor <init>(ILcom/nuance/dragon/toolkit/data/Data$Dictionary;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    iput p1, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->d:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "surfaceForm"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/nuance/dragon/toolkit/grammar/Word;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->a:Ljava/lang/String;

    invoke-static {p3}, Lcom/nuance/dragon/toolkit/grammar/Word;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    iput p1, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "main"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/nuance/dragon/toolkit/grammar/Word;->a(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->d:I

    return-void
.end method

.method constructor <init>(Ljava/io/ObjectInputStream;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/Word;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/Word;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;
    .locals 4

    new-instance v2, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-direct {v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->getEntries()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data;

    invoke-virtual {v2, v1, v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x7d0

    if-le v1, v3, :cond_1

    const-class v0, Lcom/nuance/dragon/toolkit/grammar/Word;

    const-string v1, "Trimming current \"additional_info\" because it is too long."

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_2

    const-string v0, "additional_info"

    invoke-virtual {v2, v0, p1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->put(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data;)V

    :cond_2
    return-object v2
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x190

    if-le v1, v2, :cond_0

    const-class v1, Lcom/nuance/dragon/toolkit/grammar/Word;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trimming current field because it is too long: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x18f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/grammar/Word;
    .locals 5

    const-string v0, "customform"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "userid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/Word;

    const-string v2, "customform"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(ILcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/Word;

    const-string v2, "surface"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "spoken"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/io/ObjectOutputStream;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->d:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/nuance/dragon/toolkit/grammar/Word;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/grammar/Word;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/grammar/Word;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->b:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/grammar/Word;->b:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/grammar/Word;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->a:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/grammar/Word;->a:Ljava/lang/String;

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/grammar/Word;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget v2, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->d:I

    iget v3, p1, Lcom/nuance/dragon/toolkit/grammar/Word;->d:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getCustomForm()Lcom/nuance/dragon/toolkit/data/Data$Dictionary;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    return-object v0
.end method

.method public getCustomFormDigest()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSpokenForm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSurfaceForm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->d:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->a:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->d:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v2, "customform"

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "userid"

    iget v2, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-eqz v0, :cond_1

    const-string v0, "customform"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_1
    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "surface"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "spoken"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Word [_surfaceForm="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _spokenForm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _customForm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->c:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _userid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/grammar/Word;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
