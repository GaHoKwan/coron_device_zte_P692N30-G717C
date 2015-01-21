.class final enum Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

.field public static final enum b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

.field private static final synthetic c:[Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

    const-string v1, "IDENTIFICATION"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

    new-instance v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

    const-string v1, "ADAPTATION"

    invoke-direct {v0, v1, v3}, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

    sget-object v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;->a:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;->b:Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;->c:[Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;
    .locals 1

    const-class v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

    return-object v0
.end method

.method public static values()[Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;
    .locals 1

    sget-object v0, Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;->c:[Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

    invoke-virtual {v0}, [Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/dragon/toolkit/nvsl/NVSLIdentifierBase$b;

    return-object v0
.end method
