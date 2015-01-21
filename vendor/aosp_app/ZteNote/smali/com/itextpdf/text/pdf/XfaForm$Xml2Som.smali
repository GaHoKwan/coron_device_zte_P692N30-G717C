.class public Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;
.super Ljava/lang/Object;
.source "XfaForm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/XfaForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Xml2Som"
.end annotation


# instance fields
.field protected anform:I

.field protected inverseSearch:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/XfaForm$InverseStore;",
            ">;"
        }
    .end annotation
.end field

.field protected name2Node:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field

.field protected order:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itextpdf/text/pdf/XfaForm$Stack2",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeSom(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    const/16 v4, 0x2e

    .line 541
    if-nez p0, :cond_1

    .line 542
    const-string p0, ""

    .line 555
    .end local p0
    .local v0, idx:I
    :cond_0
    :goto_0
    return-object p0

    .line 543
    .end local v0           #idx:I
    .restart local p0
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 544
    .restart local v0       #idx:I
    if-ltz v0, :cond_0

    .line 546
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 547
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 548
    .local v1, last:I
    :goto_1
    if-ltz v0, :cond_2

    .line 549
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 550
    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 551
    move v1, v0

    .line 552
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_1

    .line 554
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 555
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getShortName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    .line 598
    const-string v3, ".#subform["

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 599
    .local v0, idx:I
    if-gez v0, :cond_0

    .line 612
    .end local p0
    :goto_0
    return-object p0

    .line 601
    .restart local p0
    :cond_0
    const/4 v1, 0x0

    .line 602
    .local v1, last:I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 603
    .local v2, sb:Ljava/lang/StringBuffer;
    :goto_1
    if-ltz v0, :cond_2

    .line 604
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    const-string v3, "]"

    add-int/lit8 v4, v0, 0xa

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 606
    if-gez v0, :cond_1

    .line 607
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 608
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 609
    const-string v3, ".#subform["

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 611
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static inverseSearchAdd(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/XfaForm$Stack2;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter "unstack"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/XfaForm$InverseStore;",
            ">;",
            "Lcom/itextpdf/text/pdf/XfaForm$Stack2",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 630
    .local p0, inverseSearch:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/XfaForm$InverseStore;>;"
    .local p1, stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;,"Lcom/itextpdf/text/pdf/XfaForm$Stack2<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 631
    .local v2, last:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;

    .line 632
    .local v3, store:Lcom/itextpdf/text/pdf/XfaForm$InverseStore;
    if-nez v3, :cond_0

    .line 633
    new-instance v3, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;

    .end local v3           #store:Lcom/itextpdf/text/pdf/XfaForm$InverseStore;
    invoke-direct {v3}, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;-><init>()V

    .line 634
    .restart local v3       #store:Lcom/itextpdf/text/pdf/XfaForm$InverseStore;
    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x2

    .local v1, k:I
    :goto_0
    if-ltz v1, :cond_2

    .line 637
    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #last:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 639
    .restart local v2       #last:Ljava/lang/String;
    iget-object v5, v3, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;->part:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 640
    .local v0, idx:I
    if-gez v0, :cond_1

    .line 641
    iget-object v5, v3, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;->part:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    new-instance v4, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;-><init>()V

    .line 643
    .local v4, store2:Lcom/itextpdf/text/pdf/XfaForm$InverseStore;
    iget-object v5, v3, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;->follow:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    :goto_1
    move-object v3, v4

    .line 636
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 646
    .end local v4           #store2:Lcom/itextpdf/text/pdf/XfaForm$InverseStore;
    :cond_1
    iget-object v5, v3, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;->follow:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;

    .restart local v4       #store2:Lcom/itextpdf/text/pdf/XfaForm$InverseStore;
    goto :goto_1

    .line 649
    .end local v0           #idx:I
    .end local v4           #store2:Lcom/itextpdf/text/pdf/XfaForm$InverseStore;
    :cond_2
    iget-object v5, v3, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;->part:Ljava/util/ArrayList;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    iget-object v5, v3, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;->follow:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    return-void
.end method

.method public static splitParts(Ljava/lang/String;)Lcom/itextpdf/text/pdf/XfaForm$Stack2;
    .locals 6
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/itextpdf/text/pdf/XfaForm$Stack2",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 683
    :goto_0
    const-string v4, "."

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 684
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 685
    :cond_0
    new-instance v2, Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;-><init>()V

    .line 686
    .local v2, parts:Lcom/itextpdf/text/pdf/XfaForm$Stack2;,"Lcom/itextpdf/text/pdf/XfaForm$Stack2<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 687
    .local v0, last:I
    const/4 v3, 0x0

    .line 690
    .local v3, pos:I
    :goto_1
    move v3, v0

    .line 692
    :goto_2
    const/16 v4, 0x2e

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 693
    if-gez v3, :cond_3

    .line 700
    :cond_1
    if-gez v3, :cond_4

    .line 708
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 709
    .local v1, part:Ljava/lang/String;
    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 710
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[0]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 711
    :cond_2
    invoke-virtual {v2, v1}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->add(Ljava/lang/Object;)Z

    .line 712
    return-object v2

    .line 695
    .end local v1           #part:Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_1

    .line 696
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 702
    :cond_4
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 703
    .restart local v1       #part:Ljava/lang/String;
    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 704
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[0]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 705
    :cond_5
    invoke-virtual {v2, v1}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->add(Ljava/lang/Object;)Z

    .line 706
    add-int/lit8 v0, v3, 0x1

    goto :goto_1
.end method

.method public static unescapeSom(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    const/16 v4, 0x5c

    .line 564
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 565
    .local v0, idx:I
    if-gez v0, :cond_0

    .line 575
    .end local p0
    :goto_0
    return-object p0

    .line 567
    .restart local p0
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 568
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 569
    .local v1, last:I
    :goto_1
    if-ltz v0, :cond_1

    .line 570
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 571
    add-int/lit8 v1, v0, 0x1

    .line 572
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_1

    .line 574
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public getInverseSearch()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/XfaForm$InverseStore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 752
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;->inverseSearch:Ljava/util/HashMap;

    return-object v0
.end method

.method public getName2Node()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 736
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;->name2Node:Ljava/util/HashMap;

    return-object v0
.end method

.method public getOrder()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 720
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;->order:Ljava/util/ArrayList;

    return-object v0
.end method

.method public inverseSearchAdd(Ljava/lang/String;)V
    .locals 2
    .parameter "unstack"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;->inverseSearch:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    invoke-static {v0, v1, p1}, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;->inverseSearchAdd(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/XfaForm$Stack2;Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method public inverseSearchGlobal(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 659
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-object v4

    .line 661
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;->inverseSearch:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;

    .line 662
    .local v3, store:Lcom/itextpdf/text/pdf/XfaForm$InverseStore;
    if-eqz v3, :cond_0

    .line 664
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x2

    .local v1, k:I
    :goto_1
    if-ltz v1, :cond_3

    .line 665
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 666
    .local v2, part:Ljava/lang/String;
    iget-object v5, v3, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;->part:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 667
    .local v0, idx:I
    if-gez v0, :cond_2

    .line 668
    invoke-virtual {v3, v2}, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;->isSimilar(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 670
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;->getDefaultName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 672
    :cond_2
    iget-object v5, v3, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;->follow:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #store:Lcom/itextpdf/text/pdf/XfaForm$InverseStore;
    check-cast v3, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;

    .line 664
    .restart local v3       #store:Lcom/itextpdf/text/pdf/XfaForm$InverseStore;
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 674
    .end local v0           #idx:I
    .end local v2           #part:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/XfaForm$InverseStore;->getDefaultName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method protected printStack()Ljava/lang/String;
    .locals 4

    .prologue
    .line 584
    iget-object v2, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->empty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 585
    const-string v2, ""

    .line 589
    :goto_0
    return-object v2

    .line 586
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 587
    .local v1, s:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, k:I
    :goto_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 588
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 587
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 589
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public setInverseSearch(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/XfaForm$InverseStore;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 760
    .local p1, inverseSearch:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/XfaForm$InverseStore;>;"
    iput-object p1, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;->inverseSearch:Ljava/util/HashMap;

    .line 761
    return-void
.end method

.method public setName2Node(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/w3c/dom/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 744
    .local p1, name2Node:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/w3c/dom/Node;>;"
    iput-object p1, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;->name2Node:Ljava/util/HashMap;

    .line 745
    return-void
.end method

.method public setOrder(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 728
    .local p1, order:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;->order:Ljava/util/ArrayList;

    .line 729
    return-void
.end method
