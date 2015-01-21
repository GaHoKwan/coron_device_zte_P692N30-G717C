.class public Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;
.super Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;
.source "XfaForm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/XfaForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Xml2SomDatasets"
.end annotation


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 773
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;-><init>()V

    .line 774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->order:Ljava/util/ArrayList;

    .line 775
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->name2Node:Ljava/util/HashMap;

    .line 776
    new-instance v0, Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    .line 777
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->anform:I

    .line 778
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->inverseSearch:Ljava/util/HashMap;

    .line 779
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->processDatasetsInternal(Lorg/w3c/dom/Node;)V

    .line 780
    return-void
.end method

.method private static hasChildren(Lorg/w3c/dom/Node;)Z
    .locals 8
    .parameter "n"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 827
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string v6, "http://www.xfa.org/schema/xfa-data/1.0/"

    const-string v7, "dataNode"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 828
    .local v1, dataNodeN:Lorg/w3c/dom/Node;
    if-eqz v1, :cond_2

    .line 829
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, dataNode:Ljava/lang/String;
    const-string v5, "dataGroup"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 844
    .end local v0           #dataNode:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 832
    .restart local v0       #dataNode:Ljava/lang/String;
    :cond_1
    const-string v5, "dataValue"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 833
    goto :goto_0

    .line 835
    .end local v0           #dataNode:Ljava/lang/String;
    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v5

    if-nez v5, :cond_3

    move v3, v4

    .line 836
    goto :goto_0

    .line 837
    :cond_3
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 838
    .local v2, n2:Lorg/w3c/dom/Node;
    :goto_1
    if-eqz v2, :cond_4

    .line 839
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v3, :cond_0

    .line 842
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_1

    :cond_4
    move v3, v4

    .line 844
    goto :goto_0
.end method

.method private processDatasetsInternal(Lorg/w3c/dom/Node;)V
    .locals 8
    .parameter "n"

    .prologue
    .line 848
    if-eqz p1, :cond_3

    .line 849
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 850
    .local v3, ss:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 851
    .local v1, n2:Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v1, :cond_3

    .line 852
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 853
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->escapeSom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 854
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 855
    .local v0, i:Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 856
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 859
    :goto_1
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    invoke-static {v1}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->hasChildren(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 861
    iget-object v5, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->processDatasetsInternal(Lorg/w3c/dom/Node;)V

    .line 863
    iget-object v5, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->pop()Ljava/lang/Object;

    .line 874
    .end local v0           #i:Ljava/lang/Integer;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    .line 858
    .restart local v0       #i:Ljava/lang/Integer;
    .restart local v2       #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 866
    :cond_2
    iget-object v5, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->printStack()Ljava/lang/String;

    move-result-object v4

    .line 868
    .local v4, unstack:Ljava/lang/String;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->order:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->inverseSearchAdd(Ljava/lang/String;)V

    .line 870
    iget-object v5, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->name2Node:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    iget-object v5, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->pop()Ljava/lang/Object;

    goto :goto_2

    .line 877
    .end local v0           #i:Ljava/lang/Integer;
    .end local v1           #n2:Lorg/w3c/dom/Node;
    .end local v2           #s:Ljava/lang/String;
    .end local v3           #ss:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4           #unstack:Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public insertNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 13
    .parameter "n"
    .parameter "shortName"

    .prologue
    const/4 v12, 0x1

    .line 789
    invoke-static {p2}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->splitParts(Ljava/lang/String;)Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    move-result-object v9

    .line 790
    .local v9, stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;,"Lcom/itextpdf/text/pdf/XfaForm$Stack2<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 791
    .local v1, doc:Lorg/w3c/dom/Document;
    const/4 v5, 0x0

    .line 792
    .local v5, n2:Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    .line 793
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    if-eq v10, v12, :cond_0

    .line 794
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    .line 795
    :cond_0
    const/4 v4, 0x0

    .local v4, k:I
    :goto_1
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->size()I

    move-result v10

    if-ge v4, v10, :cond_4

    .line 796
    invoke-virtual {v9, v4}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 797
    .local v7, part:Ljava/lang/String;
    const/16 v10, 0x5b

    invoke-virtual {v7, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 798
    .local v3, idx:I
    const/4 v10, 0x0

    invoke-virtual {v7, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 799
    .local v6, name:Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 800
    const/4 v2, -0x1

    .line 801
    .local v2, found:I
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_1

    .line 802
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    if-ne v10, v12, :cond_2

    .line 803
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->escapeSom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 804
    .local v8, s:Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 805
    add-int/lit8 v2, v2, 0x1

    .line 806
    if-ne v2, v3, :cond_2

    .line 811
    .end local v8           #s:Ljava/lang/String;
    :cond_1
    :goto_3
    if-ge v2, v3, :cond_3

    .line 812
    const/4 v10, 0x0

    invoke-interface {v1, v10, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 813
    invoke-interface {p1, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 814
    const-string v10, "http://www.xfa.org/schema/xfa-data/1.0/"

    const-string v11, "dataNode"

    invoke-interface {v1, v10, v11}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 815
    .local v0, attr:Lorg/w3c/dom/Node;
    const-string v10, "dataGroup"

    invoke-interface {v0, v10}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 816
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    invoke-interface {v10, v0}, Lorg/w3c/dom/NamedNodeMap;->setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 811
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 801
    .end local v0           #attr:Lorg/w3c/dom/Node;
    :cond_2
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    goto :goto_2

    .line 818
    :cond_3
    move-object p1, v5

    .line 795
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 820
    .end local v2           #found:I
    .end local v3           #idx:I
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #part:Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->inverseSearch:Ljava/util/HashMap;

    invoke-static {v10, v9, p2}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->inverseSearchAdd(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/XfaForm$Stack2;Ljava/lang/String;)V

    .line 821
    iget-object v10, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->name2Node:Ljava/util/HashMap;

    invoke-virtual {v10, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    iget-object v10, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->order:Ljava/util/ArrayList;

    invoke-virtual {v10, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    return-object v5
.end method
