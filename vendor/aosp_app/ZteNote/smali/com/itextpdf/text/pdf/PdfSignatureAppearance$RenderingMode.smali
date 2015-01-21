.class public final enum Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;
.super Ljava/lang/Enum;
.source "PdfSignatureAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfSignatureAppearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

.field public static final enum DESCRIPTION:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

.field public static final enum GRAPHIC:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

.field public static final enum GRAPHIC_AND_DESCRIPTION:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

.field public static final enum NAME_AND_DESCRIPTION:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 550
    new-instance v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    const-string v1, "DESCRIPTION"

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;->DESCRIPTION:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    .line 554
    new-instance v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    const-string v1, "NAME_AND_DESCRIPTION"

    invoke-direct {v0, v1, v3}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;->NAME_AND_DESCRIPTION:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    .line 558
    new-instance v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    const-string v1, "GRAPHIC_AND_DESCRIPTION"

    invoke-direct {v0, v1, v4}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;->GRAPHIC_AND_DESCRIPTION:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    .line 562
    new-instance v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    const-string v1, "GRAPHIC"

    invoke-direct {v0, v1, v5}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;->GRAPHIC:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    .line 546
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;->DESCRIPTION:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;->NAME_AND_DESCRIPTION:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;->GRAPHIC_AND_DESCRIPTION:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;->GRAPHIC:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;->$VALUES:[Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

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
    .line 546
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 546
    const-class v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    return-object v0
.end method

.method public static final values()[Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;
    .locals 1

    .prologue
    .line 546
    sget-object v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;->$VALUES:[Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    invoke-virtual {v0}, [Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    return-object v0
.end method
