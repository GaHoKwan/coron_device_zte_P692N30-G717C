.class public Lcom/itextpdf/text/pdf/DocumentFont;
.super Lcom/itextpdf/text/pdf/BaseFont;
.source "DocumentFont.java"


# static fields
.field private static final stdEnc:[I


# instance fields
.field private ascender:F

.field private capHeight:F

.field protected cjkEncoding:Ljava/lang/String;

.field private cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

.field private descender:F

.field private diffmap:Lcom/itextpdf/text/pdf/IntHashtable;

.field private font:Lcom/itextpdf/text/pdf/PdfDictionary;

.field private fontName:Ljava/lang/String;

.field private fontWeight:F

.field private isType0:Z

.field private italicAngle:F

.field private llx:F

.field private lly:F

.field private metrics:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private refFont:Lcom/itextpdf/text/pdf/PRIndirectReference;

.field private uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

.field protected uniMap:Ljava/lang/String;

.field private urx:F

.field private ury:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/pdf/DocumentFont;->stdEnc:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x19t 0x20t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0x49t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x57t 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0x59t 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0x18t 0x20t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0x77t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x7ct 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa1t 0x0t 0x0t 0x0t
        0xa2t 0x0t 0x0t 0x0t
        0xa3t 0x0t 0x0t 0x0t
        0x44t 0x20t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
        0x92t 0x1t 0x0t 0x0t
        0xa7t 0x0t 0x0t 0x0t
        0xa4t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x1ct 0x20t 0x0t 0x0t
        0xabt 0x0t 0x0t 0x0t
        0x39t 0x20t 0x0t 0x0t
        0x3at 0x20t 0x0t 0x0t
        0x1t 0xfbt 0x0t 0x0t
        0x2t 0xfbt 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x13t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x21t 0x20t 0x0t 0x0t
        0xb7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
        0x22t 0x20t 0x0t 0x0t
        0x1at 0x20t 0x0t 0x0t
        0x1et 0x20t 0x0t 0x0t
        0x1dt 0x20t 0x0t 0x0t
        0xbbt 0x0t 0x0t 0x0t
        0x26t 0x20t 0x0t 0x0t
        0x30t 0x20t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xbft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0xc6t 0x2t 0x0t 0x0t
        0xdct 0x2t 0x0t 0x0t
        0xaft 0x0t 0x0t 0x0t
        0xd8t 0x2t 0x0t 0x0t
        0xd9t 0x2t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xdat 0x2t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xddt 0x2t 0x0t 0x0t
        0xdbt 0x2t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x14t 0x20t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xaat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x41t 0x1t 0x0t 0x0t
        0xd8t 0x0t 0x0t 0x0t
        0x52t 0x1t 0x0t 0x0t
        0xbat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xe6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x31t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x42t 0x1t 0x0t 0x0t
        0xf8t 0x0t 0x0t 0x0t
        0x53t 0x1t 0x0t 0x0t
        0xdft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PRIndirectReference;)V
    .locals 3
    .parameter "refFont"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x3cb8

    .line 108
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/BaseFont;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->metrics:Ljava/util/HashMap;

    .line 66
    new-instance v0, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 68
    const/high16 v0, 0x4448

    iput v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->ascender:F

    .line 69
    const/high16 v0, 0x442f

    iput v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->capHeight:F

    .line 70
    iput v1, p0, Lcom/itextpdf/text/pdf/DocumentFont;->descender:F

    .line 71
    iput v2, p0, Lcom/itextpdf/text/pdf/DocumentFont;->italicAngle:F

    .line 72
    iput v2, p0, Lcom/itextpdf/text/pdf/DocumentFont;->fontWeight:F

    .line 73
    const/high16 v0, -0x3db8

    iput v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->llx:F

    .line 74
    iput v1, p0, Lcom/itextpdf/text/pdf/DocumentFont;->lly:F

    .line 75
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->urx:F

    .line 76
    const/high16 v0, 0x4461

    iput v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->ury:F

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->isType0:Z

    .line 109
    iput-object p1, p0, Lcom/itextpdf/text/pdf/DocumentFont;->refFont:Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 110
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->font:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 111
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/DocumentFont;->init()V

    .line 112
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 3
    .parameter "font"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x3cb8

    .line 102
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/BaseFont;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->metrics:Ljava/util/HashMap;

    .line 66
    new-instance v0, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 68
    const/high16 v0, 0x4448

    iput v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->ascender:F

    .line 69
    const/high16 v0, 0x442f

    iput v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->capHeight:F

    .line 70
    iput v1, p0, Lcom/itextpdf/text/pdf/DocumentFont;->descender:F

    .line 71
    iput v2, p0, Lcom/itextpdf/text/pdf/DocumentFont;->italicAngle:F

    .line 72
    iput v2, p0, Lcom/itextpdf/text/pdf/DocumentFont;->fontWeight:F

    .line 73
    const/high16 v0, -0x3db8

    iput v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->llx:F

    .line 74
    iput v1, p0, Lcom/itextpdf/text/pdf/DocumentFont;->lly:F

    .line 75
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->urx:F

    .line 76
    const/high16 v0, 0x4461

    iput v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->ury:F

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->isType0:Z

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->refFont:Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 104
    iput-object p1, p0, Lcom/itextpdf/text/pdf/DocumentFont;->font:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 105
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/DocumentFont;->init()V

    .line 106
    return-void
.end method

.method private decodeString(Lcom/itextpdf/text/pdf/PdfString;)Ljava/lang/String;
    .locals 2
    .parameter "ps"

    .prologue
    .line 193
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfString;->isHexWriting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfString;->getBytes()[B

    move-result-object v0

    const-string v1, "UnicodeBigUnmarked"

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private doType1TT()V
    .locals 29

    .prologue
    .line 288
    const/16 v24, 0x0

    .line 289
    .local v24, toUnicode:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->font:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v26, v0

    sget-object v27, Lcom/itextpdf/text/pdf/PdfName;->ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v26 .. v27}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    .line 290
    .local v9, enc:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v9, :cond_0

    .line 291
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/DocumentFont;->fillEncoding(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 293
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/DocumentFont;->processToUnicode()Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;

    move-result-object v24

    .line 294
    if-eqz v24, :cond_1

    .line 295
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;->createReverseMapping()Ljava/util/Map;

    move-result-object v22

    .line 296
    .local v22, rm:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 297
    .local v16, kv:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    move-object/from16 v27, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #kv:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v22           #rm:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v11

    .line 302
    .local v11, ex:Ljava/lang/Exception;
    new-instance v26, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v26

    invoke-direct {v0, v11}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v26

    .line 306
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v26

    if-eqz v26, :cond_2

    move-object/from16 v26, v9

    .line 307
    check-cast v26, Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/DocumentFont;->fillEncoding(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 348
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->font:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v26, v0

    sget-object v27, Lcom/itextpdf/text/pdf/PdfName;->WIDTHS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v26 .. v27}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v20

    .line 349
    .local v20, newWidths:Lcom/itextpdf/text/pdf/PdfArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->font:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v26, v0

    sget-object v27, Lcom/itextpdf/text/pdf/PdfName;->FIRSTCHAR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v26 .. v27}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v13

    .line 350
    .local v13, first:Lcom/itextpdf/text/pdf/PdfNumber;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->font:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v26, v0

    sget-object v27, Lcom/itextpdf/text/pdf/PdfName;->LASTCHAR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v26 .. v27}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v17

    .line 351
    .local v17, last:Lcom/itextpdf/text/pdf/PdfNumber;
    sget-object v26, Lcom/itextpdf/text/pdf/DocumentFont;->BuiltinFonts14:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->fontName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 354
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->fontName:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "Cp1252"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 359
    .local v4, bf:Lcom/itextpdf/text/pdf/BaseFont;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/pdf/IntHashtable;->toOrderedKeys()[I

    move-result-object v8

    .line 360
    .local v8, e:[I
    const/4 v15, 0x0

    .local v15, k:I
    :goto_1
    array-length v0, v8

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v15, v0, :cond_8

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    move-object/from16 v26, v0

    aget v27, v8, v15

    invoke-virtual/range {v26 .. v27}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v18

    .line 362
    .local v18, n:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->widths:[I

    move-object/from16 v26, v0

    aget v27, v8, v15

    invoke-static/range {v27 .. v27}, Lcom/itextpdf/text/pdf/GlyphList;->unicodeToName(I)Ljava/lang/String;

    move-result-object v27

    move/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getRawWidth(ILjava/lang/String;)I

    move-result v27

    aput v27, v26, v18

    .line 360
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 308
    .end local v4           #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v8           #e:[I
    .end local v13           #first:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v15           #k:I
    .end local v17           #last:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v18           #n:I
    .end local v20           #newWidths:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_2
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v26

    if-eqz v26, :cond_1

    move-object v10, v9

    .line 309
    check-cast v10, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 310
    .local v10, encDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v26, Lcom/itextpdf/text/pdf/PdfName;->BASEENCODING:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    .line 311
    if-nez v9, :cond_3

    .line 312
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/DocumentFont;->fillEncoding(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 315
    :goto_2
    sget-object v26, Lcom/itextpdf/text/pdf/PdfName;->DIFFERENCES:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v7

    .line 316
    .local v7, diffs:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v7, :cond_1

    .line 317
    new-instance v26, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct/range {v26 .. v26}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/DocumentFont;->diffmap:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 318
    const/4 v6, 0x0

    .line 319
    .local v6, currentNumber:I
    const/4 v15, 0x0

    .restart local v15       #k:I
    :goto_3
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v15, v0, :cond_1

    .line 320
    invoke-virtual {v7, v15}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v21

    .line 321
    .local v21, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v26

    if-eqz v26, :cond_4

    .line 322
    check-cast v21, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v21           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v6

    .line 319
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .end local v6           #currentNumber:I
    .end local v7           #diffs:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v15           #k:I
    :cond_3
    move-object/from16 v26, v9

    .line 314
    check-cast v26, Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/DocumentFont;->fillEncoding(Lcom/itextpdf/text/pdf/PdfName;)V

    goto :goto_2

    .line 324
    .restart local v6       #currentNumber:I
    .restart local v7       #diffs:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v15       #k:I
    .restart local v21       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_4
    check-cast v21, Lcom/itextpdf/text/pdf/PdfName;

    .end local v21           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/GlyphList;->nameToUnicode(Ljava/lang/String;)[I

    move-result-object v5

    .line 325
    .local v5, c:[I
    if-eqz v5, :cond_6

    array-length v0, v5

    move/from16 v26, v0

    if-lez v26, :cond_6

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v27, v5, v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->diffmap:Lcom/itextpdf/text/pdf/IntHashtable;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v27, v5, v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 342
    :cond_5
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 330
    :cond_6
    if-nez v24, :cond_7

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/DocumentFont;->processToUnicode()Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;

    move-result-object v24

    .line 332
    if-nez v24, :cond_7

    .line 333
    new-instance v24, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;

    .end local v24           #toUnicode:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;
    invoke-direct/range {v24 .. v24}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;-><init>()V

    .line 336
    .restart local v24       #toUnicode:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;
    :cond_7
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    int-to-byte v0, v6

    move/from16 v28, v0

    aput-byte v28, v26, v27

    const/16 v27, 0x0

    const/16 v28, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;->lookup([BII)Ljava/lang/String;

    move-result-object v25

    .line 337
    .local v25, unicode:Ljava/lang/String;
    if-eqz v25, :cond_5

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->diffmap:Lcom/itextpdf/text/pdf/IntHashtable;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    goto :goto_5

    .line 356
    .end local v5           #c:[I
    .end local v6           #currentNumber:I
    .end local v7           #diffs:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v10           #encDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v15           #k:I
    .end local v25           #unicode:Ljava/lang/String;
    .restart local v13       #first:Lcom/itextpdf/text/pdf/PdfNumber;
    .restart local v17       #last:Lcom/itextpdf/text/pdf/PdfNumber;
    .restart local v20       #newWidths:Lcom/itextpdf/text/pdf/PdfArray;
    :catch_1
    move-exception v8

    .line 357
    .local v8, e:Ljava/lang/Exception;
    new-instance v26, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v26

    invoke-direct {v0, v8}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v26

    .line 364
    .restart local v4       #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .local v8, e:[I
    .restart local v15       #k:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->diffmap:Lcom/itextpdf/text/pdf/IntHashtable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->diffmap:Lcom/itextpdf/text/pdf/IntHashtable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/pdf/IntHashtable;->toOrderedKeys()[I

    move-result-object v8

    .line 366
    const/4 v15, 0x0

    :goto_6
    array-length v0, v8

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v15, v0, :cond_9

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->diffmap:Lcom/itextpdf/text/pdf/IntHashtable;

    move-object/from16 v26, v0

    aget v27, v8, v15

    invoke-virtual/range {v26 .. v27}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v18

    .line 368
    .restart local v18       #n:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->widths:[I

    move-object/from16 v26, v0

    aget v27, v8, v15

    invoke-static/range {v27 .. v27}, Lcom/itextpdf/text/pdf/GlyphList;->unicodeToName(I)Ljava/lang/String;

    move-result-object v27

    move/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getRawWidth(ILjava/lang/String;)I

    move-result v27

    aput v27, v26, v18

    .line 366
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 370
    .end local v18           #n:I
    :cond_9
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/DocumentFont;->diffmap:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 372
    :cond_a
    const/16 v26, 0x1

    const/high16 v27, 0x447a

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/DocumentFont;->ascender:F

    .line 373
    const/16 v26, 0x2

    const/high16 v27, 0x447a

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/DocumentFont;->capHeight:F

    .line 374
    const/16 v26, 0x3

    const/high16 v27, 0x447a

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/DocumentFont;->descender:F

    .line 375
    const/16 v26, 0x4

    const/high16 v27, 0x447a

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/DocumentFont;->italicAngle:F

    .line 376
    const/16 v26, 0x17

    const/high16 v27, 0x447a

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/DocumentFont;->fontWeight:F

    .line 377
    const/16 v26, 0x5

    const/high16 v27, 0x447a

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/DocumentFont;->llx:F

    .line 378
    const/16 v26, 0x6

    const/high16 v27, 0x447a

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/DocumentFont;->lly:F

    .line 379
    const/16 v26, 0x7

    const/high16 v27, 0x447a

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/DocumentFont;->urx:F

    .line 380
    const/16 v26, 0x8

    const/high16 v27, 0x447a

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/DocumentFont;->ury:F

    .line 382
    .end local v4           #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v8           #e:[I
    .end local v15           #k:I
    :cond_b
    if-eqz v13, :cond_d

    if-eqz v17, :cond_d

    if-eqz v20, :cond_d

    .line 383
    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v12

    .line 384
    .local v12, f:I
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v26

    add-int v19, v12, v26

    .line 385
    .local v19, nSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->widths:[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    .line 386
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v23, v0

    .line 387
    .local v23, tmp:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->widths:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v23

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/DocumentFont;->widths:[I

    .line 390
    .end local v23           #tmp:[I
    :cond_c
    const/4 v15, 0x0

    .restart local v15       #k:I
    :goto_7
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v15, v0, :cond_d

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->widths:[I

    move-object/from16 v26, v0

    add-int v27, v12, v15

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v28

    aput v28, v26, v27

    .line 390
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 394
    .end local v12           #f:I
    .end local v15           #k:I
    .end local v19           #nSize:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->font:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v26, v0

    sget-object v27, Lcom/itextpdf/text/pdf/PdfName;->FONTDESCRIPTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v26 .. v27}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/DocumentFont;->fillFontDesc(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 395
    return-void
.end method

.method private fillEncoding(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 8
    .parameter "encoding"

    .prologue
    const/16 v7, 0x100

    .line 456
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->MAC_ROMAN_ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, p1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->WIN_ANSI_ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, p1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 457
    :cond_0
    new-array v1, v7, [B

    .line 458
    .local v1, b:[B
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    if-ge v4, v7, :cond_1

    .line 459
    int-to-byte v5, v4

    aput-byte v5, v1, v4

    .line 458
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 460
    :cond_1
    const-string v3, "Cp1252"

    .line 461
    .local v3, enc:Ljava/lang/String;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->MAC_ROMAN_ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, p1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 462
    const-string v3, "MacRoman"

    .line 463
    :cond_2
    invoke-static {v1, v3}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, cv:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 465
    .local v0, arr:[C
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_4

    .line 466
    iget-object v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    aget-char v6, v0, v4

    invoke-virtual {v5, v6, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 465
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 470
    .end local v0           #arr:[C
    .end local v1           #b:[B
    .end local v2           #cv:Ljava/lang/String;
    .end local v3           #enc:Ljava/lang/String;
    .end local v4           #k:I
    :cond_3
    const/4 v4, 0x0

    .restart local v4       #k:I
    :goto_2
    if-ge v4, v7, :cond_4

    .line 471
    iget-object v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    sget-object v6, Lcom/itextpdf/text/pdf/DocumentFont;->stdEnc:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 470
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 474
    :cond_4
    return-void
.end method

.method private fillFontDesc(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 8
    .parameter "fontDesc"

    .prologue
    const/high16 v7, 0x447a

    .line 414
    if-nez p1, :cond_0

    .line 453
    :goto_0
    return-void

    .line 416
    :cond_0
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->ASCENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v4

    .line 417
    .local v4, v:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v4, :cond_1

    .line 418
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v5

    iput v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->ascender:F

    .line 419
    :cond_1
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->CAPHEIGHT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v4

    .line 420
    if-eqz v4, :cond_2

    .line 421
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v5

    iput v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->capHeight:F

    .line 422
    :cond_2
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->DESCENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v4

    .line 423
    if-eqz v4, :cond_3

    .line 424
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v5

    iput v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->descender:F

    .line 425
    :cond_3
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->ITALICANGLE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v4

    .line 426
    if-eqz v4, :cond_4

    .line 427
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v5

    iput v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->italicAngle:F

    .line 428
    :cond_4
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->FONTWEIGHT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v4

    .line 429
    if-eqz v4, :cond_5

    .line 430
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v5

    iput v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->fontWeight:F

    .line 432
    :cond_5
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->FONTBBOX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    .line 433
    .local v0, bbox:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v0, :cond_7

    .line 434
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v5

    iput v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->llx:F

    .line 435
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v5

    iput v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->lly:F

    .line 436
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v5

    iput v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->urx:F

    .line 437
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v5

    iput v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->ury:F

    .line 438
    iget v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->llx:F

    iget v6, p0, Lcom/itextpdf/text/pdf/DocumentFont;->urx:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    .line 439
    iget v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->llx:F

    .line 440
    .local v3, t:F
    iget v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->urx:F

    iput v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->llx:F

    .line 441
    iput v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->urx:F

    .line 443
    .end local v3           #t:F
    :cond_6
    iget v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->lly:F

    iget v6, p0, Lcom/itextpdf/text/pdf/DocumentFont;->ury:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    .line 444
    iget v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->lly:F

    .line 445
    .restart local v3       #t:F
    iget v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->ury:F

    iput v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->lly:F

    .line 446
    iput v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->ury:F

    .line 449
    .end local v3           #t:F
    :cond_7
    iget v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->ury:F

    iget v6, p0, Lcom/itextpdf/text/pdf/DocumentFont;->ascender:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 450
    .local v1, maxAscent:F
    iget v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->lly:F

    iget v6, p0, Lcom/itextpdf/text/pdf/DocumentFont;->descender:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 451
    .local v2, minDescent:F
    mul-float v5, v1, v7

    sub-float v6, v1, v2

    div-float/2addr v5, v6

    iput v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->ascender:F

    .line 452
    mul-float v5, v2, v7

    sub-float v6, v1, v2

    div-float/2addr v5, v6

    iput v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->descender:F

    goto/16 :goto_0
.end method

.method private fillMetrics([BLcom/itextpdf/text/pdf/IntHashtable;I)V
    .locals 26
    .parameter "touni"
    .parameter "widths"
    .parameter "dw"

    .prologue
    .line 201
    :try_start_0
    new-instance v18, Lcom/itextpdf/text/pdf/PdfContentParser;

    new-instance v22, Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>([B)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentParser;-><init>(Lcom/itextpdf/text/pdf/PRTokeniser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    .local v18, ps:Lcom/itextpdf/text/pdf/PdfContentParser;
    const/16 v16, 0x0

    .line 203
    .local v16, ob:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v14, 0x1

    .line 204
    .local v14, notFound:Z
    const/4 v13, 0x0

    .line 205
    .local v13, nestLevel:I
    const/16 v12, 0x32

    .line 206
    .local v12, maxExc:I
    :cond_0
    :goto_0
    if-nez v14, :cond_1

    if-lez v13, :cond_2

    .line 208
    :cond_1
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfContentParser;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    .line 215
    if-nez v16, :cond_3

    .line 285
    :cond_2
    :goto_1
    return-void

    .line 210
    :catch_0
    move-exception v10

    .line 211
    .local v10, ex:Ljava/lang/Exception;
    add-int/lit8 v12, v12, -0x1

    if-gez v12, :cond_0

    goto :goto_1

    .line 217
    .end local v10           #ex:Ljava/lang/Exception;
    :cond_3
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v22

    const/16 v23, 0xc8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 218
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "begin"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 219
    const/4 v14, 0x0

    .line 220
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 222
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "end"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 223
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 225
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "beginbfchar"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 227
    :cond_6
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfContentParser;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v15

    .line 228
    .local v15, nx:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "endbfchar"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 230
    check-cast v15, Lcom/itextpdf/text/pdf/PdfString;

    .end local v15           #nx:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/itextpdf/text/pdf/DocumentFont;->decodeString(Lcom/itextpdf/text/pdf/PdfString;)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, cid:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfContentParser;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v22

    check-cast v22, Lcom/itextpdf/text/pdf/PdfString;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/DocumentFont;->decodeString(Lcom/itextpdf/text/pdf/PdfString;)Ljava/lang/String;

    move-result-object v19

    .line 232
    .local v19, uni:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 233
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 234
    .local v8, cidc:I
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    .line 235
    .local v20, unic:I
    move/from16 v21, p3

    .line 236
    .local v21, w:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 237
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v21

    .line 238
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->metrics:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v8, v24, v25

    const/16 v25, 0x1

    aput v21, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 282
    .end local v3           #cid:Ljava/lang/String;
    .end local v8           #cidc:I
    .end local v12           #maxExc:I
    .end local v13           #nestLevel:I
    .end local v14           #notFound:Z
    .end local v16           #ob:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v18           #ps:Lcom/itextpdf/text/pdf/PdfContentParser;
    .end local v19           #uni:Ljava/lang/String;
    .end local v20           #unic:I
    .end local v21           #w:I
    :catch_1
    move-exception v9

    .line 283
    .local v9, e:Ljava/lang/Exception;
    new-instance v22, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v22

    invoke-direct {v0, v9}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v22

    .line 242
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v12       #maxExc:I
    .restart local v13       #nestLevel:I
    .restart local v14       #notFound:Z
    .restart local v16       #ob:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v18       #ps:Lcom/itextpdf/text/pdf/PdfContentParser;
    :cond_8
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "beginbfrange"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 244
    :cond_9
    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfContentParser;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v15

    .line 245
    .restart local v15       #nx:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "endbfrange"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 247
    check-cast v15, Lcom/itextpdf/text/pdf/PdfString;

    .end local v15           #nx:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/itextpdf/text/pdf/DocumentFont;->decodeString(Lcom/itextpdf/text/pdf/PdfString;)Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, cid1:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfContentParser;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v22

    check-cast v22, Lcom/itextpdf/text/pdf/PdfString;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/DocumentFont;->decodeString(Lcom/itextpdf/text/pdf/PdfString;)Ljava/lang/String;

    move-result-object v6

    .line 249
    .local v6, cid2:Ljava/lang/String;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 250
    .local v5, cid1c:I
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 251
    .local v7, cid2c:I
    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfContentParser;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v17

    .line 252
    .local v17, ob2:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 253
    check-cast v17, Lcom/itextpdf/text/pdf/PdfString;

    .end local v17           #ob2:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/DocumentFont;->decodeString(Lcom/itextpdf/text/pdf/PdfString;)Ljava/lang/String;

    move-result-object v19

    .line 254
    .restart local v19       #uni:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 255
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    .line 256
    .restart local v20       #unic:I
    :goto_3
    if-gt v5, v7, :cond_9

    .line 257
    move/from16 v21, p3

    .line 258
    .restart local v21       #w:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 259
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v21

    .line 260
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->metrics:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v5, v24, v25

    const/16 v25, 0x1

    aput v21, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 265
    .end local v19           #uni:Ljava/lang/String;
    .end local v20           #unic:I
    .end local v21           #w:I
    .restart local v17       #ob2:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_b
    move-object/from16 v0, v17

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    move-object v2, v0

    .line 266
    .local v2, a:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v11, 0x0

    .local v11, j:I
    :goto_4
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_9

    .line 267
    invoke-virtual {v2, v11}, Lcom/itextpdf/text/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/DocumentFont;->decodeString(Lcom/itextpdf/text/pdf/PdfString;)Ljava/lang/String;

    move-result-object v19

    .line 268
    .restart local v19       #uni:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 269
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    .line 270
    .restart local v20       #unic:I
    move/from16 v21, p3

    .line 271
    .restart local v21       #w:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 272
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v21

    .line 273
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->metrics:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v5, v24, v25

    const/16 v25, 0x1

    aput v21, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 266
    .end local v20           #unic:I
    .end local v21           #w:I
    :cond_d
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_4
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 115
    const-string v6, ""

    iput-object v6, p0, Lcom/itextpdf/text/pdf/DocumentFont;->encoding:Ljava/lang/String;

    .line 116
    iput-boolean v7, p0, Lcom/itextpdf/text/pdf/DocumentFont;->fontSpecific:Z

    .line 117
    const/4 v6, 0x4

    iput v6, p0, Lcom/itextpdf/text/pdf/DocumentFont;->fontType:I

    .line 118
    iget-object v6, p0, Lcom/itextpdf/text/pdf/DocumentFont;->font:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 119
    .local v0, baseFont:Lcom/itextpdf/text/pdf/PdfName;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    iput-object v6, p0, Lcom/itextpdf/text/pdf/DocumentFont;->fontName:Ljava/lang/String;

    .line 120
    iget-object v6, p0, Lcom/itextpdf/text/pdf/DocumentFont;->font:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v5

    .line 121
    .local v5, subType:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->TYPE1:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v5}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->TRUETYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v5}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/DocumentFont;->doType1TT()V

    .line 145
    :cond_1
    :goto_1
    return-void

    .line 119
    .end local v5           #subType:Lcom/itextpdf/text/pdf/PdfName;
    :cond_2
    const-string v6, "Unspecified Font Name"

    goto :goto_0

    .line 124
    .restart local v5       #subType:Lcom/itextpdf/text/pdf/PdfName;
    :cond_3
    iget-object v6, p0, Lcom/itextpdf/text/pdf/DocumentFont;->font:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    .line 125
    .local v3, encodingName:Lcom/itextpdf/text/pdf/PdfName;
    if-eqz v3, :cond_1

    .line 126
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, enc:Ljava/lang/String;
    invoke-static {v2}, Lcom/itextpdf/text/pdf/CJKFont;->GetCompatibleFont(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, ffontname:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 130
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v4, v2, v6}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v6

    iput-object v6, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    iput-object v2, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkEncoding:Ljava/lang/String;

    .line 136
    iget-object v6, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

    check-cast v6, Lcom/itextpdf/text/pdf/CJKFont;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/CJKFont;->getUniMap()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/itextpdf/text/pdf/DocumentFont;->uniMap:Ljava/lang/String;

    goto :goto_1

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v6, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 139
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->TYPE0:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v5}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "Identity-H"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 140
    iget-object v6, p0, Lcom/itextpdf/text/pdf/DocumentFont;->font:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {p0, v6}, Lcom/itextpdf/text/pdf/DocumentFont;->processType0(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 141
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/itextpdf/text/pdf/DocumentFont;->isType0:Z

    goto :goto_1
.end method

.method private processToUnicode()Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;
    .locals 8

    .prologue
    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, cmapRet:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;
    iget-object v6, p0, Lcom/itextpdf/text/pdf/DocumentFont;->font:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->TOUNICODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 400
    .local v4, toUni:Lcom/itextpdf/text/pdf/PdfObject;
    instance-of v6, v4, Lcom/itextpdf/text/pdf/PRStream;

    if-eqz v6, :cond_0

    .line 402
    :try_start_0
    check-cast v4, Lcom/itextpdf/text/pdf/PRStream;

    .end local v4           #toUni:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v5

    .line 403
    .local v5, touni:[B
    new-instance v3, Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocationFromByte;

    invoke-direct {v3, v5}, Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocationFromByte;-><init>([B)V

    .line 404
    .local v3, lb:Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocationFromByte;
    new-instance v1, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local v0           #cmapRet:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;
    .local v1, cmapRet:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;
    :try_start_1
    const-string v6, ""

    invoke-static {v6, v1, v3}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParserEx;->parseCid(Ljava/lang/String;Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 410
    .end local v1           #cmapRet:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;
    .end local v3           #lb:Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocationFromByte;
    .end local v5           #touni:[B
    .restart local v0       #cmapRet:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;
    :cond_0
    :goto_0
    return-object v0

    .line 406
    :catch_0
    move-exception v2

    .line 407
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 406
    .end local v0           #cmapRet:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #cmapRet:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;
    .restart local v3       #lb:Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocationFromByte;
    .restart local v5       #touni:[B
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #cmapRet:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;
    .restart local v0       #cmapRet:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;
    goto :goto_1
.end method

.method private processType0(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 9
    .parameter "font"

    .prologue
    .line 149
    :try_start_0
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->TOUNICODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    .line 150
    .local v6, toUniObject:Lcom/itextpdf/text/pdf/PdfObject;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->DESCENDANTFONTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfArray;

    .line 151
    .local v1, df:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 152
    .local v0, cidft:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->DW:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 153
    .local v3, dwo:Lcom/itextpdf/text/pdf/PdfNumber;
    const/16 v2, 0x3e8

    .line 154
    .local v2, dw:I
    if-eqz v3, :cond_0

    .line 155
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    .line 156
    :cond_0
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->W:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {p0, v8}, Lcom/itextpdf/text/pdf/DocumentFont;->readWidths(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/pdf/IntHashtable;

    move-result-object v7

    .line 157
    .local v7, widths:Lcom/itextpdf/text/pdf/IntHashtable;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FONTDESCRIPTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 158
    .local v5, fontDesc:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {p0, v5}, Lcom/itextpdf/text/pdf/DocumentFont;->fillFontDesc(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 159
    instance-of v8, v6, Lcom/itextpdf/text/pdf/PRStream;

    if-eqz v8, :cond_1

    .line 160
    check-cast v6, Lcom/itextpdf/text/pdf/PRStream;

    .end local v6           #toUniObject:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v8

    invoke-direct {p0, v8, v7, v2}, Lcom/itextpdf/text/pdf/DocumentFont;->fillMetrics([BLcom/itextpdf/text/pdf/IntHashtable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_1
    return-void

    .line 163
    .end local v0           #cidft:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v1           #df:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #dw:I
    .end local v3           #dwo:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v5           #fontDesc:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v7           #widths:Lcom/itextpdf/text/pdf/IntHashtable;
    :catch_0
    move-exception v4

    .line 164
    .local v4, e:Ljava/lang/Exception;
    new-instance v8, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v8, v4}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v8
.end method

.method private readWidths(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/pdf/IntHashtable;
    .locals 10
    .parameter "ws"

    .prologue
    .line 169
    new-instance v4, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    .line 170
    .local v4, hh:Lcom/itextpdf/text/pdf/IntHashtable;
    if-nez p1, :cond_1

    .line 189
    :cond_0
    return-object v4

    .line 172
    :cond_1
    const/4 v6, 0x0

    .local v6, k:I
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v9

    if-ge v6, v9, :cond_0

    .line 173
    invoke-virtual {p1, v6}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v1

    .line 174
    .local v1, c1:I
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 175
    .local v7, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v0, v7

    .line 176
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 177
    .local v0, a2:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 178
    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v3

    .line 179
    .local v3, c2:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #c1:I
    .local v2, c1:I
    invoke-virtual {v4, v1, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 177
    add-int/lit8 v5, v5, 0x1

    move v1, v2

    .end local v2           #c1:I
    .restart local v1       #c1:I
    goto :goto_1

    .line 183
    .end local v0           #a2:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v3           #c2:I
    .end local v5           #j:I
    :cond_2
    check-cast v7, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v7           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v3

    .line 184
    .restart local v3       #c2:I
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v8

    .line 185
    .local v8, w:I
    :goto_2
    if-gt v1, v3, :cond_3

    .line 186
    invoke-virtual {v4, v1, v8}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 172
    .end local v3           #c2:I
    .end local v8           #w:I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method public charExists(I)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/BaseFont;->charExists(I)Z

    move-result v0

    .line 740
    :goto_0
    return v0

    .line 736
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->isType0:Z

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->metrics:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 740
    :cond_1
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/BaseFont;->charExists(I)Z

    move-result v0

    goto :goto_0
.end method

.method convertToBytes(I)[B
    .locals 6
    .parameter "char1"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 707
    iget-object v2, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v2, :cond_0

    .line 708
    iget-object v2, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/BaseFont;->convertToBytes(I)[B

    move-result-object v2

    .line 722
    :goto_0
    return-object v2

    .line 709
    :cond_0
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/DocumentFont;->isType0:Z

    if-eqz v2, :cond_2

    .line 710
    iget-object v2, p0, Lcom/itextpdf/text/pdf/DocumentFont;->metrics:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 711
    .local v1, ws:[I
    if-eqz v1, :cond_1

    .line 712
    aget v0, v1, v4

    .line 713
    .local v0, g:I
    const/4 v2, 0x2

    new-array v2, v2, [B

    div-int/lit16 v3, v0, 0x100

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    int-to-byte v3, v0

    aput-byte v3, v2, v5

    goto :goto_0

    .line 716
    .end local v0           #g:I
    :cond_1
    new-array v2, v4, [B

    goto :goto_0

    .line 719
    .end local v1           #ws:[I
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 720
    new-array v2, v5, [B

    iget-object v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    goto :goto_0

    .line 722
    :cond_3
    new-array v2, v4, [B

    goto :goto_0
.end method

.method convertToBytes(Ljava/lang/String;)[B
    .locals 16
    .parameter "text"

    .prologue
    .line 664
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v14, :cond_1

    .line 665
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/BaseFont;->convertToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 700
    :cond_0
    :goto_0
    return-object v1

    .line 666
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/itextpdf/text/pdf/DocumentFont;->isType0:Z

    if-eqz v14, :cond_4

    .line 667
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 668
    .local v6, chars:[C
    array-length v9, v6

    .line 669
    .local v9, len:I
    mul-int/lit8 v14, v9, 0x2

    new-array v1, v14, [B

    .line 670
    .local v1, b:[B
    const/4 v3, 0x0

    .line 671
    .local v3, bptr:I
    const/4 v8, 0x0

    .local v8, k:I
    move v4, v3

    .end local v3           #bptr:I
    .local v4, bptr:I
    :goto_1
    if-ge v8, v9, :cond_3

    .line 672
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/DocumentFont;->metrics:Ljava/util/HashMap;

    aget-char v15, v6, v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    .line 673
    .local v13, ws:[I
    if-eqz v13, :cond_2

    .line 674
    const/4 v14, 0x0

    aget v7, v13, v14

    .line 675
    .local v7, g:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #bptr:I
    .restart local v3       #bptr:I
    div-int/lit16 v14, v7, 0x100

    int-to-byte v14, v14

    aput-byte v14, v1, v4

    .line 676
    add-int/lit8 v4, v3, 0x1

    .end local v3           #bptr:I
    .restart local v4       #bptr:I
    int-to-byte v14, v7

    aput-byte v14, v1, v3

    .end local v7           #g:I
    :cond_2
    move v3, v4

    .line 671
    .end local v4           #bptr:I
    .restart local v3       #bptr:I
    add-int/lit8 v8, v8, 0x1

    move v4, v3

    .end local v3           #bptr:I
    .restart local v4       #bptr:I
    goto :goto_1

    .line 679
    .end local v13           #ws:[I
    :cond_3
    array-length v14, v1

    if-eq v4, v14, :cond_0

    .line 682
    new-array v10, v4, [B

    .line 683
    .local v10, nb:[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v1, v14, v10, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v10

    .line 684
    goto :goto_0

    .line 688
    .end local v1           #b:[B
    .end local v4           #bptr:I
    .end local v6           #chars:[C
    .end local v8           #k:I
    .end local v9           #len:I
    .end local v10           #nb:[B
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 689
    .local v5, cc:[C
    array-length v14, v5

    new-array v1, v14, [B

    .line 690
    .restart local v1       #b:[B
    const/4 v11, 0x0

    .line 691
    .local v11, ptr:I
    const/4 v8, 0x0

    .restart local v8       #k:I
    :goto_2
    array-length v14, v5

    if-ge v8, v14, :cond_6

    .line 692
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    aget-char v15, v5, v8

    invoke-virtual {v14, v15}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 693
    add-int/lit8 v12, v11, 0x1

    .end local v11           #ptr:I
    .local v12, ptr:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    aget-char v15, v5, v8

    invoke-virtual {v14, v15}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v1, v11

    move v11, v12

    .line 691
    .end local v12           #ptr:I
    .restart local v11       #ptr:I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 695
    :cond_6
    array-length v14, v1

    if-eq v11, v14, :cond_0

    .line 698
    new-array v2, v11, [B

    .line 699
    .local v2, b2:[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v1, v14, v2, v15, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v2

    .line 700
    goto :goto_0
.end method

.method public getAllNameEntries()[[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 557
    new-array v0, v3, [[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "4"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->fontName:Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    return-object v0
.end method

.method public getCharBBox(I)[I
    .locals 1
    .parameter "c"

    .prologue
    .line 759
    const/4 v0, 0x0

    return-object v0
.end method

.method getDiffmap()Lcom/itextpdf/text/pdf/IntHashtable;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->diffmap:Lcom/itextpdf/text/pdf/IntHashtable;

    return-object v0
.end method

.method public getFamilyFontName()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/DocumentFont;->getFullFontName()[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontDescriptor(IF)F
    .locals 3
    .parameter "key"
    .parameter "fontSize"

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x447a

    .line 501
    iget-object v1, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v1, :cond_0

    .line 502
    iget-object v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v0

    .line 529
    :goto_0
    :pswitch_0
    return v0

    .line 503
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 506
    :pswitch_2
    iget v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->ascender:F

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 508
    :pswitch_3
    iget v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->capHeight:F

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 511
    :pswitch_4
    iget v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->descender:F

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 513
    :pswitch_5
    iget v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->italicAngle:F

    goto :goto_0

    .line 515
    :pswitch_6
    iget v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->llx:F

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 517
    :pswitch_7
    iget v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->lly:F

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 519
    :pswitch_8
    iget v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->urx:F

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 521
    :pswitch_9
    iget v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->ury:F

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 525
    :pswitch_a
    iget v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->urx:F

    iget v1, p0, Lcom/itextpdf/text/pdf/DocumentFont;->llx:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 527
    :pswitch_b
    iget v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->fontWeight:F

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_b
    .end packed-switch
.end method

.method public getFullFontName()[[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 543
    new-array v0, v3, [[Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->fontName:Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    return-object v0
.end method

.method public getFullFontStream()Lcom/itextpdf/text/pdf/PdfStream;
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x0

    return-object v0
.end method

.method getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->refFont:Lcom/itextpdf/text/pdf/PRIndirectReference;

    if-nez v0, :cond_0

    .line 728
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Font reuse not allowed with direct font objects."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->refFont:Lcom/itextpdf/text/pdf/PRIndirectReference;

    return-object v0
.end method

.method public getKerning(II)I
    .locals 1
    .parameter "char1"
    .parameter "char2"

    .prologue
    .line 568
    const/4 v0, 0x0

    return v0
.end method

.method public getPostscriptFontName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method protected getRawCharBBox(ILjava/lang/String;)[I
    .locals 1
    .parameter "c"
    .parameter "name"

    .prologue
    .line 764
    const/4 v0, 0x0

    return-object v0
.end method

.method getRawWidth(ILjava/lang/String;)I
    .locals 1
    .parameter "c"
    .parameter "name"

    .prologue
    .line 589
    const/4 v0, 0x0

    return v0
.end method

.method getUni2Byte()Lcom/itextpdf/text/pdf/IntHashtable;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    return-object v0
.end method

.method public getWidth(I)I
    .locals 3
    .parameter "char1"

    .prologue
    .line 630
    iget-object v1, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v1, :cond_0

    .line 631
    iget-object v1, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidth(I)I

    move-result v1

    .line 640
    :goto_0
    return v1

    .line 632
    :cond_0
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/DocumentFont;->isType0:Z

    if-eqz v1, :cond_2

    .line 633
    iget-object v1, p0, Lcom/itextpdf/text/pdf/DocumentFont;->metrics:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 634
    .local v0, ws:[I
    if-eqz v0, :cond_1

    .line 635
    const/4 v1, 0x1

    aget v1, v0, v1

    goto :goto_0

    .line 637
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 640
    .end local v0           #ws:[I
    :cond_2
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidth(I)I

    move-result v1

    goto :goto_0
.end method

.method public getWidth(Ljava/lang/String;)I
    .locals 7
    .parameter "text"

    .prologue
    .line 645
    iget-object v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v5, :cond_1

    .line 646
    iget-object v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

    invoke-virtual {v5, p1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidth(Ljava/lang/String;)I

    move-result v3

    .line 659
    :cond_0
    :goto_0
    return v3

    .line 647
    :cond_1
    iget-boolean v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->isType0:Z

    if-eqz v5, :cond_3

    .line 648
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 649
    .local v0, chars:[C
    array-length v2, v0

    .line 650
    .local v2, len:I
    const/4 v3, 0x0

    .line 651
    .local v3, total:I
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 652
    iget-object v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->metrics:Ljava/util/HashMap;

    aget-char v6, v0, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 653
    .local v4, ws:[I
    if-eqz v4, :cond_2

    .line 654
    const/4 v5, 0x1

    aget v5, v4, v5

    add-int/2addr v3, v5

    .line 651
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 659
    .end local v0           #chars:[C
    .end local v1           #k:I
    .end local v2           #len:I
    .end local v3           #total:I
    .end local v4           #ws:[I
    :cond_3
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidth(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public hasKernPairs()Z
    .locals 1

    .prologue
    .line 598
    const/4 v0, 0x0

    return v0
.end method

.method public setKerning(III)Z
    .locals 1
    .parameter "char1"
    .parameter "char2"
    .parameter "kern"

    .prologue
    .line 754
    const/4 v0, 0x0

    return v0
.end method

.method public setPostscriptFontName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 750
    return-void
.end method

.method writeFont(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PdfIndirectReference;[Ljava/lang/Object;)V
    .locals 0
    .parameter "writer"
    .parameter "ref"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    return-void
.end method
