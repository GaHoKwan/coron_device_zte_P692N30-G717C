.class Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer;


# static fields
.field static a:Z


# instance fields
.field private final b:Lcom/nuance/dragon/toolkit/file/FileManager;

.field private c:J

.field private d:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field private final e:Ljava/util/HashMap;

.field private f:Ljava/lang/String;

.field private g:Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer$SpeakListener;

.field private h:[S

.field private i:I

.field private j:I

.field private k:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->a:Z

    :try_start_0
    const-string v0, "dmt_vex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->a:Z

    goto :goto_0
.end method

.method constructor <init>(Lcom/nuance/dragon/toolkit/file/FileManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->b:Lcom/nuance/dragon/toolkit/file/FileManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->e:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;[S[JZ)V
    .locals 12

    const/4 v2, 0x0

    if-eqz p1, :cond_b

    move v0, v2

    move v1, v2

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    if-nez v1, :cond_1

    iget v4, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->i:I

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->h:[S

    array-length v5, v5

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->h:[S

    iget v5, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->i:I

    aget-short v6, p1, v0

    aput-short v6, v4, v5

    iget v4, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->i:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->i:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_2
    if-eqz p2, :cond_3

    move v0, v2

    :goto_3
    array-length v3, p2

    if-ge v0, v3, :cond_3

    aget-wide v5, p2, v0

    const/4 v3, 0x2

    invoke-virtual {p0, v5, v6, v3}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->vocalizerGetMarkerValue(JI)I

    move-result v3

    aget-wide v5, p2, v0

    const/4 v7, 0x3

    invoke-virtual {p0, v5, v6, v7}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->vocalizerGetMarkerValue(JI)I

    move-result v5

    new-instance v6, Lcom/nuance/dragon/toolkit/audio/TtsMarker;

    iget-object v7, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->f:Ljava/lang/String;

    invoke-direct {v6, v7, v3, v5}, Lcom/nuance/dragon/toolkit/audio/TtsMarker;-><init>(Ljava/lang/String;II)V

    iget v3, v6, Lcom/nuance/dragon/toolkit/audio/TtsMarker;->len:I

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    if-nez v1, :cond_4

    if-eqz p3, :cond_a

    :cond_4
    iget-object v5, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->d:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iget-object v6, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->h:[S

    iget v7, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->i:I

    iget-object v8, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->k:Ljava/util/ArrayList;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/TtsMarker;

    const/4 v1, 0x0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v3, v10, :cond_5

    add-int/lit8 v1, v3, 0x1

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/audio/TtsMarker;

    :cond_5
    if-eqz v1, :cond_6

    iget v10, v0, Lcom/nuance/dragon/toolkit/audio/TtsMarker;->start:I

    iget v11, v0, Lcom/nuance/dragon/toolkit/audio/TtsMarker;->len:I

    add-int/2addr v10, v11

    iget v1, v1, Lcom/nuance/dragon/toolkit/audio/TtsMarker;->start:I

    if-ge v10, v1, :cond_7

    :cond_6
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAudioChunk() length = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v1, v7, [S

    array-length v0, v1

    invoke-static {v6, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    new-array v0, v2, [Lcom/nuance/dragon/toolkit/audio/TtsMarker;

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/dragon/toolkit/audio/TtsMarker;

    invoke-direct {v3, v5, v1, v0}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[S[Lcom/nuance/dragon/toolkit/audio/TtsMarker;)V

    iput v2, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->i:I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_9

    move v0, v4

    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_9

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->h:[S

    iget v2, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->i:I

    aget-short v4, p1, v0

    aput-short v4, v1, v2

    iget v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->i:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->g:Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer$SpeakListener;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->g:Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer$SpeakListener;

    invoke-interface {v0, v3, p3}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer$SpeakListener;->onNewChunk(Lcom/nuance/dragon/toolkit/audio/AudioChunk;Z)V

    :cond_a
    return-void

    :cond_b
    move v1, v2

    move v4, v2

    goto/16 :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;I)Lcom/nuance/dragon/toolkit/audio/AudioType;
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->d:Lcom/nuance/dragon/toolkit/audio/AudioType;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    new-array v1, v0, [J

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->b:Lcom/nuance/dragon/toolkit/file/FileManager;

    new-instance v6, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl$1;

    invoke-direct {v6, p0}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl$1;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;)V

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->vocalizerCreate([JLcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;Ljava/lang/String;ILcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl$OutputDeviceListener;)I

    move-result v0

    if-nez v0, :cond_3

    aget-wide v2, v1, v7

    cmp-long v2, v2, v8

    if-eqz v2, :cond_3

    aget-wide v0, v1, v7

    iput-wide v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->c:J

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->c:J

    invoke-virtual {p0, v0, v1}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->vocalizerGetAudioFrequency(J)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v0, "Unable to create native Vocalizer (invalid model frequency)."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->c:J

    invoke-virtual {p0, v0, v1}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->vocalizerDestroy(J)V

    iput-wide v8, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->c:J

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->d:Lcom/nuance/dragon/toolkit/audio/AudioType;

    return-object v0

    :sswitch_0
    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioType;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    const/16 v2, 0x1f40

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/audio/AudioType;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;I)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->d:Lcom/nuance/dragon/toolkit/audio/AudioType;

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioType;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    const/16 v2, 0x2b11

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/audio/AudioType;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;I)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->d:Lcom/nuance/dragon/toolkit/audio/AudioType;

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioType;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    const/16 v2, 0x3e80

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/audio/AudioType;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;I)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->d:Lcom/nuance/dragon/toolkit/audio/AudioType;

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioType;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    const/16 v2, 0x5622

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/audio/AudioType;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;I)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->d:Lcom/nuance/dragon/toolkit/audio/AudioType;

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create native Vocalizer (error status = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xb -> :sswitch_1
        0x10 -> :sswitch_2
        0x16 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a()V
    .locals 8

    const-wide/16 v6, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->c:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->c:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->vocalizerReleaseResource(JJ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->c:J

    invoke-virtual {p0, v0, v1}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->vocalizerDestroy(J)V

    iput-wide v6, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->c:J

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->c:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->vocalizerReleaseResource(JJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The vocalizer resource was never loaded or has already been released: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->c:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_2

    new-array v5, v6, [J

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->c:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->vocalizerLoadResource(JLjava/lang/String;Ljava/lang/String;[J)I

    move-result v0

    if-nez v0, :cond_0

    aget-wide v1, v5, v7

    cmp-long v1, v1, v8

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->e:Ljava/util/HashMap;

    aget-wide v1, v5, v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v6

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to load resource (error status = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v7

    goto :goto_0

    :cond_1
    const-string v0, "This resource is already loaded."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    move v0, v7

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ZIIIILcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer$SpeakListener;)Z
    .locals 10

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->f:Ljava/lang/String;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->g:Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizer$SpeakListener;

    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->i:I

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->d:Lcom/nuance/dragon/toolkit/audio/AudioType;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getSampleCount(I)I

    move-result v1

    iput v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->j:I

    iget v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->j:I

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->h:[S

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->k:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Output buffer target length = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->c:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->vocalizerSpeak(JLjava/lang/String;ZIIII)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->b:Lcom/nuance/dragon/toolkit/file/FileManager;

    invoke-virtual {p0, v0, p1}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->getVocalizerModels(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->c:J

    invoke-virtual {p0, v0, v1}, Lcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl;->vocalizerCancel(J)V

    :cond_0
    return-void
.end method

.method public native getVocalizerModels(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/util/List;)I
.end method

.method public native vocalizerCancel(J)V
.end method

.method public native vocalizerCreate([JLcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;Ljava/lang/String;ILcom/nuance/dragon/toolkit/vocalizer/NativeVocalizerExpressiveImpl$OutputDeviceListener;)I
.end method

.method public native vocalizerDestroy(J)V
.end method

.method public native vocalizerGetAudioFrequency(J)I
.end method

.method public native vocalizerGetMarkerValue(JI)I
.end method

.method public native vocalizerLoadResource(JLjava/lang/String;Ljava/lang/String;[J)I
.end method

.method public native vocalizerReleaseResource(JJ)V
.end method

.method public native vocalizerSpeak(JLjava/lang/String;ZIIII)I
.end method
