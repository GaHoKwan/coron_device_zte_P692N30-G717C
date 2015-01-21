.class public final enum Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;
.super Ljava/lang/Enum;


# static fields
.field public static final enum OPUS:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

.field public static final enum PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

.field public static final enum SPEEX:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

.field public static final enum UNKNOWN:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

.field private static final synthetic a:[Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    const-string v1, "PCM_16"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    const-string v1, "SPEEX"

    invoke-direct {v0, v1, v3}, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->SPEEX:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    const-string v1, "OPUS"

    invoke-direct {v0, v1, v4}, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->OPUS:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->UNKNOWN:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->PCM_16:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->SPEEX:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->OPUS:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->UNKNOWN:Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->a:[Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;
    .locals 1

    const-class v0, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    return-object v0
.end method

.method public static values()[Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;
    .locals 1

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->a:[Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    invoke-virtual {v0}, [Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/dragon/toolkit/audio/AudioType$Encoding;

    return-object v0
.end method
