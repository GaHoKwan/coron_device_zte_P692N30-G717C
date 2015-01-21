.class public Lcom/itextpdf/text/Document;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Lcom/itextpdf/text/DocListener;


# static fields
.field private static final ITEXT:Ljava/lang/String; = "iText\u00ae"

.field private static final ITEXT_VERSION:Ljava/lang/String; = "iText\u00ae 5.3.0 \u00a92000-2012 1T3XT BVBA"

.field private static final RELEASE:Ljava/lang/String; = "5.3.0"

.field public static compress:Z

.field public static plainRandomAccess:Z

.field public static wmfFontCorrection:F


# instance fields
.field protected chapternumber:I

.field protected close:Z

.field protected htmlStyleClass:Ljava/lang/String;

.field protected javaScript_onLoad:Ljava/lang/String;

.field protected javaScript_onUnLoad:Ljava/lang/String;

.field protected listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/DocListener;",
            ">;"
        }
    .end annotation
.end field

.field protected marginBottom:F

.field protected marginLeft:F

.field protected marginMirroring:Z

.field protected marginMirroringTopBottom:Z

.field protected marginRight:F

.field protected marginTop:F

.field protected open:Z

.field protected pageN:I

.field protected pageSize:Lcom/itextpdf/text/Rectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    sput-boolean v0, Lcom/itextpdf/text/Document;->compress:Z

    .line 128
    const/4 v0, 0x0

    sput-boolean v0, Lcom/itextpdf/text/Document;->plainRandomAccess:Z

    .line 131
    const v0, 0x3f5c28f6

    sput v0, Lcom/itextpdf/text/Document;->wmfFontCorrection:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/itextpdf/text/PageSize;->A4:Lcom/itextpdf/text/Rectangle;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/Document;-><init>(Lcom/itextpdf/text/Rectangle;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Rectangle;)V
    .locals 6
    .parameter "pageSize"

    .prologue
    const/high16 v2, 0x4210

    .line 206
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/Document;-><init>(Lcom/itextpdf/text/Rectangle;FFFF)V

    .line 207
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Rectangle;FFFF)V
    .locals 4
    .parameter "pageSize"
    .parameter "marginLeft"
    .parameter "marginRight"
    .parameter "marginTop"
    .parameter "marginBottom"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/Document;->listeners:Ljava/util/ArrayList;

    .line 151
    iput v1, p0, Lcom/itextpdf/text/Document;->marginLeft:F

    .line 154
    iput v1, p0, Lcom/itextpdf/text/Document;->marginRight:F

    .line 157
    iput v1, p0, Lcom/itextpdf/text/Document;->marginTop:F

    .line 160
    iput v1, p0, Lcom/itextpdf/text/Document;->marginBottom:F

    .line 163
    iput-boolean v2, p0, Lcom/itextpdf/text/Document;->marginMirroring:Z

    .line 169
    iput-boolean v2, p0, Lcom/itextpdf/text/Document;->marginMirroringTopBottom:Z

    .line 172
    iput-object v3, p0, Lcom/itextpdf/text/Document;->javaScript_onLoad:Ljava/lang/String;

    .line 175
    iput-object v3, p0, Lcom/itextpdf/text/Document;->javaScript_onUnLoad:Ljava/lang/String;

    .line 178
    iput-object v3, p0, Lcom/itextpdf/text/Document;->htmlStyleClass:Ljava/lang/String;

    .line 183
    iput v2, p0, Lcom/itextpdf/text/Document;->pageN:I

    .line 186
    iput v2, p0, Lcom/itextpdf/text/Document;->chapternumber:I

    .line 226
    iput-object p1, p0, Lcom/itextpdf/text/Document;->pageSize:Lcom/itextpdf/text/Rectangle;

    .line 227
    iput p2, p0, Lcom/itextpdf/text/Document;->marginLeft:F

    .line 228
    iput p3, p0, Lcom/itextpdf/text/Document;->marginRight:F

    .line 229
    iput p4, p0, Lcom/itextpdf/text/Document;->marginTop:F

    .line 230
    iput p5, p0, Lcom/itextpdf/text/Document;->marginBottom:F

    .line 231
    return-void
.end method

.method public static final getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 711
    const-string v0, "iText\u00ae"

    return-object v0
.end method

.method public static final getRelease()Ljava/lang/String;
    .locals 1

    .prologue
    .line 721
    const-string v0, "5.3.0"

    return-object v0
.end method

.method public static final getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 732
    const-string v0, "iText\u00ae 5.3.0 \u00a92000-2012 1T3XT BVBA"

    return-object v0
.end method


# virtual methods
.method public add(Lcom/itextpdf/text/Element;)Z
    .locals 7
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 271
    iget-boolean v4, p0, Lcom/itextpdf/text/Document;->close:Z

    if-eqz v4, :cond_0

    .line 272
    new-instance v4, Lcom/itextpdf/text/DocumentException;

    const-string v5, "the.document.has.been.closed.you.can.t.add.any.elements"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 274
    :cond_0
    iget-boolean v4, p0, Lcom/itextpdf/text/Document;->open:Z

    if-nez v4, :cond_1

    invoke-interface {p1}, Lcom/itextpdf/text/Element;->isContent()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 275
    new-instance v4, Lcom/itextpdf/text/DocumentException;

    const-string v5, "the.document.is.not.open.yet.you.can.only.add.meta.information"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 277
    :cond_1
    const/4 v3, 0x0

    .line 278
    .local v3, success:Z
    instance-of v4, p1, Lcom/itextpdf/text/ChapterAutoNumber;

    if-eqz v4, :cond_2

    move-object v4, p1

    .line 279
    check-cast v4, Lcom/itextpdf/text/ChapterAutoNumber;

    iget v5, p0, Lcom/itextpdf/text/Document;->chapternumber:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/ChapterAutoNumber;->setAutomaticNumber(I)I

    move-result v4

    iput v4, p0, Lcom/itextpdf/text/Document;->chapternumber:I

    .line 281
    :cond_2
    iget-object v4, p0, Lcom/itextpdf/text/Document;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/DocListener;

    .line 282
    .local v2, listener:Lcom/itextpdf/text/DocListener;
    invoke-interface {v2, p1}, Lcom/itextpdf/text/DocListener;->add(Lcom/itextpdf/text/Element;)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0

    .line 284
    .end local v2           #listener:Lcom/itextpdf/text/DocListener;
    :cond_3
    instance-of v4, p1, Lcom/itextpdf/text/LargeElement;

    if-eqz v4, :cond_4

    move-object v0, p1

    .line 285
    check-cast v0, Lcom/itextpdf/text/LargeElement;

    .line 286
    .local v0, e:Lcom/itextpdf/text/LargeElement;
    invoke-interface {v0}, Lcom/itextpdf/text/LargeElement;->isComplete()Z

    move-result v4

    if-nez v4, :cond_4

    .line 287
    invoke-interface {v0}, Lcom/itextpdf/text/LargeElement;->flushContent()V

    .line 289
    .end local v0           #e:Lcom/itextpdf/text/LargeElement;
    :cond_4
    return v3
.end method

.method public addAuthor(Ljava/lang/String;)Z
    .locals 3
    .parameter "author"

    .prologue
    .line 502
    :try_start_0
    new-instance v1, Lcom/itextpdf/text/Meta;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1}, Lcom/itextpdf/text/Meta;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Document;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public addCreationDate()Z
    .locals 5

    .prologue
    .line 547
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE MMM dd HH:mm:ss zzz yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 549
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    new-instance v2, Lcom/itextpdf/text/Meta;

    const/4 v3, 0x6

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/text/Meta;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/Document;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 550
    .end local v1           #sdf:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v0

    .line 551
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v2, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public addCreator(Ljava/lang/String;)Z
    .locals 3
    .parameter "creator"

    .prologue
    .line 518
    :try_start_0
    new-instance v1, Lcom/itextpdf/text/Meta;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p1}, Lcom/itextpdf/text/Meta;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Document;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public addDocListener(Lcom/itextpdf/text/DocListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/itextpdf/text/Document;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "name"
    .parameter "content"

    .prologue
    .line 438
    :try_start_0
    new-instance v1, Lcom/itextpdf/text/Header;

    invoke-direct {v1, p1, p2}, Lcom/itextpdf/text/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Document;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public addKeywords(Ljava/lang/String;)Z
    .locals 3
    .parameter "keywords"

    .prologue
    .line 486
    :try_start_0
    new-instance v1, Lcom/itextpdf/text/Meta;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1}, Lcom/itextpdf/text/Meta;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Document;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public addProducer()Z
    .locals 4

    .prologue
    .line 532
    :try_start_0
    new-instance v1, Lcom/itextpdf/text/Meta;

    const/4 v2, 0x5

    invoke-static {}, Lcom/itextpdf/text/Document;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/text/Meta;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Document;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public addSubject(Ljava/lang/String;)Z
    .locals 3
    .parameter "subject"

    .prologue
    .line 470
    :try_start_0
    new-instance v1, Lcom/itextpdf/text/Meta;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lcom/itextpdf/text/Meta;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Document;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public addTitle(Ljava/lang/String;)Z
    .locals 3
    .parameter "title"

    .prologue
    .line 454
    :try_start_0
    new-instance v1, Lcom/itextpdf/text/Meta;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/itextpdf/text/Meta;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Document;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public bottom()F
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/itextpdf/text/Document;->pageSize:Lcom/itextpdf/text/Rectangle;

    iget v1, p0, Lcom/itextpdf/text/Document;->marginBottom:F

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Rectangle;->getBottom(F)F

    move-result v0

    return v0
.end method

.method public bottom(F)F
    .locals 2
    .parameter "margin"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/itextpdf/text/Document;->pageSize:Lcom/itextpdf/text/Rectangle;

    iget v1, p0, Lcom/itextpdf/text/Document;->marginBottom:F

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Rectangle;->getBottom(F)F

    move-result v0

    return v0
.end method

.method public bottomMargin()F
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Lcom/itextpdf/text/Document;->marginBottom:F

    return v0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 415
    iget-boolean v2, p0, Lcom/itextpdf/text/Document;->close:Z

    if-nez v2, :cond_0

    .line 416
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/itextpdf/text/Document;->open:Z

    .line 417
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/itextpdf/text/Document;->close:Z

    .line 419
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/Document;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/DocListener;

    .line 420
    .local v1, listener:Lcom/itextpdf/text/DocListener;
    invoke-interface {v1}, Lcom/itextpdf/text/DocListener;->close()V

    goto :goto_0

    .line 422
    .end local v1           #listener:Lcom/itextpdf/text/DocListener;
    :cond_1
    return-void
.end method

.method public getHtmlStyleClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/itextpdf/text/Document;->htmlStyleClass:Ljava/lang/String;

    return-object v0
.end method

.method public getJavaScript_onLoad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/itextpdf/text/Document;->javaScript_onLoad:Ljava/lang/String;

    return-object v0
.end method

.method public getJavaScript_onUnLoad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/itextpdf/text/Document;->javaScript_onUnLoad:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNumber()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/itextpdf/text/Document;->pageN:I

    return v0
.end method

.method public getPageSize()Lcom/itextpdf/text/Rectangle;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/itextpdf/text/Document;->pageSize:Lcom/itextpdf/text/Rectangle;

    return-object v0
.end method

.method public isMarginMirroring()Z
    .locals 1

    .prologue
    .line 839
    iget-boolean v0, p0, Lcom/itextpdf/text/Document;->marginMirroring:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 701
    iget-boolean v0, p0, Lcom/itextpdf/text/Document;->open:Z

    return v0
.end method

.method public left()F
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/itextpdf/text/Document;->pageSize:Lcom/itextpdf/text/Rectangle;

    iget v1, p0, Lcom/itextpdf/text/Document;->marginLeft:F

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Rectangle;->getLeft(F)F

    move-result v0

    return v0
.end method

.method public left(F)F
    .locals 2
    .parameter "margin"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/itextpdf/text/Document;->pageSize:Lcom/itextpdf/text/Rectangle;

    iget v1, p0, Lcom/itextpdf/text/Document;->marginLeft:F

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Rectangle;->getLeft(F)F

    move-result v0

    return v0
.end method

.method public leftMargin()F
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/itextpdf/text/Document;->marginLeft:F

    return v0
.end method

.method public newPage()Z
    .locals 3

    .prologue
    .line 363
    iget-boolean v2, p0, Lcom/itextpdf/text/Document;->open:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/itextpdf/text/Document;->close:Z

    if-eqz v2, :cond_1

    .line 364
    :cond_0
    const/4 v2, 0x0

    .line 369
    :goto_0
    return v2

    .line 366
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/text/Document;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/DocListener;

    .line 367
    .local v1, listener:Lcom/itextpdf/text/DocListener;
    invoke-interface {v1}, Lcom/itextpdf/text/DocListener;->newPage()Z

    goto :goto_1

    .line 369
    .end local v1           #listener:Lcom/itextpdf/text/DocListener;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public open()V
    .locals 6

    .prologue
    .line 301
    iget-boolean v2, p0, Lcom/itextpdf/text/Document;->close:Z

    if-nez v2, :cond_0

    .line 302
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/itextpdf/text/Document;->open:Z

    .line 304
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/Document;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/DocListener;

    .line 305
    .local v1, listener:Lcom/itextpdf/text/DocListener;
    iget-object v2, p0, Lcom/itextpdf/text/Document;->pageSize:Lcom/itextpdf/text/Rectangle;

    invoke-interface {v1, v2}, Lcom/itextpdf/text/DocListener;->setPageSize(Lcom/itextpdf/text/Rectangle;)Z

    .line 306
    iget v2, p0, Lcom/itextpdf/text/Document;->marginLeft:F

    iget v3, p0, Lcom/itextpdf/text/Document;->marginRight:F

    iget v4, p0, Lcom/itextpdf/text/Document;->marginTop:F

    iget v5, p0, Lcom/itextpdf/text/Document;->marginBottom:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/itextpdf/text/DocListener;->setMargins(FFFF)Z

    .line 308
    invoke-interface {v1}, Lcom/itextpdf/text/DocListener;->open()V

    goto :goto_0

    .line 310
    .end local v1           #listener:Lcom/itextpdf/text/DocListener;
    :cond_1
    return-void
.end method

.method public removeDocListener(Lcom/itextpdf/text/DocListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/itextpdf/text/Document;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method public resetPageCount()V
    .locals 3

    .prologue
    .line 377
    const/4 v2, 0x0

    iput v2, p0, Lcom/itextpdf/text/Document;->pageN:I

    .line 378
    iget-object v2, p0, Lcom/itextpdf/text/Document;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/DocListener;

    .line 379
    .local v1, listener:Lcom/itextpdf/text/DocListener;
    invoke-interface {v1}, Lcom/itextpdf/text/DocListener;->resetPageCount()V

    goto :goto_0

    .line 381
    .end local v1           #listener:Lcom/itextpdf/text/DocListener;
    :cond_0
    return-void
.end method

.method public right()F
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/itextpdf/text/Document;->pageSize:Lcom/itextpdf/text/Rectangle;

    iget v1, p0, Lcom/itextpdf/text/Document;->marginRight:F

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Rectangle;->getRight(F)F

    move-result v0

    return v0
.end method

.method public right(F)F
    .locals 2
    .parameter "margin"

    .prologue
    .line 658
    iget-object v0, p0, Lcom/itextpdf/text/Document;->pageSize:Lcom/itextpdf/text/Rectangle;

    iget v1, p0, Lcom/itextpdf/text/Document;->marginRight:F

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Rectangle;->getRight(F)F

    move-result v0

    return v0
.end method

.method public rightMargin()F
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lcom/itextpdf/text/Document;->marginRight:F

    return v0
.end method

.method public setHtmlStyleClass(Ljava/lang/String;)V
    .locals 0
    .parameter "htmlStyleClass"

    .prologue
    .line 785
    iput-object p1, p0, Lcom/itextpdf/text/Document;->htmlStyleClass:Ljava/lang/String;

    .line 786
    return-void
.end method

.method public setJavaScript_onLoad(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 743
    iput-object p1, p0, Lcom/itextpdf/text/Document;->javaScript_onLoad:Ljava/lang/String;

    .line 744
    return-void
.end method

.method public setJavaScript_onUnLoad(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 764
    iput-object p1, p0, Lcom/itextpdf/text/Document;->javaScript_onUnLoad:Ljava/lang/String;

    .line 765
    return-void
.end method

.method public setMarginMirroring(Z)Z
    .locals 4
    .parameter "marginMirroring"

    .prologue
    .line 806
    iput-boolean p1, p0, Lcom/itextpdf/text/Document;->marginMirroring:Z

    .line 808
    iget-object v3, p0, Lcom/itextpdf/text/Document;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/DocListener;

    .local v0, element:Lcom/itextpdf/text/DocListener;
    move-object v2, v0

    .line 809
    check-cast v2, Lcom/itextpdf/text/DocListener;

    .line 810
    .local v2, listener:Lcom/itextpdf/text/DocListener;
    invoke-interface {v2, p1}, Lcom/itextpdf/text/DocListener;->setMarginMirroring(Z)Z

    goto :goto_0

    .line 812
    .end local v0           #element:Lcom/itextpdf/text/DocListener;
    .end local v2           #listener:Lcom/itextpdf/text/DocListener;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public setMarginMirroringTopBottom(Z)Z
    .locals 4
    .parameter "marginMirroringTopBottom"

    .prologue
    .line 824
    iput-boolean p1, p0, Lcom/itextpdf/text/Document;->marginMirroringTopBottom:Z

    .line 826
    iget-object v3, p0, Lcom/itextpdf/text/Document;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/DocListener;

    .local v0, element:Lcom/itextpdf/text/DocListener;
    move-object v2, v0

    .line 827
    check-cast v2, Lcom/itextpdf/text/DocListener;

    .line 828
    .local v2, listener:Lcom/itextpdf/text/DocListener;
    invoke-interface {v2, p1}, Lcom/itextpdf/text/DocListener;->setMarginMirroringTopBottom(Z)Z

    goto :goto_0

    .line 830
    .end local v0           #element:Lcom/itextpdf/text/DocListener;
    .end local v2           #listener:Lcom/itextpdf/text/DocListener;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public setMargins(FFFF)Z
    .locals 3
    .parameter "marginLeft"
    .parameter "marginRight"
    .parameter "marginTop"
    .parameter "marginBottom"

    .prologue
    .line 344
    iput p1, p0, Lcom/itextpdf/text/Document;->marginLeft:F

    .line 345
    iput p2, p0, Lcom/itextpdf/text/Document;->marginRight:F

    .line 346
    iput p3, p0, Lcom/itextpdf/text/Document;->marginTop:F

    .line 347
    iput p4, p0, Lcom/itextpdf/text/Document;->marginBottom:F

    .line 348
    iget-object v2, p0, Lcom/itextpdf/text/Document;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/DocListener;

    .line 349
    .local v1, listener:Lcom/itextpdf/text/DocListener;
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/itextpdf/text/DocListener;->setMargins(FFFF)Z

    goto :goto_0

    .line 352
    .end local v1           #listener:Lcom/itextpdf/text/DocListener;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public setPageCount(I)V
    .locals 3
    .parameter "pageN"

    .prologue
    .line 391
    iput p1, p0, Lcom/itextpdf/text/Document;->pageN:I

    .line 392
    iget-object v2, p0, Lcom/itextpdf/text/Document;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/DocListener;

    .line 393
    .local v1, listener:Lcom/itextpdf/text/DocListener;
    invoke-interface {v1, p1}, Lcom/itextpdf/text/DocListener;->setPageCount(I)V

    goto :goto_0

    .line 395
    .end local v1           #listener:Lcom/itextpdf/text/DocListener;
    :cond_0
    return-void
.end method

.method public setPageSize(Lcom/itextpdf/text/Rectangle;)Z
    .locals 3
    .parameter "pageSize"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/itextpdf/text/Document;->pageSize:Lcom/itextpdf/text/Rectangle;

    .line 322
    iget-object v2, p0, Lcom/itextpdf/text/Document;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/DocListener;

    .line 323
    .local v1, listener:Lcom/itextpdf/text/DocListener;
    invoke-interface {v1, p1}, Lcom/itextpdf/text/DocListener;->setPageSize(Lcom/itextpdf/text/Rectangle;)Z

    goto :goto_0

    .line 325
    .end local v1           #listener:Lcom/itextpdf/text/DocListener;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public top()F
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/itextpdf/text/Document;->pageSize:Lcom/itextpdf/text/Rectangle;

    iget v1, p0, Lcom/itextpdf/text/Document;->marginTop:F

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Rectangle;->getTop(F)F

    move-result v0

    return v0
.end method

.method public top(F)F
    .locals 2
    .parameter "margin"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/itextpdf/text/Document;->pageSize:Lcom/itextpdf/text/Rectangle;

    iget v1, p0, Lcom/itextpdf/text/Document;->marginTop:F

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Rectangle;->getTop(F)F

    move-result v0

    return v0
.end method

.method public topMargin()F
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lcom/itextpdf/text/Document;->marginTop:F

    return v0
.end method
