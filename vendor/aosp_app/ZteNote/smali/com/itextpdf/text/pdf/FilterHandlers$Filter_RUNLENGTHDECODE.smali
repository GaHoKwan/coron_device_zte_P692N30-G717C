.class Lcom/itextpdf/text/pdf/FilterHandlers$Filter_RUNLENGTHDECODE;
.super Ljava/lang/Object;
.source "FilterHandlers.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/FilterHandlers$FilterHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/FilterHandlers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Filter_RUNLENGTHDECODE"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/FilterHandlers$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/FilterHandlers$Filter_RUNLENGTHDECODE;-><init>()V

    return-void
.end method


# virtual methods
.method public decode([BLcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfDictionary;)[B
    .locals 6
    .parameter "b"
    .parameter "filterName"
    .parameter "decodeParams"
    .parameter "streamDictionary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 221
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v2, -0x1

    .line 222
    .local v2, dupCount:B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_0

    .line 223
    aget-byte v2, p1, v3

    .line 224
    const/16 v5, -0x80

    if-ne v2, v5, :cond_1

    .line 239
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 226
    :cond_1
    if-ltz v2, :cond_3

    const/16 v5, 0x7f

    if-gt v2, v5, :cond_3

    .line 227
    add-int/lit8 v1, v2, 0x1

    .line 228
    .local v1, bytesToCopy:I
    invoke-virtual {v0, p1, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 229
    add-int/2addr v3, v1

    .line 222
    .end local v1           #bytesToCopy:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 232
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 233
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    rsub-int/lit8 v5, v2, 0x1

    if-ge v4, v5, :cond_2

    .line 234
    aget-byte v5, p1, v3

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 233
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
