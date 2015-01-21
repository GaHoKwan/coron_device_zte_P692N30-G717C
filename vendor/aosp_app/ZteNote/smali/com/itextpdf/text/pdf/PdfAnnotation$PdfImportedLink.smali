.class public Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;
.super Ljava/lang/Object;
.source "PdfAnnotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PdfImportedLink"
.end annotation


# instance fields
.field destination:Lcom/itextpdf/text/pdf/PdfArray;

.field llx:F

.field lly:F

.field newPage:I

.field parameters:Ljava/util/HashMap;
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

.field urx:F

.field ury:F


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 5
    .parameter "annotation"

    .prologue
    const/4 v4, 0x0

    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 834
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->parameters:Ljava/util/HashMap;

    .line 835
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->destination:Lcom/itextpdf/text/pdf/PdfArray;

    .line 836
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->newPage:I

    .line 839
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->parameters:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/itextpdf/text/pdf/PdfDictionary;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 841
    :try_start_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->parameters:Ljava/util/HashMap;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->DEST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfArray;

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->destination:Lcom/itextpdf/text/pdf/PdfArray;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->destination:Lcom/itextpdf/text/pdf/PdfArray;

    if-eqz v2, :cond_0

    .line 846
    new-instance v2, Lcom/itextpdf/text/pdf/PdfArray;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->destination:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfArray;)V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->destination:Lcom/itextpdf/text/pdf/PdfArray;

    .line 848
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->parameters:Ljava/util/HashMap;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfArray;

    .line 849
    .local v1, rc:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->llx:F

    .line 850
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->lly:F

    .line 851
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->urx:F

    .line 852
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->ury:F

    .line 853
    return-void

    .line 842
    .end local v1           #rc:Lcom/itextpdf/text/pdf/PdfArray;
    :catch_0
    move-exception v0

    .line 843
    .local v0, ex:Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "you.have.to.consolidate.the.named.destinations.of.your.reader"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public createAnnotation(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfAnnotation;
    .locals 7
    .parameter "writer"

    .prologue
    .line 904
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    new-instance v2, Lcom/itextpdf/text/Rectangle;

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->llx:F

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->lly:F

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->urx:F

    iget v6, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->ury:F

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    invoke-direct {v0, p1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)V

    .line 905
    .local v0, annotation:Lcom/itextpdf/text/pdf/PdfAnnotation;
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->newPage:I

    if-eqz v2, :cond_0

    .line 906
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->newPage:I

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageReference(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    .line 907
    .local v1, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->destination:Lcom/itextpdf/text/pdf/PdfArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/itextpdf/text/pdf/PdfArray;->set(ILcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 909
    .end local v1           #ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->destination:Lcom/itextpdf/text/pdf/PdfArray;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DEST:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->destination:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 910
    :cond_1
    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->hashMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->parameters:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 911
    return-object v0
.end method

.method public getDestinationPage()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 860
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->isInternal()Z

    move-result v6

    if-nez v6, :cond_1

    move v0, v5

    .line 870
    :cond_0
    return v0

    .line 864
    :cond_1
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->destination:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v6, v5}, Lcom/itextpdf/text/pdf/PdfArray;->getAsIndirectObject(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    .local v4, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    move-object v2, v4

    .line 866
    check-cast v2, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 867
    .local v2, pr:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v3

    .line 868
    .local v3, r:Lcom/itextpdf/text/pdf/PdfReader;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v6

    if-gt v0, v6, :cond_3

    .line 869
    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v1

    .line 870
    .local v1, pp:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getGeneration()I

    move-result v6

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getGeneration()I

    move-result v7

    if-ne v6, v7, :cond_2

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v6

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 868
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 872
    .end local v1           #pp:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "page.not.found"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v7, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public isInternal()Z
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->destination:Lcom/itextpdf/text/pdf/PdfArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDestinationPage(I)V
    .locals 3
    .parameter "newPage"

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->isInternal()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot.change.destination.of.external.link"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_0
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->newPage:I

    .line 878
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 921
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Imported link: location ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 922
    .local v0, buf:Ljava/lang/StringBuffer;
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->llx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 923
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 924
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->lly:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 925
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 926
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->urx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 927
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 928
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->ury:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 929
    const-string v1, "] destination "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 930
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->destination:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 931
    const-string v1, " parameters "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 932
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 933
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public transformDestination(FFFFFF)V
    .locals 8
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 881
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->isInternal()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "cannot.change.destination.of.external.link"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 882
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->destination:Lcom/itextpdf/text/pdf/PdfArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->XYZ:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 883
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->destination:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v0

    .line 884
    .local v0, x:F
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->destination:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v4, v7}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v2

    .line 885
    .local v2, y:F
    mul-float v4, v0, p1

    mul-float v5, v2, p3

    add-float/2addr v4, v5

    add-float v1, v4, p5

    .line 886
    .local v1, xx:F
    mul-float v4, v0, p2

    mul-float v5, v2, p4

    add-float/2addr v4, v5

    add-float v3, v4, p6

    .line 887
    .local v3, yy:F
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->destination:Lcom/itextpdf/text/pdf/PdfArray;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v5, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v4, v6, v5}, Lcom/itextpdf/text/pdf/PdfArray;->set(ILcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 888
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->destination:Lcom/itextpdf/text/pdf/PdfArray;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v5, v3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v4, v7, v5}, Lcom/itextpdf/text/pdf/PdfArray;->set(ILcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 890
    .end local v0           #x:F
    .end local v1           #xx:F
    .end local v2           #y:F
    .end local v3           #yy:F
    :cond_1
    return-void
.end method

.method public transformRect(FFFFFF)V
    .locals 4
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"

    .prologue
    .line 893
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->llx:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->lly:F

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    add-float v0, v2, p5

    .line 894
    .local v0, x:F
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->llx:F

    mul-float/2addr v2, p2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->lly:F

    mul-float/2addr v3, p4

    add-float/2addr v2, v3

    add-float v1, v2, p6

    .line 895
    .local v1, y:F
    iput v0, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->llx:F

    .line 896
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->lly:F

    .line 897
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->urx:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->ury:F

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    add-float v0, v2, p5

    .line 898
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->urx:F

    mul-float/2addr v2, p2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->ury:F

    mul-float/2addr v3, p4

    add-float/2addr v2, v3

    add-float v1, v2, p6

    .line 899
    iput v0, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->urx:F

    .line 900
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;->ury:F

    .line 901
    return-void
.end method
