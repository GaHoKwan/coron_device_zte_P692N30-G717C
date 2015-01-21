.class public Lcom/nuance/dragon/toolkit/nvsl/NVSLError$Reason;
.super Ljava/lang/Object;


# static fields
.field public static final AUDIO_FRAMES_DROPPED:I = 0x1

.field public static final CANCELED:I = 0x0

.field public static final CANT_START:I = 0x3

.field public static final CONFIG_NOT_COMPATIBLE:I = 0x7

.field public static final FILE_ERROR:I = 0x4

.field public static final LANGID_NOT_SUPPORTED:I = 0x5

.field public static final NOT_INITIALIZED:I = 0x6

.field public static final NO_RESULT:I = 0x2

.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Identification canceled"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Audio frames dropped"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "No identified result"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Can\'t start"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "File error"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Language detection not supported"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "NVSL is not initialized."

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Voiceprint config is not compatible with engine"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLError$Reason;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLError$Reason;->a:[Ljava/lang/String;

    return-object v0
.end method
