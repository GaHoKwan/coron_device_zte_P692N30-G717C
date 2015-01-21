.class Lcom/itextpdf/text/pdf/LongHashtable$Entry;
.super Ljava/lang/Object;
.source "LongHashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/LongHashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation


# instance fields
.field hash:I

.field key:J

.field next:Lcom/itextpdf/text/pdf/LongHashtable$Entry;

.field value:J


# direct methods
.method protected constructor <init>(IJJLcom/itextpdf/text/pdf/LongHashtable$Entry;)V
    .locals 0
    .parameter "hash"
    .parameter "key"
    .parameter "value"
    .parameter "next"

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput p1, p0, Lcom/itextpdf/text/pdf/LongHashtable$Entry;->hash:I

    .line 367
    iput-wide p2, p0, Lcom/itextpdf/text/pdf/LongHashtable$Entry;->key:J

    .line 368
    iput-wide p4, p0, Lcom/itextpdf/text/pdf/LongHashtable$Entry;->value:J

    .line 369
    iput-object p6, p0, Lcom/itextpdf/text/pdf/LongHashtable$Entry;->next:Lcom/itextpdf/text/pdf/LongHashtable$Entry;

    .line 370
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 381
    new-instance v0, Lcom/itextpdf/text/pdf/LongHashtable$Entry;

    iget v1, p0, Lcom/itextpdf/text/pdf/LongHashtable$Entry;->hash:I

    iget-wide v2, p0, Lcom/itextpdf/text/pdf/LongHashtable$Entry;->key:J

    iget-wide v4, p0, Lcom/itextpdf/text/pdf/LongHashtable$Entry;->value:J

    iget-object v6, p0, Lcom/itextpdf/text/pdf/LongHashtable$Entry;->next:Lcom/itextpdf/text/pdf/LongHashtable$Entry;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/itextpdf/text/pdf/LongHashtable$Entry;->next:Lcom/itextpdf/text/pdf/LongHashtable$Entry;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/LongHashtable$Entry;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/LongHashtable$Entry;

    :goto_0
    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/text/pdf/LongHashtable$Entry;-><init>(IJJLcom/itextpdf/text/pdf/LongHashtable$Entry;)V

    .line 382
    .local v0, entry:Lcom/itextpdf/text/pdf/LongHashtable$Entry;
    return-object v0

    .line 381
    .end local v0           #entry:Lcom/itextpdf/text/pdf/LongHashtable$Entry;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getKey()J
    .locals 2

    .prologue
    .line 374
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/LongHashtable$Entry;->key:J

    return-wide v0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 377
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/LongHashtable$Entry;->value:J

    return-wide v0
.end method
