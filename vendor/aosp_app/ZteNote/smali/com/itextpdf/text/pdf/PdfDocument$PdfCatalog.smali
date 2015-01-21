.class Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PdfCatalog"
.end annotation


# instance fields
.field writer:Lcom/itextpdf/text/pdf/PdfWriter;


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 1
    .parameter "pages"
    .parameter "writer"

    .prologue
    .line 215
    sget-object v0, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->CATALOG:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 216
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 217
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PAGES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 218
    return-void
.end method


# virtual methods
.method addNames(Ljava/util/TreeMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter "writer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfDocument$Destination;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;",
            "Lcom/itextpdf/text/pdf/PdfWriter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, localDestinations:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDocument$Destination;>;"
    .local p2, documentLevelJS:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    .local p3, documentFileAttachment:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-virtual {p1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    :try_start_0
    new-instance v8, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v8}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 232
    .local v8, names:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {p1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 233
    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 234
    .local v1, ar:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 235
    .local v5, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDocument$Destination;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 236
    .local v7, name:Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfDocument$Destination;

    .line 237
    .local v2, dest:Lcom/itextpdf/text/pdf/PdfDocument$Destination;
    iget-object v11, v2, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->destination:Lcom/itextpdf/text/pdf/PdfDestination;

    if-eqz v11, :cond_2

    .line 239
    iget-object v9, v2, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 240
    .local v9, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    new-instance v11, Lcom/itextpdf/text/pdf/PdfString;

    const/4 v12, 0x0

    invoke-direct {v11, v7, v12}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 241
    invoke-virtual {v1, v9}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 259
    .end local v1           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #dest:Lcom/itextpdf/text/pdf/PdfDocument$Destination;
    .end local v5           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDocument$Destination;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #names:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v9           #ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :catch_0
    move-exception v4

    .line 260
    .local v4, e:Ljava/io/IOException;
    new-instance v11, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v11, v4}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v11

    .line 243
    .end local v4           #e:Ljava/io/IOException;
    .restart local v1       #ar:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v8       #names:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v11

    if-lez v11, :cond_4

    .line 244
    new-instance v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 245
    .local v3, dests:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->NAMES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v11, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 246
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->DESTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 249
    .end local v1           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v3           #dests:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    .line 250
    move-object/from16 v0, p4

    invoke-static {p2, v0}, Lcom/itextpdf/text/pdf/PdfNameTree;->writeTree(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v10

    .line 251
    .local v10, tree:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->JAVASCRIPT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 253
    .end local v10           #tree:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_5
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    .line 254
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->EMBEDDEDFILES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static/range {p3 .. p4}, Lcom/itextpdf/text/pdf/PdfNameTree;->writeTree(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 256
    :cond_6
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 257
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->NAMES:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method setAdditionalActions(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 3
    .parameter "actions"

    .prologue
    .line 279
    :try_start_0
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->AA:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method setOpenAction(Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 269
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->OPENACTION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 270
    return-void
.end method
