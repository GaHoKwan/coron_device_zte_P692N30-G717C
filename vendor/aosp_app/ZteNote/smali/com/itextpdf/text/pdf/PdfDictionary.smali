.class public Lcom/itextpdf/text/pdf/PdfDictionary;
.super Lcom/itextpdf/text/pdf/PdfObject;
.source "PdfDictionary.java"


# static fields
.field public static final CATALOG:Lcom/itextpdf/text/pdf/PdfName;

.field public static final FONT:Lcom/itextpdf/text/pdf/PdfName;

.field public static final OUTLINES:Lcom/itextpdf/text/pdf/PdfName;

.field public static final PAGE:Lcom/itextpdf/text/pdf/PdfName;

.field public static final PAGES:Lcom/itextpdf/text/pdf/PdfName;


# instance fields
.field private dictionaryType:Lcom/itextpdf/text/pdf/PdfName;

.field protected hashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfName;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfDictionary;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    .line 82
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->OUTLINES:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfDictionary;->OUTLINES:Lcom/itextpdf/text/pdf/PdfName;

    .line 85
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PAGE:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfDictionary;->PAGE:Lcom/itextpdf/text/pdf/PdfName;

    .line 88
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PAGES:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfDictionary;->PAGES:Lcom/itextpdf/text/pdf/PdfName;

    .line 91
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->CATALOG:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfDictionary;->CATALOG:Lcom/itextpdf/text/pdf/PdfName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfObject;-><init>(I)V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDictionary;->dictionaryType:Lcom/itextpdf/text/pdf/PdfName;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDictionary;->hashMap:Ljava/util/HashMap;

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDictionary;->dictionaryType:Lcom/itextpdf/text/pdf/PdfName;

    .line 119
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDictionary;->dictionaryType:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 120
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDictionary;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 238
    return-void
.end method

.method public contains(Lcom/itextpdf/text/pdf/PdfName;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDictionary;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 1
    .parameter "key"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDictionary;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfObject;

    return-object v0
.end method

.method public getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;
    .locals 3
    .parameter "key"

    .prologue
    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 397
    .local v1, orig:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 398
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 399
    :cond_0
    return-object v0
.end method

.method public getAsBoolean(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfBoolean;
    .locals 3
    .parameter "key"

    .prologue
    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, bool:Lcom/itextpdf/text/pdf/PdfBoolean;
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 502
    .local v1, orig:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 503
    check-cast v0, Lcom/itextpdf/text/pdf/PdfBoolean;

    .line 504
    :cond_0
    return-object v0
.end method

.method public getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 3
    .parameter "key"

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, dict:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 376
    .local v1, orig:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 377
    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 378
    :cond_0
    return-object v0
.end method

.method public getAsIndirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 3
    .parameter "key"

    .prologue
    .line 519
    const/4 v1, 0x0

    .line 520
    .local v1, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 521
    .local v0, orig:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 522
    check-cast v1, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 523
    :cond_0
    return-object v1
.end method

.method public getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;
    .locals 3
    .parameter "key"

    .prologue
    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 481
    .local v1, orig:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 482
    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    .line 483
    :cond_0
    return-object v0
.end method

.method public getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;
    .locals 3
    .parameter "key"

    .prologue
    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, number:Lcom/itextpdf/text/pdf/PdfNumber;
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 460
    .local v1, orig:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 461
    check-cast v0, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 462
    :cond_0
    return-object v0
.end method

.method public getAsStream(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfStream;
    .locals 3
    .parameter "key"

    .prologue
    .line 416
    const/4 v1, 0x0

    .line 417
    .local v1, stream:Lcom/itextpdf/text/pdf/PdfStream;
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 418
    .local v0, orig:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 419
    check-cast v1, Lcom/itextpdf/text/pdf/PdfStream;

    .line 420
    :cond_0
    return-object v1
.end method

.method public getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;
    .locals 3
    .parameter "key"

    .prologue
    .line 437
    const/4 v1, 0x0

    .line 438
    .local v1, string:Lcom/itextpdf/text/pdf/PdfString;
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 439
    .local v0, orig:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 440
    check-cast v1, Lcom/itextpdf/text/pdf/PdfString;

    .line 441
    :cond_0
    return-object v1
.end method

.method public getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 1
    .parameter "key"

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/itextpdf/text/pdf/PdfName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDictionary;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isCatalog()Z
    .locals 2

    .prologue
    .line 332
    sget-object v0, Lcom/itextpdf/text/pdf/PdfDictionary;->CATALOG:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDictionary;->dictionaryType:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFont()Z
    .locals 2

    .prologue
    .line 305
    sget-object v0, Lcom/itextpdf/text/pdf/PdfDictionary;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDictionary;->dictionaryType:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOutlineTree()Z
    .locals 2

    .prologue
    .line 341
    sget-object v0, Lcom/itextpdf/text/pdf/PdfDictionary;->OUTLINES:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDictionary;->dictionaryType:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPage()Z
    .locals 2

    .prologue
    .line 314
    sget-object v0, Lcom/itextpdf/text/pdf/PdfDictionary;->PAGE:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDictionary;->dictionaryType:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPages()Z
    .locals 2

    .prologue
    .line 323
    sget-object v0, Lcom/itextpdf/text/pdf/PdfDictionary;->PAGES:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDictionary;->dictionaryType:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public merge(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDictionary;->hashMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfDictionary;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 348
    return-void
.end method

.method public mergeDifferent(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 4
    .parameter "other"

    .prologue
    .line 351
    iget-object v2, p1, Lcom/itextpdf/text/pdf/PdfDictionary;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfName;

    .line 352
    .local v1, key:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDictionary;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 353
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDictionary;->hashMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/itextpdf/text/pdf/PdfDictionary;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 355
    .end local v1           #key:Lcom/itextpdf/text/pdf/PdfName;
    :cond_1
    return-void
.end method

.method public put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "key"
    .parameter "object"

    .prologue
    .line 183
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfObject;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDictionary;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDictionary;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putAll(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 2
    .parameter "dic"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDictionary;->hashMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfDictionary;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 219
    return-void
.end method

.method public putEx(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 202
    if-nez p2, :cond_0

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public remove(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDictionary;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDictionary;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V
    .locals 6
    .parameter "writer"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3e

    const/16 v4, 0x3c

    .line 134
    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 135
    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 138
    const/4 v2, 0x0

    .line 139
    .local v2, type:I
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDictionary;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 140
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, p1, p2}, Lcom/itextpdf/text/pdf/PdfName;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfObject;

    .line 142
    .local v3, value:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v2

    .line 143
    const/4 v4, 0x5

    if-eq v2, v4, :cond_0

    const/4 v4, 0x6

    if-eq v2, v4, :cond_0

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    .line 144
    const/16 v4, 0x20

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 145
    :cond_0
    invoke-virtual {v3, p1, p2}, Lcom/itextpdf/text/pdf/PdfObject;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 147
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;>;"
    .end local v3           #value:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_1
    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    .line 148
    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    const-string v0, "Dictionary"

    .line 165
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dictionary of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
