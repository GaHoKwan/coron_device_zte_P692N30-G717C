.class public final Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;
.super Ljava/lang/Object;
.source "ErrorCorrectionLevel.java"


# static fields
.field private static final FOR_BITS:[Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

.field public static final H:Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

.field public static final L:Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

.field public static final M:Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

.field public static final Q:Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;


# instance fields
.field private final bits:I

.field private final name:Ljava/lang/String;

.field private final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    const-string v1, "L"

    invoke-direct {v0, v2, v3, v1}, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;->L:Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    .line 37
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    const-string v1, "M"

    invoke-direct {v0, v3, v2, v1}, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;->M:Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    .line 41
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    const-string v1, "Q"

    invoke-direct {v0, v4, v5, v1}, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;->Q:Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    .line 45
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    const-string v1, "H"

    invoke-direct {v0, v5, v4, v1}, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;->H:Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    sget-object v1, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;->M:Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;->L:Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;->H:Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;->Q:Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;->FOR_BITS:[Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0
    .parameter "ordinal"
    .parameter "bits"
    .parameter "name"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;->ordinal:I

    .line 55
    iput p2, p0, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;->bits:I

    .line 56
    iput-object p3, p0, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;->name:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static forBits(I)Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;
    .locals 1
    .parameter "bits"

    .prologue
    .line 80
    if-ltz p0, :cond_0

    sget-object v0, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;->FOR_BITS:[Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 83
    :cond_1
    sget-object v0, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;->FOR_BITS:[Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method public getBits()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;->bits:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public ordinal()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;->ordinal:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel;->name:Ljava/lang/String;

    return-object v0
.end method
