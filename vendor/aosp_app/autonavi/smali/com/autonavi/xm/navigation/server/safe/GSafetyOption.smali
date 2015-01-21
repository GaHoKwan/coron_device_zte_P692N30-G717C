.class public final enum Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

.field public static final enum G_SAFETY_OPTION_ALL:Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

.field public static final enum G_SAFETY_OPTION_ILLEGAL_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

.field public static final enum G_SAFETY_OPTION_LANE_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

.field public static final enum G_SAFETY_OPTION_OTHERS:Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

.field public static final enum G_SAFETY_OPTION_RESTRICTION_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

.field public static final enum G_SAFETY_OPTION_SPEEDLIMIT:Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

.field public static final enum G_SAFETY_OPTION_SURVEILLANCE_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;


# instance fields
.field public nativeValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    const-string v1, "G_SAFETY_OPTION_SPEEDLIMIT"

    invoke-direct {v0, v1, v7, v4}, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;->G_SAFETY_OPTION_SPEEDLIMIT:Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    const-string v1, "G_SAFETY_OPTION_RESTRICTION_CAMERA"

    invoke-direct {v0, v1, v4, v5}, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;->G_SAFETY_OPTION_RESTRICTION_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    const-string v1, "G_SAFETY_OPTION_ILLEGAL_CAMERA"

    invoke-direct {v0, v1, v5, v6}, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;->G_SAFETY_OPTION_ILLEGAL_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    const-string v1, "G_SAFETY_OPTION_SURVEILLANCE_CAMERA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v8, v2}, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;->G_SAFETY_OPTION_SURVEILLANCE_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    const-string v1, "G_SAFETY_OPTION_LANE_CAMERA"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v6, v2}, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;->G_SAFETY_OPTION_LANE_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    const-string v1, "G_SAFETY_OPTION_OTHERS"

    const/4 v2, 0x5

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;->G_SAFETY_OPTION_OTHERS:Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    new-instance v0, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    const-string v1, "G_SAFETY_OPTION_ALL"

    const/4 v2, 0x6

    const/16 v3, 0x100

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;->G_SAFETY_OPTION_ALL:Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    sget-object v1, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;->G_SAFETY_OPTION_SPEEDLIMIT:Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    aput-object v1, v0, v7

    sget-object v1, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;->G_SAFETY_OPTION_RESTRICTION_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;->G_SAFETY_OPTION_ILLEGAL_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;->G_SAFETY_OPTION_SURVEILLANCE_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    aput-object v1, v0, v8

    sget-object v1, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;->G_SAFETY_OPTION_LANE_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;->G_SAFETY_OPTION_OTHERS:Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;->G_SAFETY_OPTION_ALL:Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;->$VALUES:[Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-long v0, p3

    iput-wide v0, p0, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;->nativeValue:J

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;
    .locals 8

    invoke-static {}, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;->values()[Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-wide v4, v0, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;->nativeValue:J

    int-to-long v6, p0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;->$VALUES:[Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/safe/GSafetyOption;

    return-object v0
.end method
