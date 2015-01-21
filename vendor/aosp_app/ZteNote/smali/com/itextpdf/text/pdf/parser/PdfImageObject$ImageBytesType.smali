.class public final enum Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;
.super Ljava/lang/Enum;
.source "PdfImageObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/parser/PdfImageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageBytesType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

.field public static final enum CCITT:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

.field public static final enum JBIG2:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

.field public static final enum JP2:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

.field public static final enum JPG:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

.field public static final enum PNG:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;


# instance fields
.field private final fileExtension:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    new-instance v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    const-string v1, "PNG"

    const-string v2, "png"

    invoke-direct {v0, v1, v3, v2}, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;->PNG:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    .line 81
    new-instance v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    const-string v1, "JPG"

    const-string v2, "jpg"

    invoke-direct {v0, v1, v4, v2}, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;->JPG:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    .line 82
    new-instance v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    const-string v1, "JP2"

    const-string v2, "jp2"

    invoke-direct {v0, v1, v5, v2}, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;->JP2:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    .line 83
    new-instance v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    const-string v1, "CCITT"

    const-string v2, "tif"

    invoke-direct {v0, v1, v6, v2}, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;->CCITT:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    .line 84
    new-instance v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    const-string v1, "JBIG2"

    const-string v2, "jbig2"

    invoke-direct {v0, v1, v7, v2}, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;->JBIG2:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    .line 79
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    sget-object v1, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;->PNG:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;->JPG:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;->JP2:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;->CCITT:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;->JBIG2:Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;->$VALUES:[Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "fileExtension"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput-object p3, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;->fileExtension:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;
    .locals 1
    .parameter "name"

    .prologue
    .line 79
    const-class v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    return-object v0
.end method

.method public static final values()[Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;->$VALUES:[Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    invoke-virtual {v0}, [Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;

    return-object v0
.end method


# virtual methods
.method public getFileExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject$ImageBytesType;->fileExtension:Ljava/lang/String;

    return-object v0
.end method
