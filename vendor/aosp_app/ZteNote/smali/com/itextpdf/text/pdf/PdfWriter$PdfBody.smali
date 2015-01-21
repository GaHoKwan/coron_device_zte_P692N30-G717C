.class public Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;
.super Ljava/lang/Object;
.source "PdfWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PdfBody"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;
    }
.end annotation


# static fields
.field private static final OBJSINSTREAM:I = 0xc8


# instance fields
.field private currentObjNum:I

.field private index:Lcom/itextpdf/text/pdf/ByteBuffer;

.field private numObj:I

.field private position:J

.field private refnum:I

.field private streamObjects:Lcom/itextpdf/text/pdf/ByteBuffer;

.field private final writer:Lcom/itextpdf/text/pdf/PdfWriter;

.field private final xrefs:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 6
    .parameter "writer"

    .prologue
    const/4 v5, 0x0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput v5, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->numObj:I

    .line 265
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->xrefs:Ljava/util/TreeSet;

    .line 266
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->xrefs:Ljava/util/TreeSet;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;

    const-wide/16 v2, 0x0

    const v4, 0xffff

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;-><init>(IJI)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfWriter;->getOs()Lcom/itextpdf/text/pdf/OutputStreamCounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->getCounter()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->position:J

    .line 268
    const/4 v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->refnum:I

    .line 269
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 270
    return-void
.end method

.method static synthetic access$000(Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->flushObjStm()V

    return-void
.end method

.method private addToObjStm(Lcom/itextpdf/text/pdf/PdfObject;I)Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;
    .locals 8
    .parameter "obj"
    .parameter "nObj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x20

    .line 279
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->numObj:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->flushObjStm()V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->index:Lcom/itextpdf/text/pdf/ByteBuffer;

    if-nez v0, :cond_1

    .line 282
    new-instance v0, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->index:Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 283
    new-instance v0, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->streamObjects:Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 284
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->getIndirectReferenceNumber()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->currentObjNum:I

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->numObj:I

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->streamObjects:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v7

    .line 288
    .local v7, p:I
    iget v5, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->numObj:I

    add-int/lit8 v0, v5, 0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->numObj:I

    .line 289
    .local v5, idx:I
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfWriter;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    .line 290
    .local v6, enc:Lcom/itextpdf/text/pdf/PdfEncryption;
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfWriter;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    .line 291
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->streamObjects:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfObject;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    .line 292
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iput-object v6, v0, Lcom/itextpdf/text/pdf/PdfWriter;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    .line 293
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->streamObjects:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 294
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->index:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 295
    new-instance v0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;

    const/4 v1, 0x2

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->currentObjNum:I

    int-to-long v3, v2

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;-><init>(IIJI)V

    return-object v0
.end method

.method private flushObjStm()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 299
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->numObj:I

    if-nez v2, :cond_0

    .line 312
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->index:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v0

    .line 302
    .local v0, first:I
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->index:Lcom/itextpdf/text/pdf/ByteBuffer;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->streamObjects:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Lcom/itextpdf/text/pdf/ByteBuffer;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 303
    new-instance v1, Lcom/itextpdf/text/pdf/PdfStream;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->index:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 304
    .local v1, stream:Lcom/itextpdf/text/pdf/PdfStream;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfWriter;->getCompressionLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress(I)V

    .line 305
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->OBJSTM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 306
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->numObj:I

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 307
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FIRST:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v3, v0}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 308
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->currentObjNum:I

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->add(Lcom/itextpdf/text/pdf/PdfObject;I)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 309
    iput-object v5, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->index:Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 310
    iput-object v5, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->streamObjects:Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 311
    const/4 v2, 0x0

    iput v2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->numObj:I

    goto :goto_0
.end method


# virtual methods
.method add(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    .locals 1
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->getIndirectReferenceNumber()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->add(Lcom/itextpdf/text/pdf/PdfObject;I)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v0

    return-object v0
.end method

.method add(Lcom/itextpdf/text/pdf/PdfObject;I)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    .locals 1
    .parameter "object"
    .parameter "refNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->add(Lcom/itextpdf/text/pdf/PdfObject;IZ)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v0

    return-object v0
.end method

.method add(Lcom/itextpdf/text/pdf/PdfObject;IZ)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    .locals 4
    .parameter "object"
    .parameter "refNumber"
    .parameter "inObjStm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->canBeInObjStm()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfWriter;->isFullCompression()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->addToObjStm(Lcom/itextpdf/text/pdf/PdfObject;I)Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;

    move-result-object v1

    .line 382
    .local v1, pxref:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfIndirectObject;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v0, p2, p1, v2}, Lcom/itextpdf/text/pdf/PdfIndirectObject;-><init>(ILcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 383
    .local v0, indirect:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->xrefs:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->xrefs:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 385
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->xrefs:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_0
    :goto_0
    return-object v0

    .line 390
    .end local v0           #indirect:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    .end local v1           #pxref:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;
    :cond_1
    new-instance v0, Lcom/itextpdf/text/pdf/PdfIndirectObject;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v0, p2, p1, v2}, Lcom/itextpdf/text/pdf/PdfIndirectObject;-><init>(ILcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 391
    .restart local v0       #indirect:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    new-instance v1, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;

    iget-wide v2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->position:J

    invoke-direct {v1, p2, v2, v3}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;-><init>(IJ)V

    .line 392
    .restart local v1       #pxref:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->xrefs:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 393
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->xrefs:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 394
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->xrefs:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfWriter;->getOs()Lcom/itextpdf/text/pdf/OutputStreamCounter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->writeTo(Ljava/io/OutputStream;)V

    .line 397
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfWriter;->getOs()Lcom/itextpdf/text/pdf/OutputStreamCounter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->getCounter()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->position:J

    goto :goto_0
.end method

.method add(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    .locals 1
    .parameter "object"
    .parameter "ref"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfIndirectReference;->getNumber()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->add(Lcom/itextpdf/text/pdf/PdfObject;I)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v0

    return-object v0
.end method

.method add(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    .locals 1
    .parameter "object"
    .parameter "ref"
    .parameter "inObjStm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfIndirectReference;->getNumber()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->add(Lcom/itextpdf/text/pdf/PdfObject;IZ)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v0

    return-object v0
.end method

.method add(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    .locals 1
    .parameter "object"
    .parameter "inObjStm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->getIndirectReferenceNumber()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->add(Lcom/itextpdf/text/pdf/PdfObject;IZ)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v0

    return-object v0
.end method

.method getIndirectReferenceNumber()I
    .locals 6

    .prologue
    .line 346
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->refnum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->refnum:I

    .line 347
    .local v0, n:I
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->xrefs:Ljava/util/TreeSet;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;

    const-wide/16 v3, 0x0

    const v5, 0xffff

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;-><init>(IJI)V

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 348
    return v0
.end method

.method getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 3

    .prologue
    .line 342
    new-instance v0, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->getIndirectReferenceNumber()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfIndirectReference;-><init>(II)V

    return-object v0
.end method

.method offset()J
    .locals 2

    .prologue
    .line 409
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->position:J

    return-wide v0
.end method

.method setRefnum(I)V
    .locals 0
    .parameter "refnum"

    .prologue
    .line 275
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->refnum:I

    .line 276
    return-void
.end method

.method size()I
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->xrefs:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->getRefnum()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->refnum:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method writeCrossReferenceTable(Ljava/io/OutputStream;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfObject;J)V
    .locals 28
    .parameter "os"
    .parameter "root"
    .parameter "info"
    .parameter "encryption"
    .parameter "fileID"
    .parameter "prevxref"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    const/16 v20, 0x0

    .line 435
    .local v20, refNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/PdfWriter;->isFullCompression()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 436
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->flushObjStm()V

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->getIndirectReferenceNumber()I

    move-result v20

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->xrefs:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    new-instance v24, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->position:J

    move-wide/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move-wide/from16 v2, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;-><init>(IJ)V

    invoke-virtual/range {v23 .. v24}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->xrefs:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;

    .line 441
    .local v7, entry:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->getRefnum()I

    move-result v8

    .line 442
    .local v8, first:I
    const/4 v14, 0x0

    .line 443
    .local v14, len:I
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v21, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->xrefs:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;

    .line 445
    .local v19, pdfCrossReference:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;
    move-object/from16 v7, v19

    .line 446
    add-int v23, v8, v14

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->getRefnum()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 447
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 449
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->getRefnum()I

    move-result v8

    .line 452
    const/4 v14, 0x1

    goto :goto_0

    .line 455
    .end local v19           #pdfCrossReference:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;
    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/PdfWriter;->isFullCompression()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 458
    const/16 v18, 0x5

    .line 459
    .local v18, mid:I
    const-wide v16, 0xff00000000L

    .line 460
    .local v16, mask:J
    :goto_1
    const/16 v23, 0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-le v0, v1, :cond_3

    .line 461
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->position:J

    move-wide/from16 v23, v0

    and-long v23, v23, v16

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-eqz v23, :cond_4

    .line 465
    :cond_3
    new-instance v4, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    .line 467
    .local v4, buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->xrefs:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;

    .local v5, element:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;
    move-object v7, v5

    .line 468
    check-cast v7, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;

    .line 469
    move/from16 v0, v18

    invoke-virtual {v7, v0, v4}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->toPdf(ILjava/io/OutputStream;)V

    goto :goto_2

    .line 463
    .end local v4           #buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    .end local v5           #element:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;
    :cond_4
    const/16 v23, 0x8

    ushr-long v16, v16, v23

    .line 460
    add-int/lit8 v18, v18, -0x1

    goto :goto_1

    .line 471
    .restart local v4       #buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    :cond_5
    new-instance v22, Lcom/itextpdf/text/pdf/PdfStream;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->toByteArray()[B

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 472
    .local v22, xr:Lcom/itextpdf/text/pdf/PdfStream;
    const/4 v4, 0x0

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/PdfWriter;->getCompressionLevel()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress(I)V

    .line 474
    sget-object v23, Lcom/itextpdf/text/pdf/PdfName;->SIZE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v24, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->size()I

    move-result v25

    invoke-direct/range {v24 .. v25}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual/range {v22 .. v24}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 475
    sget-object v23, Lcom/itextpdf/text/pdf/PdfName;->ROOT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 476
    if-eqz p3, :cond_6

    .line 477
    sget-object v23, Lcom/itextpdf/text/pdf/PdfName;->INFO:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 479
    :cond_6
    if-eqz p4, :cond_7

    .line 480
    sget-object v23, Lcom/itextpdf/text/pdf/PdfName;->ENCRYPT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 481
    :cond_7
    if-eqz p5, :cond_8

    .line 482
    sget-object v23, Lcom/itextpdf/text/pdf/PdfName;->ID:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 483
    :cond_8
    sget-object v23, Lcom/itextpdf/text/pdf/PdfName;->W:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v24, Lcom/itextpdf/text/pdf/PdfArray;

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x1

    aput v27, v25, v26

    const/16 v26, 0x1

    aput v18, v25, v26

    const/16 v26, 0x2

    const/16 v27, 0x2

    aput v27, v25, v26

    invoke-direct/range {v24 .. v25}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([I)V

    invoke-virtual/range {v22 .. v24}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 484
    sget-object v23, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->XREF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v22 .. v24}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 485
    new-instance v11, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v11}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 486
    .local v11, idx:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v13, 0x0

    .local v13, k:I
    :goto_3
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v13, v0, :cond_9

    .line 487
    new-instance v24, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 486
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 488
    :cond_9
    sget-object v23, Lcom/itextpdf/text/pdf/PdfName;->INDEX:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 489
    const-wide/16 v23, 0x0

    cmp-long v23, p6, v23

    if-lez v23, :cond_a

    .line 490
    sget-object v23, Lcom/itextpdf/text/pdf/PdfName;->PREV:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v24, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v24

    move-wide/from16 v1, p6

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(J)V

    invoke-virtual/range {v22 .. v24}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 491
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfWriter;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    .line 492
    .local v6, enc:Lcom/itextpdf/text/pdf/PdfEncryption;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfWriter;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    .line 493
    new-instance v12, Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v23, v0

    move/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v12, v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfIndirectObject;-><init>(ILcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 494
    .local v12, indirect:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/PdfWriter;->getOs()Lcom/itextpdf/text/pdf/OutputStreamCounter;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->writeTo(Ljava/io/OutputStream;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/itextpdf/text/pdf/PdfWriter;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    .line 513
    .end local v4           #buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    .end local v6           #enc:Lcom/itextpdf/text/pdf/PdfEncryption;
    .end local v11           #idx:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v12           #indirect:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    .end local v16           #mask:J
    .end local v18           #mid:I
    .end local v22           #xr:Lcom/itextpdf/text/pdf/PdfStream;
    :cond_b
    return-void

    .line 498
    .end local v13           #k:I
    :cond_c
    const-string v23, "xref\n"

    invoke-static/range {v23 .. v23}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->xrefs:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 500
    .local v9, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;>;"
    const/4 v13, 0x0

    .restart local v13       #k:I
    :goto_4
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v13, v0, :cond_b

    .line 501
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 502
    add-int/lit8 v23, v13, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 503
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 504
    const-string v23, " "

    invoke-static/range {v23 .. v23}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 505
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 506
    const/16 v23, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    move v15, v14

    .line 507
    .end local v14           #len:I
    .local v15, len:I
    :goto_5
    add-int/lit8 v14, v15, -0x1

    .end local v15           #len:I
    .restart local v14       #len:I
    if-lez v15, :cond_d

    .line 508
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .end local v7           #entry:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;
    check-cast v7, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;

    .line 509
    .restart local v7       #entry:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody$PdfCrossReference;->toPdf(Ljava/io/OutputStream;)V

    move v15, v14

    .end local v14           #len:I
    .restart local v15       #len:I
    goto :goto_5

    .line 500
    .end local v15           #len:I
    .restart local v14       #len:I
    :cond_d
    add-int/lit8 v13, v13, 0x2

    goto :goto_4
.end method
