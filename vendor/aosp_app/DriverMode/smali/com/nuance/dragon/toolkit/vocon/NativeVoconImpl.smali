.class Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/vocon/NativeVocon;


# static fields
.field static a:Z


# instance fields
.field private b:Lcom/nuance/dragon/toolkit/file/FileManager;

.field private c:J

.field private final d:Ljava/util/HashMap;

.field private final e:Ljava/util/HashMap;

.field private final f:Ljava/util/HashMap;

.field private final g:Ljava/util/HashMap;

.field private h:Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a:Z

    :try_start_0
    const-string v0, "dmt_vocon"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;

    const-string v2, "Failed to load native library."

    invoke-static {v1, v2, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a:Z

    goto :goto_0
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/file/FileManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->b:Lcom/nuance/dragon/toolkit/file/FileManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->g:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->h:Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;

    return-object v0
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, -0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-nez p0, :cond_2

    const-string p0, "slot"

    :cond_1
    :goto_1
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private native voconActivateRule(JJLjava/lang/String;)I
.end method

.method private native voconAddIntegerToColumn(JII)I
.end method

.method private native voconAddSpeakablesToColumn(JJI[Ljava/lang/String;)I
.end method

.method private native voconAddStringsToColumn(JI[Ljava/lang/String;)I
.end method

.method private native voconAddWakeupPhrase(JJLjava/lang/String;)I
.end method

.method private native voconAddWord(JJILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native voconAttachWordClass(JJLjava/lang/String;J)I
.end method

.method private native voconCancelAsr(J)V
.end method

.method private native voconCheckWakeupPhrase(JJLjava/lang/String;)Z
.end method

.method private native voconCommitFuzzyMatchRow(J)I
.end method

.method private native voconCommitWordClass(JJ)I
.end method

.method private native voconCreate([JLcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$InputDeviceListener;)I
.end method

.method private native voconCreateContext(JLjava/lang/String;)J
.end method

.method private native voconCreateFuzzyMatchColumn(JLjava/lang/String;I)I
.end method

.method private native voconCreateFuzzyMatchTable(JLjava/lang/String;)J
.end method

.method private native voconCreateWordClass(J)J
.end method

.method private native voconCreateWuwContext(JILjava/lang/String;)J
.end method

.method private native voconDeactivateRules(JJ)I
.end method

.method private native voconDestroy(J)V
.end method

.method private native voconDestroyContext(JJ)I
.end method

.method private native voconDestroyFuzzyMatchTable(J)I
.end method

.method private native voconDestroyWordClass(JJ)I
.end method

.method private native voconDetachWordClass(JJLjava/lang/String;J)I
.end method

.method private native voconEnableVerboseLogging(Z)V
.end method

.method private native voconGetFrameShift(J)I
.end method

.method private native voconLoadResource(JLjava/lang/String;[J)I
.end method

.method private native voconLoadWordClass(JLjava/lang/String;)J
.end method

.method private native voconReleaseResource(JJ)V
.end method

.method private native voconRemoveWord(JJILjava/lang/String;I)I
.end method

.method private native voconSaveWordClass(JJLjava/lang/String;)I
.end method

.method private native voconSetCtxParam(JJIILjava/lang/String;)I
.end method

.method private native voconSetParam(JIIILjava/lang/String;)I
.end method

.method private native voconSetTableQuery(JJLjava/lang/String;I)I
.end method

.method private native voconStartEndpointing(JII)I
.end method

.method private native voconStartRecognizing(J[JIIZ)I
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconCreateFuzzyMatchColumn(JLjava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a()V
    .locals 8

    const-wide/16 v6, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    const-string v0, "Error destroy Vocon: native Vocon does not exist!"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconReleaseResource(JJ)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-direct {p0, v0, v1}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconDestroy(J)V

    iput-wide v6, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconEnableVerboseLogging(Z)V

    return-void
.end method

.method public final a(IILcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;)Z
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const-string v1, "Error starting vocon recognition: native Vocon does not exist."

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-object p3, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->h:Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconStartEndpointing(JII)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-direct {p0, v1, v2, p1}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconCreateContext(JLjava/lang/String;)J

    move-result-wide v1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->d:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)Z
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconCreateWuwContext(JILjava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->d:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;II)Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p2, p3}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconAddIntegerToColumn(JII)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v0, p0

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconRemoveWord(JJILjava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "removeWordClassMember: voconAttachWordClass error!"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v7, v8

    :cond_0
    :goto_0
    return v7

    :cond_1
    move v7, v8

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v0, p0

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconAddWord(JJILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v8

    goto :goto_0

    :cond_1
    move v0, v8

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/Grammar;)Z
    .locals 8

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v6

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_status.grm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->b:Lcom/nuance/dragon/toolkit/file/FileManager;

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/file/FileManager;->openFileForWriting(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p2}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/JSONUtils;->saveToStream(Lorg/json/JSONObject;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_3

    invoke-static {p1, v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconSaveWordClass(JJLjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveVocon ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") native saving vocon error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v6

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error saving Vocon grammar"

    invoke-static {p0, v1, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v6

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    move v0, v6

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->a()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    new-array v1, v6, [J

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->b:Lcom/nuance/dragon/toolkit/file/FileManager;

    new-instance v5, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;

    invoke-direct {v5, p0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$1;-><init>(Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;)V

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconCreate([JLcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl$InputDeviceListener;)I

    move-result v0

    if-nez v0, :cond_0

    aget-wide v2, v1, v7

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    aget-wide v0, v1, v7

    iput-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    move v0, v6

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create native Vocon (error status = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move v0, v7

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setActiveRules ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): no passed rules, keeping default rules."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v9

    :goto_0
    return v8

    :cond_1
    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setActiveRules ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): native Vocon does not exist!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Long;

    if-nez v6, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setActiveRules ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): context is invalid!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconDeactivateRules(JJ)I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setActiveRules ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): unable to deactivate existing rules!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    invoke-static {p1, v7}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconActivateRule(JJLjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setActiveRules ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): unable to activate rule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v8

    :goto_1
    move v8, v0

    goto/16 :goto_0

    :cond_6
    move v0, v9

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 12

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCtxParams ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): no passed params, keeping default params."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-string v0, "setCtxParams (): native Vocon does not exist!"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/Long;

    if-nez v8, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCtxParams (): grammarID("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is invalid!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/Integer;

    iget-object v0, v9, Lcom/nuance/dragon/toolkit/vocon/VoconParam;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, v9, Lcom/nuance/dragon/toolkit/vocon/VoconParam;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v9, Lcom/nuance/dragon/toolkit/vocon/VoconParam;->c:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconSetCtxParam(JJIILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCtxParams (): unable to set parameter ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v9, Lcom/nuance/dragon/toolkit/vocon/VoconParam;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final a(Ljava/util/List;)Z
    .locals 7

    const-string v0, "acmod(\\d+)_(\\d+)_([a-z]{3})_([a-z]+)_([a-z]+)_f(\\d+)(.*)\\.dat"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->b:Lcom/nuance/dragon/toolkit/file/FileManager;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/file/FileManager;->findFiles(Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/vocon/a;->a(Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/vocon/a;->b(Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    new-instance v6, Lcom/nuance/dragon/toolkit/vocon/c;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v6, v5, v4}, Lcom/nuance/dragon/toolkit/vocon/c;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/util/List;IIZLcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;)Z
    .locals 8

    const/4 v7, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, "Error starting vocon recognition: native Vocon does not exist."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Error starting vocon recognition: no recognition context available."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [J

    move v1, v7

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->d:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_3

    const-string v0, "Error starting vocon recognition: context does not exist."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    iput-object p5, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->h:Lcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    move-object v0, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconStartRecognizing(J[JIIZ)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v7, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)Z
    .locals 12

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setParams ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): no passed params, keeping default params."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v10

    :goto_0
    return v0

    :cond_1
    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-string v0, "setParam (): native Vocon does not exist!"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v9

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/nuance/dragon/toolkit/vocon/VoconParam;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/Integer;

    iget-object v0, v7, Lcom/nuance/dragon/toolkit/vocon/VoconParam;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    iget-object v0, v7, Lcom/nuance/dragon/toolkit/vocon/VoconParam;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v7, Lcom/nuance/dragon/toolkit/vocon/VoconParam;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v7, Lcom/nuance/dragon/toolkit/vocon/VoconParam;->c:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconSetParam(JIIILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setParam (): unable to set parameter ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/nuance/dragon/toolkit/vocon/VoconParam;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v9

    goto/16 :goto_0

    :cond_4
    move v0, v10

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-direct {p0, v0, v1}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconGetFrameShift(J)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconDestroyContext(JJ)I

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v0, ";"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, p2, v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconAddStringsToColumn(JI[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconCheckWakeupPhrase(JJLjava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;)Z
    .locals 12

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setTableQuery ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): no passed queries, ignoring."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v9, v10

    :goto_0
    return v9

    :cond_1
    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setTableQuery ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): native Vocon does not exist!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Long;

    if-nez v7, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setTableQuery ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): context is invalid!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/nuance/dragon/toolkit/vocon/VoconTableQuery;

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, v8, Lcom/nuance/dragon/toolkit/vocon/VoconTableQuery;->a:Ljava/lang/String;

    iget v6, v8, Lcom/nuance/dragon/toolkit/vocon/VoconTableQuery;->b:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconSetTableQuery(JJLjava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setActiveRules ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): unable to set query: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v9

    :goto_1
    move v9, v0

    goto/16 :goto_0

    :cond_5
    move v0, v10

    goto :goto_1
.end method

.method public final b(Ljava/util/List;)Z
    .locals 7

    const-string v0, "clc_([a-z]{3})_([a-z0-9]+)(.*)\\.dat"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->b:Lcom/nuance/dragon/toolkit/file/FileManager;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/file/FileManager;->findFiles(Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/vocon/a;->c(Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/vocon/a;->d(Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    new-instance v6, Lcom/nuance/dragon/toolkit/vocon/b;

    invoke-direct {v6, v5, v4}, Lcom/nuance/dragon/toolkit/vocon/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 4

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-direct {p0, v0, v1}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconCancelAsr(J)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 4

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v0, ";"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconAddSpeakablesToColumn(JJI[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v7, v0

    :cond_0
    return v7

    :cond_1
    move v0, v7

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconAddWakeupPhrase(JJLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-direct {p0, v0, v1}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconCreateWordClass(J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->e:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/Long;

    invoke-static {p1, p2}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconAttachWordClass(JJLjava/lang/String;J)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 5

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconDestroyWordClass(JJ)I

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/Long;

    invoke-static {p1, p2}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconDetachWordClass(JJLjava/lang/String;J)I

    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconCommitWordClass(JJ)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-direct {p0, v0, v1, p1}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconCreateFuzzyMatchTable(JLjava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->g:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconCommitFuzzyMatchRow(J)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconDestroyFuzzyMatchTable(J)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->b:Lcom/nuance/dragon/toolkit/file/FileManager;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/file/FileManager;->delete(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->b:Lcom/nuance/dragon/toolkit/file/FileManager;

    invoke-virtual {v1, v0}, Lcom/nuance/dragon/toolkit/file/FileManager;->findFiles(Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/vocon/Grammar;
    .locals 11

    const-wide/16 v9, 0x0

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_status.grm"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    cmp-long v2, v2, v9

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->b:Lcom/nuance/dragon/toolkit/file/FileManager;

    invoke-virtual {v2, v0}, Lcom/nuance/dragon/toolkit/file/FileManager;->openFileForReading(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/util/JSONUtils;->readFromStream(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/vocon/Grammar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "loadVocon: reading Vocon from file error"

    invoke-static {p0, v2, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/vocon/Grammar;->getContexts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->getSlotIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {p1, v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-direct {p0, v6, v7, v5}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconLoadWordClass(JLjava/lang/String;)J

    move-result-wide v6

    cmp-long v8, v6, v9

    if-nez v8, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "loadVocon ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") native loading vocon error"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->e:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method public final l(Ljava/lang/String;)Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    new-array v2, v0, [J

    iget-wide v3, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-direct {p0, v3, v4, p1, v2}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconLoadResource(JLjava/lang/String;[J)I

    move-result v3

    if-nez v3, :cond_0

    aget-wide v4, v2, v1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->f:Ljava/util/HashMap;

    aget-wide v1, v2, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to load resource (error status = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "This resource is already loaded."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 5

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->c:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocon/NativeVoconImpl;->voconReleaseResource(JJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The vocon resource was never loaded or has already been released: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
