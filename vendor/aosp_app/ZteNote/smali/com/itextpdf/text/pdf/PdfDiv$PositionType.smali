.class public final enum Lcom/itextpdf/text/pdf/PdfDiv$PositionType;
.super Ljava/lang/Enum;
.source "PdfDiv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfDiv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PositionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/itextpdf/text/pdf/PdfDiv$PositionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

.field public static final enum ABSOLUTE:Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

.field public static final enum FIXED:Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

.field public static final enum RELATIVE:Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

.field public static final enum STATIC:Lcom/itextpdf/text/pdf/PdfDiv$PositionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    const-string v1, "STATIC"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDiv$PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfDiv$PositionType;->STATIC:Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    new-instance v0, Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    const-string v1, "ABSOLUTE"

    invoke-direct {v0, v1, v3}, Lcom/itextpdf/text/pdf/PdfDiv$PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfDiv$PositionType;->ABSOLUTE:Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    new-instance v0, Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    const-string v1, "FIXED"

    invoke-direct {v0, v1, v4}, Lcom/itextpdf/text/pdf/PdfDiv$PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfDiv$PositionType;->FIXED:Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    new-instance v0, Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    const-string v1, "RELATIVE"

    invoke-direct {v0, v1, v5}, Lcom/itextpdf/text/pdf/PdfDiv$PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfDiv$PositionType;->RELATIVE:Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfDiv$PositionType;->STATIC:Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/itextpdf/text/pdf/PdfDiv$PositionType;->ABSOLUTE:Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/itextpdf/text/pdf/PdfDiv$PositionType;->FIXED:Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/itextpdf/text/pdf/PdfDiv$PositionType;->RELATIVE:Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/itextpdf/text/pdf/PdfDiv$PositionType;->$VALUES:[Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfDiv$PositionType;
    .locals 1
    .parameter "name"

    .prologue
    .line 59
    const-class v0, Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    return-object v0
.end method

.method public static final values()[Lcom/itextpdf/text/pdf/PdfDiv$PositionType;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/itextpdf/text/pdf/PdfDiv$PositionType;->$VALUES:[Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    invoke-virtual {v0}, [Lcom/itextpdf/text/pdf/PdfDiv$PositionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/text/pdf/PdfDiv$PositionType;

    return-object v0
.end method