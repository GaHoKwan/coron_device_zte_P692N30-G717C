.class public Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;
.super Ljava/lang/Object;
.source "IndexEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/events/IndexEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field private in1:Ljava/lang/String;

.field private in2:Ljava/lang/String;

.field private in3:Ljava/lang/String;

.field private pagenumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/itextpdf/text/pdf/events/IndexEvents;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/events/IndexEvents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "aIn1"
    .parameter "aIn2"
    .parameter "aIn3"
    .parameter "aTag"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->this$0:Lcom/itextpdf/text/pdf/events/IndexEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->pagenumbers:Ljava/util/List;

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->tags:Ljava/util/List;

    .line 289
    iput-object p2, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->in1:Ljava/lang/String;

    .line 290
    iput-object p3, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->in2:Ljava/lang/String;

    .line 291
    iput-object p4, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->in3:Ljava/lang/String;

    .line 292
    iput-object p5, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->tag:Ljava/lang/String;

    .line 293
    return-void
.end method


# virtual methods
.method public addPageNumberAndTag(ILjava/lang/String;)V
    .locals 2
    .parameter "number"
    .parameter "tag"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->pagenumbers:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->tags:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    return-void
.end method

.method public getIn1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->in1:Ljava/lang/String;

    return-object v0
.end method

.method public getIn2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->in2:Ljava/lang/String;

    return-object v0
.end method

.method public getIn3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->in3:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->in1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->in2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->in3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageNumber()I
    .locals 4

    .prologue
    .line 332
    const/4 v1, -0x1

    .line 333
    .local v1, rt:I
    iget-object v2, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->this$0:Lcom/itextpdf/text/pdf/events/IndexEvents;

    #getter for: Lcom/itextpdf/text/pdf/events/IndexEvents;->indextag:Ljava/util/Map;
    invoke-static {v2}, Lcom/itextpdf/text/pdf/events/IndexEvents;->access$000(Lcom/itextpdf/text/pdf/events/IndexEvents;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->tag:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 334
    .local v0, i:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 337
    :cond_0
    return v1
.end method

.method public getPagenumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->pagenumbers:Ljava/util/List;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->tags:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 380
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 381
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->in1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 382
    iget-object v2, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->in2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 383
    iget-object v2, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->in3:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 384
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->pagenumbers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->pagenumbers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
