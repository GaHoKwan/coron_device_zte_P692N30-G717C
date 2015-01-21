.class public Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResultManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;
    .locals 3

    const/16 v2, 0x14

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DictationResultImpl(buffer [size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    :cond_0
    const-string v0, "Cannot parse dictation results: The buffer length is too small to be containing any results."

    const-class v1, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResultManager;

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    array-length v0, p0

    if-le v0, v2, :cond_3

    const/4 v0, 0x0

    const/16 v1, 0x14

    const-string v2, "ISO-8859-1"

    invoke-static {p0, v0, v1, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/i;->a([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<?xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    :cond_2
    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/i;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/i;-><init>([B)V

    :goto_0
    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/d;->a()Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot parse dictation results: illegal format buffer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createDictationEditBuffer(Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;J)Lcom/nuance/dragon/toolkit/recognition/dictation/DictationEditBuffer;
    .locals 1

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;

    check-cast p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

    invoke-direct {v0, p1, p2, p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;-><init>(JLcom/nuance/dragon/toolkit/recognition/dictation/a/f;)V

    return-object v0
.end method

.method public static createDictationEditBuffer([BJ)Lcom/nuance/dragon/toolkit/recognition/dictation/DictationEditBuffer;
    .locals 2

    invoke-static {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResultManager;->a([B)Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;

    invoke-direct {v1, p1, p2, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;-><init>(JLcom/nuance/dragon/toolkit/recognition/dictation/a/f;)V

    return-object v1
.end method

.method public static createDictationResult([B)Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;
    .locals 1

    invoke-static {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResultManager;->a([B)Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

    move-result-object v0

    return-object v0
.end method

.method public static createInterpretationResult([B)Lcom/nuance/dragon/toolkit/recognition/a/c;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createInterpretationResult(buffer [size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    :cond_0
    const-string v0, "Cannot parse interpretation results: The buffer length is too small to be containing any results."

    const-class v1, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResultManager;

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/b;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/b;-><init>([B)V

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/b;->b()V

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/b;->d()Lcom/nuance/dragon/toolkit/recognition/a/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-class v1, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResultManager;

    const-string v2, "Error parsing interpretation result"

    invoke-static {v1, v2, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot parse interpretation results: illegal format buffer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
