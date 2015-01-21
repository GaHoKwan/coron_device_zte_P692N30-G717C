.class public final enum Lcom/autonavi/xm/navigation/server/GAppWindowMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/xm/navigation/server/GAppWindowMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/GAppWindowMode;

.field public static final enum GAPP_WINDOW_MODE_MULTIPLE:Lcom/autonavi/xm/navigation/server/GAppWindowMode;

.field public static final enum GAPP_WINDOW_MODE_SINGLE:Lcom/autonavi/xm/navigation/server/GAppWindowMode;


# instance fields
.field public nativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/GAppWindowMode;

    const-string v1, "GAPP_WINDOW_MODE_SINGLE"

    invoke-direct {v0, v1, v2, v2}, Lcom/autonavi/xm/navigation/server/GAppWindowMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/GAppWindowMode;->GAPP_WINDOW_MODE_SINGLE:Lcom/autonavi/xm/navigation/server/GAppWindowMode;

    new-instance v0, Lcom/autonavi/xm/navigation/server/GAppWindowMode;

    const-string v1, "GAPP_WINDOW_MODE_MULTIPLE"

    invoke-direct {v0, v1, v3, v3}, Lcom/autonavi/xm/navigation/server/GAppWindowMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/GAppWindowMode;->GAPP_WINDOW_MODE_MULTIPLE:Lcom/autonavi/xm/navigation/server/GAppWindowMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/GAppWindowMode;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GAppWindowMode;->GAPP_WINDOW_MODE_SINGLE:Lcom/autonavi/xm/navigation/server/GAppWindowMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/navigation/server/GAppWindowMode;->GAPP_WINDOW_MODE_MULTIPLE:Lcom/autonavi/xm/navigation/server/GAppWindowMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/autonavi/xm/navigation/server/GAppWindowMode;->$VALUES:[Lcom/autonavi/xm/navigation/server/GAppWindowMode;

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

    iput p3, p0, Lcom/autonavi/xm/navigation/server/GAppWindowMode;->nativeValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/autonavi/xm/navigation/server/GAppWindowMode;
    .locals 5

    invoke-static {}, Lcom/autonavi/xm/navigation/server/GAppWindowMode;->values()[Lcom/autonavi/xm/navigation/server/GAppWindowMode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/autonavi/xm/navigation/server/GAppWindowMode;->nativeValue:I

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GAppWindowMode;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/GAppWindowMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/GAppWindowMode;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/GAppWindowMode;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GAppWindowMode;->$VALUES:[Lcom/autonavi/xm/navigation/server/GAppWindowMode;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/GAppWindowMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/GAppWindowMode;

    return-object v0
.end method
