.class public final enum Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;
.super Ljava/lang/Enum;


# static fields
.field public static final enum VOCALIZER_EXPRESSIVE:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;

.field public static final enum VOCALIZER_FOR_AUTOMOTIVE:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;

.field private static final synthetic a:[Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;

    const-string v1, "VOCALIZER_EXPRESSIVE"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;->VOCALIZER_EXPRESSIVE:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;

    const-string v1, "VOCALIZER_FOR_AUTOMOTIVE"

    invoke-direct {v0, v1, v3}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;->VOCALIZER_FOR_AUTOMOTIVE:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;->VOCALIZER_EXPRESSIVE:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;->VOCALIZER_FOR_AUTOMOTIVE:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;->a:[Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;
    .locals 1

    const-class v0, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;

    return-object v0
.end method

.method public static values()[Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;
    .locals 1

    sget-object v0, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;->a:[Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;

    invoke-virtual {v0}, [Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;

    return-object v0
.end method
