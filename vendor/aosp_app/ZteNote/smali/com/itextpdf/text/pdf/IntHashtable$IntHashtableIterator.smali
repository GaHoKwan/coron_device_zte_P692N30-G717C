.class Lcom/itextpdf/text/pdf/IntHashtable$IntHashtableIterator;
.super Ljava/lang/Object;
.source "IntHashtable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/IntHashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntHashtableIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/itextpdf/text/pdf/IntHashtable$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field entry:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

.field index:I

.field table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;


# direct methods
.method constructor <init>([Lcom/itextpdf/text/pdf/IntHashtable$Entry;)V
    .locals 1
    .parameter "table"

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput-object p1, p0, Lcom/itextpdf/text/pdf/IntHashtable$IntHashtableIterator;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    .line 394
    array-length v0, p1

    iput v0, p0, Lcom/itextpdf/text/pdf/IntHashtable$IntHashtableIterator;->index:I

    .line 395
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 397
    iget-object v1, p0, Lcom/itextpdf/text/pdf/IntHashtable$IntHashtableIterator;->entry:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    if-eqz v1, :cond_0

    .line 405
    :goto_0
    return v0

    .line 400
    :cond_0
    iget v1, p0, Lcom/itextpdf/text/pdf/IntHashtable$IntHashtableIterator;->index:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/itextpdf/text/pdf/IntHashtable$IntHashtableIterator;->index:I

    if-lez v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/itextpdf/text/pdf/IntHashtable$IntHashtableIterator;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    iget v2, p0, Lcom/itextpdf/text/pdf/IntHashtable$IntHashtableIterator;->index:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/itextpdf/text/pdf/IntHashtable$IntHashtableIterator;->entry:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 405
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    .locals 4

    .prologue
    .line 409
    iget-object v1, p0, Lcom/itextpdf/text/pdf/IntHashtable$IntHashtableIterator;->entry:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    if-nez v1, :cond_1

    .line 410
    :cond_0
    iget v1, p0, Lcom/itextpdf/text/pdf/IntHashtable$IntHashtableIterator;->index:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/itextpdf/text/pdf/IntHashtable$IntHashtableIterator;->index:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/IntHashtable$IntHashtableIterator;->table:[Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    iget v2, p0, Lcom/itextpdf/text/pdf/IntHashtable$IntHashtableIterator;->index:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/itextpdf/text/pdf/IntHashtable$IntHashtableIterator;->entry:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    if-eqz v1, :cond_0

    .line 412
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/IntHashtable$IntHashtableIterator;->entry:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    if-eqz v1, :cond_2

    .line 413
    iget-object v0, p0, Lcom/itextpdf/text/pdf/IntHashtable$IntHashtableIterator;->entry:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    .line 414
    .local v0, e:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    iget-object v1, v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->next:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/IntHashtable$IntHashtableIterator;->entry:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    .line 415
    return-object v0

    .line 417
    .end local v0           #e:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    :cond_2
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "inthashtableiterator"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/IntHashtable$IntHashtableIterator;->next()Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 420
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove.not.supported"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
