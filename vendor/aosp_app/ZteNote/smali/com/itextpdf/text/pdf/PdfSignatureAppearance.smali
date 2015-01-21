.class public Lcom/itextpdf/text/pdf/PdfSignatureAppearance;
.super Ljava/lang/Object;
.source "PdfSignatureAppearance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PdfSignatureAppearance$1;,
        Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;,
        Lcom/itextpdf/text/pdf/PdfSignatureAppearance$SignatureEvent;,
        Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;
    }
.end annotation


# static fields
.field public static final CERTIFIED_FORM_FILLING:I = 0x2

.field public static final CERTIFIED_FORM_FILLING_AND_ANNOTATIONS:I = 0x3

.field public static final CERTIFIED_NO_CHANGES_ALLOWED:I = 0x1

.field private static final MARGIN:F = 2.0f

.field public static final NOT_CERTIFIED:I = 0x0

.field private static final TOP_SECTION:F = 0.3f

.field public static final questionMark:Ljava/lang/String; = "% DSUnknown\nq\n1 G\n1 g\n0.1 0 0 0.1 9 0 cm\n0 J 0 j 4 M []0 d\n1 i \n0 g\n313 292 m\n313 404 325 453 432 529 c\n478 561 504 597 504 645 c\n504 736 440 760 391 760 c\n286 760 271 681 265 626 c\n265 625 l\n100 625 l\n100 828 253 898 381 898 c\n451 898 679 878 679 650 c\n679 555 628 499 538 435 c\n488 399 467 376 467 292 c\n313 292 l\nh\n308 214 170 -164 re\nf\n0.44 G\n1.2 w\n1 1 0.4 rg\n287 318 m\n287 430 299 479 406 555 c\n451 587 478 623 478 671 c\n478 762 414 786 365 786 c\n260 786 245 707 239 652 c\n239 651 l\n74 651 l\n74 854 227 924 355 924 c\n425 924 653 904 653 676 c\n653 581 602 525 512 461 c\n462 425 441 402 441 318 c\n287 318 l\nh\n282 240 170 -164 re\nB\nQ\n"


# instance fields
.field private acro6Layers:Z

.field private app:[Lcom/itextpdf/text/pdf/PdfTemplate;

.field private bout:[B

.field private boutLen:I

.field private certificationLevel:I

.field private contact:Ljava/lang/String;

.field private cryptoDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

.field private exclusionLocations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfName;",
            "Lcom/itextpdf/text/pdf/PdfLiteral;",
            ">;"
        }
    .end annotation
.end field

.field private fieldName:Ljava/lang/String;

.field private frm:Lcom/itextpdf/text/pdf/PdfTemplate;

.field private image:Lcom/itextpdf/text/Image;

.field private imageScale:F

.field private layer2Font:Lcom/itextpdf/text/Font;

.field private layer2Text:Ljava/lang/String;

.field private layer4Text:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private newField:Z

.field private originalout:Ljava/io/OutputStream;

.field private page:I

.field private pageRect:Lcom/itextpdf/text/Rectangle;

.field private preClosed:Z

.field private raf:Ljava/io/RandomAccessFile;

.field private range:[J

.field private reason:Ljava/lang/String;

.field private rect:Lcom/itextpdf/text/Rectangle;

.field private renderingMode:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

.field private runDirection:I

.field private signCertificate:Ljava/security/cert/Certificate;

.field private signDate:Ljava/util/Calendar;

.field private signatureEvent:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$SignatureEvent;

.field private signatureGraphic:Lcom/itextpdf/text/Image;

.field private sigout:Lcom/itextpdf/text/pdf/ByteBuffer;

.field private stamper:Lcom/itextpdf/text/pdf/PdfStamper;

.field private tempFile:Ljava/io/File;

.field private writer:Lcom/itextpdf/text/pdf/PdfStamperImp;


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/PdfStamperImp;)V
    .locals 3
    .parameter "writer"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->certificationLevel:I

    .line 418
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->page:I

    .line 566
    sget-object v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;->DESCRIPTION:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    .line 587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/text/Image;

    .line 608
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->acro6Layers:Z

    .line 628
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfTemplate;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    .line 781
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->runDirection:I

    .line 1192
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->preClosed:Z

    .line 83
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    .line 84
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signDate:Ljava/util/Calendar;

    .line 85
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getNewSigName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->fieldName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private addDocMDP(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 8
    .parameter "crypto"

    .prologue
    const/4 v7, 0x0

    .line 1341
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1342
    .local v1, reference:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1343
    .local v2, transformParams:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v6, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->certificationLevel:I

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1344
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfName;

    const-string v6, "1.2"

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1345
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->TRANSFORMPARAMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1346
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->TRANSFORMMETHOD:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->DOCMDP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1347
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->SIGREF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1348
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->TRANSFORMPARAMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1349
    new-instance v4, Lcom/itextpdf/text/pdf/PdfName;

    const-string v5, "DigestValue"

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/itextpdf/text/pdf/PdfString;

    const-string v6, "aa"

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1350
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 1351
    .local v0, loc:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v4, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v4, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 1352
    new-instance v4, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v4, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 1353
    new-instance v4, Lcom/itextpdf/text/pdf/PdfName;

    const-string v5, "DigestLocation"

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1354
    new-instance v4, Lcom/itextpdf/text/pdf/PdfName;

    const-string v5, "DigestMethod"

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/itextpdf/text/pdf/PdfName;

    const-string v6, "MD5"

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1355
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->DATA:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    iget-object v5, v5, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfReader;->getTrailer()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->ROOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1356
    new-instance v3, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 1357
    .local v3, types:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v3, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 1358
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->REFERENCE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v4, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1359
    return-void
.end method


# virtual methods
.method public close(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 14
    .parameter "update"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1374
    :try_start_0
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->preClosed:Z

    if-nez v9, :cond_2

    .line 1375
    new-instance v9, Lcom/itextpdf/text/DocumentException;

    const-string v10, "preclose.must.be.called.first"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1414
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->tempFile:Ljava/io/File;

    if-eqz v10, :cond_0

    .line 1415
    :try_start_1
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1416
    :goto_0
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->originalout:Ljava/io/OutputStream;

    if-eqz v10, :cond_0

    .line 1417
    :try_start_2
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->tempFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1419
    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->originalout:Ljava/io/OutputStream;

    if-eqz v10, :cond_1

    .line 1420
    :try_start_3
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->originalout:Ljava/io/OutputStream;

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_2
    throw v9

    .line 1376
    :cond_2
    :try_start_4
    new-instance v0, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    .line 1377
    .local v0, bf:Lcom/itextpdf/text/pdf/ByteBuffer;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfName;

    .line 1378
    .local v3, key:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 1379
    .local v7, obj:Lcom/itextpdf/text/pdf/PdfObject;
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->exclusionLocations:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfLiteral;

    .line 1380
    .local v6, lit:Lcom/itextpdf/text/pdf/PdfLiteral;
    if-nez v6, :cond_3

    .line 1381
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "the.key.1.didn.t.reserve.space.in.preclose"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1382
    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->reset()V

    .line 1383
    const/4 v9, 0x0

    invoke-virtual {v7, v9, v0}, Lcom/itextpdf/text/pdf/PdfObject;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    .line 1384
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v9

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfLiteral;->getPosLength()I

    move-result v10

    if-le v9, v10, :cond_4

    .line 1385
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "the.key.1.is.too.big.is.2.reserved.3"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfLiteral;->getPosLength()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1386
    :cond_4
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->tempFile:Ljava/io/File;

    if-nez v9, :cond_5

    .line 1387
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->getBuffer()[B

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->bout:[B

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfLiteral;->getPosition()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_3

    .line 1389
    :cond_5
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfLiteral;->getPosition()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1390
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->getBuffer()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Ljava/io/RandomAccessFile;->write([BII)V

    goto/16 :goto_3

    .line 1393
    .end local v3           #key:Lcom/itextpdf/text/pdf/PdfName;
    .end local v6           #lit:Lcom/itextpdf/text/pdf/PdfLiteral;
    .end local v7           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_6
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->size()I

    move-result v9

    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->exclusionLocations:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    if-eq v9, v10, :cond_7

    .line 1394
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "the.update.dictionary.has.less.keys.than.required"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1395
    :cond_7
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->tempFile:Ljava/io/File;

    if-nez v9, :cond_b

    .line 1396
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->originalout:Ljava/io/OutputStream;

    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->bout:[B

    const/4 v11, 0x0

    iget v12, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->boutLen:I

    invoke-virtual {v9, v10, v11, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1414
    :cond_8
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->tempFile:Ljava/io/File;

    if-eqz v9, :cond_9

    .line 1415
    :try_start_5
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1416
    :goto_4
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->originalout:Ljava/io/OutputStream;

    if-eqz v9, :cond_9

    .line 1417
    :try_start_6
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->tempFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1419
    :cond_9
    :goto_5
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->originalout:Ljava/io/OutputStream;

    if-eqz v9, :cond_a

    .line 1420
    :try_start_7
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->originalout:Ljava/io/OutputStream;

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1422
    :cond_a
    :goto_6
    return-void

    .line 1399
    :cond_b
    :try_start_8
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->originalout:Ljava/io/OutputStream;

    if-eqz v9, :cond_8

    .line 1400
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1401
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    .line 1402
    .local v4, length:J
    const/16 v9, 0x2000

    new-array v1, v9, [B

    .line 1403
    .local v1, buf:[B
    :goto_7
    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-lez v9, :cond_8

    .line 1404
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    const/4 v10, 0x0

    array-length v11, v1

    int-to-long v11, v11

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-virtual {v9, v1, v10, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v8

    .line 1405
    .local v8, r:I
    if-gez v8, :cond_c

    .line 1406
    new-instance v9, Ljava/io/EOFException;

    const-string v10, "unexpected.eof"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1407
    :cond_c
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->originalout:Ljava/io/OutputStream;

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1408
    int-to-long v9, v8

    sub-long/2addr v4, v9

    .line 1409
    goto :goto_7

    .line 1420
    .end local v0           #bf:Lcom/itextpdf/text/pdf/ByteBuffer;
    .end local v1           #buf:[B
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #length:J
    .end local v8           #r:I
    :catch_0
    move-exception v10

    goto/16 :goto_2

    .line 1417
    :catch_1
    move-exception v10

    goto/16 :goto_1

    .line 1415
    :catch_2
    move-exception v10

    goto/16 :goto_0

    .line 1420
    .restart local v0       #bf:Lcom/itextpdf/text/pdf/ByteBuffer;
    .restart local v2       #i$:Ljava/util/Iterator;
    :catch_3
    move-exception v9

    goto :goto_6

    .line 1417
    :catch_4
    move-exception v9

    goto :goto_5

    .line 1415
    :catch_5
    move-exception v9

    goto :goto_4
.end method

.method public getAppearance()Lcom/itextpdf/text/pdf/PdfTemplate;
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 859
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->isInvisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 860
    new-instance v3, Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 861
    .local v3, t:Lcom/itextpdf/text/pdf/PdfTemplate;
    new-instance v4, Lcom/itextpdf/text/Rectangle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setBoundingBox(Lcom/itextpdf/text/Rectangle;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 1103
    .end local v3           #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    :goto_0
    return-object v3

    .line 865
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    if-nez v4, :cond_1

    .line 866
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x0

    new-instance v3, Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v3, v7}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    aput-object v3, v4, v6

    .line 867
    .restart local v3       #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    new-instance v4, Lcom/itextpdf/text/Rectangle;

    const/high16 v6, 0x42c8

    const/high16 v7, 0x42c8

    invoke-direct {v4, v6, v7}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setBoundingBox(Lcom/itextpdf/text/Rectangle;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfName;

    const-string v7, "n0"

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 869
    const-string v4, "% DSBlank\n"

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setLiteral(Ljava/lang/String;)V

    .line 871
    .end local v3           #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->acro6Layers:Z

    if-nez v4, :cond_2

    .line 872
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x1

    new-instance v3, Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v3, v7}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    aput-object v3, v4, v6

    .line 873
    .restart local v3       #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    new-instance v4, Lcom/itextpdf/text/Rectangle;

    const/high16 v6, 0x42c8

    const/high16 v7, 0x42c8

    invoke-direct {v4, v6, v7}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setBoundingBox(Lcom/itextpdf/text/Rectangle;)V

    .line 874
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfName;

    const-string v7, "n1"

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 875
    const-string v4, "% DSUnknown\nq\n1 G\n1 g\n0.1 0 0 0.1 9 0 cm\n0 J 0 j 4 M []0 d\n1 i \n0 g\n313 292 m\n313 404 325 453 432 529 c\n478 561 504 597 504 645 c\n504 736 440 760 391 760 c\n286 760 271 681 265 626 c\n265 625 l\n100 625 l\n100 828 253 898 381 898 c\n451 898 679 878 679 650 c\n679 555 628 499 538 435 c\n488 399 467 376 467 292 c\n313 292 l\nh\n308 214 170 -164 re\nf\n0.44 G\n1.2 w\n1 1 0.4 rg\n287 318 m\n287 430 299 479 406 555 c\n451 587 478 623 478 671 c\n478 762 414 786 365 786 c\n260 786 245 707 239 652 c\n239 651 l\n74 651 l\n74 854 227 924 355 924 c\n425 924 653 904 653 676 c\n653 581 602 525 512 461 c\n462 425 441 402 441 318 c\n287 318 l\nh\n282 240 170 -164 re\nB\nQ\n"

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setLiteral(Ljava/lang/String;)V

    .line 877
    .end local v3           #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    if-nez v4, :cond_a

    .line 879
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer2Text:Ljava/lang/String;

    if-nez v4, :cond_e

    .line 880
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    .line 881
    .local v33, buf:Ljava/lang/StringBuilder;
    const-string v4, "Digitally signed by "

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signCertificate:Ljava/security/cert/Certificate;

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-static {v4}, Lcom/itextpdf/text/pdf/security/CertificateInfo;->getSubjectFields(Ljava/security/cert/X509Certificate;)Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;

    move-result-object v4

    const-string v6, "CN"

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 883
    .local v38, name:Ljava/lang/String;
    if-nez v38, :cond_3

    .line 884
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signCertificate:Ljava/security/cert/Certificate;

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-static {v4}, Lcom/itextpdf/text/pdf/security/CertificateInfo;->getSubjectFields(Ljava/security/cert/X509Certificate;)Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;

    move-result-object v4

    const-string v6, "E"

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 885
    :cond_3
    if-nez v38, :cond_4

    .line 886
    const-string v38, ""

    .line 887
    :cond_4
    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 888
    new-instance v44, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy.MM.dd HH:mm:ss z"

    move-object/from16 v0, v44

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 889
    .local v44, sd:Ljava/text/SimpleDateFormat;
    const-string v4, "Date: "

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->reason:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 891
    const/16 v4, 0xa

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "Reason: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->reason:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->location:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 893
    const/16 v4, 0xa

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "Location: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->location:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    :cond_6
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    .line 898
    .end local v33           #buf:Ljava/lang/StringBuilder;
    .end local v38           #name:Ljava/lang/String;
    .end local v44           #sd:Ljava/text/SimpleDateFormat;
    .local v50, text:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x2

    new-instance v3, Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v3, v7}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    aput-object v3, v4, v6

    .line 899
    .restart local v3       #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setBoundingBox(Lcom/itextpdf/text/Rectangle;)V

    .line 900
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfName;

    const-string v7, "n2"

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 901
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->image:Lcom/itextpdf/text/Image;

    if-eqz v4, :cond_7

    .line 902
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->imageScale:F

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-nez v4, :cond_f

    .line 903
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->image:Lcom/itextpdf/text/Image;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v12}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/itextpdf/text/pdf/PdfTemplate;->addImage(Lcom/itextpdf/text/Image;FFFFFF)V

    .line 917
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer2Font:Lcom/itextpdf/text/Font;

    if-nez v4, :cond_11

    .line 918
    new-instance v35, Lcom/itextpdf/text/Font;

    invoke-direct/range {v35 .. v35}, Lcom/itextpdf/text/Font;-><init>()V

    .line 921
    .local v35, font:Lcom/itextpdf/text/Font;
    :goto_3
    invoke-virtual/range {v35 .. v35}, Lcom/itextpdf/text/Font;->getSize()F

    move-result v47

    .line 923
    .local v47, size:F
    const/16 v34, 0x0

    .line 924
    .local v34, dataRect:Lcom/itextpdf/text/Rectangle;
    const/16 v45, 0x0

    .line 926
    .local v45, signatureRect:Lcom/itextpdf/text/Rectangle;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;->NAME_AND_DESCRIPTION:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    if-eq v4, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;->GRAPHIC_AND_DESCRIPTION:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    if-ne v4, v6, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/text/Image;

    if-eqz v4, :cond_12

    .line 929
    :cond_8
    new-instance v45, Lcom/itextpdf/text/Rectangle;

    .end local v45           #signatureRect:Lcom/itextpdf/text/Rectangle;
    const/high16 v4, 0x4000

    const/high16 v6, 0x4000

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v7

    const/high16 v12, 0x4000

    div-float/2addr v7, v12

    const/high16 v12, 0x4000

    sub-float/2addr v7, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v12}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v12

    const/high16 v13, 0x4000

    sub-float/2addr v12, v13

    move-object/from16 v0, v45

    invoke-direct {v0, v4, v6, v7, v12}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 934
    .restart local v45       #signatureRect:Lcom/itextpdf/text/Rectangle;
    new-instance v34, Lcom/itextpdf/text/Rectangle;

    .end local v34           #dataRect:Lcom/itextpdf/text/Rectangle;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    const/high16 v6, 0x3f80

    add-float/2addr v4, v6

    const/high16 v6, 0x4000

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v7

    const/high16 v12, 0x3f80

    sub-float/2addr v7, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v12}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v12

    const/high16 v13, 0x4000

    sub-float/2addr v12, v13

    move-object/from16 v0, v34

    invoke-direct {v0, v4, v6, v7, v12}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 940
    .restart local v34       #dataRect:Lcom/itextpdf/text/Rectangle;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_9

    .line 941
    new-instance v45, Lcom/itextpdf/text/Rectangle;

    .end local v45           #signatureRect:Lcom/itextpdf/text/Rectangle;
    const/high16 v4, 0x4000

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v7

    const/high16 v12, 0x4000

    sub-float/2addr v7, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v12}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v12

    move-object/from16 v0, v45

    invoke-direct {v0, v4, v6, v7, v12}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 946
    .restart local v45       #signatureRect:Lcom/itextpdf/text/Rectangle;
    new-instance v34, Lcom/itextpdf/text/Rectangle;

    .end local v34           #dataRect:Lcom/itextpdf/text/Rectangle;
    const/high16 v4, 0x4000

    const/high16 v6, 0x4000

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v7

    const/high16 v12, 0x4000

    sub-float/2addr v7, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v12}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    const/high16 v13, 0x4000

    sub-float/2addr v12, v13

    move-object/from16 v0, v34

    invoke-direct {v0, v4, v6, v7, v12}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 971
    .restart local v34       #dataRect:Lcom/itextpdf/text/Rectangle;
    :cond_9
    :goto_4
    sget-object v4, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$1;->$SwitchMap$com$itextpdf$text$pdf$PdfSignatureAppearance$RenderingMode:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 1032
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;->GRAPHIC:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    if-eq v4, v6, :cond_a

    .line 1033
    const/4 v4, 0x0

    cmpg-float v4, v47, v4

    if-gtz v4, :cond_1e

    .line 1034
    new-instance v48, Lcom/itextpdf/text/Rectangle;

    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v6

    move-object/from16 v0, v48

    invoke-direct {v0, v4, v6}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    .line 1035
    .local v48, sr:Lcom/itextpdf/text/Rectangle;
    const/high16 v4, 0x4140

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->runDirection:I

    move-object/from16 v0, v35

    move-object/from16 v1, v50

    move-object/from16 v2, v48

    invoke-static {v0, v1, v2, v4, v6}, Lcom/itextpdf/text/pdf/ColumnText;->fitText(Lcom/itextpdf/text/Font;Ljava/lang/String;Lcom/itextpdf/text/Rectangle;FI)F

    move-result v24

    .line 1037
    .end local v47           #size:F
    .end local v48           #sr:Lcom/itextpdf/text/Rectangle;
    .local v24, size:F
    :goto_6
    new-instance v18, Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 1038
    .local v18, ct:Lcom/itextpdf/text/pdf/ColumnText;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->runDirection:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 1039
    new-instance v19, Lcom/itextpdf/text/Phrase;

    move-object/from16 v0, v19

    move-object/from16 v1, v50

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/Phrase;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v20

    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v21

    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v22

    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v23

    const/16 v25, 0x0

    invoke-virtual/range {v18 .. v25}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(Lcom/itextpdf/text/Phrase;FFFFFI)V

    .line 1040
    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/ColumnText;->go()I

    .line 1043
    .end local v3           #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    .end local v18           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .end local v24           #size:F
    .end local v34           #dataRect:Lcom/itextpdf/text/Rectangle;
    .end local v35           #font:Lcom/itextpdf/text/Font;
    .end local v45           #signatureRect:Lcom/itextpdf/text/Rectangle;
    .end local v50           #text:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x3

    aget-object v4, v4, v6

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->acro6Layers:Z

    if-nez v4, :cond_b

    .line 1044
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x3

    new-instance v3, Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v3, v7}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    aput-object v3, v4, v6

    .line 1045
    .restart local v3       #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    new-instance v4, Lcom/itextpdf/text/Rectangle;

    const/high16 v6, 0x42c8

    const/high16 v7, 0x42c8

    invoke-direct {v4, v6, v7}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setBoundingBox(Lcom/itextpdf/text/Rectangle;)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfName;

    const-string v7, "n3"

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 1047
    const-string v4, "% DSBlank\n"

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setLiteral(Ljava/lang/String;)V

    .line 1049
    .end local v3           #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x4

    aget-object v4, v4, v6

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->acro6Layers:Z

    if-nez v4, :cond_d

    .line 1050
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x4

    new-instance v3, Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v3, v7}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    aput-object v3, v4, v6

    .line 1051
    .restart local v3       #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    new-instance v4, Lcom/itextpdf/text/Rectangle;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v7

    const v12, 0x3f333333

    mul-float/2addr v7, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v12}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v13}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v13

    invoke-direct {v4, v6, v7, v12, v13}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;->setBoundingBox(Lcom/itextpdf/text/Rectangle;)V

    .line 1052
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfName;

    const-string v7, "n4"

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 1054
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer2Font:Lcom/itextpdf/text/Font;

    if-nez v4, :cond_17

    .line 1055
    new-instance v35, Lcom/itextpdf/text/Font;

    invoke-direct/range {v35 .. v35}, Lcom/itextpdf/text/Font;-><init>()V

    .line 1059
    .restart local v35       #font:Lcom/itextpdf/text/Font;
    :goto_7
    const-string v50, "Signature Not Verified"

    .line 1060
    .restart local v50       #text:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer4Text:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer4Text:Ljava/lang/String;

    move-object/from16 v50, v0

    .line 1062
    :cond_c
    new-instance v48, Lcom/itextpdf/text/Rectangle;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    const/high16 v6, 0x4080

    sub-float/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v6

    const v7, 0x3e99999a

    mul-float/2addr v6, v7

    const/high16 v7, 0x4080

    sub-float/2addr v6, v7

    move-object/from16 v0, v48

    invoke-direct {v0, v4, v6}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    .line 1063
    .restart local v48       #sr:Lcom/itextpdf/text/Rectangle;
    const/high16 v4, 0x4170

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->runDirection:I

    move-object/from16 v0, v35

    move-object/from16 v1, v50

    move-object/from16 v2, v48

    invoke-static {v0, v1, v2, v4, v6}, Lcom/itextpdf/text/pdf/ColumnText;->fitText(Lcom/itextpdf/text/Font;Ljava/lang/String;Lcom/itextpdf/text/Rectangle;FI)F

    move-result v24

    .line 1064
    .restart local v24       #size:F
    new-instance v18, Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 1065
    .restart local v18       #ct:Lcom/itextpdf/text/pdf/ColumnText;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->runDirection:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 1066
    new-instance v19, Lcom/itextpdf/text/Phrase;

    move-object/from16 v0, v19

    move-object/from16 v1, v50

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/Phrase;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    const/high16 v20, 0x4000

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    const/high16 v6, 0x4000

    sub-float v22, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    const/high16 v6, 0x4000

    sub-float v23, v4, v6

    const/16 v25, 0x0

    invoke-virtual/range {v18 .. v25}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(Lcom/itextpdf/text/Phrase;FFFFFI)V

    .line 1067
    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/ColumnText;->go()I

    .line 1069
    .end local v3           #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    .end local v18           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .end local v24           #size:F
    .end local v35           #font:Lcom/itextpdf/text/Font;
    .end local v48           #sr:Lcom/itextpdf/text/Rectangle;
    .end local v50           #text:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    iget-object v4, v4, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->page:I

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/PdfReader;->getPageRotation(I)I

    move-result v42

    .line 1070
    .local v42, rotation:I
    new-instance v41, Lcom/itextpdf/text/Rectangle;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Lcom/itextpdf/text/Rectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    .line 1071
    .local v41, rotated:Lcom/itextpdf/text/Rectangle;
    move/from16 v37, v42

    .line 1072
    .local v37, n:I
    :goto_8
    if-lez v37, :cond_18

    .line 1073
    invoke-virtual/range {v41 .. v41}, Lcom/itextpdf/text/Rectangle;->rotate()Lcom/itextpdf/text/Rectangle;

    move-result-object v41

    .line 1074
    add-int/lit8 v37, v37, -0x5a

    goto :goto_8

    .line 897
    .end local v37           #n:I
    .end local v41           #rotated:Lcom/itextpdf/text/Rectangle;
    .end local v42           #rotation:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer2Text:Ljava/lang/String;

    move-object/from16 v50, v0

    .restart local v50       #text:Ljava/lang/String;
    goto/16 :goto_1

    .line 906
    .restart local v3       #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->imageScale:F

    move/from16 v51, v0

    .line 907
    .local v51, usableScale:F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->imageScale:F

    const/4 v6, 0x0

    cmpg-float v4, v4, v6

    if-gez v4, :cond_10

    .line 908
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->image:Lcom/itextpdf/text/Image;

    invoke-virtual {v6}, Lcom/itextpdf/text/Image;->getWidth()F

    move-result v6

    div-float/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->image:Lcom/itextpdf/text/Image;

    invoke-virtual {v7}, Lcom/itextpdf/text/Image;->getHeight()F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v51

    .line 909
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->image:Lcom/itextpdf/text/Image;

    invoke-virtual {v4}, Lcom/itextpdf/text/Image;->getWidth()F

    move-result v4

    mul-float v5, v4, v51

    .line 910
    .local v5, w:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->image:Lcom/itextpdf/text/Image;

    invoke-virtual {v4}, Lcom/itextpdf/text/Image;->getHeight()F

    move-result v4

    mul-float v8, v4, v51

    .line 911
    .local v8, h:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    sub-float/2addr v4, v5

    const/high16 v6, 0x4000

    div-float v9, v4, v6

    .line 912
    .local v9, x:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    sub-float/2addr v4, v8

    const/high16 v6, 0x4000

    div-float v10, v4, v6

    .line 913
    .local v10, y:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->image:Lcom/itextpdf/text/Image;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/itextpdf/text/pdf/PdfTemplate;->addImage(Lcom/itextpdf/text/Image;FFFFFF)V

    goto/16 :goto_2

    .line 920
    .end local v5           #w:F
    .end local v8           #h:F
    .end local v9           #x:F
    .end local v10           #y:F
    .end local v51           #usableScale:F
    :cond_11
    new-instance v35, Lcom/itextpdf/text/Font;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer2Font:Lcom/itextpdf/text/Font;

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font;)V

    .restart local v35       #font:Lcom/itextpdf/text/Font;
    goto/16 :goto_3

    .line 953
    .restart local v34       #dataRect:Lcom/itextpdf/text/Rectangle;
    .restart local v45       #signatureRect:Lcom/itextpdf/text/Rectangle;
    .restart local v47       #size:F
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;->GRAPHIC:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    if-ne v4, v6, :cond_14

    .line 954
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/text/Image;

    if-nez v4, :cond_13

    .line 955
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v6, "a.signature.image.should.be.present.when.rendering.mode.is.graphic.only"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 957
    :cond_13
    new-instance v45, Lcom/itextpdf/text/Rectangle;

    .end local v45           #signatureRect:Lcom/itextpdf/text/Rectangle;
    const/high16 v4, 0x4000

    const/high16 v6, 0x4000

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v7

    const/high16 v12, 0x4000

    sub-float/2addr v7, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v12}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v12

    const/high16 v13, 0x4000

    sub-float/2addr v12, v13

    move-object/from16 v0, v45

    invoke-direct {v0, v4, v6, v7, v12}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .restart local v45       #signatureRect:Lcom/itextpdf/text/Rectangle;
    goto/16 :goto_4

    .line 964
    :cond_14
    new-instance v34, Lcom/itextpdf/text/Rectangle;

    .end local v34           #dataRect:Lcom/itextpdf/text/Rectangle;
    const/high16 v4, 0x4000

    const/high16 v6, 0x4000

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v7

    const/high16 v12, 0x4000

    sub-float/2addr v7, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v12}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v12

    const v13, 0x3f333333

    mul-float/2addr v12, v13

    const/high16 v13, 0x4000

    sub-float/2addr v12, v13

    move-object/from16 v0, v34

    invoke-direct {v0, v4, v6, v7, v12}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .restart local v34       #dataRect:Lcom/itextpdf/text/Rectangle;
    goto/16 :goto_4

    .line 973
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signCertificate:Ljava/security/cert/Certificate;

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-static {v4}, Lcom/itextpdf/text/pdf/security/CertificateInfo;->getSubjectFields(Ljava/security/cert/X509Certificate;)Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;

    move-result-object v4

    const-string v6, "CN"

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 974
    .local v46, signedBy:Ljava/lang/String;
    if-nez v46, :cond_15

    .line 975
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signCertificate:Ljava/security/cert/Certificate;

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-static {v4}, Lcom/itextpdf/text/pdf/security/CertificateInfo;->getSubjectFields(Ljava/security/cert/X509Certificate;)Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;

    move-result-object v4

    const-string v6, "E"

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/security/CertificateInfo$X500Name;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 976
    :cond_15
    if-nez v46, :cond_16

    .line 977
    const-string v46, ""

    .line 978
    :cond_16
    new-instance v49, Lcom/itextpdf/text/Rectangle;

    invoke-virtual/range {v45 .. v45}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    const/high16 v6, 0x4000

    sub-float/2addr v4, v6

    invoke-virtual/range {v45 .. v45}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v6

    const/high16 v7, 0x4000

    sub-float/2addr v6, v7

    move-object/from16 v0, v49

    invoke-direct {v0, v4, v6}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    .line 979
    .local v49, sr2:Lcom/itextpdf/text/Rectangle;
    const/high16 v4, -0x4080

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->runDirection:I

    move-object/from16 v0, v35

    move-object/from16 v1, v46

    move-object/from16 v2, v49

    invoke-static {v0, v1, v2, v4, v6}, Lcom/itextpdf/text/pdf/ColumnText;->fitText(Lcom/itextpdf/text/Font;Ljava/lang/String;Lcom/itextpdf/text/Rectangle;FI)F

    move-result v17

    .line 981
    .local v17, signedSize:F
    new-instance v11, Lcom/itextpdf/text/pdf/ColumnText;

    invoke-direct {v11, v3}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 982
    .local v11, ct2:Lcom/itextpdf/text/pdf/ColumnText;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->runDirection:I

    invoke-virtual {v11, v4}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 983
    new-instance v12, Lcom/itextpdf/text/Phrase;

    move-object/from16 v0, v46

    move-object/from16 v1, v35

    invoke-direct {v12, v0, v1}, Lcom/itextpdf/text/Phrase;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    invoke-virtual/range {v45 .. v45}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v13

    invoke-virtual/range {v45 .. v45}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v14

    invoke-virtual/range {v45 .. v45}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v15

    invoke-virtual/range {v45 .. v45}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v16

    const/16 v18, 0x0

    invoke-virtual/range {v11 .. v18}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(Lcom/itextpdf/text/Phrase;FFFFFI)V

    .line 985
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/ColumnText;->go()I

    goto/16 :goto_5

    .line 988
    .end local v11           #ct2:Lcom/itextpdf/text/pdf/ColumnText;
    .end local v17           #signedSize:F
    .end local v46           #signedBy:Ljava/lang/String;
    .end local v49           #sr2:Lcom/itextpdf/text/Rectangle;
    :pswitch_1
    new-instance v11, Lcom/itextpdf/text/pdf/ColumnText;

    invoke-direct {v11, v3}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 989
    .restart local v11       #ct2:Lcom/itextpdf/text/pdf/ColumnText;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->runDirection:I

    invoke-virtual {v11, v4}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 990
    invoke-virtual/range {v45 .. v45}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v19

    invoke-virtual/range {v45 .. v45}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v20

    invoke-virtual/range {v45 .. v45}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v21

    invoke-virtual/range {v45 .. v45}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x2

    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v24}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFFFI)V

    .line 992
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/text/Image;

    invoke-static {v4}, Lcom/itextpdf/text/Image;->getInstance(Lcom/itextpdf/text/Image;)Lcom/itextpdf/text/Image;

    move-result-object v36

    .line 993
    .local v36, im:Lcom/itextpdf/text/Image;
    invoke-virtual/range {v45 .. v45}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual/range {v45 .. v45}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v6}, Lcom/itextpdf/text/Image;->scaleToFit(FF)V

    .line 995
    new-instance v40, Lcom/itextpdf/text/Paragraph;

    invoke-direct/range {v40 .. v40}, Lcom/itextpdf/text/Paragraph;-><init>()V

    .line 997
    .local v40, p:Lcom/itextpdf/text/Paragraph;
    const/4 v9, 0x0

    .line 1000
    .restart local v9       #x:F
    invoke-virtual/range {v36 .. v36}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v4

    neg-float v4, v4

    const/high16 v6, 0x4170

    add-float v10, v4, v6

    .line 1002
    .restart local v10       #y:F
    invoke-virtual/range {v45 .. v45}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual/range {v36 .. v36}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v6

    sub-float/2addr v4, v6

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    add-float/2addr v9, v4

    .line 1003
    invoke-virtual/range {v45 .. v45}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    invoke-virtual/range {v36 .. v36}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v6

    sub-float/2addr v4, v6

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    sub-float/2addr v10, v4

    .line 1004
    new-instance v4, Lcom/itextpdf/text/Chunk;

    invoke-virtual/range {v45 .. v45}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v6

    invoke-virtual/range {v36 .. v36}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float/2addr v6, v9

    const/4 v7, 0x0

    move-object/from16 v0, v36

    invoke-direct {v4, v0, v6, v10, v7}, Lcom/itextpdf/text/Chunk;-><init>(Lcom/itextpdf/text/Image;FFZ)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/Paragraph;->add(Lcom/itextpdf/text/Element;)Z

    .line 1005
    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/ColumnText;->addElement(Lcom/itextpdf/text/Element;)V

    .line 1006
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/ColumnText;->go()I

    goto/16 :goto_5

    .line 1009
    .end local v9           #x:F
    .end local v10           #y:F
    .end local v11           #ct2:Lcom/itextpdf/text/pdf/ColumnText;
    .end local v36           #im:Lcom/itextpdf/text/Image;
    .end local v40           #p:Lcom/itextpdf/text/Paragraph;
    :pswitch_2
    new-instance v11, Lcom/itextpdf/text/pdf/ColumnText;

    invoke-direct {v11, v3}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 1010
    .restart local v11       #ct2:Lcom/itextpdf/text/pdf/ColumnText;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->runDirection:I

    invoke-virtual {v11, v4}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 1011
    invoke-virtual/range {v45 .. v45}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v19

    invoke-virtual/range {v45 .. v45}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v20

    invoke-virtual/range {v45 .. v45}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v21

    invoke-virtual/range {v45 .. v45}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x2

    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v24}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFFFI)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/text/Image;

    invoke-static {v4}, Lcom/itextpdf/text/Image;->getInstance(Lcom/itextpdf/text/Image;)Lcom/itextpdf/text/Image;

    move-result-object v36

    .line 1014
    .restart local v36       #im:Lcom/itextpdf/text/Image;
    invoke-virtual/range {v45 .. v45}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual/range {v45 .. v45}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v6}, Lcom/itextpdf/text/Image;->scaleToFit(FF)V

    .line 1016
    new-instance v40, Lcom/itextpdf/text/Paragraph;

    invoke-direct/range {v40 .. v40}, Lcom/itextpdf/text/Paragraph;-><init>()V

    .line 1018
    .restart local v40       #p:Lcom/itextpdf/text/Paragraph;
    const/4 v9, 0x0

    .line 1021
    .restart local v9       #x:F
    invoke-virtual/range {v36 .. v36}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v4

    neg-float v4, v4

    const/high16 v6, 0x4170

    add-float v10, v4, v6

    .line 1023
    .restart local v10       #y:F
    invoke-virtual/range {v45 .. v45}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    invoke-virtual/range {v36 .. v36}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v6

    sub-float/2addr v4, v6

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    add-float/2addr v9, v4

    .line 1024
    invoke-virtual/range {v45 .. v45}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    invoke-virtual/range {v36 .. v36}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v6

    sub-float/2addr v4, v6

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    sub-float/2addr v10, v4

    .line 1025
    new-instance v4, Lcom/itextpdf/text/Chunk;

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-direct {v4, v0, v9, v10, v6}, Lcom/itextpdf/text/Chunk;-><init>(Lcom/itextpdf/text/Image;FFZ)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/Paragraph;->add(Lcom/itextpdf/text/Element;)Z

    .line 1026
    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/ColumnText;->addElement(Lcom/itextpdf/text/Element;)V

    .line 1027
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/ColumnText;->go()I

    goto/16 :goto_5

    .line 1057
    .end local v9           #x:F
    .end local v10           #y:F
    .end local v11           #ct2:Lcom/itextpdf/text/pdf/ColumnText;
    .end local v34           #dataRect:Lcom/itextpdf/text/Rectangle;
    .end local v35           #font:Lcom/itextpdf/text/Font;
    .end local v36           #im:Lcom/itextpdf/text/Image;
    .end local v40           #p:Lcom/itextpdf/text/Paragraph;
    .end local v45           #signatureRect:Lcom/itextpdf/text/Rectangle;
    .end local v47           #size:F
    .end local v50           #text:Ljava/lang/String;
    :cond_17
    new-instance v35, Lcom/itextpdf/text/Font;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer2Font:Lcom/itextpdf/text/Font;

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font;)V

    .restart local v35       #font:Lcom/itextpdf/text/Font;
    goto/16 :goto_7

    .line 1076
    .end local v3           #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    .end local v35           #font:Lcom/itextpdf/text/Font;
    .restart local v37       #n:I
    .restart local v41       #rotated:Lcom/itextpdf/text/Rectangle;
    .restart local v42       #rotation:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    if-nez v4, :cond_1b

    .line 1077
    new-instance v4, Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v4, v6}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    .line 1078
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfTemplate;->setBoundingBox(Lcom/itextpdf/text/Rectangle;)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    new-instance v7, Lcom/itextpdf/text/pdf/PdfName;

    const-string v12, "FRM"

    invoke-direct {v7, v12}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 1080
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const v6, 0x3f666666

    mul-float v43, v4, v6

    .line 1081
    .local v43, scale:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v4

    sub-float v4, v4, v43

    const/high16 v6, 0x4000

    div-float v9, v4, v6

    .line 1082
    .restart local v9       #x:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    sub-float v4, v4, v43

    const/high16 v6, 0x4000

    div-float v10, v4, v6

    .line 1083
    .restart local v10       #y:F
    const/high16 v4, 0x42c8

    div-float v43, v43, v4

    .line 1084
    const/16 v4, 0x5a

    move/from16 v0, v42

    if-ne v0, v4, :cond_1c

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/high16 v27, 0x3f80

    const/high16 v28, -0x4080

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v30

    const/16 v31, 0x0

    invoke-virtual/range {v25 .. v31}, Lcom/itextpdf/text/pdf/PdfTemplate;->concatCTM(FFFFFF)V

    .line 1090
    :cond_19
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4, v6, v7, v12}, Lcom/itextpdf/text/pdf/PdfTemplate;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FF)V

    .line 1091
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->acro6Layers:Z

    if-nez v4, :cond_1a

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x1

    aget-object v26, v4, v6

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v27, v43

    move/from16 v30, v43

    move/from16 v31, v9

    move/from16 v32, v10

    invoke-virtual/range {v25 .. v32}, Lcom/itextpdf/text/pdf/PdfTemplate;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FFFFFF)V

    .line 1093
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4, v6, v7, v12}, Lcom/itextpdf/text/pdf/PdfTemplate;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FF)V

    .line 1094
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->acro6Layers:Z

    if-nez v4, :cond_1b

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x3

    aget-object v26, v4, v6

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v27, v43

    move/from16 v30, v43

    move/from16 v31, v9

    move/from16 v32, v10

    invoke-virtual/range {v25 .. v32}, Lcom/itextpdf/text/pdf/PdfTemplate;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FFFFFF)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const/4 v7, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4, v6, v7, v12}, Lcom/itextpdf/text/pdf/PdfTemplate;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FF)V

    .line 1099
    .end local v9           #x:F
    .end local v10           #y:F
    .end local v43           #scale:F
    :cond_1b
    new-instance v39, Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v0, v39

    invoke-direct {v0, v4}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 1100
    .local v39, napp:Lcom/itextpdf/text/pdf/PdfTemplate;
    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfTemplate;->setBoundingBox(Lcom/itextpdf/text/Rectangle;)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    const/4 v6, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v4, v0, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 1102
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v6, v7}, Lcom/itextpdf/text/pdf/PdfTemplate;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FF)V

    move-object/from16 v3, v39

    .line 1103
    goto/16 :goto_0

    .line 1086
    .end local v39           #napp:Lcom/itextpdf/text/pdf/PdfTemplate;
    .restart local v9       #x:F
    .restart local v10       #y:F
    .restart local v43       #scale:F
    :cond_1c
    const/16 v4, 0xb4

    move/from16 v0, v42

    if-ne v0, v4, :cond_1d

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v25, v0

    const/high16 v26, -0x4080

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/high16 v29, -0x4080

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v31

    invoke-virtual/range {v25 .. v31}, Lcom/itextpdf/text/pdf/PdfTemplate;->concatCTM(FFFFFF)V

    goto/16 :goto_9

    .line 1088
    :cond_1d
    const/16 v4, 0x10e

    move/from16 v0, v42

    if-ne v0, v4, :cond_19

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/high16 v27, -0x4080

    const/high16 v28, 0x3f80

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v31

    invoke-virtual/range {v25 .. v31}, Lcom/itextpdf/text/pdf/PdfTemplate;->concatCTM(FFFFFF)V

    goto/16 :goto_9

    .end local v9           #x:F
    .end local v10           #y:F
    .end local v37           #n:I
    .end local v41           #rotated:Lcom/itextpdf/text/Rectangle;
    .end local v42           #rotation:I
    .end local v43           #scale:F
    .restart local v3       #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    .restart local v34       #dataRect:Lcom/itextpdf/text/Rectangle;
    .restart local v35       #font:Lcom/itextpdf/text/Font;
    .restart local v45       #signatureRect:Lcom/itextpdf/text/Rectangle;
    .restart local v47       #size:F
    .restart local v50       #text:Ljava/lang/String;
    :cond_1e
    move/from16 v24, v47

    .end local v47           #size:F
    .restart local v24       #size:F
    goto/16 :goto_6

    .line 971
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCertificate()Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signCertificate:Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getCertificationLevel()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->certificationLevel:I

    return v0
.end method

.method public getContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->contact:Ljava/lang/String;

    return-object v0
.end method

.method public getCryptoDictionary()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->cryptoDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/itextpdf/text/Image;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->image:Lcom/itextpdf/text/Image;

    return-object v0
.end method

.method public getImageScale()F
    .locals 1

    .prologue
    .line 727
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->imageScale:F

    return v0
.end method

.method public getLayer(I)Lcom/itextpdf/text/pdf/PdfTemplate;
    .locals 5
    .parameter "layer"

    .prologue
    .line 640
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    array-length v1, v1

    if-lt p1, v1, :cond_2

    .line 641
    :cond_0
    const/4 v0, 0x0

    .line 648
    :cond_1
    :goto_0
    return-object v0

    .line 642
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    aget-object v0, v1, p1

    .line 643
    .local v0, t:Lcom/itextpdf/text/pdf/PdfTemplate;
    if-nez v0, :cond_1

    .line 644
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->app:[Lcom/itextpdf/text/pdf/PdfTemplate;

    new-instance v0, Lcom/itextpdf/text/pdf/PdfTemplate;

    .end local v0           #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    aput-object v0, v1, p1

    .line 645
    .restart local v0       #t:Lcom/itextpdf/text/pdf/PdfTemplate;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfTemplate;->setBoundingBox(Lcom/itextpdf/text/Rectangle;)V

    .line 646
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_0
.end method

.method public getLayer2Font()Lcom/itextpdf/text/Font;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer2Font:Lcom/itextpdf/text/Font;

    return-object v0
.end method

.method public getLayer2Text()Ljava/lang/String;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer2Text:Ljava/lang/String;

    return-object v0
.end method

.method public getLayer4Text()Ljava/lang/String;
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer4Text:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getNewSigName()Ljava/lang/String;
    .locals 10

    .prologue
    .line 380
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;

    move-result-object v0

    .line 381
    .local v0, af:Lcom/itextpdf/text/pdf/AcroFields;
    const-string v6, "Signature"

    .line 382
    .local v6, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 383
    .local v7, step:I
    const/4 v3, 0x0

    .line 384
    .local v3, found:Z
    :cond_0
    :goto_0
    if-nez v3, :cond_2

    .line 385
    add-int/lit8 v7, v7, 0x1

    .line 386
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 387
    .local v5, n1:Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v8

    if-nez v8, :cond_0

    .line 389
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 390
    const/4 v3, 0x1

    .line 391
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/AcroFields;->getFields()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, element:Ljava/lang/String;
    move-object v2, v1

    .line 392
    check-cast v2, Ljava/lang/String;

    .line 393
    .local v2, fn:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 394
    const/4 v3, 0x0

    .line 395
    goto :goto_0

    .line 399
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #fn:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #n1:Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 400
    return-object v6
.end method

.method getOriginalout()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->originalout:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->page:I

    return v0
.end method

.method public getPageRect()Lcom/itextpdf/text/Rectangle;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    return-object v0
.end method

.method public getRangeStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 220
    new-instance v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->bout:[B

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[J

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;-><init>(Ljava/io/RandomAccessFile;[B[JLcom/itextpdf/text/pdf/PdfSignatureAppearance$1;)V

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getRect()Lcom/itextpdf/text/Rectangle;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    return-object v0
.end method

.method public getRenderingMode()Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    return-object v0
.end method

.method public getRunDirection()I
    .locals 1

    .prologue
    .line 796
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->runDirection:I

    return v0
.end method

.method public getSignDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getSignatureEvent()Lcom/itextpdf/text/pdf/PdfSignatureAppearance$SignatureEvent;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureEvent:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$SignatureEvent;

    return-object v0
.end method

.method public getSignatureGraphic()Lcom/itextpdf/text/Image;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/text/Image;

    return-object v0
.end method

.method getSigout()Lcom/itextpdf/text/pdf/ByteBuffer;
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigout:Lcom/itextpdf/text/pdf/ByteBuffer;

    return-object v0
.end method

.method public getStamper()Lcom/itextpdf/text/pdf/PdfStamper;
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->stamper:Lcom/itextpdf/text/pdf/PdfStamper;

    return-object v0
.end method

.method public getTempFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->tempFile:Ljava/io/File;

    return-object v0
.end method

.method public getTopLayer()Lcom/itextpdf/text/pdf/PdfTemplate;
    .locals 4

    .prologue
    .line 834
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    if-nez v0, :cond_0

    .line 835
    new-instance v0, Lcom/itextpdf/text/pdf/PdfTemplate;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    .line 836
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfTemplate;->setBoundingBox(Lcom/itextpdf/text/Rectangle;)V

    .line 837
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "FRM"

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->frm:Lcom/itextpdf/text/pdf/PdfTemplate;

    return-object v0
.end method

.method public isAcro6Layers()Z
    .locals 1

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->acro6Layers:Z

    return v0
.end method

.method public isInvisible()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 459
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNewField()Z
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->newField:Z

    return v0
.end method

.method public isPreClosed()Z
    .locals 1

    .prologue
    .line 1200
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->preClosed:Z

    return v0
.end method

.method public preClose(Ljava/util/HashMap;)V
    .locals 37
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfName;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1220
    .local p1, exclusionSizes:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/itextpdf/text/pdf/PdfName;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->preClosed:Z

    move/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1221
    new-instance v31, Lcom/itextpdf/text/DocumentException;

    const-string v32, "document.already.pre.closed"

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 1222
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->stamper:Lcom/itextpdf/text/pdf/PdfStamper;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/pdf/PdfStamper;->mergeVerification()V

    .line 1223
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->preClosed:Z

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;

    move-result-object v4

    .line 1225
    .local v4, af:Lcom/itextpdf/text/pdf/AcroFields;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getFieldName()Ljava/lang/String;

    move-result-object v24

    .line 1226
    .local v24, name:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->isInvisible()Z

    move-result v31

    if-nez v31, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->isNewField()Z

    move-result v31

    if-nez v31, :cond_2

    const/4 v12, 0x1

    .line 1227
    .local v12, fieldExists:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v27

    .line 1228
    .local v27, refSig:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v31, v0

    const/16 v32, 0x3

    invoke-virtual/range {v31 .. v32}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setSigFlags(I)V

    .line 1229
    if-eqz v12, :cond_3

    .line 1230
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v30

    .line 1231
    .local v30, widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1232
    sget-object v31, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getPage()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getPageReference(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1233
    sget-object v31, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1234
    sget-object v31, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v30 .. v31}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v25

    .line 1235
    .local v25, obj:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v13, 0x0

    .line 1236
    .local v13, flags:I
    if-eqz v25, :cond_1

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v31

    if-eqz v31, :cond_1

    .line 1237
    check-cast v25, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v25           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v13

    .line 1238
    :cond_1
    or-int/lit16 v13, v13, 0x80

    .line 1239
    sget-object v31, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v32, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v32

    invoke-direct {v0, v13}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual/range {v30 .. v32}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1240
    new-instance v5, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1241
    .local v5, ap:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v31, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getAppearance()Lcom/itextpdf/text/pdf/PdfTemplate;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/itextpdf/text/pdf/PdfTemplate;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1242
    sget-object v31, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1260
    .end local v5           #ap:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v13           #flags:I
    .end local v30           #widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    :goto_1
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->exclusionLocations:Ljava/util/HashMap;

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->cryptoDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v31, v0

    if-nez v31, :cond_5

    .line 1262
    new-instance v31, Lcom/itextpdf/text/DocumentException;

    const-string v32, "No crypto dictionary defined."

    invoke-direct/range {v31 .. v32}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 1226
    .end local v12           #fieldExists:Z
    .end local v27           #refSig:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1245
    .restart local v12       #fieldExists:Z
    .restart local v27       #refSig:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/itextpdf/text/pdf/PdfFormField;->createSignature(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v28

    .line 1246
    .local v28, sigField:Lcom/itextpdf/text/pdf/PdfFormField;
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldName(Ljava/lang/String;)V

    .line 1247
    sget-object v31, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1248
    const/16 v31, 0x84

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->setFlags(I)V

    .line 1250
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getPage()I

    move-result v26

    .line 1251
    .local v26, pagen:I
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->isInvisible()Z

    move-result v31

    if-nez v31, :cond_4

    .line 1252
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getPageRect()Lcom/itextpdf/text/Rectangle;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->setWidget(Lcom/itextpdf/text/Rectangle;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1255
    :goto_2
    sget-object v31, Lcom/itextpdf/text/pdf/PdfAnnotation;->APPEARANCE_NORMAL:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getAppearance()Lcom/itextpdf/text/pdf/PdfTemplate;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->setAppearance(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 1256
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->setPage(I)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;I)V

    goto/16 :goto_1

    .line 1254
    :cond_4
    new-instance v31, Lcom/itextpdf/text/Rectangle;

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-direct/range {v31 .. v33}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    const/16 v32, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->setWidget(Lcom/itextpdf/text/Rectangle;Lcom/itextpdf/text/pdf/PdfName;)V

    goto :goto_2

    .line 1265
    .end local v26           #pagen:I
    .end local v28           #sigField:Lcom/itextpdf/text/pdf/PdfFormField;
    :cond_5
    new-instance v21, Lcom/itextpdf/text/pdf/PdfLiteral;

    const/16 v31, 0x50

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(I)V

    .line 1266
    .local v21, lit:Lcom/itextpdf/text/pdf/PdfLiteral;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->exclusionLocations:Ljava/util/HashMap;

    move-object/from16 v31, v0

    sget-object v32, Lcom/itextpdf/text/pdf/PdfName;->BYTERANGE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->cryptoDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v31, v0

    sget-object v32, Lcom/itextpdf/text/pdf/PdfName;->BYTERANGE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1268
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 1269
    .local v11, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/itextpdf/text/pdf/PdfName;Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/itextpdf/text/pdf/PdfName;

    .line 1270
    .local v18, key:Lcom/itextpdf/text/pdf/PdfName;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    .line 1271
    .local v29, v:Ljava/lang/Integer;
    new-instance v21, Lcom/itextpdf/text/pdf/PdfLiteral;

    .end local v21           #lit:Lcom/itextpdf/text/pdf/PdfLiteral;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(I)V

    .line 1272
    .restart local v21       #lit:Lcom/itextpdf/text/pdf/PdfLiteral;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->exclusionLocations:Ljava/util/HashMap;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->cryptoDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_3

    .line 1275
    .end local v11           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/itextpdf/text/pdf/PdfName;Ljava/lang/Integer;>;"
    .end local v18           #key:Lcom/itextpdf/text/pdf/PdfName;
    .end local v29           #v:Ljava/lang/Integer;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->certificationLevel:I

    move/from16 v31, v0

    if-lez v31, :cond_7

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->cryptoDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->addDocMDP(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 1277
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureEvent:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$SignatureEvent;

    move-object/from16 v31, v0

    if-eqz v31, :cond_8

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureEvent:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$SignatureEvent;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->cryptoDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v32, v0

    invoke-interface/range {v31 .. v32}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$SignatureEvent;->getSignatureDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 1279
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->cryptoDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v27

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 1281
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->certificationLevel:I

    move/from16 v31, v0

    if-lez v31, :cond_9

    .line 1283
    new-instance v9, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v9}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1284
    .local v9, docmdp:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v31, Lcom/itextpdf/text/pdf/PdfName;

    const-string v32, "DocMDP"

    invoke-direct/range {v31 .. v32}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v9, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v31

    new-instance v32, Lcom/itextpdf/text/pdf/PdfName;

    const-string v33, "Perms"

    invoke-direct/range {v32 .. v33}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1287
    .end local v9           #docmdp:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->stamper:Lcom/itextpdf/text/pdf/PdfStamper;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/itextpdf/text/pdf/PdfStamper;->getMoreInfo()Ljava/util/Map;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/itextpdf/text/pdf/PdfStamperImp;->close(Ljava/util/Map;)V

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->exclusionLocations:Ljava/util/HashMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/HashMap;->size()I

    move-result v31

    mul-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [J

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[J

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->exclusionLocations:Ljava/util/HashMap;

    move-object/from16 v31, v0

    sget-object v32, Lcom/itextpdf/text/pdf/PdfName;->BYTERANGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v31 .. v32}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/itextpdf/text/pdf/PdfLiteral;

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/pdf/PdfLiteral;->getPosition()J

    move-result-wide v7

    .line 1291
    .local v7, byteRangePosition:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->exclusionLocations:Ljava/util/HashMap;

    move-object/from16 v31, v0

    sget-object v32, Lcom/itextpdf/text/pdf/PdfName;->BYTERANGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v31 .. v32}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    const/4 v15, 0x1

    .line 1293
    .local v15, idx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->exclusionLocations:Ljava/util/HashMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    .end local v21           #lit:Lcom/itextpdf/text/pdf/PdfLiteral;
    check-cast v21, Lcom/itextpdf/text/pdf/PdfLiteral;

    .line 1294
    .restart local v21       #lit:Lcom/itextpdf/text/pdf/PdfLiteral;
    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfLiteral;->getPosition()J

    move-result-wide v22

    .line 1295
    .local v22, n:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[J

    move-object/from16 v31, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15           #idx:I
    .local v16, idx:I
    aput-wide v22, v31, v15

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[J

    move-object/from16 v31, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16           #idx:I
    .restart local v15       #idx:I
    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfLiteral;->getPosLength()I

    move-result v32

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    add-long v32, v32, v22

    aput-wide v32, v31, v16

    goto :goto_4

    .line 1298
    .end local v22           #n:J
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[J

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[J

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    add-int/lit8 v33, v33, -0x1

    invoke-static/range {v31 .. v33}, Ljava/util/Arrays;->sort([JII)V

    .line 1299
    const/16 v17, 0x3

    .local v17, k:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[J

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x2

    move/from16 v0, v17

    move/from16 v1, v31

    if-ge v0, v1, :cond_b

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[J

    move-object/from16 v31, v0

    aget-wide v32, v31, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[J

    move-object/from16 v34, v0

    add-int/lit8 v35, v17, -0x1

    aget-wide v34, v34, v35

    sub-long v32, v32, v34

    aput-wide v32, v31, v17

    .line 1299
    add-int/lit8 v17, v17, 0x2

    goto :goto_5

    .line 1302
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->tempFile:Ljava/io/File;

    move-object/from16 v31, v0

    if-nez v31, :cond_d

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigout:Lcom/itextpdf/text/pdf/ByteBuffer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/pdf/ByteBuffer;->getBuffer()[B

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->bout:[B

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigout:Lcom/itextpdf/text/pdf/ByteBuffer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->boutLen:I

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[J

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[J

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->boutLen:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[J

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[J

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x2

    aget-wide v35, v35, v36

    sub-long v33, v33, v35

    aput-wide v33, v31, v32

    .line 1306
    new-instance v6, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v6}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    .line 1307
    .local v6, bf:Lcom/itextpdf/text/pdf/ByteBuffer;
    const/16 v31, 0x5b

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1308
    const/16 v17, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[J

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v17

    move/from16 v1, v31

    if-ge v0, v1, :cond_c

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[J

    move-object/from16 v31, v0

    aget-wide v31, v31, v17

    move-wide/from16 v0, v31

    invoke-virtual {v6, v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(J)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v31

    const/16 v32, 0x20

    invoke-virtual/range {v31 .. v32}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1308
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 1310
    :cond_c
    const/16 v31, 0x5d

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1311
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->getBuffer()[B

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->bout:[B

    move-object/from16 v33, v0

    long-to-int v0, v7

    move/from16 v34, v0

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v35

    invoke-static/range {v31 .. v35}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1332
    :goto_7
    return-void

    .line 1315
    .end local v6           #bf:Lcom/itextpdf/text/pdf/ByteBuffer;
    :cond_d
    :try_start_0
    new-instance v31, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->tempFile:Ljava/io/File;

    move-object/from16 v32, v0

    const-string v33, "rw"

    invoke-direct/range {v31 .. v33}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v19

    .line 1317
    .local v19, len:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[J

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[J

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[J

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[J

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x2

    aget-wide v33, v33, v34

    sub-long v33, v19, v33

    aput-wide v33, v31, v32

    .line 1318
    new-instance v6, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v6}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    .line 1319
    .restart local v6       #bf:Lcom/itextpdf/text/pdf/ByteBuffer;
    const/16 v31, 0x5b

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1320
    const/16 v17, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[J

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v17

    move/from16 v1, v31

    if-ge v0, v1, :cond_e

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->range:[J

    move-object/from16 v31, v0

    aget-wide v31, v31, v17

    move-wide/from16 v0, v31

    invoke-virtual {v6, v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(J)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v31

    const/16 v32, 0x20

    invoke-virtual/range {v31 .. v32}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1320
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 1322
    :cond_e
    const/16 v31, 0x5d

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    move-object/from16 v31, v0

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->getBuffer()[B

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v34

    invoke-virtual/range {v31 .. v34}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    .line 1326
    .end local v6           #bf:Lcom/itextpdf/text/pdf/ByteBuffer;
    .end local v19           #len:J
    :catch_0
    move-exception v10

    .line 1327
    .local v10, e:Ljava/io/IOException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->raf:Ljava/io/RandomAccessFile;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1328
    :goto_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->tempFile:Ljava/io/File;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1329
    :goto_a
    throw v10

    .line 1328
    :catch_1
    move-exception v31

    goto :goto_a

    .line 1327
    :catch_2
    move-exception v31

    goto :goto_9
.end method

.method public setAcro6Layers(Z)V
    .locals 0
    .parameter "acro6Layers"

    .prologue
    .line 624
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->acro6Layers:Z

    .line 625
    return-void
.end method

.method public setCertificate(Ljava/security/cert/Certificate;)V
    .locals 0
    .parameter "signCertificate"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signCertificate:Ljava/security/cert/Certificate;

    .line 319
    return-void
.end method

.method public setCertificationLevel(I)V
    .locals 0
    .parameter "certificationLevel"

    .prologue
    .line 115
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->certificationLevel:I

    .line 116
    return-void
.end method

.method public setContact(Ljava/lang/String;)V
    .locals 0
    .parameter "contact"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->contact:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setCryptoDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 0
    .parameter "cryptoDictionary"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->cryptoDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 310
    return-void
.end method

.method public setImage(Lcom/itextpdf/text/Image;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 716
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->image:Lcom/itextpdf/text/Image;

    .line 717
    return-void
.end method

.method public setImageScale(F)V
    .locals 0
    .parameter "imageScale"

    .prologue
    .line 738
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->imageScale:F

    .line 739
    return-void
.end method

.method public setLayer2Font(Lcom/itextpdf/text/Font;)V
    .locals 0
    .parameter "layer2Font"

    .prologue
    .line 777
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer2Font:Lcom/itextpdf/text/Font;

    .line 778
    return-void
.end method

.method public setLayer2Text(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 750
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer2Text:Ljava/lang/String;

    .line 751
    return-void
.end method

.method public setLayer4Text(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 810
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->layer4Text:Ljava/lang/String;

    .line 811
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->location:Ljava/lang/String;

    .line 167
    return-void
.end method

.method setOriginalout(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "originalout"

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->originalout:Ljava/io/OutputStream;

    .line 1164
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->reason:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setRenderingMode(Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;)V
    .locals 0
    .parameter "renderingMode"

    .prologue
    .line 583
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->renderingMode:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RenderingMode;

    .line 584
    return-void
.end method

.method public setRunDirection(I)V
    .locals 2
    .parameter "runDirection"

    .prologue
    .line 787
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 788
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid.run.direction.1"

    invoke-static {v1, p1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 789
    :cond_1
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->runDirection:I

    .line 790
    return-void
.end method

.method public setSignDate(Ljava/util/Calendar;)V
    .locals 0
    .parameter "signDate"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signDate:Ljava/util/Calendar;

    .line 202
    return-void
.end method

.method public setSignatureEvent(Lcom/itextpdf/text/pdf/PdfSignatureAppearance$SignatureEvent;)V
    .locals 0
    .parameter "signatureEvent"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureEvent:Lcom/itextpdf/text/pdf/PdfSignatureAppearance$SignatureEvent;

    .line 357
    return-void
.end method

.method public setSignatureGraphic(Lcom/itextpdf/text/Image;)V
    .locals 0
    .parameter "signatureGraphic"

    .prologue
    .line 604
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->signatureGraphic:Lcom/itextpdf/text/Image;

    .line 605
    return-void
.end method

.method setSigout(Lcom/itextpdf/text/pdf/ByteBuffer;)V
    .locals 0
    .parameter "sigout"

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->sigout:Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1147
    return-void
.end method

.method setStamper(Lcom/itextpdf/text/pdf/PdfStamper;)V
    .locals 0
    .parameter "stamper"

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->stamper:Lcom/itextpdf/text/pdf/PdfStamper;

    .line 1127
    return-void
.end method

.method setTempFile(Ljava/io/File;)V
    .locals 0
    .parameter "tempFile"

    .prologue
    .line 1182
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->tempFile:Ljava/io/File;

    .line 1183
    return-void
.end method

.method public setVisibleSignature(Lcom/itextpdf/text/Rectangle;ILjava/lang/String;)V
    .locals 7
    .parameter "pageRect"
    .parameter "page"
    .parameter "fieldName"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 469
    if-eqz p3, :cond_2

    .line 470
    const/16 v2, 0x2e

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 471
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "field.names.cannot.contain.a.dot"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 472
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;

    move-result-object v0

    .line 473
    .local v0, af:Lcom/itextpdf/text/pdf/AcroFields;
    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v1

    .line 474
    .local v1, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-eqz v1, :cond_1

    .line 475
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "the.field.1.already.exists"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p3, v4, v6

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 476
    :cond_1
    iput-object p3, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->fieldName:Ljava/lang/String;

    .line 478
    .end local v0           #af:Lcom/itextpdf/text/pdf/AcroFields;
    .end local v1           #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    :cond_2
    if-lt p2, v5, :cond_3

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    iget-object v2, v2, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v2

    if-le p2, v2, :cond_4

    .line 479
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid.page.number.1"

    invoke-static {v3, p2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 480
    :cond_4
    new-instance v2, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v2, p1}, Lcom/itextpdf/text/Rectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    .line 481
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v2}, Lcom/itextpdf/text/Rectangle;->normalize()V

    .line 482
    new-instance v2, Lcom/itextpdf/text/Rectangle;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v3}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    .line 483
    iput p2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->page:I

    .line 484
    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->newField:Z

    .line 485
    return-void
.end method

.method public setVisibleSignature(Ljava/lang/String;)V
    .locals 18
    .parameter "fieldName"

    .prologue
    .line 492
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;

    move-result-object v2

    .line 493
    .local v2, af:Lcom/itextpdf/text/pdf/AcroFields;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v3

    .line 494
    .local v3, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v3, :cond_0

    .line 495
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "the.field.1.does.not.exist"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    invoke-static {v13, v14}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 496
    :cond_0
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v6

    .line 497
    .local v6, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->SIG:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v13

    invoke-static {v13}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 498
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "the.field.1.is.not.a.signature.field"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    invoke-static {v13, v14}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 499
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->fieldName:Ljava/lang/String;

    .line 500
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v8

    .line 501
    .local v8, r:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v4

    .line 502
    .local v4, llx:F
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v5

    .line 503
    .local v5, lly:F
    const/4 v12, 0x2

    invoke-virtual {v8, v12}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v10

    .line 504
    .local v10, urx:F
    const/4 v12, 0x3

    invoke-virtual {v8, v12}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v11

    .line 505
    .local v11, ury:F
    new-instance v12, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v12, v4, v5, v10, v11}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    .line 506
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v12}, Lcom/itextpdf/text/Rectangle;->normalize()V

    .line 507
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getPage(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->page:I

    .line 508
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    iget-object v12, v12, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->page:I

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/PdfReader;->getPageRotation(I)I

    move-result v9

    .line 509
    .local v9, rotation:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->writer:Lcom/itextpdf/text/pdf/PdfStamperImp;

    iget-object v12, v12, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->page:I

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/PdfReader;->getPageSizeWithRotation(I)Lcom/itextpdf/text/Rectangle;

    move-result-object v7

    .line 510
    .local v7, pageSize:Lcom/itextpdf/text/Rectangle;
    sparse-switch v9, :sswitch_data_0

    .line 533
    :goto_0
    if-eqz v9, :cond_2

    .line 534
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v12}, Lcom/itextpdf/text/Rectangle;->normalize()V

    .line 535
    :cond_2
    new-instance v12, Lcom/itextpdf/text/Rectangle;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v13}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v14}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v14

    invoke-direct {v12, v13, v14}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->rect:Lcom/itextpdf/text/Rectangle;

    .line 536
    return-void

    .line 512
    :sswitch_0
    new-instance v12, Lcom/itextpdf/text/Rectangle;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v13}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v13

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v15}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v15}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v15

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v17

    sub-float v16, v16, v17

    invoke-direct/range {v12 .. v16}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    goto :goto_0

    .line 519
    :sswitch_1
    new-instance v12, Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v14}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v15}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v15

    sub-float/2addr v14, v15

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v16

    sub-float v15, v15, v16

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v17

    sub-float v16, v16, v17

    invoke-direct/range {v12 .. v16}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    goto/16 :goto_0

    .line 526
    :sswitch_2
    new-instance v12, Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v14}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v14}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v14

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v16

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v16

    invoke-direct/range {v12 .. v16}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->pageRect:Lcom/itextpdf/text/Rectangle;

    goto/16 :goto_0

    .line 510
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method
