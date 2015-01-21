.class Lcom/itextpdf/text/pdf/FdfWriter$Wrt;
.super Lcom/itextpdf/text/pdf/PdfWriter;
.source "FdfWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/FdfWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Wrt"
.end annotation


# instance fields
.field private fdf:Lcom/itextpdf/text/pdf/FdfWriter;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lcom/itextpdf/text/pdf/FdfWriter;)V
    .locals 2
    .parameter "os"
    .parameter "fdf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDocument;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfWriter;-><init>(Lcom/itextpdf/text/pdf/PdfDocument;Ljava/io/OutputStream;)V

    .line 311
    iput-object p2, p0, Lcom/itextpdf/text/pdf/FdfWriter$Wrt;->fdf:Lcom/itextpdf/text/pdf/FdfWriter;

    .line 312
    iget-object v0, p0, Lcom/itextpdf/text/pdf/FdfWriter$Wrt;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    invoke-static {}, Lcom/itextpdf/text/pdf/FdfWriter;->access$000()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write([B)V

    .line 313
    new-instance v0, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/FdfWriter$Wrt;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    .line 314
    return-void
.end method


# virtual methods
.method calculate(Ljava/util/HashMap;)Lcom/itextpdf/text/pdf/PdfArray;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/itextpdf/text/pdf/PdfArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 336
    .local v0, ar:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 337
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 338
    .local v4, key:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 339
    .local v5, v:Ljava/lang/Object;
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 340
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v7, Lcom/itextpdf/text/pdf/PdfString;

    const-string v8, "UnicodeBig"

    invoke-direct {v7, v4, v8}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 341
    instance-of v6, v5, Ljava/util/HashMap;

    if-eqz v6, :cond_0

    .line 342
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    check-cast v5, Ljava/util/HashMap;

    .end local v5           #v:Ljava/lang/Object;
    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/FdfWriter$Wrt;->calculate(Ljava/util/HashMap;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 350
    :goto_1
    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_0

    .line 344
    .restart local v5       #v:Ljava/lang/Object;
    :cond_0
    instance-of v6, v5, Lcom/itextpdf/text/pdf/PdfAction;

    if-eqz v6, :cond_1

    .line 345
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    check-cast v5, Lcom/itextpdf/text/pdf/PdfAction;

    .end local v5           #v:Ljava/lang/Object;
    invoke-virtual {v1, v6, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_1

    .line 348
    .restart local v5       #v:Ljava/lang/Object;
    :cond_1
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    check-cast v5, Lcom/itextpdf/text/pdf/PdfObject;

    .end local v5           #v:Ljava/lang/Object;
    invoke-virtual {v1, v6, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_1

    .line 352
    .end local v1           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #key:Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method writeTo()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 318
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FIELDS:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/FdfWriter$Wrt;->fdf:Lcom/itextpdf/text/pdf/FdfWriter;

    iget-object v5, v5, Lcom/itextpdf/text/pdf/FdfWriter;->fields:Ljava/util/HashMap;

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/FdfWriter$Wrt;->calculate(Ljava/util/HashMap;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 319
    iget-object v4, p0, Lcom/itextpdf/text/pdf/FdfWriter$Wrt;->fdf:Lcom/itextpdf/text/pdf/FdfWriter;

    #getter for: Lcom/itextpdf/text/pdf/FdfWriter;->file:Ljava/lang/String;
    invoke-static {v4}, Lcom/itextpdf/text/pdf/FdfWriter;->access$100(Lcom/itextpdf/text/pdf/FdfWriter;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 320
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfString;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/FdfWriter$Wrt;->fdf:Lcom/itextpdf/text/pdf/FdfWriter;

    #getter for: Lcom/itextpdf/text/pdf/FdfWriter;->file:Ljava/lang/String;
    invoke-static {v6}, Lcom/itextpdf/text/pdf/FdfWriter;->access$100(Lcom/itextpdf/text/pdf/FdfWriter;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UnicodeBig"

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 321
    :cond_0
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 322
    .local v1, fd:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FDF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 323
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/FdfWriter$Wrt;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    .line 324
    .local v2, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/FdfWriter$Wrt;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    const-string v5, "trailer\n"

    invoke-static {v5}, Lcom/itextpdf/text/pdf/FdfWriter$Wrt;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write([B)V

    .line 325
    new-instance v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 326
    .local v3, trailer:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->ROOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v4, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 327
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/itextpdf/text/pdf/FdfWriter$Wrt;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    .line 328
    iget-object v4, p0, Lcom/itextpdf/text/pdf/FdfWriter$Wrt;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    const-string v5, "\n%%EOF\n"

    invoke-static {v5}, Lcom/itextpdf/text/pdf/FdfWriter$Wrt;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write([B)V

    .line 329
    iget-object v4, p0, Lcom/itextpdf/text/pdf/FdfWriter$Wrt;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->close()V

    .line 330
    return-void
.end method
