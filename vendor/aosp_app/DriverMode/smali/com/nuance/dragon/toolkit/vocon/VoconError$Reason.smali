.class public Lcom/nuance/dragon/toolkit/vocon/VoconError$Reason;
.super Ljava/lang/Object;


# static fields
.field public static final ADD_WORD_ERROR:I = 0xb

.field public static final ATTACH_WORD_CLASS_ERROR:I = 0xd

.field public static final AUDIO_FRAMES_DROPPED:I = 0x1

.field public static final CANCELED:I = 0x0

.field public static final CANT_START:I = 0x3

.field public static final CLEAR_GRAMMAR_ERROR:I = 0xe

.field public static final CONTEXT_COMPILATION_ERROR:I = 0xf

.field public static final CONTEXT_DEF_ERROR:I = 0x4

.field public static final CREATE_WORDCLASS:I = 0xa

.field public static final FILE_ERROR:I = 0x6

.field public static final LOAD_GRAMMAR_ERROR:I = 0x9

.field public static final MISSING_WORDLIST:I = 0x7

.field public static final NOT_INITIALIZED:I = 0x8

.field public static final NO_RESULT:I = 0x2

.field public static final REMOVE_WORD_ERROR:I = 0xc

.field public static final WORDSLOT_DEF_ERROR:I = 0x5

.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Recognition canceled"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Audio frames dropped"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "No recognition result"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Can\'t start"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Context definition error"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "WordSlot definition error"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "File error"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Missing wordlist"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Vocon is not initialized."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Vocon load grammar file error"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Vocon create word class error"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Vocon add word error"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Vocon remove word error"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Vocon attach word class error"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Vocon clear grammar error"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Vocon context compilation error"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/VoconError$Reason;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/VoconError$Reason;->a:[Ljava/lang/String;

    return-object v0
.end method
