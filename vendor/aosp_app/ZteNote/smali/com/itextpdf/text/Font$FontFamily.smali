.class public final enum Lcom/itextpdf/text/Font$FontFamily;
.super Ljava/lang/Enum;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FontFamily"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/itextpdf/text/Font$FontFamily;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/text/Font$FontFamily;

.field public static final enum COURIER:Lcom/itextpdf/text/Font$FontFamily;

.field public static final enum HELVETICA:Lcom/itextpdf/text/Font$FontFamily;

.field public static final enum SYMBOL:Lcom/itextpdf/text/Font$FontFamily;

.field public static final enum TIMES_ROMAN:Lcom/itextpdf/text/Font$FontFamily;

.field public static final enum UNDEFINED:Lcom/itextpdf/text/Font$FontFamily;

.field public static final enum ZAPFDINGBATS:Lcom/itextpdf/text/Font$FontFamily;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    new-instance v0, Lcom/itextpdf/text/Font$FontFamily;

    const-string v1, "COURIER"

    invoke-direct {v0, v1, v3}, Lcom/itextpdf/text/Font$FontFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/Font$FontFamily;->COURIER:Lcom/itextpdf/text/Font$FontFamily;

    .line 72
    new-instance v0, Lcom/itextpdf/text/Font$FontFamily;

    const-string v1, "HELVETICA"

    invoke-direct {v0, v1, v4}, Lcom/itextpdf/text/Font$FontFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/Font$FontFamily;->HELVETICA:Lcom/itextpdf/text/Font$FontFamily;

    .line 73
    new-instance v0, Lcom/itextpdf/text/Font$FontFamily;

    const-string v1, "TIMES_ROMAN"

    invoke-direct {v0, v1, v5}, Lcom/itextpdf/text/Font$FontFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/Font$FontFamily;->TIMES_ROMAN:Lcom/itextpdf/text/Font$FontFamily;

    .line 74
    new-instance v0, Lcom/itextpdf/text/Font$FontFamily;

    const-string v1, "SYMBOL"

    invoke-direct {v0, v1, v6}, Lcom/itextpdf/text/Font$FontFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/Font$FontFamily;->SYMBOL:Lcom/itextpdf/text/Font$FontFamily;

    .line 75
    new-instance v0, Lcom/itextpdf/text/Font$FontFamily;

    const-string v1, "ZAPFDINGBATS"

    invoke-direct {v0, v1, v7}, Lcom/itextpdf/text/Font$FontFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/Font$FontFamily;->ZAPFDINGBATS:Lcom/itextpdf/text/Font$FontFamily;

    .line 76
    new-instance v0, Lcom/itextpdf/text/Font$FontFamily;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/Font$FontFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/Font$FontFamily;->UNDEFINED:Lcom/itextpdf/text/Font$FontFamily;

    .line 70
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/itextpdf/text/Font$FontFamily;

    sget-object v1, Lcom/itextpdf/text/Font$FontFamily;->COURIER:Lcom/itextpdf/text/Font$FontFamily;

    aput-object v1, v0, v3

    sget-object v1, Lcom/itextpdf/text/Font$FontFamily;->HELVETICA:Lcom/itextpdf/text/Font$FontFamily;

    aput-object v1, v0, v4

    sget-object v1, Lcom/itextpdf/text/Font$FontFamily;->TIMES_ROMAN:Lcom/itextpdf/text/Font$FontFamily;

    aput-object v1, v0, v5

    sget-object v1, Lcom/itextpdf/text/Font$FontFamily;->SYMBOL:Lcom/itextpdf/text/Font$FontFamily;

    aput-object v1, v0, v6

    sget-object v1, Lcom/itextpdf/text/Font$FontFamily;->ZAPFDINGBATS:Lcom/itextpdf/text/Font$FontFamily;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/itextpdf/text/Font$FontFamily;->UNDEFINED:Lcom/itextpdf/text/Font$FontFamily;

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/Font$FontFamily;->$VALUES:[Lcom/itextpdf/text/Font$FontFamily;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/text/Font$FontFamily;
    .locals 1
    .parameter "name"

    .prologue
    .line 70
    const-class v0, Lcom/itextpdf/text/Font$FontFamily;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/Font$FontFamily;

    return-object v0
.end method

.method public static final values()[Lcom/itextpdf/text/Font$FontFamily;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/itextpdf/text/Font$FontFamily;->$VALUES:[Lcom/itextpdf/text/Font$FontFamily;

    invoke-virtual {v0}, [Lcom/itextpdf/text/Font$FontFamily;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/text/Font$FontFamily;

    return-object v0
.end method
