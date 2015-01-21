.class public Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoWbxmlParser;
.super Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;
.source "CoWbxmlParser.java"


# static fields
.field public static final ATTR_START_TABLE:[Ljava/lang/String;

.field public static final ATTR_VALUE_TABLE:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field public static final TAG_TABLE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    const-string v0, "PUSH"

    sput-object v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoWbxmlParser;->TAG:Ljava/lang/String;

    .line 110
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "co"

    aput-object v1, v0, v2

    const-string v1, "invalidate-object"

    aput-object v1, v0, v3

    const-string v1, "invalidate-service"

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoWbxmlParser;->TAG_TABLE:[Ljava/lang/String;

    .line 115
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "uri"

    aput-object v1, v0, v2

    const-string v1, "uri=http://"

    aput-object v1, v0, v3

    const-string v1, "uri=http://www."

    aput-object v1, v0, v4

    const-string v1, "uri=https://"

    aput-object v1, v0, v5

    const-string v1, "uri=https://www."

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoWbxmlParser;->ATTR_START_TABLE:[Ljava/lang/String;

    .line 122
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, ".com/"

    aput-object v1, v0, v2

    const-string v1, ".edu/"

    aput-object v1, v0, v3

    const-string v1, ".net/"

    aput-object v1, v0, v4

    const-string v1, ".org/"

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoWbxmlParser;->ATTR_VALUE_TABLE:[Ljava/lang/String;

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
.method public parse(Ljava/io/InputStream;)Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;
    .locals 10
    .parameter "input"

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    :try_start_0
    new-instance v6, Lorg/kxml2/wap/WbxmlParser;

    invoke-direct {v6}, Lorg/kxml2/wap/WbxmlParser;-><init>()V

    .line 64
    .local v6, webXmlParser:Lorg/kxml2/wap/WbxmlParser;
    const/4 v7, 0x0

    sget-object v8, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoWbxmlParser;->TAG_TABLE:[Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 65
    const/4 v7, 0x0

    sget-object v8, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoWbxmlParser;->ATTR_START_TABLE:[Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/kxml2/wap/WbxmlParser;->setAttrStartTable(I[Ljava/lang/String;)V

    .line 66
    const/4 v7, 0x0

    sget-object v8, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoWbxmlParser;->ATTR_VALUE_TABLE:[Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/kxml2/wap/WbxmlParser;->setAttrValueTable(I[Ljava/lang/String;)V

    .line 67
    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Lorg/kxml2/wap/WbxmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v6}, Lorg/kxml2/wap/WbxmlParser;->getEventType()I

    move-result v3

    .local v3, eventType:I
    move-object v1, v0

    .line 69
    .end local v0           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .local v1, coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    :goto_0
    const/4 v7, 0x1

    if-eq v3, v7, :cond_3

    .line 70
    const/4 v5, 0x0

    .line 71
    .local v5, uri:Ljava/lang/String;
    const/4 v4, 0x0

    .line 72
    .local v4, name:Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    move-object v0, v1

    .line 101
    .end local v1           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v0       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    :cond_1
    :goto_2
    invoke-virtual {v6}, Lorg/kxml2/wap/WbxmlParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move-object v1, v0

    .line 102
    .end local v0           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v1       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    goto :goto_0

    :pswitch_1
    move-object v0, v1

    .line 74
    .end local v1           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v0       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    goto :goto_2

    .line 76
    .end local v0           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v1       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    :pswitch_2
    :try_start_1
    invoke-virtual {v6}, Lorg/kxml2/wap/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-virtual {v6}, Lorg/kxml2/wap/WbxmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    .line 78
    const-string v7, "co"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 80
    new-instance v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;

    sget-object v7, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;->TYPE:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    .end local v1           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v0       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    :try_start_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;->objects:Ljava/util/ArrayList;

    .line 82
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;->services:Ljava/util/ArrayList;

    .line 84
    :goto_3
    const-string v7, "invalidate-object"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 85
    if-eqz v0, :cond_1

    .line 86
    iget-object v7, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;->objects:Ljava/util/ArrayList;

    const-string v8, "uri"

    invoke-virtual {v6, v5, v8}, Lorg/kxml2/wap/WbxmlParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 103
    .end local v3           #eventType:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #uri:Ljava/lang/String;
    .end local v6           #webXmlParser:Lorg/kxml2/wap/WbxmlParser;
    :catch_0
    move-exception v2

    .line 104
    .local v2, e:Ljava/lang/Exception;
    :goto_4
    sget-object v7, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoWbxmlParser;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parser Error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v2           #e:Ljava/lang/Exception;
    :goto_5
    return-object v0

    .line 88
    .restart local v3       #eventType:I
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #uri:Ljava/lang/String;
    .restart local v6       #webXmlParser:Lorg/kxml2/wap/WbxmlParser;
    :cond_2
    :try_start_3
    const-string v7, "invalidate-service"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 89
    if-eqz v0, :cond_1

    .line 90
    iget-object v7, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;->services:Ljava/util/ArrayList;

    const-string v8, "uri"

    invoke-virtual {v6, v5, v8}, Lorg/kxml2/wap/WbxmlParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 95
    .end local v0           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v1       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    :pswitch_3
    :try_start_4
    invoke-virtual {v6}, Lorg/kxml2/wap/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 96
    const-string v7, "co"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_1

    .end local v4           #name:Ljava/lang/String;
    .end local v5           #uri:Ljava/lang/String;
    :cond_3
    move-object v0, v1

    .line 106
    .end local v1           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v0       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    goto :goto_5

    .line 103
    .end local v0           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v1       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #uri:Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v0       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    goto :goto_4

    .end local v0           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v1       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    :cond_4
    move-object v0, v1

    .end local v1           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v0       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    goto :goto_3

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
