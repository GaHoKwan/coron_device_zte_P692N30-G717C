.class public Lcom/dolby/instoredemoapp/DlbAPMetadataParser;
.super Ljava/lang/Object;
.source "DlbAPMetadataParser.java"

# interfaces
.implements Lcom/dolby/instoredemoapp/IAPMetadataParser;


# static fields
.field private static final DIALOG_ENHANCER_TAG:Ljava/lang/String; = "dialog_enhancer"

.field private static final ID_ATTRIBUTE:Ljava/lang/String; = "id"

.field private static final INTELLIGENCE_EQ_TAG:Ljava/lang/String; = "intelligent_eq"

.field private static final ITEM_TAG:Ljava/lang/String; = "item"

.field private static final MASTER_CONTROL_TAG:Ljava/lang/String; = "master_control"

.field private static final METADATA_VERSION_TAG:Ljava/lang/String; = "format_version"

.field private static final PROFILE_CONTROL_TAG:Ljava/lang/String; = "profile_control"

.field private static final SURROUND_VIRTUALIZER_TAG:Ljava/lang/String; = "surround_virtualizer"

.field private static final TAG:Ljava/lang/String; = "DlbAPMetadataParser"

.field private static final TECH_INFO_TAG:Ljava/lang/String; = "technology_info"

.field private static final TEXTINFO_TAG:Ljava/lang/String; = "textinfo"

.field private static final TIMESTAMP_TAG:Ljava/lang/String; = "timestamp"

.field private static final VOLUME_LEVELER_TAG:Ljava/lang/String; = "volume_leveler"


# instance fields
.field private mAPItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolby/instoredemoapp/AutoPilotItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFormatVersion:Ljava/lang/String;

.field private mTechInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method private getAPItems(Lorg/w3c/dom/Element;)V
    .locals 21
    .parameter "root"

    .prologue
    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->mAPItemList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->mAPItemList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 123
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->mAPItemList:Ljava/util/ArrayList;

    .line 125
    :cond_0
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->mAPItemList:Ljava/util/ArrayList;

    .line 126
    const-string v18, "item"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 127
    .local v8, items:Lorg/w3c/dom/NodeList;
    const-string v18, "DlbAPMetadataParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "length = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_a

    .line 129
    new-instance v2, Lcom/dolby/instoredemoapp/AutoPilotItem;

    invoke-direct {v2}, Lcom/dolby/instoredemoapp/AutoPilotItem;-><init>()V

    .line 130
    .local v2, apitem:Lcom/dolby/instoredemoapp/AutoPilotItem;
    invoke-interface {v8, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    .line 131
    .local v12, node:Lorg/w3c/dom/Element;
    new-instance v7, Ljava/lang/Integer;

    const-string v18, "id"

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 132
    .local v7, itemid:Ljava/lang/Integer;
    const-string v18, "DlbAPMetadataParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "id = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/dolby/instoredemoapp/AutoPilotItem;->setId(I)V

    .line 134
    invoke-interface {v12}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 135
    .local v11, nl:Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, j:I
    :goto_1
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_9

    .line 136
    invoke-interface {v11, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 137
    .local v3, childnode:Lorg/w3c/dom/Node;
    invoke-interface {v12}, Lorg/w3c/dom/Element;->getNodeType()S

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 138
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "timestamp"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 139
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 140
    .local v16, timestamp:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/dolby/instoredemoapp/AutoPilotItem;->setTimeStamp(Ljava/lang/String;)V

    .line 135
    .end local v16           #timestamp:Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 141
    :cond_2
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "textinfo"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 142
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->getTextInfo(Lorg/w3c/dom/Node;)Lcom/dolby/instoredemoapp/TextInfo;

    move-result-object v15

    .line 143
    .local v15, textinfo:Lcom/dolby/instoredemoapp/TextInfo;
    invoke-virtual {v2, v15}, Lcom/dolby/instoredemoapp/AutoPilotItem;->setDisplayText(Lcom/dolby/instoredemoapp/TextInfo;)V

    goto :goto_2

    .line 144
    .end local v15           #textinfo:Lcom/dolby/instoredemoapp/TextInfo;
    :cond_3
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "master_control"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 145
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 146
    .local v10, master_control:Ljava/lang/String;
    invoke-virtual {v2, v10}, Lcom/dolby/instoredemoapp/AutoPilotItem;->setMasterControlValue(Ljava/lang/String;)V

    goto :goto_2

    .line 147
    .end local v10           #master_control:Ljava/lang/String;
    :cond_4
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "profile_control"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 148
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    .line 149
    .local v13, profile_control:Ljava/lang/String;
    invoke-virtual {v2, v13}, Lcom/dolby/instoredemoapp/AutoPilotItem;->setProfileControlValue(Ljava/lang/String;)V

    goto :goto_2

    .line 150
    .end local v13           #profile_control:Ljava/lang/String;
    :cond_5
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "surround_virtualizer"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 151
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 152
    .local v14, surround_virtualizer:Ljava/lang/String;
    invoke-virtual {v2, v14}, Lcom/dolby/instoredemoapp/AutoPilotItem;->setSurroundVirtualizerValue(Ljava/lang/String;)V

    goto :goto_2

    .line 153
    .end local v14           #surround_virtualizer:Ljava/lang/String;
    :cond_6
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "dialog_enhancer"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 154
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, dialog_enhancer:Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/dolby/instoredemoapp/AutoPilotItem;->setDialogEnhancerValue(Ljava/lang/String;)V

    goto :goto_2

    .line 156
    .end local v4           #dialog_enhancer:Ljava/lang/String;
    :cond_7
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "volume_leveler"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 157
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    .line 158
    .local v17, volume_leveler:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/dolby/instoredemoapp/AutoPilotItem;->setVolumeLevelerValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 159
    .end local v17           #volume_leveler:Ljava/lang/String;
    :cond_8
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "intelligent_eq"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 160
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, intelligent_eq:Ljava/lang/String;
    invoke-virtual {v2, v6}, Lcom/dolby/instoredemoapp/AutoPilotItem;->setIntelligentEqValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 165
    .end local v3           #childnode:Lorg/w3c/dom/Node;
    .end local v6           #intelligent_eq:Ljava/lang/String;
    :cond_9
    const-string v18, "DlbAPMetadataParser"

    invoke-virtual {v2}, Lcom/dolby/instoredemoapp/AutoPilotItem;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->mAPItemList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 168
    .end local v2           #apitem:Lcom/dolby/instoredemoapp/AutoPilotItem;
    .end local v7           #itemid:Ljava/lang/Integer;
    .end local v9           #j:I
    .end local v11           #nl:Lorg/w3c/dom/NodeList;
    .end local v12           #node:Lorg/w3c/dom/Element;
    :cond_a
    return-void
.end method

.method private getMetadataVersion(Lorg/w3c/dom/Element;)V
    .locals 5
    .parameter "root"

    .prologue
    .line 92
    const-string v2, "format_version"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 93
    .local v0, items:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 94
    .local v1, node:Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 95
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->mFormatVersion:Ljava/lang/String;

    .line 97
    :cond_0
    const-string v2, "DlbAPMetadataParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "format_version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->mFormatVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method private getTechInfo(Lorg/w3c/dom/Element;)V
    .locals 5
    .parameter "root"

    .prologue
    .line 83
    const-string v2, "technology_info"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 84
    .local v0, items:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 85
    .local v1, node:Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 86
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->mTechInfo:Ljava/lang/String;

    .line 88
    :cond_0
    const-string v2, "DlbAPMetadataParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "technology_info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->mTechInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method private getTextInfo(Lorg/w3c/dom/Node;)Lcom/dolby/instoredemoapp/TextInfo;
    .locals 6
    .parameter "node"

    .prologue
    .line 101
    new-instance v3, Lcom/dolby/instoredemoapp/TextInfo;

    invoke-direct {v3}, Lcom/dolby/instoredemoapp/TextInfo;-><init>()V

    .line 102
    .local v3, ti:Lcom/dolby/instoredemoapp/TextInfo;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 103
    .local v2, nl:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 104
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 105
    .local v0, childnode:Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 106
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/dolby/instoredemoapp/TextInfo;->text:Ljava/lang/String;

    .line 103
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "color"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 109
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/dolby/instoredemoapp/TextInfo;->textColor:Ljava/lang/String;

    goto :goto_1

    .line 110
    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "font"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 111
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/dolby/instoredemoapp/TextInfo;->textFont:Ljava/lang/String;

    goto :goto_1

    .line 112
    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "position"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/dolby/instoredemoapp/TextInfo;->textPos:Ljava/lang/String;

    goto :goto_1

    .line 117
    .end local v0           #childnode:Lorg/w3c/dom/Node;
    :cond_4
    return-object v3
.end method


# virtual methods
.method public getAutoPilotMetadata()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolby/instoredemoapp/AutoPilotItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->mAPItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFormatVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->mFormatVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTechInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->mTechInfo:Ljava/lang/String;

    return-object v0
.end method

.method public parseFile(Ljava/io/InputStream;)V
    .locals 8
    .parameter "apstream"

    .prologue
    .line 67
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 69
    .local v3, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 70
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 71
    .local v1, dom:Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    .line 72
    .local v4, root:Lorg/w3c/dom/Element;
    invoke-direct {p0, v4}, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->getTechInfo(Lorg/w3c/dom/Element;)V

    .line 73
    invoke-direct {p0, v4}, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->getMetadataVersion(Lorg/w3c/dom/Element;)V

    .line 74
    invoke-direct {p0, v4}, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->getAPItems(Lorg/w3c/dom/Element;)V

    .line 75
    const-string v5, "DlbAPMetadataParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAPItemList.length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/dolby/instoredemoapp/DlbAPMetadataParser;->mAPItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #dom:Lorg/w3c/dom/Document;
    .end local v4           #root:Lorg/w3c/dom/Element;
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v2

    .line 77
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    const-string v5, "DlbAPMetadataParser"

    const-string v6, "failed to parse the file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
