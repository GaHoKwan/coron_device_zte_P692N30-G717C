.class final enum Lcom/mediatek/bluetooth/bip/Transformation;
.super Ljava/lang/Enum;
.source "BipImage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/bluetooth/bip/Transformation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/bluetooth/bip/Transformation;

.field public static final enum BIP_TRANS_CROP:Lcom/mediatek/bluetooth/bip/Transformation;

.field public static final enum BIP_TRANS_FILL:Lcom/mediatek/bluetooth/bip/Transformation;

.field public static final enum BIP_TRANS_NONE:Lcom/mediatek/bluetooth/bip/Transformation;

.field public static final enum BIP_TRANS_STRETCH:Lcom/mediatek/bluetooth/bip/Transformation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 439
    new-instance v0, Lcom/mediatek/bluetooth/bip/Transformation;

    const-string v1, "BIP_TRANS_NONE"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/bluetooth/bip/Transformation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/bluetooth/bip/Transformation;->BIP_TRANS_NONE:Lcom/mediatek/bluetooth/bip/Transformation;

    .line 440
    new-instance v0, Lcom/mediatek/bluetooth/bip/Transformation;

    const-string v1, "BIP_TRANS_STRETCH"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/bluetooth/bip/Transformation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/bluetooth/bip/Transformation;->BIP_TRANS_STRETCH:Lcom/mediatek/bluetooth/bip/Transformation;

    .line 441
    new-instance v0, Lcom/mediatek/bluetooth/bip/Transformation;

    const-string v1, "BIP_TRANS_FILL"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/bluetooth/bip/Transformation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/bluetooth/bip/Transformation;->BIP_TRANS_FILL:Lcom/mediatek/bluetooth/bip/Transformation;

    .line 442
    new-instance v0, Lcom/mediatek/bluetooth/bip/Transformation;

    const-string v1, "BIP_TRANS_CROP"

    invoke-direct {v0, v1, v5}, Lcom/mediatek/bluetooth/bip/Transformation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/bluetooth/bip/Transformation;->BIP_TRANS_CROP:Lcom/mediatek/bluetooth/bip/Transformation;

    .line 437
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mediatek/bluetooth/bip/Transformation;

    sget-object v1, Lcom/mediatek/bluetooth/bip/Transformation;->BIP_TRANS_NONE:Lcom/mediatek/bluetooth/bip/Transformation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/bluetooth/bip/Transformation;->BIP_TRANS_STRETCH:Lcom/mediatek/bluetooth/bip/Transformation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/bluetooth/bip/Transformation;->BIP_TRANS_FILL:Lcom/mediatek/bluetooth/bip/Transformation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/bluetooth/bip/Transformation;->BIP_TRANS_CROP:Lcom/mediatek/bluetooth/bip/Transformation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/bluetooth/bip/Transformation;->$VALUES:[Lcom/mediatek/bluetooth/bip/Transformation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 437
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/bluetooth/bip/Transformation;
    .locals 1
    .parameter "name"

    .prologue
    .line 437
    const-class v0, Lcom/mediatek/bluetooth/bip/Transformation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/bip/Transformation;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/bluetooth/bip/Transformation;
    .locals 1

    .prologue
    .line 437
    sget-object v0, Lcom/mediatek/bluetooth/bip/Transformation;->$VALUES:[Lcom/mediatek/bluetooth/bip/Transformation;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/bluetooth/bip/Transformation;

    return-object v0
.end method
