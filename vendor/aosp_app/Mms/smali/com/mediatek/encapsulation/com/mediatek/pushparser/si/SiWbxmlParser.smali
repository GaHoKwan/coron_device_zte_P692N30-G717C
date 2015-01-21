.class public Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiWbxmlParser;
.super Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;
.source "SiWbxmlParser.java"


# static fields
.field public static final ATTR_START_TABLE:[Ljava/lang/String;

.field public static final ATTR_VALUE_TABLE:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field public static final TAG_TABLE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    const-string v0, "PUSH"

    sput-object v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiWbxmlParser;->TAG:Ljava/lang/String;

    .line 129
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "si"

    aput-object v1, v0, v3

    const-string v1, "indication"

    aput-object v1, v0, v4

    const-string v1, "info"

    aput-object v1, v0, v5

    const-string v1, "item"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiWbxmlParser;->TAG_TABLE:[Ljava/lang/String;

    .line 135
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "action=signal-none"

    aput-object v1, v0, v3

    const-string v1, "action=signal-low"

    aput-object v1, v0, v4

    const-string v1, "action=signal-medium"

    aput-object v1, v0, v5

    const-string v1, "action=signal-high"

    aput-object v1, v0, v6

    const-string v1, "action=delete"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "href"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "href=http://"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "href=http://www."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "href=https://"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "href=https://www."

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "si-expires"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "si-id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "class"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiWbxmlParser;->ATTR_START_TABLE:[Ljava/lang/String;

    .line 151
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, ".com/"

    aput-object v1, v0, v3

    const-string v1, ".edu/"

    aput-object v1, v0, v4

    const-string v1, ".net/"

    aput-object v1, v0, v5

    const-string v1, ".org/"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiWbxmlParser;->ATTR_VALUE_TABLE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "mimetype"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Ljava/io/InputStream;)Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiWbxmlParser;->parse(Ljava/io/InputStream;)Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .locals 12
    .parameter "input"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 59
    const/4 v5, 0x0

    .line 61
    .local v5, siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    :try_start_0
    new-instance v4, Lorg/kxml2/wap/WbxmlParser;

    invoke-direct {v4}, Lorg/kxml2/wap/WbxmlParser;-><init>()V

    .line 62
    .local v4, parser:Lorg/kxml2/wap/WbxmlParser;
    const/4 v9, 0x0

    sget-object v10, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiWbxmlParser;->TAG_TABLE:[Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 63
    const/4 v9, 0x0

    sget-object v10, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiWbxmlParser;->ATTR_START_TABLE:[Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lorg/kxml2/wap/WbxmlParser;->setAttrStartTable(I[Ljava/lang/String;)V

    .line 64
    const/4 v9, 0x0

    sget-object v10, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiWbxmlParser;->ATTR_VALUE_TABLE:[Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lorg/kxml2/wap/WbxmlParser;->setAttrValueTable(I[Ljava/lang/String;)V

    .line 65
    const/4 v9, 0x0

    invoke-virtual {v4, p1, v9}, Lorg/kxml2/wap/WbxmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4}, Lorg/kxml2/wap/WbxmlParser;->getEventType()I

    move-result v2

    .local v2, eventType:I
    move-object v6, v5

    .line 69
    .end local v5           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .local v6, siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    :goto_0
    if-eq v2, v11, :cond_8

    .line 70
    const/4 v3, 0x0

    .line 71
    .local v3, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 72
    .local v7, uri:Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    move-object v5, v6

    .line 119
    .end local v6           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .restart local v5       #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    :goto_2
    invoke-virtual {v4}, Lorg/kxml2/wap/WbxmlParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    move-object v6, v5

    .line 120
    .end local v5           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .restart local v6       #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    goto :goto_0

    :pswitch_1
    move-object v5, v6

    .line 74
    .end local v6           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .restart local v5       #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    goto :goto_2

    .line 76
    .end local v5           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .restart local v6       #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    :pswitch_2
    :try_start_1
    invoke-virtual {v4}, Lorg/kxml2/wap/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 77
    const-string v9, "si"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 79
    new-instance v5, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;

    sget-object v9, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->TYPE:Ljava/lang/String;

    invoke-direct {v5, v9}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;-><init>(Ljava/lang/String;)V

    .end local v6           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .restart local v5       #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    goto :goto_2

    .line 81
    .end local v5           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .restart local v6       #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    :cond_1
    const-string v9, "indication"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 82
    invoke-virtual {v4}, Lorg/kxml2/wap/WbxmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v7

    .line 84
    if-eqz v6, :cond_0

    .line 85
    const-string v9, "si-id"

    invoke-virtual {v4, v7, v9}, Lorg/kxml2/wap/WbxmlParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->siid:Ljava/lang/String;

    .line 86
    const-string v9, "href"

    invoke-virtual {v4, v7, v9}, Lorg/kxml2/wap/WbxmlParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->url:Ljava/lang/String;

    .line 87
    const-string v9, "created"

    invoke-virtual {v4, v7, v9}, Lorg/kxml2/wap/WbxmlParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiDateDecoderUtil;->WbXmlDateDecoder(Ljava/lang/String;)I

    move-result v9

    iput v9, v6, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->create:I

    .line 88
    const-string v9, "si-expires"

    invoke-virtual {v4, v7, v9}, Lorg/kxml2/wap/WbxmlParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiDateDecoderUtil;->WbXmlDateDecoder(Ljava/lang/String;)I

    move-result v9

    iput v9, v6, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->expiration:I

    .line 89
    const-string v9, "action"

    invoke-virtual {v4, v7, v9}, Lorg/kxml2/wap/WbxmlParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v4}, Lorg/kxml2/wap/WbxmlParser;->nextText()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->text:Ljava/lang/String;

    .line 93
    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_2
    const/4 v9, 0x2

    iput v9, v6, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->action:I

    .line 97
    const-string v9, "signal-none"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 98
    const/4 v9, 0x0

    iput v9, v6, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->action:I

    :cond_3
    :goto_3
    move-object v5, v6

    .line 109
    .end local v6           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .restart local v5       #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    goto :goto_2

    .line 99
    .end local v5           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .restart local v6       #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    :cond_4
    const-string v9, "signal-low"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 100
    const/4 v9, 0x1

    iput v9, v6, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->action:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 121
    .end local v0           #action:Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v5, v6

    .line 122
    .end local v2           #eventType:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #parser:Lorg/kxml2/wap/WbxmlParser;
    .end local v6           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .end local v7           #uri:Ljava/lang/String;
    .local v1, e:Ljava/lang/Exception;
    .restart local v5       #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    :goto_4
    sget-object v9, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiWbxmlParser;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parser Error:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 126
    .end local v1           #e:Ljava/lang/Exception;
    :goto_5
    return-object v6

    .line 101
    .end local v5           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #eventType:I
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #parser:Lorg/kxml2/wap/WbxmlParser;
    .restart local v6       #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .restart local v7       #uri:Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v9, "signal-medium"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 102
    const/4 v9, 0x2

    iput v9, v6, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->action:I

    goto :goto_3

    .line 103
    :cond_6
    const-string v9, "signal-high"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 104
    const/4 v9, 0x3

    iput v9, v6, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->action:I

    goto :goto_3

    .line 105
    :cond_7
    const-string v9, "delete"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 106
    const/4 v9, 0x4

    iput v9, v6, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->action:I

    goto :goto_3

    .line 113
    .end local v0           #action:Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v4}, Lorg/kxml2/wap/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 114
    const-string v9, "indication"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v9

    if-eqz v9, :cond_0

    goto/16 :goto_1

    .end local v3           #name:Ljava/lang/String;
    .end local v7           #uri:Ljava/lang/String;
    :cond_8
    move-object v5, v6

    .line 126
    .end local v6           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .restart local v5       #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    goto :goto_5

    .line 121
    .end local v2           #eventType:I
    .end local v4           #parser:Lorg/kxml2/wap/WbxmlParser;
    :catch_1
    move-exception v1

    goto :goto_4

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
