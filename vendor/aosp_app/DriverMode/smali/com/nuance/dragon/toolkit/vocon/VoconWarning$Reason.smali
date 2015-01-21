.class public Lcom/nuance/dragon/toolkit/vocon/VoconWarning$Reason;
.super Ljava/lang/Object;


# static fields
.field public static final BAD_SNR:I = 0x1

.field public static final NONE:I = 0x0

.field public static final NO_LEADING_SILENCE:I = 0x6

.field public static final NO_SIGNAL:I = 0x4

.field public static final OVERLOAD:I = 0x2

.field public static final POOR_MIC:I = 0x5

.field public static final TOO_QUIET:I = 0x3

.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "None"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "The signal to noise ratio is too low"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "The speech level is too loud"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "The speech level is too weak"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "No or very low input signal"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "The AGC cannot adjust the gain to get the input signal in the proper range"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "The recording apparantly does not start with leading silence"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/VoconWarning$Reason;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nuance/dragon/toolkit/vocon/VoconWarning$Reason;->a:[Ljava/lang/String;

    return-object v0
.end method
