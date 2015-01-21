.class Lcom/nuance/dragon/toolkit/cloudservices/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/cloudservices/d;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/nuance/a/a/a/b/c/a/a;

.field private final c:Lcom/nuance/dragon/toolkit/cloudservices/b;

.field private final d:Lcom/nuance/a/a/a/b/c/c/e;

.field private final e:Lcom/nuance/a/a/a/b/c/c/f;

.field private f:Lcom/nuance/a/a/a/b/c/c/c;

.field private g:Lcom/nuance/a/a/a/b/c/c/b;

.field private h:Ljava/lang/String;

.field private final i:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

.field private final j:Ljava/util/Map;

.field private final k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/dragon/toolkit/cloudservices/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nuance/dragon/toolkit/cloudservices/e;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/nuance/a/a/a/b/c/a/a;Lcom/nuance/dragon/toolkit/cloudservices/b;Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->b:Lcom/nuance/a/a/a/b/c/a/a;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->c:Lcom/nuance/dragon/toolkit/cloudservices/b;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->i:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    const-string v0, "no_cmd_yet"

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->h:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->k:Landroid/os/Handler;

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/e$1;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/cloudservices/e$1;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/e;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->d:Lcom/nuance/a/a/a/b/c/c/e;

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/e$2;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/cloudservices/e$2;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/e;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->e:Lcom/nuance/a/a/a/b/c/c/f;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->j:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/nuance/a/a/a/b/c/c/g;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sending param "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->g:Lcom/nuance/a/a/a/b/c/c/b;

    invoke-interface {v0, p1}, Lcom/nuance/a/a/a/b/c/c/b;->a(Lcom/nuance/a/a/a/b/c/c/g;)V

    return-void
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/cloudservices/e;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->i:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/cloudservices/e;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->k:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->g:Lcom/nuance/a/a/a/b/c/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->g:Lcom/nuance/a/a/a/b/c/c/b;

    invoke-interface {v0}, Lcom/nuance/a/a/a/b/c/c/b;->a()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->g:Lcom/nuance/a/a/a/b/c/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->f:Lcom/nuance/a/a/a/b/c/c/c;

    invoke-interface {v0, p1}, Lcom/nuance/a/a/a/b/c/c/c;->a(Ljava/lang/String;)Lcom/nuance/a/a/a/b/c/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->j:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/e;->a(Lcom/nuance/a/a/a/b/c/c/g;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This Audio Param ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] has already been sent, it will ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/audio/AudioChunk;Z)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->g:Lcom/nuance/a/a/a/b/c/c/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/e;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/b/c/c/a;

    if-eqz p2, :cond_4

    iget-object v1, p2, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioBytes:[B

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[LATCHK] calling addAudioBuf() vocoded audio:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioBytes:[B

    iget-object v3, p2, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioBytes:[B

    array-length v3, v3

    invoke-interface {v0, v1, v2, v3, p3}, Lcom/nuance/a/a/a/b/c/c/a;->a([BIIZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p2, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v3, v1, [B

    move v1, v2

    :goto_1
    iget-object v4, p2, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    array-length v4, v4

    if-ge v1, v4, :cond_3

    mul-int/lit8 v4, v1, 0x2

    iget-object v5, p2, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    aget-short v5, v5, v1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p2, Lcom/nuance/dragon/toolkit/audio/AudioChunk;->audioShorts:[S

    aget-short v5, v5, v1

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[LATCHK] calling addAudioBuf() pcm audio:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    array-length v1, v3

    invoke-interface {v0, v3, v2, v1, p3}, Lcom/nuance/a/a/a/b/c/c/a;->a([BIIZ)V

    goto :goto_0

    :cond_4
    sget-boolean v1, Lcom/nuance/dragon/toolkit/cloudservices/e;->a:Z

    if-nez v1, :cond_5

    if-nez p3, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    const/4 v1, 0x0

    invoke-interface {v0, v1, v2, v2, p3}, Lcom/nuance/a/a/a/b/c/c/a;->a([BIIZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stream audio last buffer ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->g:Lcom/nuance/a/a/a/b/c/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->f:Lcom/nuance/a/a/a/b/c/c/c;

    invoke-static {p2, v0}, Lcom/nuance/dragon/toolkit/data/a/a;->a(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/a/a/a/b/c/c/c;)Lcom/nuance/a/a/a/b/a/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->f:Lcom/nuance/a/a/a/b/c/c/c;

    invoke-interface {v1, p1, v0}, Lcom/nuance/a/a/a/b/c/c/c;->a(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/c/a;)Lcom/nuance/a/a/a/b/c/c/g;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/e;->a(Lcom/nuance/a/a/a/b/c/c/g;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;I)V
    .locals 15

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->h:Ljava/lang/String;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    new-instance v2, Lcom/nuance/a/a/a/b/b/c;

    const-string v3, "Disable_Bluetooth"

    const-string v4, "TRUE"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/nuance/a/a/a/b/b/c$a;->a:Lcom/nuance/a/a/a/b/b/c$a;

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/a/a/a/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/a/a/a/b/b/c$a;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->b:Lcom/nuance/a/a/a/b/c/a/a;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->d:Lcom/nuance/a/a/a/b/c/c/e;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->c:Lcom/nuance/dragon/toolkit/cloudservices/b;

    invoke-virtual {v4}, Lcom/nuance/dragon/toolkit/cloudservices/b;->b()Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/nuance/a/a/a/b/c/c/d;->a(Lcom/nuance/a/a/a/b/c/a/a;Lcom/nuance/a/a/a/b/c/c/e;Ljava/util/Vector;)Lcom/nuance/a/a/a/b/c/c/c;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->f:Lcom/nuance/a/a/a/b/c/c/c;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->f:Lcom/nuance/a/a/a/b/c/c/c;

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating command "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_9

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->f:Lcom/nuance/a/a/a/b/c/c/c;

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/data/a/a;->a(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/a/a/a/b/c/c/c;)Lcom/nuance/a/a/a/b/a/c/a;

    move-result-object v8

    :goto_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->c:Lcom/nuance/dragon/toolkit/cloudservices/b;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/cloudservices/b;->f()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->c:Lcom/nuance/dragon/toolkit/cloudservices/b;

    invoke-static {}, Lcom/nuance/a/a/a/b/b/d;->a()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->c:Lcom/nuance/dragon/toolkit/cloudservices/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nuance/a/a/a/b/b/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nuance/a/a/a/b/b/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->c:Lcom/nuance/dragon/toolkit/cloudservices/b;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    :goto_1
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->c:Lcom/nuance/dragon/toolkit/cloudservices/b;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/cloudservices/b;->g()Ljava/lang/String;

    move-result-object v10

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->c:Lcom/nuance/dragon/toolkit/cloudservices/b;

    const-string v4, "1.4.2-B005"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->c:Lcom/nuance/dragon/toolkit/cloudservices/b;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/cloudservices/b;->a()Ljava/lang/String;

    move-result-object v11

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->c:Lcom/nuance/dragon/toolkit/cloudservices/b;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/cloudservices/b;->b()Ljava/lang/String;

    move-result-object v12

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->c:Lcom/nuance/dragon/toolkit/cloudservices/b;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/language/Language;->getGrammarLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "xxx-XXX"

    :cond_0
    const-string v5, "dictation_language"

    invoke-interface {v8, v5}, Lcom/nuance/a/a/a/b/a/c/a;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v2, "dictation_language"

    invoke-interface {v8, v2}, Lcom/nuance/a/a/a/b/a/c/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    const-string v2, "ui_language"

    invoke-interface {v8, v2}, Lcom/nuance/a/a/a/b/a/c/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ui_language"

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v2, v13}, Lcom/nuance/a/a/a/b/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "phone_submodel"

    invoke-interface {v8, v2}, Lcom/nuance/a/a/a/b/a/c/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "phone_submodel"

    invoke-interface {v8, v2, v7}, Lcom/nuance/a/a/a/b/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v2, "phone_OS"

    invoke-interface {v8, v2}, Lcom/nuance/a/a/a/b/a/c/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "phone_OS"

    invoke-interface {v8, v2, v9}, Lcom/nuance/a/a/a/b/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v2, "locale"

    invoke-interface {v8, v2}, Lcom/nuance/a/a/a/b/a/c/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "locale"

    invoke-interface {v8, v2, v1}, Lcom/nuance/a/a/a/b/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v1, "nmaid"

    invoke-interface {v8, v1}, Lcom/nuance/a/a/a/b/a/c/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "nmaid"

    invoke-interface {v8, v1, v12}, Lcom/nuance/a/a/a/b/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v1, "network_type"

    invoke-interface {v8, v1}, Lcom/nuance/a/a/a/b/a/c/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "network_type"

    invoke-interface {v8, v1, v10}, Lcom/nuance/a/a/a/b/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v1, "application_name"

    invoke-interface {v8, v1}, Lcom/nuance/a/a/a/b/a/c/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "application_name"

    invoke-interface {v8, v1, v11}, Lcom/nuance/a/a/a/b/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->f:Lcom/nuance/a/a/a/b/c/c/c;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->e:Lcom/nuance/a/a/a/b/c/c/f;

    move/from16 v0, p3

    int-to-long v9, v0

    invoke-interface/range {v1 .. v10}, Lcom/nuance/a/a/a/b/c/c/c;->a(Lcom/nuance/a/a/a/b/c/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/a/a/a/b/a/c/a;J)Lcom/nuance/a/a/a/b/c/c/b;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->g:Lcom/nuance/a/a/a/b/c/c/b;

    :cond_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->f:Lcom/nuance/a/a/a/b/c/c/c;

    invoke-interface {v1}, Lcom/nuance/a/a/a/b/c/c/c;->j()Lcom/nuance/a/a/a/b/a/c/a;

    move-result-object v8

    goto/16 :goto_0

    :cond_a
    const-string v1, "xxx-XXX"

    goto/16 :goto_1

    :cond_b
    move-object v5, v2

    goto/16 :goto_2
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/a/a/a/b/b/a;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->g:Lcom/nuance/a/a/a/b/c/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->f:Lcom/nuance/a/a/a/b/c/c/c;

    invoke-static {p2, v0}, Lcom/nuance/dragon/toolkit/data/a/a;->a(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/a/a/a/b/c/c/c;)Lcom/nuance/a/a/a/b/a/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->f:Lcom/nuance/a/a/a/b/c/c/c;

    invoke-interface {v1, p1, v0, p3}, Lcom/nuance/a/a/a/b/c/c/c;->a(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/c/a;Lcom/nuance/a/a/a/b/b/a;)Lcom/nuance/a/a/a/b/c/c/g;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/e;->a(Lcom/nuance/a/a/a/b/c/c/g;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->g:Lcom/nuance/a/a/a/b/c/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->f:Lcom/nuance/a/a/a/b/c/c/c;

    invoke-interface {v0, p1, p2}, Lcom/nuance/a/a/a/b/c/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/a/a/a/b/c/c/g;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/e;->a(Lcom/nuance/a/a/a/b/c/c/g;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->g:Lcom/nuance/a/a/a/b/c/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->f:Lcom/nuance/a/a/a/b/c/c/c;

    invoke-interface {v0, p1, p2}, Lcom/nuance/a/a/a/b/c/c/c;->a(Ljava/lang/String;[B)Lcom/nuance/a/a/a/b/c/c/g;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/e;->a(Lcom/nuance/a/a/a/b/c/c/g;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->f:Lcom/nuance/a/a/a/b/c/c/c;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->f:Lcom/nuance/a/a/a/b/c/c/c;

    invoke-interface {v0}, Lcom/nuance/a/a/a/b/c/c/c;->a()V
    :try_end_0
    .catch Lcom/nuance/a/a/a/b/c/a/e; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->f:Lcom/nuance/a/a/a/b/c/c/c;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->g:Lcom/nuance/a/a/a/b/c/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->f:Lcom/nuance/a/a/a/b/c/c/c;

    invoke-static {p2, v0}, Lcom/nuance/dragon/toolkit/data/a/a;->a(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/a/a/a/b/c/c/c;)Lcom/nuance/a/a/a/b/a/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->f:Lcom/nuance/a/a/a/b/c/c/c;

    invoke-interface {v1, p1, v0}, Lcom/nuance/a/a/a/b/c/c/c;->b(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/c/a;)Lcom/nuance/a/a/a/b/c/c/g;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/e;->a(Lcom/nuance/a/a/a/b/c/c/g;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->g:Lcom/nuance/a/a/a/b/c/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->f:Lcom/nuance/a/a/a/b/c/c/c;

    invoke-interface {v0, p1, p2}, Lcom/nuance/a/a/a/b/c/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/a/a/a/b/c/c/g;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/e;->a(Lcom/nuance/a/a/a/b/c/c/g;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final c()Lcom/nuance/dragon/toolkit/cloudservices/b;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->c:Lcom/nuance/dragon/toolkit/cloudservices/b;

    return-object v0
.end method

.method public final c(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->g:Lcom/nuance/a/a/a/b/c/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->f:Lcom/nuance/a/a/a/b/c/c/c;

    invoke-static {p2, v0}, Lcom/nuance/dragon/toolkit/data/a/a;->a(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/a/a/a/b/c/c/c;)Lcom/nuance/a/a/a/b/a/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->f:Lcom/nuance/a/a/a/b/c/c/c;

    invoke-interface {v1, p1, v0}, Lcom/nuance/a/a/a/b/c/c/c;->c(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/c/a;)Lcom/nuance/a/a/a/b/c/c/g;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/e;->a(Lcom/nuance/a/a/a/b/c/c/g;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->g:Lcom/nuance/a/a/a/b/c/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->f:Lcom/nuance/a/a/a/b/c/c/c;

    invoke-static {p2, v0}, Lcom/nuance/dragon/toolkit/data/a/a;->a(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Lcom/nuance/a/a/a/b/c/c/c;)Lcom/nuance/a/a/a/b/a/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/e;->f:Lcom/nuance/a/a/a/b/c/c/c;

    invoke-interface {v1, p1, v0}, Lcom/nuance/a/a/a/b/c/c/c;->d(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/c/a;)Lcom/nuance/a/a/a/b/c/c/g;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/e;->a(Lcom/nuance/a/a/a/b/c/c/g;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
