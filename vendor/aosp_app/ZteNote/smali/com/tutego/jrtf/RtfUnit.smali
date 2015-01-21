.class public abstract enum Lcom/tutego/jrtf/RtfUnit;
.super Ljava/lang/Enum;
.source "RtfUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tutego/jrtf/RtfUnit;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CM:Lcom/tutego/jrtf/RtfUnit;

.field private static final synthetic ENUM$VALUES:[Lcom/tutego/jrtf/RtfUnit;

.field public static final enum INCH:Lcom/tutego/jrtf/RtfUnit;

.field public static final enum POINT:Lcom/tutego/jrtf/RtfUnit;

.field public static final enum TWIPS:Lcom/tutego/jrtf/RtfUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/tutego/jrtf/RtfUnit$1;

    const-string v1, "TWIPS"

    invoke-direct {v0, v1, v2}, Lcom/tutego/jrtf/RtfUnit$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfUnit;->TWIPS:Lcom/tutego/jrtf/RtfUnit;

    .line 43
    new-instance v0, Lcom/tutego/jrtf/RtfUnit$2;

    const-string v1, "POINT"

    invoke-direct {v0, v1, v3}, Lcom/tutego/jrtf/RtfUnit$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfUnit;->POINT:Lcom/tutego/jrtf/RtfUnit;

    .line 46
    new-instance v0, Lcom/tutego/jrtf/RtfUnit$3;

    const-string v1, "INCH"

    invoke-direct {v0, v1, v4}, Lcom/tutego/jrtf/RtfUnit$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfUnit;->INCH:Lcom/tutego/jrtf/RtfUnit;

    .line 49
    new-instance v0, Lcom/tutego/jrtf/RtfUnit$4;

    const-string v1, "CM"

    invoke-direct {v0, v1, v5}, Lcom/tutego/jrtf/RtfUnit$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tutego/jrtf/RtfUnit;->CM:Lcom/tutego/jrtf/RtfUnit;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tutego/jrtf/RtfUnit;

    sget-object v1, Lcom/tutego/jrtf/RtfUnit;->TWIPS:Lcom/tutego/jrtf/RtfUnit;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tutego/jrtf/RtfUnit;->POINT:Lcom/tutego/jrtf/RtfUnit;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tutego/jrtf/RtfUnit;->INCH:Lcom/tutego/jrtf/RtfUnit;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tutego/jrtf/RtfUnit;->CM:Lcom/tutego/jrtf/RtfUnit;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tutego/jrtf/RtfUnit;->ENUM$VALUES:[Lcom/tutego/jrtf/RtfUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/tutego/jrtf/RtfUnit;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/tutego/jrtf/RtfUnit;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tutego/jrtf/RtfUnit;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/tutego/jrtf/RtfUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tutego/jrtf/RtfUnit;

    return-object v0
.end method

.method public static values()[Lcom/tutego/jrtf/RtfUnit;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/tutego/jrtf/RtfUnit;->ENUM$VALUES:[Lcom/tutego/jrtf/RtfUnit;

    array-length v1, v0

    new-array v2, v1, [Lcom/tutego/jrtf/RtfUnit;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public abstract toTwips(D)I
.end method
