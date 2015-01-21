.class Lcom/itextpdf/text/html/simpleparser/HTMLTagProcessors$11;
.super Ljava/lang/Object;
.source "HTMLTagProcessors.java"

# interfaces
.implements Lcom/itextpdf/text/html/simpleparser/HTMLTagProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/html/simpleparser/HTMLTagProcessors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Lcom/itextpdf/text/html/simpleparser/HTMLWorker;Ljava/lang/String;)V
    .locals 1
    .parameter "worker"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p1}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->carriageReturn()V

    .line 358
    invoke-virtual {p1}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->isPendingTR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const-string v0, "tr"

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->endElement(Ljava/lang/String;)V

    .line 360
    :cond_0
    invoke-virtual {p1, p2}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->updateChain(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->processTable()V

    .line 362
    invoke-virtual {p1}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->popTableState()V

    .line 363
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->setSkipText(Z)V

    .line 364
    return-void
.end method

.method public startElement(Lcom/itextpdf/text/html/simpleparser/HTMLWorker;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter "worker"
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/html/simpleparser/HTMLWorker;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .local p3, attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 338
    invoke-virtual {p1}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->carriageReturn()V

    .line 339
    new-instance v0, Lcom/itextpdf/text/html/simpleparser/TableWrapper;

    invoke-direct {v0, p3}, Lcom/itextpdf/text/html/simpleparser/TableWrapper;-><init>(Ljava/util/Map;)V

    .line 340
    .local v0, table:Lcom/itextpdf/text/html/simpleparser/TableWrapper;
    invoke-virtual {p1, v0}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pushToStack(Lcom/itextpdf/text/Element;)V

    .line 341
    invoke-virtual {p1}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pushTableState()V

    .line 342
    invoke-virtual {p1, v1}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->setPendingTD(Z)V

    .line 343
    invoke-virtual {p1, v1}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->setPendingTR(Z)V

    .line 344
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->setSkipText(Z)V

    .line 346
    const-string v1, "align"

    invoke-interface {p3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v1, "colspan"

    const-string v2, "1"

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v1, "rowspan"

    const-string v2, "1"

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->updateChain(Ljava/lang/String;Ljava/util/Map;)V

    .line 351
    return-void
.end method
