.class public final enum Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

.field public static final enum GSA_FLAG_ATM:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

.field public static final enum GSA_FLAG_AUTOMAT:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

.field public static final enum GSA_FLAG_BED:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

.field public static final enum GSA_FLAG_COFFEE:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

.field public static final enum GSA_FLAG_DINING:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

.field public static final enum GSA_FLAG_DRUGSTORE:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

.field public static final enum GSA_FLAG_NATURALGAS:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

.field public static final enum GSA_FLAG_PARKING:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

.field public static final enum GSA_FLAG_PHONEBOOTH:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

.field public static final enum GSA_FLAG_PHYSICAL:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

.field public static final enum GSA_FLAG_REPAIR:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

.field public static final enum GSA_FLAG_RESTING:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

.field public static final enum GSA_FLAG_SHOP:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

.field public static final enum GSA_FLAG_SHOWER:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

.field public static final enum GSA_FLAG_SPECIALITY:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

.field public static final enum GSA_FLAG_WC:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;


# instance fields
.field public nativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    const-string v1, "GSA_FLAG_AUTOMAT"

    const/high16 v2, -0x8000

    invoke-direct {v0, v1, v4, v2}, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_AUTOMAT:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    const-string v1, "GSA_FLAG_BED"

    const/high16 v2, 0x4000

    invoke-direct {v0, v1, v5, v2}, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_BED:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    const-string v1, "GSA_FLAG_COFFEE"

    const/high16 v2, 0x2000

    invoke-direct {v0, v1, v6, v2}, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_COFFEE:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    const-string v1, "GSA_FLAG_DINING"

    const/high16 v2, 0x1000

    invoke-direct {v0, v1, v7, v2}, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_DINING:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    const-string v1, "GSA_FLAG_DRUGSTORE"

    const/high16 v2, 0x800

    invoke-direct {v0, v1, v8, v2}, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_DRUGSTORE:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    const-string v1, "GSA_FLAG_PARKING"

    const/4 v2, 0x5

    const/high16 v3, 0x400

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_PARKING:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    const-string v1, "GSA_FLAG_NATURALGAS"

    const/4 v2, 0x6

    const/high16 v3, 0x200

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_NATURALGAS:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    const-string v1, "GSA_FLAG_PHONEBOOTH"

    const/4 v2, 0x7

    const/high16 v3, 0x100

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_PHONEBOOTH:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    const-string v1, "GSA_FLAG_PHYSICAL"

    const/16 v2, 0x8

    const/high16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_PHYSICAL:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    const-string v1, "GSA_FLAG_REPAIR"

    const/16 v2, 0x9

    const/high16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_REPAIR:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    const-string v1, "GSA_FLAG_RESTING"

    const/16 v2, 0xa

    const/high16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_RESTING:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    const-string v1, "GSA_FLAG_ATM"

    const/16 v2, 0xb

    const/high16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_ATM:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    const-string v1, "GSA_FLAG_SHOP"

    const/16 v2, 0xc

    const/high16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_SHOP:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    const-string v1, "GSA_FLAG_SHOWER"

    const/16 v2, 0xd

    const/high16 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_SHOWER:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    const-string v1, "GSA_FLAG_SPECIALITY"

    const/16 v2, 0xe

    const/high16 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_SPECIALITY:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    const-string v1, "GSA_FLAG_WC"

    const/16 v2, 0xf

    const/high16 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_WC:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_AUTOMAT:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_BED:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_COFFEE:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_DINING:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    aput-object v1, v0, v7

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_DRUGSTORE:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_PARKING:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_NATURALGAS:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_PHONEBOOTH:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_PHYSICAL:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_REPAIR:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_RESTING:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_ATM:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_SHOP:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_SHOWER:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_SPECIALITY:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->GSA_FLAG_WC:Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->$VALUES:[Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->nativeValue:I

    return-void
.end method

.method public static final getFlags(I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->values()[Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    iget v5, v4, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->nativeValue:I

    and-int/2addr v5, p0

    if-eqz v5, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;
    .locals 5

    invoke-static {}, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->values()[Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->nativeValue:I

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->$VALUES:[Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/guide/GServiceAreaFlag;

    return-object v0
.end method
