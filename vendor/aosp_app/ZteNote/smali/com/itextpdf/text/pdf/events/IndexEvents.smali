.class public Lcom/itextpdf/text/pdf/events/IndexEvents;
.super Lcom/itextpdf/text/pdf/PdfPageEventHelper;
.source "IndexEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;
    }
.end annotation


# instance fields
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private indexcounter:J

.field private indexentry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private indextag:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfPageEventHelper;-><init>()V

    .line 70
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/events/IndexEvents;->indextag:Ljava/util/Map;

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/events/IndexEvents;->indexcounter:J

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/events/IndexEvents;->indexentry:Ljava/util/List;

    .line 182
    new-instance v0, Lcom/itextpdf/text/pdf/events/IndexEvents$1;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/events/IndexEvents$1;-><init>(Lcom/itextpdf/text/pdf/events/IndexEvents;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/events/IndexEvents;->comparator:Ljava/util/Comparator;

    .line 248
    return-void
.end method

.method static synthetic access$000(Lcom/itextpdf/text/pdf/events/IndexEvents;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/itextpdf/text/pdf/events/IndexEvents;->indextag:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/Chunk;
    .locals 2
    .parameter "text"
    .parameter "in1"

    .prologue
    .line 125
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/itextpdf/text/pdf/events/IndexEvents;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    return-object v0
.end method

.method public create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/Chunk;
    .locals 1
    .parameter "text"
    .parameter "in1"
    .parameter "in2"

    .prologue
    .line 137
    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/pdf/events/IndexEvents;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    return-object v0
.end method

.method public create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/Chunk;
    .locals 9
    .parameter "text"
    .parameter "in1"
    .parameter "in2"
    .parameter "in3"

    .prologue
    .line 108
    new-instance v6, Lcom/itextpdf/text/Chunk;

    invoke-direct {v6, p1}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;)V

    .line 109
    .local v6, chunk:Lcom/itextpdf/text/Chunk;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idx_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/itextpdf/text/pdf/events/IndexEvents;->indexcounter:J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v2

    iput-wide v7, p0, Lcom/itextpdf/text/pdf/events/IndexEvents;->indexcounter:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, tag:Ljava/lang/String;
    invoke-virtual {v6, v5}, Lcom/itextpdf/text/Chunk;->setGenericTag(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    .line 111
    invoke-virtual {v6, v5}, Lcom/itextpdf/text/Chunk;->setLocalDestination(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    .line 112
    new-instance v0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;-><init>(Lcom/itextpdf/text/pdf/events/IndexEvents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v0, entry:Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/events/IndexEvents;->indexentry:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-object v6
.end method

.method public create(Lcom/itextpdf/text/Chunk;Ljava/lang/String;)V
    .locals 2
    .parameter "text"
    .parameter "in1"

    .prologue
    .line 165
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/itextpdf/text/pdf/events/IndexEvents;->create(Lcom/itextpdf/text/Chunk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public create(Lcom/itextpdf/text/Chunk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .parameter "in1"
    .parameter "in2"

    .prologue
    .line 176
    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/pdf/events/IndexEvents;->create(Lcom/itextpdf/text/Chunk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public create(Lcom/itextpdf/text/Chunk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "text"
    .parameter "in1"
    .parameter "in2"
    .parameter "in3"

    .prologue
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idx_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/itextpdf/text/pdf/events/IndexEvents;->indexcounter:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/itextpdf/text/pdf/events/IndexEvents;->indexcounter:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, tag:Ljava/lang/String;
    invoke-virtual {p1, v5}, Lcom/itextpdf/text/Chunk;->setGenericTag(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    .line 153
    invoke-virtual {p1, v5}, Lcom/itextpdf/text/Chunk;->setLocalDestination(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    .line 154
    new-instance v0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;-><init>(Lcom/itextpdf/text/pdf/events/IndexEvents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .local v0, entry:Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/events/IndexEvents;->indexentry:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public getSortedEntries()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 221
    .local v1, grouped:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/itextpdf/text/pdf/events/IndexEvents;->indexentry:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 222
    iget-object v6, p0, Lcom/itextpdf/text/pdf/events/IndexEvents;->indexentry:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;

    .line 223
    .local v0, e:Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, key:Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;

    .line 226
    .local v4, master:Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;
    if-eqz v4, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->getPageNumber()I

    move-result v6

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->addPageNumberAndTag(ILjava/lang/String;)V

    .line 221
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->getPageNumber()I

    move-result v6

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;->addPageNumberAndTag(ILjava/lang/String;)V

    .line 230
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 235
    .end local v0           #e:Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #master:Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 236
    .local v5, sorted:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;>;"
    iget-object v6, p0, Lcom/itextpdf/text/pdf/events/IndexEvents;->comparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 237
    return-object v5
.end method

.method public onGenericTag(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;)V
    .locals 2
    .parameter "writer"
    .parameter "document"
    .parameter "rect"
    .parameter "text"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/itextpdf/text/pdf/events/IndexEvents;->indextag:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public setComparator(Ljava/util/Comparator;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, aComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/itextpdf/text/pdf/events/IndexEvents$Entry;>;"
    iput-object p1, p0, Lcom/itextpdf/text/pdf/events/IndexEvents;->comparator:Ljava/util/Comparator;

    .line 211
    return-void
.end method
