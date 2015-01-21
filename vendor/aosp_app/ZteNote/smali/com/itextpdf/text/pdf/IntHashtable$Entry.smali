.class Lcom/itextpdf/text/pdf/IntHashtable$Entry;
.super Ljava/lang/Object;
.source "IntHashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/IntHashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation


# instance fields
.field hash:I

.field key:I

.field next:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

.field value:I


# direct methods
.method protected constructor <init>(IIILcom/itextpdf/text/pdf/IntHashtable$Entry;)V
    .locals 0
    .parameter "hash"
    .parameter "key"
    .parameter "value"
    .parameter "next"

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput p1, p0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->hash:I

    .line 367
    iput p2, p0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->key:I

    .line 368
    iput p3, p0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->value:I

    .line 369
    iput-object p4, p0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->next:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    .line 370
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 381
    new-instance v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    iget v2, p0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->hash:I

    iget v3, p0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->key:I

    iget v4, p0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->value:I

    iget-object v1, p0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->next:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->next:Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    :goto_0
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/itextpdf/text/pdf/IntHashtable$Entry;-><init>(IIILcom/itextpdf/text/pdf/IntHashtable$Entry;)V

    .line 382
    .local v0, entry:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    return-object v0

    .line 381
    .end local v0           #entry:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKey()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->key:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->value:I

    return v0
.end method
