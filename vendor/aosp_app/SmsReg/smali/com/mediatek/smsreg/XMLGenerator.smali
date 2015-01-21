.class Lcom/mediatek/smsreg/XMLGenerator;
.super Ljava/lang/Object;
.source "XMLgenerator.java"

# interfaces
.implements Lcom/mediatek/smsreg/ConfigInfoGenerator;


# static fields
.field private static final TAG:Ljava/lang/String; = "SmsReg/XMLGenerator"

.field private static sXmlGenerator:Lcom/mediatek/smsreg/ConfigInfoGenerator;


# instance fields
.field private mDom:Lorg/w3c/dom/Document;

.field private mManufacturerName:Ljava/lang/String;

.field private mNetworkNumber:[Ljava/lang/String;

.field private mOperatorName:Ljava/lang/String;

.field private mSmsInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/smsreg/SmsInfoUnit;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsNumber:Ljava/lang/String;

.field private mSmsPort:Ljava/lang/String;

.field private mSrcPort:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/smsreg/XMLGenerator;->sXmlGenerator:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mDom:Lorg/w3c/dom/Document;

    .line 79
    iput-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mSmsInfoList:Ljava/util/List;

    .line 80
    iput-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mOperatorName:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mManufacturerName:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mSmsNumber:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mSmsPort:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mSrcPort:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mNetworkNumber:[Ljava/lang/String;

    .line 102
    invoke-virtual {p0, p1}, Lcom/mediatek/smsreg/XMLGenerator;->parse(Ljava/lang/String;)Z

    .line 103
    invoke-virtual {p0}, Lcom/mediatek/smsreg/XMLGenerator;->getOperatorName()Ljava/lang/String;

    .line 104
    return-void
.end method

.method static getInstance(Ljava/lang/String;)Lcom/mediatek/smsreg/ConfigInfoGenerator;
    .locals 4
    .parameter "configName"

    .prologue
    .line 89
    sget-object v1, Lcom/mediatek/smsreg/XMLGenerator;->sXmlGenerator:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    if-nez v1, :cond_0

    .line 90
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, smsRegConfig:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    const-string v1, "SmsReg/XMLGenerator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create XMLGenerator failed! config file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not exist!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v0           #smsRegConfig:Ljava/io/File;
    :cond_0
    :goto_0
    sget-object v1, Lcom/mediatek/smsreg/XMLGenerator;->sXmlGenerator:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    return-object v1

    .line 95
    .restart local v0       #smsRegConfig:Ljava/io/File;
    :cond_1
    new-instance v1, Lcom/mediatek/smsreg/XMLGenerator;

    invoke-direct {v1, p0}, Lcom/mediatek/smsreg/XMLGenerator;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/mediatek/smsreg/XMLGenerator;->sXmlGenerator:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    goto :goto_0
.end method

.method private getValArrayFromDom(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 11
    .parameter "node"
    .parameter "desNodeName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, strArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x3

    .line 153
    if-nez p1, :cond_2

    .line 154
    iget-object v7, p0, Lcom/mediatek/smsreg/XMLGenerator;->mDom:Lorg/w3c/dom/Document;

    const-string v8, "operator"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 155
    .local v2, nodeList:Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_1

    .line 156
    const-string v7, "SmsReg/XMLGenerator"

    const-string v8, "Node <operator> is not exist in the xml file."

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v2           #nodeList:Lorg/w3c/dom/NodeList;
    :cond_0
    :goto_0
    return-void

    .line 159
    .restart local v2       #nodeList:Lorg/w3c/dom/NodeList;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 160
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    const-string v8, "xml:id"

    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/smsreg/XMLGenerator;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 162
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    .line 168
    .end local v1           #i:I
    .end local v2           #nodeList:Lorg/w3c/dom/NodeList;
    :cond_2
    if-nez p1, :cond_4

    .line 169
    const-string v7, "SmsReg/XMLGenerator"

    const-string v8, "Node to read is null"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    .restart local v1       #i:I
    .restart local v2       #nodeList:Lorg/w3c/dom/NodeList;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    .end local v1           #i:I
    .end local v2           #nodeList:Lorg/w3c/dom/NodeList;
    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-ne v7, v10, :cond_5

    .line 174
    const-string v7, "SmsReg/XMLGenerator"

    const-string v8, "Node to read is a leaf."

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_5
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, nodeName:Ljava/lang/String;
    const-string v7, "SmsReg/XMLGenerator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Node to read: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 180
    :cond_6
    :goto_2
    if-eqz p1, :cond_0

    .line 181
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    .line 182
    .local v5, siblingNode:Lorg/w3c/dom/Node;
    :cond_7
    :goto_3
    if-eqz v5, :cond_b

    .line 183
    const-string v7, "SmsReg/XMLGenerator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sibling node: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v7, v10, :cond_8

    .line 185
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    if-nez v7, :cond_9

    .line 186
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    const-string v7, "SmsReg/XMLGenerator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found NodeValue: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_8
    :goto_4
    :try_start_0
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    .line 201
    if-eqz v5, :cond_7

    .line 202
    const-string v7, "SmsReg/XMLGenerator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "siblingNode NodeName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v5, 0x0

    .line 208
    goto :goto_3

    .line 191
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_9
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, temp:Ljava/lang/String;
    if-eqz v6, :cond_a

    .line 194
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_a
    const-string v7, "SmsReg/XMLGenerator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found NodeValue: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 211
    .end local v6           #temp:Ljava/lang/String;
    :cond_b
    :try_start_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    .line 212
    if-eqz p1, :cond_6

    .line 213
    const-string v7, "SmsReg/XMLGenerator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "node NodeName:-- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 215
    :catch_1
    move-exception v0

    .line 216
    .restart local v0       #e:Ljava/lang/IndexOutOfBoundsException;
    const/4 p1, 0x0

    goto/16 :goto_2

    .line 221
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v5           #siblingNode:Lorg/w3c/dom/Node;
    :cond_c
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 222
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-direct {p0, v7, p2, p3}, Lcom/mediatek/smsreg/XMLGenerator;->getValArrayFromDom(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 224
    :cond_d
    const/4 v4, 0x0

    .line 226
    .local v4, sibling:Lorg/w3c/dom/Node;
    :try_start_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 230
    :goto_5
    if-eqz v4, :cond_0

    .line 231
    invoke-direct {p0, v4, p2, p3}, Lcom/mediatek/smsreg/XMLGenerator;->getValArrayFromDom(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 227
    :catch_2
    move-exception v0

    .line 228
    .restart local v0       #e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v4, 0x0

    goto :goto_5
.end method

.method private getValByTagName(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "valDom"
    .parameter "tagname"

    .prologue
    const/4 v3, 0x0

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, childnode:Lorg/w3c/dom/Node;
    if-nez p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-object v3

    .line 137
    :cond_1
    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 138
    .local v2, nodelist:Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 139
    .local v1, node:Lorg/w3c/dom/Node;
    if-eqz v1, :cond_0

    .line 140
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public getCustomizedStatus()Z
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mDom:Lorg/w3c/dom/Document;

    const-string v1, "customized"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/smsreg/XMLGenerator;->getValByTagName(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getManufacturerName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 242
    const-string v0, "dm"

    const-string v1, "Manufacturer"

    iget-object v2, p0, Lcom/mediatek/smsreg/XMLGenerator;->mDom:Lorg/w3c/dom/Document;

    const-string v3, "manufacturer"

    invoke-direct {p0, v2, v3}, Lcom/mediatek/smsreg/XMLGenerator;->getValByTagName(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mediatek/custom/CustomProperties;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mManufacturerName:Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mManufacturerName:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkNumber()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 284
    iget-object v1, p0, Lcom/mediatek/smsreg/XMLGenerator;->mNetworkNumber:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v0, valueArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const-string v2, "networkNumber"

    invoke-direct {p0, v1, v2, v0}, Lcom/mediatek/smsreg/XMLGenerator;->getValArrayFromDom(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 287
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/smsreg/XMLGenerator;->mNetworkNumber:[Ljava/lang/String;

    .line 288
    iget-object v1, p0, Lcom/mediatek/smsreg/XMLGenerator;->mNetworkNumber:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 290
    .end local v0           #valueArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Lcom/mediatek/smsreg/XMLGenerator;->mNetworkNumber:[Ljava/lang/String;

    return-object v1
.end method

.method public getOemName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mOperatorName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mDom:Lorg/w3c/dom/Document;

    const-string v1, "oemname"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/smsreg/XMLGenerator;->getValByTagName(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mOperatorName:Ljava/lang/String;

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mOperatorName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mDom:Lorg/w3c/dom/Document;

    const-string v1, "operatorcustomized"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/smsreg/XMLGenerator;->getValByTagName(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mOperatorName:Ljava/lang/String;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsInfoList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/smsreg/SmsInfoUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v4, p0, Lcom/mediatek/smsreg/XMLGenerator;->mSmsInfoList:Ljava/util/List;

    if-nez v4, :cond_3

    .line 295
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v3, valueArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    const-string v5, "segment"

    invoke-direct {p0, v4, v5, v3}, Lcom/mediatek/smsreg/XMLGenerator;->getValArrayFromDom(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 297
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 298
    .local v1, smsArray:[Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 299
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mediatek/smsreg/XMLGenerator;->mSmsInfoList:Ljava/util/List;

    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, i:I
    :goto_0
    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x1

    array-length v5, v1

    if-ge v4, v5, :cond_3

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x1

    aget-object v4, v1, v4

    if-eqz v4, :cond_3

    .line 302
    new-instance v2, Lcom/mediatek/smsreg/SmsInfoUnit;

    invoke-direct {v2}, Lcom/mediatek/smsreg/SmsInfoUnit;-><init>()V

    .line 303
    .local v2, smsUnit:Lcom/mediatek/smsreg/SmsInfoUnit;
    mul-int/lit8 v4, v0, 0x3

    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 304
    mul-int/lit8 v4, v0, 0x3

    aget-object v4, v1, v4

    invoke-virtual {v2, v4}, Lcom/mediatek/smsreg/SmsInfoUnit;->setPrefix(Ljava/lang/String;)V

    .line 306
    :cond_0
    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x1

    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 307
    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v2, v4}, Lcom/mediatek/smsreg/SmsInfoUnit;->setContent(Ljava/lang/String;)V

    .line 309
    :cond_1
    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x2

    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 310
    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v2, v4}, Lcom/mediatek/smsreg/SmsInfoUnit;->setPostfix(Ljava/lang/String;)V

    .line 312
    :cond_2
    iget-object v4, p0, Lcom/mediatek/smsreg/XMLGenerator;->mSmsInfoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    .end local v0           #i:I
    .end local v1           #smsArray:[Ljava/lang/String;
    .end local v2           #smsUnit:Lcom/mediatek/smsreg/SmsInfoUnit;
    .end local v3           #valueArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v4, p0, Lcom/mediatek/smsreg/XMLGenerator;->mSmsInfoList:Ljava/util/List;

    return-object v4
.end method

.method public getSmsNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mSmsNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mDom:Lorg/w3c/dom/Document;

    const-string v1, "smsnumber"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/smsreg/XMLGenerator;->getValByTagName(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mSmsNumber:Ljava/lang/String;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mSmsNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsPort()Ljava/lang/Short;
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mSmsPort:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mDom:Lorg/w3c/dom/Document;

    const-string v1, "smsport"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/smsreg/XMLGenerator;->getValByTagName(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mSmsPort:Ljava/lang/String;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mSmsPort:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public getSrcPort()Ljava/lang/Short;
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mSrcPort:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mDom:Lorg/w3c/dom/Document;

    const-string v1, "srcport"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/smsreg/XMLGenerator;->getValByTagName(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mSrcPort:Ljava/lang/String;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/mediatek/smsreg/XMLGenerator;->mSrcPort:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method parse(Ljava/lang/String;)Z
    .locals 8
    .parameter "filename"

    .prologue
    const/4 v4, 0x0

    .line 107
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 110
    .local v3, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 111
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, configFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 113
    const-string v5, "SmsReg/XMLGenerator"

    const-string v6, "config file is not exist!"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/smsreg/XMLGenerator;->mDom:Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 129
    const/4 v4, 0x1

    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #configFile:Ljava/io/File;
    :goto_0
    return v4

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, e:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v5, "SmsReg/XMLGenerator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create document builder failed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v2           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v2

    .line 121
    .local v2, e:Lorg/xml/sax/SAXException;
    const-string v5, "SmsReg/XMLGenerator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create mDom failed! SAXException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 124
    .end local v2           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v2

    .line 125
    .local v2, e:Ljava/io/IOException;
    const-string v5, "SmsReg/XMLGenerator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create mDom failed! IOException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
