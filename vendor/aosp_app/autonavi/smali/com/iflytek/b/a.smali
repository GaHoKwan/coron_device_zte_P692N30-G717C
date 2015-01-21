.class public Lcom/iflytek/b/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:[[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x11

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "surl"

    aput-object v2, v1, v4

    const-string v2, "server_url"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "besturl_search"

    aput-object v2, v1, v4

    const-string v2, "search_best_url"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "bsts"

    aput-object v2, v1, v4

    const-string v2, "search_best_url"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "plain_result"

    aput-object v2, v1, v4

    const-string v2, "plr"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "asr_sch"

    aput-object v3, v2, v4

    const-string v3, "sch"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "asr_ptt"

    aput-object v3, v2, v4

    const-string v3, "ptt"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "grammar_type"

    aput-object v3, v2, v4

    const-string v3, "grt"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "search_area"

    aput-object v3, v2, v4

    const-string v3, "area"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "vad_bos"

    aput-object v3, v2, v4

    const-string v3, "vad_timeout"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bos"

    aput-object v3, v2, v4

    const-string v3, "vad_timeout"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "vad_eos"

    aput-object v3, v2, v4

    const-string v3, "vad_speech_tail"

    aput-object v3, v2, v5

    const-string v3, "eos"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "eos"

    aput-object v3, v2, v4

    const-string v3, "vad_speech_tail"

    aput-object v3, v2, v5

    const-string v3, "eos"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "asr_audio_path"

    aput-object v3, v2, v4

    const-string v3, "aap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tts_buffer_time"

    aput-object v3, v2, v4

    const-string v3, "tbt"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tts_audio_path"

    aput-object v3, v2, v4

    const-string v3, "tap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "subject"

    aput-object v3, v2, v4

    const-string v3, "sub"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "data_type"

    aput-object v3, v2, v4

    const-string v3, "dtt"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/b/a;->a:[[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "tap"

    aput-object v1, v0, v4

    const-string v1, "aap"

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/b/a;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/iflytek/c/a;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/iflytek/b/a;->b:[Ljava/lang/String;

    array-length v4, v3

    move v2, v0

    :goto_1
    if-lt v2, v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    aget-object v5, v3, v2

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
