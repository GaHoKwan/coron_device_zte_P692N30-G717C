.class public final Lcom/itextpdf/text/pdf/qrcode/GF256;
.super Ljava/lang/Object;
.source "GF256.java"


# static fields
.field public static final DATA_MATRIX_FIELD:Lcom/itextpdf/text/pdf/qrcode/GF256;

.field public static final QR_CODE_FIELD:Lcom/itextpdf/text/pdf/qrcode/GF256;


# instance fields
.field private final expTable:[I

.field private final logTable:[I

.field private final one:Lcom/itextpdf/text/pdf/qrcode/GF256Poly;

.field private final zero:Lcom/itextpdf/text/pdf/qrcode/GF256Poly;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/GF256;

    const/16 v1, 0x11d

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/qrcode/GF256;-><init>(I)V

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/GF256;->QR_CODE_FIELD:Lcom/itextpdf/text/pdf/qrcode/GF256;

    .line 33
    new-instance v0, Lcom/itextpdf/text/pdf/qrcode/GF256;

    const/16 v1, 0x12d

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/qrcode/GF256;-><init>(I)V

    sput-object v0, Lcom/itextpdf/text/pdf/qrcode/GF256;->DATA_MATRIX_FIELD:Lcom/itextpdf/text/pdf/qrcode/GF256;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 6
    .parameter "primitive"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x100

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/itextpdf/text/pdf/qrcode/GF256;->expTable:[I

    .line 49
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/itextpdf/text/pdf/qrcode/GF256;->logTable:[I

    .line 50
    const/4 v1, 0x1

    .line 51
    .local v1, x:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 52
    iget-object v2, p0, Lcom/itextpdf/text/pdf/qrcode/GF256;->expTable:[I

    aput v1, v2, v0

    .line 53
    shl-int/lit8 v1, v1, 0x1

    .line 54
    if-lt v1, v3, :cond_0

    .line 55
    xor-int/2addr v1, p1

    .line 51
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0xff

    if-ge v0, v2, :cond_2

    .line 59
    iget-object v2, p0, Lcom/itextpdf/text/pdf/qrcode/GF256;->logTable:[I

    iget-object v3, p0, Lcom/itextpdf/text/pdf/qrcode/GF256;->expTable:[I

    aget v3, v3, v0

    aput v0, v2, v3

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    :cond_2
    new-instance v2, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;

    new-array v3, v5, [I

    aput v4, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;-><init>(Lcom/itextpdf/text/pdf/qrcode/GF256;[I)V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/qrcode/GF256;->zero:Lcom/itextpdf/text/pdf/qrcode/GF256Poly;

    .line 63
    new-instance v2, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;

    new-array v3, v5, [I

    aput v5, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;-><init>(Lcom/itextpdf/text/pdf/qrcode/GF256;[I)V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/qrcode/GF256;->one:Lcom/itextpdf/text/pdf/qrcode/GF256Poly;

    .line 64
    return-void
.end method

.method static addOrSubtract(II)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 95
    xor-int v0, p0, p1

    return v0
.end method


# virtual methods
.method buildMonomial(II)Lcom/itextpdf/text/pdf/qrcode/GF256Poly;
    .locals 2
    .parameter "degree"
    .parameter "coefficient"

    .prologue
    .line 78
    if-gez p1, :cond_0

    .line 79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 81
    :cond_0
    if-nez p2, :cond_1

    .line 82
    iget-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/GF256;->zero:Lcom/itextpdf/text/pdf/qrcode/GF256Poly;

    .line 86
    :goto_0
    return-object v1

    .line 84
    :cond_1
    add-int/lit8 v1, p1, 0x1

    new-array v0, v1, [I

    .line 85
    .local v0, coefficients:[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 86
    new-instance v1, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;

    invoke-direct {v1, p0, v0}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;-><init>(Lcom/itextpdf/text/pdf/qrcode/GF256;[I)V

    goto :goto_0
.end method

.method exp(I)I
    .locals 1
    .parameter "a"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/GF256;->expTable:[I

    aget v0, v0, p1

    return v0
.end method

.method getOne()Lcom/itextpdf/text/pdf/qrcode/GF256Poly;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/GF256;->one:Lcom/itextpdf/text/pdf/qrcode/GF256Poly;

    return-object v0
.end method

.method getZero()Lcom/itextpdf/text/pdf/qrcode/GF256Poly;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/GF256;->zero:Lcom/itextpdf/text/pdf/qrcode/GF256Poly;

    return-object v0
.end method

.method inverse(I)I
    .locals 2
    .parameter "a"

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/GF256;->expTable:[I

    iget-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/GF256;->logTable:[I

    aget v1, v1, p1

    rsub-int v1, v1, 0xff

    aget v0, v0, v1

    return v0
.end method

.method log(I)I
    .locals 1
    .parameter "a"

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/GF256;->logTable:[I

    aget v0, v0, p1

    return v0
.end method

.method multiply(II)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v0, 0x1

    .line 131
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 132
    :cond_0
    const/4 p2, 0x0

    .line 140
    .end local p2
    :cond_1
    :goto_0
    return p2

    .line 134
    .restart local p2
    :cond_2
    if-eq p1, v0, :cond_1

    .line 137
    if-ne p2, v0, :cond_3

    move p2, p1

    .line 138
    goto :goto_0

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/GF256;->expTable:[I

    iget-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/GF256;->logTable:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/qrcode/GF256;->logTable:[I

    aget v2, v2, p2

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0xff

    aget p2, v0, v1

    goto :goto_0
.end method
