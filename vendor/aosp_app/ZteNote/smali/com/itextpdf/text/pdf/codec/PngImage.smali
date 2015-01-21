.class public Lcom/itextpdf/text/pdf/codec/PngImage;
.super Ljava/lang/Object;
.source "PngImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/codec/PngImage$NewByteArrayOutputStream;
    }
.end annotation


# static fields
.field public static final IDAT:Ljava/lang/String; = "IDAT"

.field public static final IEND:Ljava/lang/String; = "IEND"

.field public static final IHDR:Ljava/lang/String; = "IHDR"

.field public static final PLTE:Ljava/lang/String; = "PLTE"

.field public static final PNGID:[I = null

.field private static final PNG_FILTER_AVERAGE:I = 0x3

.field private static final PNG_FILTER_NONE:I = 0x0

.field private static final PNG_FILTER_PAETH:I = 0x4

.field private static final PNG_FILTER_SUB:I = 0x1

.field private static final PNG_FILTER_UP:I = 0x2

.field private static final TRANSFERSIZE:I = 0x1000

.field public static final cHRM:Ljava/lang/String; = "cHRM"

.field public static final gAMA:Ljava/lang/String; = "gAMA"

.field public static final iCCP:Ljava/lang/String; = "iCCP"

.field private static final intents:[Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final pHYs:Ljava/lang/String; = "pHYs"

.field public static final sRGB:Ljava/lang/String; = "sRGB"

.field public static final tRNS:Ljava/lang/String; = "tRNS"


# instance fields
.field XYRatio:F

.field additional:Lcom/itextpdf/text/pdf/PdfDictionary;

.field bitDepth:I

.field bytesPerPixel:I

.field colorTable:[B

.field colorType:I

.field compressionMethod:I

.field dataStream:Ljava/io/DataInputStream;

.field dpiX:I

.field dpiY:I

.field filterMethod:I

.field gamma:F

.field genBWMask:Z

.field hasCHRM:Z

.field height:I

.field icc_profile:Lcom/itextpdf/text/pdf/ICC_Profile;

.field idat:Lcom/itextpdf/text/pdf/codec/PngImage$NewByteArrayOutputStream;

.field image:[B

.field inputBands:I

.field intent:Lcom/itextpdf/text/pdf/PdfName;

.field interlaceMethod:I

.field is:Ljava/io/InputStream;

.field palShades:Z

.field smask:[B

.field trans:[B

.field transBlue:I

.field transGreen:I

.field transRedGray:I

.field width:I

.field xB:F

.field xG:F

.field xR:F

.field xW:F

.field yB:F

.field yG:F

.field yR:F

.field yW:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 124
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/pdf/codec/PngImage;->PNGID:[I

    .line 162
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfName;

    const/4 v1, 0x0

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PERCEPTUAL:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RELATIVECOLORIMETRIC:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->SATURATION:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ABSOLUTECOLORIMETRIC:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/codec/PngImage;->intents:[Lcom/itextpdf/text/pdf/PdfName;

    return-void

    .line 124
    nop

    :array_0
    .array-data 0x4
        0x89t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"

    .prologue
    const/4 v1, -0x1

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 178
    new-instance v0, Lcom/itextpdf/text/pdf/codec/PngImage$NewByteArrayOutputStream;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/codec/PngImage$NewByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->idat:Lcom/itextpdf/text/pdf/codec/PngImage$NewByteArrayOutputStream;

    .line 184
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->transRedGray:I

    .line 185
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->transGreen:I

    .line 186
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->transBlue:I

    .line 190
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->gamma:F

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->hasCHRM:Z

    .line 200
    iput-object p1, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    .line 201
    return-void
.end method

.method private static decodeAverageFilter([B[BII)V
    .locals 5
    .parameter "curr"
    .parameter "prev"
    .parameter "count"
    .parameter "bpp"

    .prologue
    .line 896
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 897
    aget-byte v4, p0, v0

    and-int/lit16 v3, v4, 0xff

    .line 898
    .local v3, raw:I
    aget-byte v4, p1, v0

    and-int/lit16 v2, v4, 0xff

    .line 900
    .local v2, priorRow:I
    div-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, p0, v0

    .line 896
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 903
    .end local v2           #priorRow:I
    .end local v3           #raw:I
    :cond_0
    move v0, p3

    :goto_1
    if-ge v0, p2, :cond_1

    .line 904
    aget-byte v4, p0, v0

    and-int/lit16 v3, v4, 0xff

    .line 905
    .restart local v3       #raw:I
    sub-int v4, v0, p3

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    .line 906
    .local v1, priorPixel:I
    aget-byte v4, p1, v0

    and-int/lit16 v2, v4, 0xff

    .line 908
    .restart local v2       #priorRow:I
    add-int v4, v1, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, p0, v0

    .line 903
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 910
    .end local v1           #priorPixel:I
    .end local v2           #priorRow:I
    .end local v3           #raw:I
    :cond_1
    return-void
.end method

.method private static decodePaethFilter([B[BII)V
    .locals 6
    .parameter "curr"
    .parameter "prev"
    .parameter "count"
    .parameter "bpp"

    .prologue
    .line 931
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 932
    aget-byte v5, p0, v0

    and-int/lit16 v4, v5, 0xff

    .line 933
    .local v4, raw:I
    aget-byte v5, p1, v0

    and-int/lit16 v2, v5, 0xff

    .line 935
    .local v2, priorRow:I
    add-int v5, v4, v2

    int-to-byte v5, v5

    aput-byte v5, p0, v0

    .line 931
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 938
    .end local v2           #priorRow:I
    .end local v4           #raw:I
    :cond_0
    move v0, p3

    :goto_1
    if-ge v0, p2, :cond_1

    .line 939
    aget-byte v5, p0, v0

    and-int/lit16 v4, v5, 0xff

    .line 940
    .restart local v4       #raw:I
    sub-int v5, v0, p3

    aget-byte v5, p0, v5

    and-int/lit16 v1, v5, 0xff

    .line 941
    .local v1, priorPixel:I
    aget-byte v5, p1, v0

    and-int/lit16 v2, v5, 0xff

    .line 942
    .restart local v2       #priorRow:I
    sub-int v5, v0, p3

    aget-byte v5, p1, v5

    and-int/lit16 v3, v5, 0xff

    .line 944
    .local v3, priorRowPixel:I
    invoke-static {v1, v2, v3}, Lcom/itextpdf/text/pdf/codec/PngImage;->paethPredictor(III)I

    move-result v5

    add-int/2addr v5, v4

    int-to-byte v5, v5

    aput-byte v5, p0, v0

    .line 938
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 948
    .end local v1           #priorPixel:I
    .end local v2           #priorRow:I
    .end local v3           #priorRowPixel:I
    .end local v4           #raw:I
    :cond_1
    return-void
.end method

.method private static decodeSubFilter([BII)V
    .locals 3
    .parameter "curr"
    .parameter "count"
    .parameter "bpp"

    .prologue
    .line 872
    move v0, p2

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 875
    aget-byte v2, p0, v0

    and-int/lit16 v1, v2, 0xff

    .line 876
    .local v1, val:I
    sub-int v2, v0, p2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 878
    int-to-byte v2, v1

    aput-byte v2, p0, v0

    .line 872
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 880
    .end local v1           #val:I
    :cond_0
    return-void
.end method

.method private static decodeUpFilter([B[BI)V
    .locals 4
    .parameter "curr"
    .parameter "prev"
    .parameter "count"

    .prologue
    .line 884
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 885
    aget-byte v3, p0, v0

    and-int/lit16 v2, v3, 0xff

    .line 886
    .local v2, raw:I
    aget-byte v3, p1, v0

    and-int/lit16 v1, v3, 0xff

    .line 888
    .local v1, prior:I
    add-int v3, v2, v1

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 884
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 890
    .end local v1           #prior:I
    .end local v2           #raw:I
    :cond_0
    return-void
.end method

.method public static getImage(Ljava/io/InputStream;)Lcom/itextpdf/text/Image;
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    new-instance v0, Lcom/itextpdf/text/pdf/codec/PngImage;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/codec/PngImage;-><init>(Ljava/io/InputStream;)V

    .line 230
    .local v0, png:Lcom/itextpdf/text/pdf/codec/PngImage;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/codec/PngImage;->getImage()Lcom/itextpdf/text/Image;

    move-result-object v1

    return-object v1
.end method

.method public static getImage(Ljava/lang/String;)Lcom/itextpdf/text/Image;
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-static {p0}, Lcom/itextpdf/text/Utilities;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/text/pdf/codec/PngImage;->getImage(Ljava/net/URL;)Lcom/itextpdf/text/Image;

    move-result-object v0

    return-object v0
.end method

.method public static getImage(Ljava/net/URL;)Lcom/itextpdf/text/Image;
    .locals 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    const/4 v1, 0x0

    .line 211
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 212
    invoke-static {v1}, Lcom/itextpdf/text/pdf/codec/PngImage;->getImage(Ljava/io/InputStream;)Lcom/itextpdf/text/Image;

    move-result-object v0

    .line 213
    .local v0, img:Lcom/itextpdf/text/Image;
    invoke-virtual {v0, p0}, Lcom/itextpdf/text/Image;->setUrl(Ljava/net/URL;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    .line 217
    .end local v0           #img:Lcom/itextpdf/text/Image;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v2
.end method

.method public static getImage([B)Lcom/itextpdf/text/Image;
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 249
    .local v1, is:Ljava/io/ByteArrayInputStream;
    invoke-static {v1}, Lcom/itextpdf/text/pdf/codec/PngImage;->getImage(Ljava/io/InputStream;)Lcom/itextpdf/text/Image;

    move-result-object v0

    .line 250
    .local v0, img:Lcom/itextpdf/text/Image;
    invoke-virtual {v0, p0}, Lcom/itextpdf/text/Image;->setOriginalData([B)V

    .line 251
    return-object v0
.end method

.method public static final getInt(Ljava/io/InputStream;)I
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 964
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static getPixel([BIIII)I
    .locals 5
    .parameter "image"
    .parameter "x"
    .parameter "y"
    .parameter "bitDepth"
    .parameter "bytesPerRow"

    .prologue
    const/16 v4, 0x8

    .line 813
    if-ne p3, v4, :cond_0

    .line 814
    mul-int v2, p4, p2

    add-int v0, v2, p1

    .line 815
    .local v0, pos:I
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 820
    :goto_0
    return v2

    .line 818
    .end local v0           #pos:I
    :cond_0
    mul-int v2, p4, p2

    div-int v3, v4, p3

    div-int v3, p1, v3

    add-int v0, v2, v3

    .line 819
    .restart local v0       #pos:I
    aget-byte v2, p0, v0

    div-int v3, v4, p3

    rem-int v3, p1, v3

    mul-int/2addr v3, p3

    rsub-int/lit8 v3, v3, 0x8

    sub-int/2addr v3, p3

    shr-int v1, v2, v3

    .line 820
    .local v1, v:I
    const/4 v2, 0x1

    shl-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v1

    goto :goto_0
.end method

.method public static final getString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 986
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 987
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 988
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 987
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 990
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final getWord(Ljava/io/InputStream;)I
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 975
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static paethPredictor(III)I
    .locals 5
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 913
    add-int v4, p0, p1

    sub-int v0, v4, p2

    .line 914
    .local v0, p:I
    sub-int v4, v0, p0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 915
    .local v1, pa:I
    sub-int v4, v0, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 916
    .local v2, pb:I
    sub-int v4, v0, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 918
    .local v3, pc:I
    if-gt v1, v2, :cond_0

    if-gt v1, v3, :cond_0

    .line 923
    .end local p0
    :goto_0
    return p0

    .line 920
    .restart local p0
    :cond_0
    if-gt v2, v3, :cond_1

    move p0, p1

    .line 921
    goto :goto_0

    :cond_1
    move p0, p2

    .line 923
    goto :goto_0
.end method

.method static setPixel([B[IIIIIII)V
    .locals 6
    .parameter "image"
    .parameter "data"
    .parameter "offset"
    .parameter "size"
    .parameter "x"
    .parameter "y"
    .parameter "bitDepth"
    .parameter "bytesPerRow"

    .prologue
    const/16 v5, 0x8

    .line 825
    if-ne p6, v5, :cond_0

    .line 826
    mul-int v3, p7, p5

    mul-int v4, p3, p4

    add-int v1, v3, v4

    .line 827
    .local v1, pos:I
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 828
    add-int v3, v1, v0

    add-int v4, v0, p2

    aget v4, p1, v4

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 827
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 830
    .end local v0           #k:I
    .end local v1           #pos:I
    :cond_0
    const/16 v3, 0x10

    if-ne p6, v3, :cond_1

    .line 831
    mul-int v3, p7, p5

    mul-int v4, p3, p4

    add-int v1, v3, v4

    .line 832
    .restart local v1       #pos:I
    const/4 v0, 0x0

    .restart local v0       #k:I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 833
    add-int v3, v1, v0

    add-int v4, v0, p2

    aget v4, p1, v4

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 832
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 836
    .end local v0           #k:I
    .end local v1           #pos:I
    :cond_1
    mul-int v3, p7, p5

    div-int v4, v5, p6

    div-int v4, p4, v4

    add-int v1, v3, v4

    .line 837
    .restart local v1       #pos:I
    aget v3, p1, p2

    div-int v4, v5, p6

    rem-int v4, p4, v4

    mul-int/2addr v4, p6

    rsub-int/lit8 v4, v4, 0x8

    sub-int/2addr v4, p6

    shl-int v2, v3, v4

    .line 838
    .local v2, v:I
    aget-byte v3, p0, v1

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    .line 840
    .end local v2           #v:I
    :cond_2
    return-void
.end method


# virtual methods
.method checkMarker(Ljava/lang/String;)Z
    .locals 5
    .parameter "s"

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 255
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v2

    .line 257
    :cond_1
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 258
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 259
    .local v0, c:C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    const/16 v3, 0x7a

    if-le v0, v3, :cond_3

    :cond_2
    const/16 v3, 0x41

    if-lt v0, v3, :cond_0

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_0

    .line 257
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 262
    .end local v0           #c:C
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method decodeIdat()V
    .locals 11

    .prologue
    .line 611
    iget v9, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->bitDepth:I

    .line 612
    .local v9, nbitDepth:I
    const/16 v0, 0x10

    if-ne v9, v0, :cond_0

    .line 613
    const/16 v9, 0x8

    .line 614
    :cond_0
    const/4 v10, -0x1

    .line 615
    .local v10, size:I
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->bitDepth:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->bytesPerPixel:I

    .line 616
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->colorType:I

    packed-switch v0, :pswitch_data_0

    .line 638
    :goto_1
    :pswitch_0
    if-ltz v10, :cond_1

    .line 639
    new-array v0, v10, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->image:[B

    .line 640
    :cond_1
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->palShades:Z

    if-eqz v0, :cond_5

    .line 641
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->smask:[B

    .line 644
    :cond_2
    :goto_2
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->idat:Lcom/itextpdf/text/pdf/codec/PngImage$NewByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/codec/PngImage$NewByteArrayOutputStream;->getBuf()[B

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->idat:Lcom/itextpdf/text/pdf/codec/PngImage$NewByteArrayOutputStream;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/codec/PngImage$NewByteArrayOutputStream;->size()I

    move-result v2

    invoke-direct {v7, v0, v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 645
    .local v7, bai:Ljava/io/ByteArrayInputStream;
    new-instance v8, Ljava/util/zip/InflaterInputStream;

    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    invoke-direct {v8, v7, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 646
    .local v8, infStream:Ljava/io/InputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->dataStream:Ljava/io/DataInputStream;

    .line 648
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->interlaceMethod:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 649
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget v5, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    iget v6, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->height:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/codec/PngImage;->decodePass(IIIIII)V

    .line 661
    :goto_3
    return-void

    .line 615
    .end local v7           #bai:Ljava/io/ByteArrayInputStream;
    .end local v8           #infStream:Ljava/io/InputStream;
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 618
    :pswitch_1
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    mul-int/2addr v0, v9

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->height:I

    mul-int v10, v0, v1

    .line 619
    goto :goto_1

    .line 621
    :pswitch_2
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->height:I

    mul-int v10, v0, v1

    .line 622
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->bytesPerPixel:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->bytesPerPixel:I

    goto :goto_1

    .line 625
    :pswitch_3
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->interlaceMethod:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 626
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    mul-int/2addr v0, v9

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->height:I

    mul-int v10, v0, v1

    .line 627
    :cond_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->bytesPerPixel:I

    goto :goto_1

    .line 630
    :pswitch_4
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->height:I

    mul-int v10, v0, v1

    .line 631
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->bytesPerPixel:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->bytesPerPixel:I

    goto/16 :goto_1

    .line 634
    :pswitch_5
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->height:I

    mul-int v10, v0, v1

    .line 635
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->bytesPerPixel:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->bytesPerPixel:I

    goto/16 :goto_1

    .line 642
    :cond_5
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->genBWMask:Z

    if-eqz v0, :cond_2

    .line 643
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->smask:[B

    goto/16 :goto_2

    .line 652
    .restart local v7       #bai:Ljava/io/ByteArrayInputStream;
    .restart local v8       #infStream:Ljava/io/InputStream;
    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/16 v4, 0x8

    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v5, v0, 0x8

    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->height:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v6, v0, 0x8

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/codec/PngImage;->decodePass(IIIIII)V

    .line 653
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/16 v4, 0x8

    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    add-int/lit8 v0, v0, 0x3

    div-int/lit8 v5, v0, 0x8

    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->height:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v6, v0, 0x8

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/codec/PngImage;->decodePass(IIIIII)V

    .line 654
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/16 v4, 0x8

    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    add-int/lit8 v0, v0, 0x3

    div-int/lit8 v5, v0, 0x4

    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->height:I

    add-int/lit8 v0, v0, 0x3

    div-int/lit8 v6, v0, 0x8

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/codec/PngImage;->decodePass(IIIIII)V

    .line 655
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x4

    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v5, v0, 0x4

    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->height:I

    add-int/lit8 v0, v0, 0x3

    div-int/lit8 v6, v0, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/codec/PngImage;->decodePass(IIIIII)V

    .line 656
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x4

    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v5, v0, 0x2

    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->height:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v6, v0, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/codec/PngImage;->decodePass(IIIIII)V

    .line 657
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x2

    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    div-int/lit8 v5, v0, 0x2

    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->height:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v6, v0, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/codec/PngImage;->decodePass(IIIIII)V

    .line 658
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x2

    iget v5, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    iget v0, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->height:I

    div-int/lit8 v6, v0, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/codec/PngImage;->decodePass(IIIIII)V

    goto/16 :goto_3

    .line 616
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method decodePass(IIIIII)V
    .locals 12
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xStep"
    .parameter "yStep"
    .parameter "passWidth"
    .parameter "passHeight"

    .prologue
    .line 666
    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    .line 715
    :cond_0
    return-void

    .line 670
    :cond_1
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->inputBands:I

    mul-int v1, v1, p5

    iget v3, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->bitDepth:I

    mul-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v7, v1, 0x8

    .line 671
    .local v7, bytesPerRow:I
    new-array v2, v7, [B

    .line 672
    .local v2, curr:[B
    new-array v9, v7, [B

    .line 676
    .local v9, prior:[B
    const/4 v10, 0x0

    .local v10, srcY:I
    move v5, p2

    .line 677
    .local v5, dstY:I
    :goto_0
    move/from16 v0, p6

    if-ge v10, v0, :cond_0

    .line 680
    const/4 v8, 0x0

    .line 682
    .local v8, filter:I
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->dataStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v8

    .line 683
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->dataStream:Ljava/io/DataInputStream;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v7}, Ljava/io/DataInputStream;->readFully([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 705
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "png.filter.unknown"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 692
    :pswitch_0
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->bytesPerPixel:I

    invoke-static {v2, v7, v1}, Lcom/itextpdf/text/pdf/codec/PngImage;->decodeSubFilter([BII)V

    :goto_2
    :pswitch_1
    move-object v1, p0

    move v3, p1

    move v4, p3

    move/from16 v6, p5

    .line 708
    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/text/pdf/codec/PngImage;->processPixels([BIIII)V

    .line 711
    move-object v11, v9

    .line 712
    .local v11, tmp:[B
    move-object v9, v2

    .line 713
    move-object v2, v11

    .line 678
    add-int/lit8 v10, v10, 0x1

    add-int v5, v5, p4

    goto :goto_0

    .line 695
    .end local v11           #tmp:[B
    :pswitch_2
    invoke-static {v2, v9, v7}, Lcom/itextpdf/text/pdf/codec/PngImage;->decodeUpFilter([B[BI)V

    goto :goto_2

    .line 698
    :pswitch_3
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->bytesPerPixel:I

    invoke-static {v2, v9, v7, v1}, Lcom/itextpdf/text/pdf/codec/PngImage;->decodeAverageFilter([B[BII)V

    goto :goto_2

    .line 701
    :pswitch_4
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->bytesPerPixel:I

    invoke-static {v2, v9, v7, v1}, Lcom/itextpdf/text/pdf/codec/PngImage;->decodePaethFilter([B[BII)V

    goto :goto_2

    .line 684
    :catch_0
    move-exception v1

    goto :goto_1

    .line 688
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method getColorspace()Lcom/itextpdf/text/pdf/PdfObject;
    .locals 26

    .prologue
    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->icc_profile:Lcom/itextpdf/text/pdf/ICC_Profile;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 443
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->colorType:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x2

    if-nez v22, :cond_0

    .line 444
    sget-object v14, Lcom/itextpdf/text/pdf/PdfName;->DEVICEGRAY:Lcom/itextpdf/text/pdf/PdfName;

    .line 510
    :goto_0
    return-object v14

    .line 446
    :cond_0
    sget-object v14, Lcom/itextpdf/text/pdf/PdfName;->DEVICERGB:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_0

    .line 448
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->gamma:F

    move/from16 v22, v0

    const/high16 v23, 0x3f80

    cmpl-float v22, v22, v23

    if-nez v22, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->hasCHRM:Z

    move/from16 v22, v0

    if-nez v22, :cond_3

    .line 449
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->colorType:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x2

    if-nez v22, :cond_2

    .line 450
    sget-object v14, Lcom/itextpdf/text/pdf/PdfName;->DEVICEGRAY:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_0

    .line 452
    :cond_2
    sget-object v14, Lcom/itextpdf/text/pdf/PdfName;->DEVICERGB:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_0

    .line 455
    :cond_3
    new-instance v14, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v14}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 456
    .local v14, array:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v15, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v15}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 457
    .local v15, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->colorType:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x2

    if-nez v22, :cond_5

    .line 458
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->gamma:F

    move/from16 v22, v0

    const/high16 v23, 0x3f80

    cmpl-float v22, v22, v23

    if-nez v22, :cond_4

    .line 459
    sget-object v14, Lcom/itextpdf/text/pdf/PdfName;->DEVICEGRAY:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_0

    .line 460
    :cond_4
    sget-object v22, Lcom/itextpdf/text/pdf/PdfName;->CALGRAY:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 461
    sget-object v22, Lcom/itextpdf/text/pdf/PdfName;->GAMMA:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v23, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->gamma:F

    move/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 462
    sget-object v22, Lcom/itextpdf/text/pdf/PdfName;->WHITEPOINT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v23, Lcom/itextpdf/text/pdf/PdfLiteral;

    const-string v24, "[1 1 1]"

    invoke-direct/range {v23 .. v24}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 463
    invoke-virtual {v14, v15}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_0

    .line 466
    :cond_5
    new-instance v19, Lcom/itextpdf/text/pdf/PdfLiteral;

    const-string v22, "[1 1 1]"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    .line 467
    .local v19, wp:Lcom/itextpdf/text/pdf/PdfObject;
    sget-object v22, Lcom/itextpdf/text/pdf/PdfName;->CALRGB:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 468
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->gamma:F

    move/from16 v22, v0

    const/high16 v23, 0x3f80

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_6

    .line 469
    new-instance v16, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 470
    .local v16, gm:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v18, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->gamma:F

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    .line 471
    .local v18, n:Lcom/itextpdf/text/pdf/PdfNumber;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 472
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 473
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 474
    sget-object v22, Lcom/itextpdf/text/pdf/PdfName;->GAMMA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 476
    .end local v16           #gm:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v18           #n:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->hasCHRM:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 477
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yW:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xG:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xB:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yR:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xR:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xB:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yG:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xR:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xG:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yB:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v23, v23, v24

    mul-float v21, v22, v23

    .line 478
    .local v21, z:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yR:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xG:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xB:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yW:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xW:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xB:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yG:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xW:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xG:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yB:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v23, v23, v24

    mul-float v22, v22, v23

    div-float v6, v22, v21

    .line 479
    .local v6, YA:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xR:F

    move/from16 v22, v0

    mul-float v22, v22, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yR:F

    move/from16 v23, v0

    div-float v2, v22, v23

    .line 480
    .local v2, XA:F
    const/high16 v22, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xR:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yR:F

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3f80

    sub-float v22, v22, v23

    mul-float v10, v6, v22

    .line 481
    .local v10, ZA:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yG:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xR:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xB:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yW:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xW:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xB:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yR:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xW:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xR:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yB:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v23, v23, v24

    mul-float v22, v22, v23

    div-float v7, v22, v21

    .line 482
    .local v7, YB:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xG:F

    move/from16 v22, v0

    mul-float v22, v22, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yG:F

    move/from16 v23, v0

    div-float v3, v22, v23

    .line 483
    .local v3, XB:F
    const/high16 v22, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xG:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yG:F

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3f80

    sub-float v22, v22, v23

    mul-float v11, v7, v22

    .line 484
    .local v11, ZB:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yB:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xR:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xG:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yW:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xW:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xG:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yW:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xW:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xR:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yG:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v23, v23, v24

    mul-float v22, v22, v23

    div-float v8, v22, v21

    .line 485
    .local v8, YC:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xB:F

    move/from16 v22, v0

    mul-float v22, v22, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yB:F

    move/from16 v23, v0

    div-float v4, v22, v23

    .line 486
    .local v4, XC:F
    const/high16 v22, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xB:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yB:F

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3f80

    sub-float v22, v22, v23

    mul-float v12, v8, v22

    .line 487
    .local v12, ZC:F
    add-float v22, v2, v3

    add-float v5, v22, v4

    .line 488
    .local v5, XW:F
    const/high16 v9, 0x3f80

    .line 489
    .local v9, YW:F
    add-float v22, v10, v11

    add-float v13, v22, v12

    .line 490
    .local v13, ZW:F
    new-instance v20, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 491
    .local v20, wpa:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v22, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 492
    new-instance v22, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v22

    invoke-direct {v0, v9}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 493
    new-instance v22, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v22

    invoke-direct {v0, v13}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 494
    move-object/from16 v19, v20

    .line 495
    new-instance v17, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 496
    .local v17, matrix:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v22, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 497
    new-instance v22, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 498
    new-instance v22, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v22

    invoke-direct {v0, v10}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 499
    new-instance v22, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 500
    new-instance v22, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v22

    invoke-direct {v0, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 501
    new-instance v22, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v22

    invoke-direct {v0, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 502
    new-instance v22, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 503
    new-instance v22, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v22

    invoke-direct {v0, v8}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 504
    new-instance v22, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 505
    sget-object v22, Lcom/itextpdf/text/pdf/PdfName;->MATRIX:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 507
    .end local v2           #XA:F
    .end local v3           #XB:F
    .end local v4           #XC:F
    .end local v5           #XW:F
    .end local v6           #YA:F
    .end local v7           #YB:F
    .end local v8           #YC:F
    .end local v9           #YW:F
    .end local v10           #ZA:F
    .end local v11           #ZB:F
    .end local v12           #ZC:F
    .end local v13           #ZW:F
    .end local v17           #matrix:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v20           #wpa:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v21           #z:F
    :cond_7
    sget-object v22, Lcom/itextpdf/text/pdf/PdfName;->WHITEPOINT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 508
    invoke-virtual {v14, v15}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto/16 :goto_0
.end method

.method getImage()Lcom/itextpdf/text/Image;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/PngImage;->readPng()V

    .line 517
    const/4 v13, 0x0

    .line 518
    .local v13, pal0:I
    const/4 v14, 0x0

    .line 519
    .local v14, palIdx:I
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->palShades:Z

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->trans:[B

    if-eqz v2, :cond_1

    .line 521
    const/4 v10, 0x0

    .local v10, k:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->trans:[B

    array-length v2, v2

    if-ge v10, v2, :cond_1

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->trans:[B

    aget-byte v2, v2, v10

    and-int/lit16 v11, v2, 0xff

    .line 523
    .local v11, n:I
    if-nez v11, :cond_0

    .line 524
    add-int/lit8 v13, v13, 0x1

    .line 525
    move v14, v10

    .line 527
    :cond_0
    if-eqz v11, :cond_f

    const/16 v2, 0xff

    if-eq v11, v2, :cond_f

    .line 528
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->palShades:Z

    .line 533
    .end local v10           #k:I
    .end local v11           #n:I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->colorType:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 534
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->palShades:Z

    .line 535
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->palShades:Z

    if-nez v2, :cond_10

    const/4 v2, 0x1

    if-gt v13, v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->transRedGray:I

    if-ltz v2, :cond_10

    :cond_3
    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->genBWMask:Z

    .line 536
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->palShades:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->genBWMask:Z

    if-nez v2, :cond_4

    const/4 v2, 0x1

    if-ne v13, v2, :cond_4

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->MASK:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfLiteral;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v15}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 539
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->interlaceMethod:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->bitDepth:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->colorType:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->palShades:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->genBWMask:Z

    if-eqz v2, :cond_11

    :cond_5
    const/4 v12, 0x1

    .line 540
    .local v12, needDecode:Z
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->colorType:I

    packed-switch v2, :pswitch_data_0

    .line 557
    :goto_3
    :pswitch_0
    if-eqz v12, :cond_6

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/PngImage;->decodeIdat()V

    .line 559
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->inputBands:I

    .line 560
    .local v4, components:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->colorType:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_7

    .line 561
    add-int/lit8 v4, v4, -0x1

    .line 562
    :cond_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->bitDepth:I

    .line 563
    .local v5, bpc:I
    const/16 v2, 0x10

    if-ne v5, v2, :cond_8

    .line 564
    const/16 v5, 0x8

    .line 566
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->image:[B

    if-eqz v2, :cond_13

    .line 567
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->colorType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_12

    .line 568
    new-instance v1, Lcom/itextpdf/text/ImgRaw;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->height:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->image:[B

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/text/ImgRaw;-><init>(IIII[B)V

    .line 582
    .local v1, img:Lcom/itextpdf/text/Image;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    if-nez v2, :cond_9

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/PngImage;->getColorspace()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 584
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->intent:Lcom/itextpdf/text/pdf/PdfName;

    if-eqz v2, :cond_a

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->INTENT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->intent:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 586
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/Image;->setAdditional(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 588
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->icc_profile:Lcom/itextpdf/text/pdf/ICC_Profile;

    if-eqz v2, :cond_c

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->icc_profile:Lcom/itextpdf/text/pdf/ICC_Profile;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/Image;->tagICC(Lcom/itextpdf/text/pdf/ICC_Profile;)V

    .line 590
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->palShades:Z

    if-eqz v2, :cond_d

    .line 591
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->height:I

    const/4 v6, 0x1

    const/16 v15, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->smask:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v2, v3, v6, v15, v0}, Lcom/itextpdf/text/Image;->getInstance(IIII[B)Lcom/itextpdf/text/Image;

    move-result-object v9

    .line 592
    .local v9, im2:Lcom/itextpdf/text/Image;
    invoke-virtual {v9}, Lcom/itextpdf/text/Image;->makeMask()V

    .line 593
    invoke-virtual {v1, v9}, Lcom/itextpdf/text/Image;->setImageMask(Lcom/itextpdf/text/Image;)V

    .line 595
    .end local v9           #im2:Lcom/itextpdf/text/Image;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->genBWMask:Z

    if-eqz v2, :cond_e

    .line 596
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->height:I

    const/4 v6, 0x1

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->smask:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v2, v3, v6, v15, v0}, Lcom/itextpdf/text/Image;->getInstance(IIII[B)Lcom/itextpdf/text/Image;

    move-result-object v9

    .line 597
    .restart local v9       #im2:Lcom/itextpdf/text/Image;
    invoke-virtual {v9}, Lcom/itextpdf/text/Image;->makeMask()V

    .line 598
    invoke-virtual {v1, v9}, Lcom/itextpdf/text/Image;->setImageMask(Lcom/itextpdf/text/Image;)V

    .line 600
    .end local v9           #im2:Lcom/itextpdf/text/Image;
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->dpiX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->dpiY:I

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/Image;->setDpi(II)V

    .line 601
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->XYRatio:F

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/Image;->setXYRatio(F)V

    .line 602
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/Image;->setOriginalType(I)V

    .line 603
    return-object v1

    .line 521
    .end local v1           #img:Lcom/itextpdf/text/Image;
    .end local v4           #components:I
    .end local v5           #bpc:I
    .end local v12           #needDecode:Z
    .restart local v10       #k:I
    .restart local v11       #n:I
    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 535
    .end local v10           #k:I
    .end local v11           #n:I
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 539
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 542
    .restart local v12       #needDecode:Z
    :pswitch_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->inputBands:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 605
    .end local v12           #needDecode:Z
    :catch_0
    move-exception v8

    .line 606
    .local v8, e:Ljava/lang/Exception;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v2, v8}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 545
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v12       #needDecode:Z
    :pswitch_2
    const/4 v2, 0x3

    :try_start_1
    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->inputBands:I

    goto/16 :goto_3

    .line 548
    :pswitch_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->inputBands:I

    goto/16 :goto_3

    .line 551
    :pswitch_4
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->inputBands:I

    goto/16 :goto_3

    .line 554
    :pswitch_5
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->inputBands:I

    goto/16 :goto_3

    .line 570
    .restart local v4       #components:I
    .restart local v5       #bpc:I
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->height:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->image:[B

    invoke-static {v2, v3, v4, v5, v6}, Lcom/itextpdf/text/Image;->getInstance(IIII[B)Lcom/itextpdf/text/Image;

    move-result-object v1

    .restart local v1       #img:Lcom/itextpdf/text/Image;
    goto/16 :goto_4

    .line 573
    .end local v1           #img:Lcom/itextpdf/text/Image;
    :cond_13
    new-instance v1, Lcom/itextpdf/text/ImgRaw;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->height:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->idat:Lcom/itextpdf/text/pdf/codec/PngImage$NewByteArrayOutputStream;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/codec/PngImage$NewByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/text/ImgRaw;-><init>(IIII[B)V

    .line 574
    .restart local v1       #img:Lcom/itextpdf/text/Image;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/Image;->setDeflated(Z)V

    .line 575
    new-instance v7, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v7}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 576
    .local v7, decodeparms:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BITSPERCOMPONENT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->bitDepth:I

    invoke-direct {v3, v6}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v7, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 577
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PREDICTOR:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    const/16 v6, 0xf

    invoke-direct {v3, v6}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v7, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 578
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->COLUMNS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    invoke-direct {v3, v6}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v7, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 579
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->COLORS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->colorType:I

    const/4 v15, 0x3

    if-eq v2, v15, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->colorType:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_15

    :cond_14
    const/4 v2, 0x1

    :goto_5
    invoke-direct {v6, v2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v7, v3, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->DECODEPARMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 579
    :cond_15
    const/4 v2, 0x3

    goto :goto_5

    .line 540
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method getPixel([B)[I
    .locals 10
    .parameter "curr"

    .prologue
    .line 843
    iget v8, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->bitDepth:I

    sparse-switch v8, :sswitch_data_0

    .line 857
    array-length v8, p1

    mul-int/lit8 v8, v8, 0x8

    iget v9, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->bitDepth:I

    div-int/2addr v8, v9

    new-array v5, v8, [I

    .line 858
    .local v5, out:[I
    const/4 v0, 0x0

    .line 859
    .local v0, idx:I
    const/16 v8, 0x8

    iget v9, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->bitDepth:I

    div-int v7, v8, v9

    .line 860
    .local v7, passes:I
    const/4 v8, 0x1

    iget v9, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->bitDepth:I

    shl-int/2addr v8, v9

    add-int/lit8 v4, v8, -0x1

    .line 861
    .local v4, mask:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    array-length v8, p1

    if-ge v3, v8, :cond_3

    .line 862
    add-int/lit8 v2, v7, -0x1

    .local v2, j:I
    move v1, v0

    .end local v0           #idx:I
    .local v1, idx:I
    :goto_1
    if-ltz v2, :cond_2

    .line 863
    add-int/lit8 v0, v1, 0x1

    .end local v1           #idx:I
    .restart local v0       #idx:I
    aget-byte v8, p1, v3

    iget v9, p0, Lcom/itextpdf/text/pdf/codec/PngImage;->bitDepth:I

    mul-int/2addr v9, v2

    ushr-int/2addr v8, v9

    and-int/2addr v8, v4

    aput v8, v5, v1

    .line 862
    add-int/lit8 v2, v2, -0x1

    move v1, v0

    .end local v0           #idx:I
    .restart local v1       #idx:I
    goto :goto_1

    .line 845
    .end local v1           #idx:I
    .end local v2           #j:I
    .end local v3           #k:I
    .end local v4           #mask:I
    .end local v5           #out:[I
    .end local v7           #passes:I
    :sswitch_0
    array-length v8, p1

    new-array v5, v8, [I

    .line 846
    .restart local v5       #out:[I
    const/4 v3, 0x0

    .restart local v3       #k:I
    :goto_2
    array-length v8, v5

    if-ge v3, v8, :cond_0

    .line 847
    aget-byte v8, p1, v3

    and-int/lit16 v8, v8, 0xff

    aput v8, v5, v3

    .line 846
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    move-object v6, v5

    .line 866
    .end local v5           #out:[I
    .local v6, out:[I
    :goto_3
    return-object v6

    .line 851
    .end local v3           #k:I
    .end local v6           #out:[I
    :sswitch_1
    array-length v8, p1

    div-int/lit8 v8, v8, 0x2

    new-array v5, v8, [I

    .line 852
    .restart local v5       #out:[I
    const/4 v3, 0x0

    .restart local v3       #k:I
    :goto_4
    array-length v8, v5

    if-ge v3, v8, :cond_1

    .line 853
    mul-int/lit8 v8, v3, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    mul-int/lit8 v9, v3, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    aput v8, v5, v3

    .line 852
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_1
    move-object v6, v5

    .line 854
    .end local v5           #out:[I
    .restart local v6       #out:[I
    goto :goto_3

    .line 861
    .end local v6           #out:[I
    .restart local v1       #idx:I
    .restart local v2       #j:I
    .restart local v4       #mask:I
    .restart local v5       #out:[I
    .restart local v7       #passes:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    .end local v1           #idx:I
    .restart local v0       #idx:I
    goto :goto_0

    .end local v2           #j:I
    :cond_3
    move-object v6, v5

    .line 866
    .end local v5           #out:[I
    .restart local v6       #out:[I
    goto :goto_3

    .line 843
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method processPixels([BIIII)V
    .locals 23
    .parameter "curr"
    .parameter "xOffset"
    .parameter "step"
    .parameter "y"
    .parameter "width"

    .prologue
    .line 720
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/codec/PngImage;->getPixel([B)[I

    move-result-object v3

    .line 721
    .local v3, out:[I
    const/4 v5, 0x0

    .line 722
    .local v5, sizes:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->colorType:I

    packed-switch v2, :pswitch_data_0

    .line 733
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->image:[B

    if-eqz v2, :cond_1

    .line 734
    move/from16 v6, p2

    .line 735
    .local v6, dstX:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    mul-int v4, v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->bitDepth:I

    const/16 v7, 0x10

    if-ne v2, v7, :cond_0

    const/16 v2, 0x8

    :goto_1
    mul-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v9, v2, 0x8

    .line 736
    .local v9, yStride:I
    const/16 v22, 0x0

    .local v22, srcX:I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, p5

    if-ge v0, v1, :cond_1

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->image:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->inputBands:I

    mul-int v4, v4, v22

    move-object/from16 v0, p0

    iget v8, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->bitDepth:I

    move/from16 v7, p4

    invoke-static/range {v2 .. v9}, Lcom/itextpdf/text/pdf/codec/PngImage;->setPixel([B[IIIIIII)V

    .line 738
    add-int v6, v6, p3

    .line 736
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 726
    .end local v6           #dstX:I
    .end local v9           #yStride:I
    .end local v22           #srcX:I
    :pswitch_1
    const/4 v5, 0x1

    .line 727
    goto :goto_0

    .line 730
    :pswitch_2
    const/4 v5, 0x3

    goto :goto_0

    .line 735
    .restart local v6       #dstX:I
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->bitDepth:I

    goto :goto_1

    .line 741
    .end local v6           #dstX:I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->palShades:Z

    if-eqz v2, :cond_5

    .line 742
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->colorType:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 743
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->bitDepth:I

    const/16 v4, 0x10

    if-ne v2, v4, :cond_2

    .line 744
    const/16 v20, 0x0

    .local v20, k:I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, p5

    if-ge v0, v1, :cond_2

    .line 745
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->inputBands:I

    mul-int v2, v2, v20

    add-int/2addr v2, v5

    aget v4, v3, v2

    ushr-int/lit8 v4, v4, 0x8

    aput v4, v3, v2

    .line 744
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 747
    .end local v20           #k:I
    :cond_2
    move-object/from16 v0, p0

    iget v9, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    .line 748
    .restart local v9       #yStride:I
    move/from16 v6, p2

    .line 749
    .restart local v6       #dstX:I
    const/16 v22, 0x0

    .restart local v22       #srcX:I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, p5

    if-ge v0, v1, :cond_6

    .line 750
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->smask:[B

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->inputBands:I

    mul-int v2, v2, v22

    add-int v12, v2, v5

    const/4 v13, 0x1

    const/16 v16, 0x8

    move-object v11, v3

    move v14, v6

    move/from16 v15, p4

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/itextpdf/text/pdf/codec/PngImage;->setPixel([B[IIIIIII)V

    .line 751
    add-int v6, v6, p3

    .line 749
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 755
    .end local v6           #dstX:I
    .end local v9           #yStride:I
    .end local v22           #srcX:I
    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    .line 756
    .restart local v9       #yStride:I
    const/4 v2, 0x1

    new-array v11, v2, [I

    .line 757
    .local v11, v:[I
    move/from16 v6, p2

    .line 758
    .restart local v6       #dstX:I
    const/16 v22, 0x0

    .restart local v22       #srcX:I
    :goto_5
    move/from16 v0, v22

    move/from16 v1, p5

    if-ge v0, v1, :cond_6

    .line 759
    aget v19, v3, v22

    .line 760
    .local v19, idx:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->trans:[B

    array-length v2, v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_4

    .line 761
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->trans:[B

    aget-byte v4, v4, v19

    aput v4, v11, v2

    .line 764
    :goto_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->smask:[B

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v16, 0x8

    move v14, v6

    move/from16 v15, p4

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/itextpdf/text/pdf/codec/PngImage;->setPixel([B[IIIIIII)V

    .line 765
    add-int v6, v6, p3

    .line 758
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 763
    :cond_4
    const/4 v2, 0x0

    const/16 v4, 0xff

    aput v4, v11, v2

    goto :goto_6

    .line 769
    .end local v6           #dstX:I
    .end local v9           #yStride:I
    .end local v11           #v:[I
    .end local v19           #idx:I
    .end local v22           #srcX:I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->genBWMask:Z

    if-eqz v2, :cond_6

    .line 770
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->colorType:I

    packed-switch v2, :pswitch_data_1

    .line 810
    :cond_6
    :pswitch_3
    return-void

    .line 772
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v9, v2, 0x8

    .line 773
    .restart local v9       #yStride:I
    const/4 v2, 0x1

    new-array v11, v2, [I

    .line 774
    .restart local v11       #v:[I
    move/from16 v6, p2

    .line 775
    .restart local v6       #dstX:I
    const/16 v22, 0x0

    .restart local v22       #srcX:I
    :goto_7
    move/from16 v0, v22

    move/from16 v1, p5

    if-ge v0, v1, :cond_6

    .line 776
    aget v19, v3, v22

    .line 777
    .restart local v19       #idx:I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->trans:[B

    array-length v2, v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->trans:[B

    aget-byte v2, v2, v19

    if-nez v2, :cond_7

    const/4 v2, 0x1

    :goto_8
    aput v2, v11, v4

    .line 778
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->smask:[B

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v16, 0x1

    move v14, v6

    move/from16 v15, p4

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/itextpdf/text/pdf/codec/PngImage;->setPixel([B[IIIIIII)V

    .line 779
    add-int v6, v6, p3

    .line 775
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 777
    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .line 784
    .end local v6           #dstX:I
    .end local v9           #yStride:I
    .end local v11           #v:[I
    .end local v19           #idx:I
    .end local v22           #srcX:I
    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v9, v2, 0x8

    .line 785
    .restart local v9       #yStride:I
    const/4 v2, 0x1

    new-array v11, v2, [I

    .line 786
    .restart local v11       #v:[I
    move/from16 v6, p2

    .line 787
    .restart local v6       #dstX:I
    const/16 v22, 0x0

    .restart local v22       #srcX:I
    :goto_9
    move/from16 v0, v22

    move/from16 v1, p5

    if-ge v0, v1, :cond_6

    .line 788
    aget v18, v3, v22

    .line 789
    .local v18, g:I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->transRedGray:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_8

    const/4 v2, 0x1

    :goto_a
    aput v2, v11, v4

    .line 790
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->smask:[B

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v16, 0x1

    move v14, v6

    move/from16 v15, p4

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/itextpdf/text/pdf/codec/PngImage;->setPixel([B[IIIIIII)V

    .line 791
    add-int v6, v6, p3

    .line 787
    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    .line 789
    :cond_8
    const/4 v2, 0x0

    goto :goto_a

    .line 796
    .end local v6           #dstX:I
    .end local v9           #yStride:I
    .end local v11           #v:[I
    .end local v18           #g:I
    .end local v22           #srcX:I
    :pswitch_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v9, v2, 0x8

    .line 797
    .restart local v9       #yStride:I
    const/4 v2, 0x1

    new-array v11, v2, [I

    .line 798
    .restart local v11       #v:[I
    move/from16 v6, p2

    .line 799
    .restart local v6       #dstX:I
    const/16 v22, 0x0

    .restart local v22       #srcX:I
    :goto_b
    move/from16 v0, v22

    move/from16 v1, p5

    if-ge v0, v1, :cond_6

    .line 800
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->inputBands:I

    mul-int v21, v2, v22

    .line 801
    .local v21, markRed:I
    const/4 v4, 0x0

    aget v2, v3, v21

    move-object/from16 v0, p0

    iget v7, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->transRedGray:I

    if-ne v2, v7, :cond_9

    add-int/lit8 v2, v21, 0x1

    aget v2, v3, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->transGreen:I

    if-ne v2, v7, :cond_9

    add-int/lit8 v2, v21, 0x2

    aget v2, v3, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->transBlue:I

    if-ne v2, v7, :cond_9

    const/4 v2, 0x1

    :goto_c
    aput v2, v11, v4

    .line 803
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->smask:[B

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v16, 0x1

    move v14, v6

    move/from16 v15, p4

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/itextpdf/text/pdf/codec/PngImage;->setPixel([B[IIIIIII)V

    .line 804
    add-int v6, v6, p3

    .line 799
    add-int/lit8 v22, v22, 0x1

    goto :goto_b

    .line 801
    :cond_9
    const/4 v2, 0x0

    goto :goto_c

    .line 722
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 770
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method readPng()V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    sget-object v26, Lcom/itextpdf/text/pdf/codec/PngImage;->PNGID:[I

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v13, v0, :cond_1

    .line 267
    sget-object v26, Lcom/itextpdf/text/pdf/codec/PngImage;->PNGID:[I

    aget v26, v26, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->read()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 268
    new-instance v26, Ljava/io/IOException;

    const-string v27, "file.is.not.a.valid.png"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 266
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 271
    :cond_1
    const/16 v26, 0x1000

    move/from16 v0, v26

    new-array v4, v0, [B

    .line 273
    .local v4, buffer:[B
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/codec/PngImage;->getInt(Ljava/io/InputStream;)I

    move-result v17

    .line 274
    .local v17, len:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/codec/PngImage;->getString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v19

    .line 275
    .local v19, marker:Ljava/lang/String;
    if-ltz v17, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/codec/PngImage;->checkMarker(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 276
    :cond_2
    new-instance v26, Ljava/io/IOException;

    const-string v27, "corrupted.png.file"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 277
    :cond_3
    const-string v26, "IDAT"

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 279
    :goto_2
    if-eqz v17, :cond_8

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x1000

    move/from16 v0, v17

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v28

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v24

    .line 281
    .local v24, size:I
    if-gez v24, :cond_5

    .line 439
    .end local v24           #size:I
    :cond_4
    return-void

    .line 283
    .restart local v24       #size:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->idat:Lcom/itextpdf/text/pdf/codec/PngImage$NewByteArrayOutputStream;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2}, Lcom/itextpdf/text/pdf/codec/PngImage$NewByteArrayOutputStream;->write([BII)V

    .line 284
    sub-int v17, v17, v24

    goto :goto_2

    .line 287
    .end local v24           #size:I
    :cond_6
    const-string v26, "tRNS"

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 288
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->colorType:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_0

    .line 323
    :cond_7
    :goto_3
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V

    .line 437
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    invoke-static/range {v26 .. v27}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V

    goto/16 :goto_1

    .line 290
    :pswitch_1
    const/16 v26, 0x2

    move/from16 v0, v17

    move/from16 v1, v26

    if-lt v0, v1, :cond_7

    .line 291
    add-int/lit8 v17, v17, -0x2

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/codec/PngImage;->getWord(Ljava/io/InputStream;)I

    move-result v11

    .line 293
    .local v11, gray:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->bitDepth:I

    move/from16 v26, v0

    const/16 v27, 0x10

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 294
    move-object/from16 v0, p0

    iput v11, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->transRedGray:I

    goto :goto_3

    .line 296
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v26, v0

    sget-object v27, Lcom/itextpdf/text/pdf/PdfName;->MASK:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v28, Lcom/itextpdf/text/pdf/PdfLiteral;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v28}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_3

    .line 300
    .end local v11           #gray:I
    :pswitch_2
    const/16 v26, 0x6

    move/from16 v0, v17

    move/from16 v1, v26

    if-lt v0, v1, :cond_7

    .line 301
    add-int/lit8 v17, v17, -0x6

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/codec/PngImage;->getWord(Ljava/io/InputStream;)I

    move-result v22

    .line 303
    .local v22, red:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/codec/PngImage;->getWord(Ljava/io/InputStream;)I

    move-result v12

    .line 304
    .local v12, green:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/codec/PngImage;->getWord(Ljava/io/InputStream;)I

    move-result v3

    .line 305
    .local v3, blue:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->bitDepth:I

    move/from16 v26, v0

    const/16 v27, 0x10

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 306
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->transRedGray:I

    .line 307
    move-object/from16 v0, p0

    iput v12, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->transGreen:I

    .line 308
    move-object/from16 v0, p0

    iput v3, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->transBlue:I

    goto/16 :goto_3

    .line 311
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v26, v0

    sget-object v27, Lcom/itextpdf/text/pdf/PdfName;->MASK:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v28, Lcom/itextpdf/text/pdf/PdfLiteral;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v28}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_3

    .line 315
    .end local v3           #blue:I
    .end local v12           #green:I
    .end local v22           #red:I
    :pswitch_3
    if-lez v17, :cond_7

    .line 316
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->trans:[B

    .line 317
    const/16 v16, 0x0

    .local v16, k:I
    :goto_5
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_b

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->trans:[B

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->read()I

    move-result v27

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v26, v16

    .line 317
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 319
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 325
    .end local v16           #k:I
    :cond_c
    const-string v26, "IHDR"

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/codec/PngImage;->getInt(Ljava/io/InputStream;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->width:I

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/codec/PngImage;->getInt(Ljava/io/InputStream;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->height:I

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/InputStream;->read()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->bitDepth:I

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/InputStream;->read()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->colorType:I

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/InputStream;->read()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->compressionMethod:I

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/InputStream;->read()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->filterMethod:I

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/InputStream;->read()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->interlaceMethod:I

    goto/16 :goto_4

    .line 335
    :cond_d
    const-string v26, "PLTE"

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 336
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->colorType:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_f

    .line 337
    new-instance v5, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 338
    .local v5, colorspace:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v26, Lcom/itextpdf/text/pdf/PdfName;->INDEXED:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/PngImage;->getColorspace()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 340
    new-instance v26, Lcom/itextpdf/text/pdf/PdfNumber;

    div-int/lit8 v27, v17, 0x3

    add-int/lit8 v27, v27, -0x1

    invoke-direct/range {v26 .. v27}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 341
    new-instance v6, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v6}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    .local v6, colortable:Lcom/itextpdf/text/pdf/ByteBuffer;
    move/from16 v18, v17

    .line 342
    .end local v17           #len:I
    .local v18, len:I
    :goto_6
    add-int/lit8 v17, v18, -0x1

    .end local v18           #len:I
    .restart local v17       #len:I
    if-lez v18, :cond_e

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/InputStream;->read()I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move/from16 v18, v17

    .end local v17           #len:I
    .restart local v18       #len:I
    goto :goto_6

    .line 345
    .end local v18           #len:I
    .restart local v17       #len:I
    :cond_e
    new-instance v26, Lcom/itextpdf/text/pdf/PdfString;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->toByteArray()[B

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->colorTable:[B

    invoke-direct/range {v26 .. v27}, Lcom/itextpdf/text/pdf/PdfString;-><init>([B)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->additional:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v26, v0

    sget-object v27, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_4

    .line 349
    .end local v5           #colorspace:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v6           #colortable:Lcom/itextpdf/text/pdf/ByteBuffer;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V

    goto/16 :goto_4

    .line 352
    :cond_10
    const-string v26, "pHYs"

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/codec/PngImage;->getInt(Ljava/io/InputStream;)I

    move-result v7

    .line 354
    .local v7, dx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/codec/PngImage;->getInt(Ljava/io/InputStream;)I

    move-result v8

    .line 355
    .local v8, dy:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/InputStream;->read()I

    move-result v25

    .line 356
    .local v25, unit:I
    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    .line 357
    int-to-float v0, v7

    move/from16 v26, v0

    const v27, 0x3cd013a9

    mul-float v26, v26, v27

    const/high16 v27, 0x3f00

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->dpiX:I

    .line 358
    int-to-float v0, v8

    move/from16 v26, v0

    const v27, 0x3cd013a9

    mul-float v26, v26, v27

    const/high16 v27, 0x3f00

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->dpiY:I

    goto/16 :goto_4

    .line 361
    :cond_11
    if-eqz v8, :cond_8

    .line 362
    int-to-float v0, v7

    move/from16 v26, v0

    int-to-float v0, v8

    move/from16 v27, v0

    div-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->XYRatio:F

    goto/16 :goto_4

    .line 365
    .end local v7           #dx:I
    .end local v8           #dy:I
    .end local v25           #unit:I
    :cond_12
    const-string v26, "cHRM"

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/codec/PngImage;->getInt(Ljava/io/InputStream;)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const v27, 0x47c35000

    div-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->xW:F

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/codec/PngImage;->getInt(Ljava/io/InputStream;)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const v27, 0x47c35000

    div-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->yW:F

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/codec/PngImage;->getInt(Ljava/io/InputStream;)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const v27, 0x47c35000

    div-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->xR:F

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/codec/PngImage;->getInt(Ljava/io/InputStream;)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const v27, 0x47c35000

    div-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->yR:F

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/codec/PngImage;->getInt(Ljava/io/InputStream;)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const v27, 0x47c35000

    div-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->xG:F

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/codec/PngImage;->getInt(Ljava/io/InputStream;)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const v27, 0x47c35000

    div-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->yG:F

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/codec/PngImage;->getInt(Ljava/io/InputStream;)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const v27, 0x47c35000

    div-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->xB:F

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/codec/PngImage;->getInt(Ljava/io/InputStream;)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const v27, 0x47c35000

    div-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->yB:F

    .line 374
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xW:F

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    const v27, 0x38d1b717

    cmpg-float v26, v26, v27

    if-ltz v26, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yW:F

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    const v27, 0x38d1b717

    cmpg-float v26, v26, v27

    if-ltz v26, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xR:F

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    const v27, 0x38d1b717

    cmpg-float v26, v26, v27

    if-ltz v26, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yR:F

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    const v27, 0x38d1b717

    cmpg-float v26, v26, v27

    if-ltz v26, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xG:F

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    const v27, 0x38d1b717

    cmpg-float v26, v26, v27

    if-ltz v26, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yG:F

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    const v27, 0x38d1b717

    cmpg-float v26, v26, v27

    if-ltz v26, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->xB:F

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    const v27, 0x38d1b717

    cmpg-float v26, v26, v27

    if-ltz v26, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->yB:F

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    const v27, 0x38d1b717

    cmpg-float v26, v26, v27

    if-ltz v26, :cond_13

    const/16 v26, 0x1

    :goto_7
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->hasCHRM:Z

    goto/16 :goto_4

    :cond_13
    const/16 v26, 0x0

    goto :goto_7

    .line 376
    :cond_14
    const-string v26, "sRGB"

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/InputStream;->read()I

    move-result v23

    .line 378
    .local v23, ri:I
    sget-object v26, Lcom/itextpdf/text/pdf/codec/PngImage;->intents:[Lcom/itextpdf/text/pdf/PdfName;

    aget-object v26, v26, v23

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->intent:Lcom/itextpdf/text/pdf/PdfName;

    .line 379
    const v26, 0x400ccccd

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->gamma:F

    .line 380
    const v26, 0x3ea01a37

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->xW:F

    .line 381
    const v26, 0x3ea872b0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->yW:F

    .line 382
    const v26, 0x3f23d70a

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->xR:F

    .line 383
    const v26, 0x3ea8f5c3

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->yR:F

    .line 384
    const v26, 0x3e99999a

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->xG:F

    .line 385
    const v26, 0x3f19999a

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->yG:F

    .line 386
    const v26, 0x3e19999a

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->xB:F

    .line 387
    const v26, 0x3d75c28f

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->yB:F

    .line 388
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->hasCHRM:Z

    goto/16 :goto_4

    .line 390
    .end local v23           #ri:I
    :cond_15
    const-string v26, "gAMA"

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/codec/PngImage;->getInt(Ljava/io/InputStream;)I

    move-result v10

    .line 392
    .local v10, gm:I
    if-eqz v10, :cond_8

    .line 393
    const v26, 0x47c35000

    int-to-float v0, v10

    move/from16 v27, v0

    div-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->gamma:F

    .line 394
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->hasCHRM:Z

    move/from16 v26, v0

    if-nez v26, :cond_8

    .line 395
    const v26, 0x3ea01a37

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->xW:F

    .line 396
    const v26, 0x3ea872b0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->yW:F

    .line 397
    const v26, 0x3f23d70a

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->xR:F

    .line 398
    const v26, 0x3ea8f5c3

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->yR:F

    .line 399
    const v26, 0x3e99999a

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->xG:F

    .line 400
    const v26, 0x3f19999a

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->yG:F

    .line 401
    const v26, 0x3e19999a

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->xB:F

    .line 402
    const v26, 0x3d75c28f

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->yB:F

    .line 403
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->hasCHRM:Z

    goto/16 :goto_4

    .line 407
    .end local v10           #gm:I
    :cond_16
    const-string v26, "iCCP"

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 409
    :cond_17
    add-int/lit8 v17, v17, -0x1

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/InputStream;->read()I

    move-result v26

    if-nez v26, :cond_17

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/InputStream;->read()I

    .line 412
    add-int/lit8 v17, v17, -0x1

    .line 413
    move/from16 v0, v17

    new-array v14, v0, [B

    .line 414
    .local v14, icccom:[B
    const/16 v20, 0x0

    .line 415
    .local v20, p:I
    :goto_8
    if-lez v17, :cond_19

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v14, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v21

    .line 417
    .local v21, r:I
    if-gez v21, :cond_18

    .line 418
    new-instance v26, Ljava/io/IOException;

    const-string v27, "premature.end.of.file"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 419
    :cond_18
    add-int v20, v20, v21

    .line 420
    sub-int v17, v17, v21

    .line 421
    goto :goto_8

    .line 422
    .end local v21           #r:I
    :cond_19
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-static {v14, v0}, Lcom/itextpdf/text/pdf/PdfReader;->FlateDecode([BZ)[B

    move-result-object v15

    .line 423
    .local v15, iccp:[B
    const/4 v14, 0x0

    .line 425
    :try_start_0
    invoke-static {v15}, Lcom/itextpdf/text/pdf/ICC_Profile;->getInstance([B)Lcom/itextpdf/text/pdf/ICC_Profile;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->icc_profile:Lcom/itextpdf/text/pdf/ICC_Profile;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 427
    :catch_0
    move-exception v9

    .line 428
    .local v9, e:Ljava/lang/RuntimeException;
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/codec/PngImage;->icc_profile:Lcom/itextpdf/text/pdf/ICC_Profile;

    goto/16 :goto_4

    .line 431
    .end local v9           #e:Ljava/lang/RuntimeException;
    .end local v14           #icccom:[B
    .end local v15           #iccp:[B
    .end local v20           #p:I
    :cond_1a
    const-string v26, "IEND"

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_4

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/PngImage;->is:Ljava/io/InputStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V

    goto/16 :goto_4

    .line 288
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
