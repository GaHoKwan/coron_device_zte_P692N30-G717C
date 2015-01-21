.class public Lcom/nuance/dragon/toolkit/audio/AudioType;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# static fields
.field public static final OPUS_NB:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field public static final OPUS_WB:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field public static final PCM_11k:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field public static final PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field public static final PCM_22k:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field public static final PCM_44k:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field public static final PCM_48k:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field public static final PCM_8k:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field public static final SPEEX_NB:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field public static final SPEEX_WB:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field public static final UNKNOWN:Lcom/nuance/dragon/toolkit/audio/AudioType;


# instance fields
.field public final encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

.field public final frequency:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x3e80

    const/16 v3, 0x1f40

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioType;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    const v2, 0xbb80

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/audio/AudioType;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_48k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioType;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    const v2, 0xac44

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/audio/AudioType;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_44k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioType;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    const/16 v2, 0x5622

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/audio/AudioType;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_22k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioType;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    invoke-direct {v0, v1, v4}, Lcom/nuance/dragon/toolkit/audio/AudioType;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_16k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioType;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    const/16 v2, 0x2b11

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/audio/AudioType;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_11k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioType;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    invoke-direct {v0, v1, v3}, Lcom/nuance/dragon/toolkit/audio/AudioType;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->PCM_8k:Lcom/nuance/dragon/toolkit/audio/AudioType;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioType;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->SPEEX:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    invoke-direct {v0, v1, v4}, Lcom/nuance/dragon/toolkit/audio/AudioType;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->SPEEX_WB:Lcom/nuance/dragon/toolkit/audio/AudioType;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioType;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->SPEEX:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    invoke-direct {v0, v1, v3}, Lcom/nuance/dragon/toolkit/audio/AudioType;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->SPEEX_NB:Lcom/nuance/dragon/toolkit/audio/AudioType;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioType;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->OPUS:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    invoke-direct {v0, v1, v4}, Lcom/nuance/dragon/toolkit/audio/AudioType;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->OPUS_WB:Lcom/nuance/dragon/toolkit/audio/AudioType;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioType;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->OPUS:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    invoke-direct {v0, v1, v3}, Lcom/nuance/dragon/toolkit/audio/AudioType;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->OPUS_NB:Lcom/nuance/dragon/toolkit/audio/AudioType;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioType;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->UNKNOWN:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/audio/AudioType;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType;->UNKNOWN:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    return-void
.end method

.method public static fromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 7

    const-string v0, "freq"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "enc"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->values()[Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioType;

    invoke-direct {v0, v5, v1}, Lcom/nuance/dragon/toolkit/audio/AudioType;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;I)V

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Encoding \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    iget v2, p1, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDuration(I)I
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    if-ne v0, v1, :cond_0

    mul-int/lit16 v0, p1, 0x3e8

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    div-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to detect duration for encoding "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration([S)I
    .locals 1

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getDuration(I)I

    move-result v0

    return v0
.end method

.method public getSampleCount(I)I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v1, "freq"

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "enc"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/AudioType;->encoding:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/AudioType;->frequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
