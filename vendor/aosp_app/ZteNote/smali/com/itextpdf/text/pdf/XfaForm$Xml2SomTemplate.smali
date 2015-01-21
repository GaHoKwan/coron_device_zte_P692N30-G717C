.class public Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;
.super Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;
.source "XfaForm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/XfaForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Xml2SomTemplate"
.end annotation


# instance fields
.field private dynamicForm:Z

.field private templateLevel:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 2
    .parameter "n"

    .prologue
    const/4 v1, 0x0

    .line 931
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;-><init>()V

    .line 932
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->order:Ljava/util/ArrayList;

    .line 933
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->name2Node:Ljava/util/HashMap;

    .line 934
    new-instance v0, Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    .line 935
    iput v1, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->anform:I

    .line 936
    iput v1, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->templateLevel:I

    .line 937
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->inverseSearch:Ljava/util/HashMap;

    .line 938
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->processTemplate(Lorg/w3c/dom/Node;Ljava/util/HashMap;)V

    .line 939
    return-void
.end method

.method private processTemplate(Lorg/w3c/dom/Node;Ljava/util/HashMap;)V
    .locals 17
    .parameter "n"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 972
    .local p2, ff:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p2, :cond_0

    .line 973
    new-instance p2, Ljava/util/HashMap;

    .end local p2           #ff:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct/range {p2 .. p2}, Ljava/util/HashMap;-><init>()V

    .line 974
    .restart local p2       #ff:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 975
    .local v12, ss:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    .line 976
    .local v8, n2:Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v8, :cond_e

    .line 977
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 978
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v11

    .line 979
    .local v11, s:Ljava/lang/String;
    const-string v14, "subform"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 980
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    const-string v15, "name"

    invoke-interface {v14, v15}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 981
    .local v9, name:Lorg/w3c/dom/Node;
    const-string v10, "#subform"

    .line 982
    .local v10, nn:Ljava/lang/String;
    const/4 v3, 0x1

    .line 983
    .local v3, annon:Z
    if-eqz v9, :cond_1

    .line 984
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->escapeSom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 985
    const/4 v3, 0x0

    .line 988
    :cond_1
    if-eqz v3, :cond_3

    .line 989
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->anform:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 990
    .local v4, i:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->anform:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->anform:I

    .line 1000
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->templateLevel:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->templateLevel:I

    .line 1002
    if-eqz v3, :cond_5

    .line 1003
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v1}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->processTemplate(Lorg/w3c/dom/Node;Ljava/util/HashMap;)V

    .line 1006
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->templateLevel:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->templateLevel:I

    .line 1007
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->pop()Ljava/lang/Object;

    .line 1044
    .end local v3           #annon:Z
    .end local v4           #i:Ljava/lang/Integer;
    .end local v9           #name:Lorg/w3c/dom/Node;
    .end local v10           #nn:Ljava/lang/String;
    .end local v11           #s:Ljava/lang/String;
    :cond_2
    :goto_3
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v8

    goto/16 :goto_0

    .line 993
    .restart local v3       #annon:Z
    .restart local v9       #name:Lorg/w3c/dom/Node;
    .restart local v10       #nn:Ljava/lang/String;
    .restart local v11       #s:Ljava/lang/String;
    :cond_3
    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 994
    .restart local v4       #i:Ljava/lang/Integer;
    if-nez v4, :cond_4

    .line 995
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 998
    :goto_4
    invoke-virtual {v12, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 997
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_4

    .line 1005
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->processTemplate(Lorg/w3c/dom/Node;Ljava/util/HashMap;)V

    goto :goto_2

    .line 1009
    .end local v3           #annon:Z
    .end local v4           #i:Ljava/lang/Integer;
    .end local v9           #name:Lorg/w3c/dom/Node;
    .end local v10           #nn:Ljava/lang/String;
    :cond_6
    const-string v14, "field"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "exclGroup"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1010
    :cond_7
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    const-string v15, "name"

    invoke-interface {v14, v15}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 1011
    .restart local v9       #name:Lorg/w3c/dom/Node;
    if-eqz v9, :cond_2

    .line 1012
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->escapeSom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1013
    .restart local v10       #nn:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1014
    .restart local v4       #i:Ljava/lang/Integer;
    if-nez v4, :cond_8

    .line 1015
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1018
    :goto_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->printStack()Ljava/lang/String;

    move-result-object v13

    .line 1021
    .local v13, unstack:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->order:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->inverseSearchAdd(Ljava/lang/String;)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->name2Node:Ljava/util/HashMap;

    invoke-virtual {v14, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->pop()Ljava/lang/Object;

    goto/16 :goto_3

    .line 1017
    .end local v13           #unstack:Ljava/lang/String;
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_5

    .line 1027
    .end local v4           #i:Ljava/lang/Integer;
    .end local v9           #name:Lorg/w3c/dom/Node;
    .end local v10           #nn:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->dynamicForm:Z

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->templateLevel:I

    if-lez v14, :cond_2

    const-string v14, "occur"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1028
    const/4 v5, 0x1

    .line 1029
    .local v5, initial:I
    const/4 v7, 0x1

    .line 1030
    .local v7, min:I
    const/4 v6, 0x1

    .line 1031
    .local v6, max:I
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    const-string v15, "initial"

    invoke-interface {v14, v15}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1032
    .local v2, a:Lorg/w3c/dom/Node;
    if-eqz v2, :cond_a

    .line 1033
    :try_start_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    .line 1034
    :cond_a
    :goto_6
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    const-string v15, "min"

    invoke-interface {v14, v15}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1035
    if-eqz v2, :cond_b

    .line 1036
    :try_start_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 1037
    :cond_b
    :goto_7
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    const-string v15, "max"

    invoke-interface {v14, v15}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1038
    if-eqz v2, :cond_c

    .line 1039
    :try_start_2
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    .line 1040
    :cond_c
    :goto_8
    if-ne v5, v7, :cond_d

    if-eq v7, v6, :cond_2

    .line 1041
    :cond_d
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->dynamicForm:Z

    goto/16 :goto_3

    .line 1046
    .end local v2           #a:Lorg/w3c/dom/Node;
    .end local v5           #initial:I
    .end local v6           #max:I
    .end local v7           #min:I
    .end local v11           #s:Ljava/lang/String;
    :cond_e
    return-void

    .line 1039
    .restart local v2       #a:Lorg/w3c/dom/Node;
    .restart local v5       #initial:I
    .restart local v6       #max:I
    .restart local v7       #min:I
    .restart local v11       #s:Ljava/lang/String;
    :catch_0
    move-exception v14

    goto :goto_8

    .line 1036
    :catch_1
    move-exception v14

    goto :goto_7

    .line 1033
    :catch_2
    move-exception v14

    goto :goto_6
.end method


# virtual methods
.method public getFieldType(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "s"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 947
    iget-object v4, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->name2Node:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 948
    .local v0, n:Lorg/w3c/dom/Node;
    if-nez v0, :cond_1

    .line 968
    :cond_0
    :goto_0
    return-object v3

    .line 950
    :cond_1
    const-string v4, "exclGroup"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 951
    const-string v3, "exclGroup"

    goto :goto_0

    .line 952
    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 953
    .local v2, ui:Lorg/w3c/dom/Node;
    :goto_1
    if-eqz v2, :cond_3

    .line 954
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v6, :cond_5

    const-string v4, "ui"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 959
    :cond_3
    if-eqz v2, :cond_0

    .line 961
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 962
    .local v1, type:Lorg/w3c/dom/Node;
    :goto_2
    if-eqz v1, :cond_0

    .line 963
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v6, :cond_6

    const-string v4, "extras"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "picture"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 964
    :cond_4
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 957
    .end local v1           #type:Lorg/w3c/dom/Node;
    :cond_5
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_1

    .line 966
    .restart local v1       #type:Lorg/w3c/dom/Node;
    :cond_6
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_2
.end method

.method public isDynamicForm()Z
    .locals 1

    .prologue
    .line 1055
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->dynamicForm:Z

    return v0
.end method

.method public setDynamicForm(Z)V
    .locals 0
    .parameter "dynamicForm"

    .prologue
    .line 1063
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->dynamicForm:Z

    .line 1064
    return-void
.end method
