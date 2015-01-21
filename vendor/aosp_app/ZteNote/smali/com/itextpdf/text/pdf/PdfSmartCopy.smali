.class public Lcom/itextpdf/text/pdf/PdfSmartCopy;
.super Lcom/itextpdf/text/pdf/PdfCopy;
.source "PdfSmartCopy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;
    }
.end annotation


# instance fields
.field private streamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;",
            "Lcom/itextpdf/text/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/Document;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "document"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfCopy;-><init>(Lcom/itextpdf/text/Document;Ljava/io/OutputStream;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSmartCopy;->streamMap:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSmartCopy;->streamMap:Ljava/util/HashMap;

    .line 74
    return-void
.end method


# virtual methods
.method protected copyIndirect(Lcom/itextpdf/text/pdf/PRIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 11
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/pdf/BadPdfFormatException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 90
    .local v3, srcObj:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v4, 0x0

    .line 91
    .local v4, streamKey:Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;
    const/4 v8, 0x0

    .line 92
    .local v8, validStream:Z
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 93
    new-instance v4, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;

    .end local v4           #streamKey:Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;
    move-object v9, v3

    check-cast v9, Lcom/itextpdf/text/pdf/PRStream;

    invoke-direct {v4, v9}, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;-><init>(Lcom/itextpdf/text/pdf/PRStream;)V

    .line 94
    .restart local v4       #streamKey:Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;
    const/4 v8, 0x1

    .line 95
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSmartCopy;->streamMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 96
    .local v5, streamRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    if-eqz v5, :cond_2

    move-object v6, v5

    .line 136
    .end local v5           #streamRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_0
    :goto_0
    return-object v6

    .line 100
    :cond_1
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 101
    new-instance v4, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;

    .end local v4           #streamKey:Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;
    move-object v9, v3

    check-cast v9, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v4, v9}, Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;-><init>(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 102
    .restart local v4       #streamKey:Lcom/itextpdf/text/pdf/PdfSmartCopy$ByteStore;
    const/4 v8, 0x1

    .line 103
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSmartCopy;->streamMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 104
    .restart local v5       #streamRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    if-eqz v5, :cond_2

    move-object v6, v5

    .line 105
    goto :goto_0

    .line 110
    .end local v5           #streamRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_2
    new-instance v1, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;-><init>(Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    .line 111
    .local v1, key:Lcom/itextpdf/text/pdf/PdfCopy$RefKey;
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSmartCopy;->indirects:Ljava/util/HashMap;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;

    .line 112
    .local v0, iRef:Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;
    if-eqz v0, :cond_5

    .line 113
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;->getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v6

    .line 114
    .local v6, theRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;->getCopied()Z

    move-result v9

    if-nez v9, :cond_0

    .line 122
    :goto_1
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v3

    .line 123
    check-cast v9, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 124
    .local v7, type:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v7, :cond_3

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->PAGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v7}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 128
    .end local v7           #type:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;->setCopied()V

    .line 130
    if-eqz v8, :cond_4

    .line 131
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSmartCopy;->streamMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_4
    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfSmartCopy;->copyObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 135
    .local v2, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {p0, v2, v6}, Lcom/itextpdf/text/pdf/PdfSmartCopy;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    goto :goto_0

    .line 118
    .end local v2           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v6           #theRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_5
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSmartCopy;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v6

    .line 119
    .restart local v6       #theRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;

    .end local v0           #iRef:Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;
    invoke-direct {v0, v6}, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;-><init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 120
    .restart local v0       #iRef:Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfSmartCopy;->indirects:Ljava/util/HashMap;

    invoke-virtual {v9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
