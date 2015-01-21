.class public Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlWbxmlParser;
.super Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;
.source "SlWbxmlParser.java"


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

    sput-object v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlWbxmlParser;->TAG:Ljava/lang/String;

    .line 116
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sl"

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlWbxmlParser;->TAG_TABLE:[Ljava/lang/String;

    .line 119
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "action=execute-low"

    aput-object v1, v0, v3

    const-string v1, "action=execute-high"

    aput-object v1, v0, v4

    const-string v1, "action=cache"

    aput-object v1, v0, v5

    const-string v1, "href"

    aput-object v1, v0, v6

    const-string v1, "href=http://"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "href=http://www."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "href=https://"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "href=https://www."

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlWbxmlParser;->ATTR_START_TABLE:[Ljava/lang/String;

    .line 129
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, ".com/"

    aput-object v1, v0, v3

    const-string v1, ".edu/"

    aput-object v1, v0, v4

    const-string v1, ".net/"

    aput-object v1, v0, v5

    const-string v1, ".org/"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlWbxmlParser;->ATTR_VALUE_TABLE:[Ljava/lang/String;

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
    .locals 12
    .parameter "input"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 61
    const/4 v5, 0x0

    .line 63
    .local v5, slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    :try_start_0
    new-instance v4, Lorg/kxml2/wap/WbxmlParser;

    invoke-direct {v4}, Lorg/kxml2/wap/WbxmlParser;-><init>()V

    .line 64
    .local v4, parser:Lorg/kxml2/wap/WbxmlParser;
    const/4 v9, 0x0

    sget-object v10, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlWbxmlParser;->TAG_TABLE:[Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 65
    const/4 v9, 0x0

    sget-object v10, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlWbxmlParser;->ATTR_START_TABLE:[Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lorg/kxml2/wap/WbxmlParser;->setAttrStartTable(I[Ljava/lang/String;)V

    .line 66
    const/4 v9, 0x0

    sget-object v10, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlWbxmlParser;->ATTR_VALUE_TABLE:[Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lorg/kxml2/wap/WbxmlParser;->setAttrValueTable(I[Ljava/lang/String;)V

    .line 67
    const/4 v9, 0x0

    invoke-virtual {v4, p1, v9}, Lorg/kxml2/wap/WbxmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v4}, Lorg/kxml2/wap/WbxmlParser;->getEventType()I

    move-result v2

    .local v2, eventType:I
    move-object v6, v5

    .line 71
    .end local v5           #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    .local v6, slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    :goto_0
    if-eq v2, v11, :cond_5

    .line 72
    const/4 v3, 0x0

    .line 73
    .local v3, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 74
    .local v7, uri:Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    move-object v5, v6

    .line 106
    .end local v6           #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    .restart local v5       #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    :cond_1
    :goto_2
    invoke-virtual {v4}, Lorg/kxml2/wap/WbxmlParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move-object v6, v5

    .line 107
    .end local v5           #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    .restart local v6       #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    goto :goto_0

    :pswitch_1
    move-object v5, v6

    .line 76
    .end local v6           #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    .restart local v5       #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    goto :goto_2

    .line 78
    .end local v5           #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    .restart local v6       #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    :pswitch_2
    :try_start_1
    invoke-virtual {v4}, Lorg/kxml2/wap/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 79
    const-string v9, "sl"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 80
    invoke-virtual {v4}, Lorg/kxml2/wap/WbxmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v7

    .line 82
    new-instance v5, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;

    const-string v9, "SL"

    invoke-direct {v5, v9}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    .end local v6           #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    .restart local v5       #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    :try_start_2
    const-string v9, "href"

    invoke-virtual {v4, v7, v9}, Lorg/kxml2/wap/WbxmlParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;->url:Ljava/lang/String;

    .line 84
    const-string v9, "action"

    invoke-virtual {v4, v7, v9}, Lorg/kxml2/wap/WbxmlParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_2
    const/4 v9, 0x1

    iput v9, v5, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;->action:I

    .line 90
    const-string v9, "execute-low"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 91
    const/4 v9, 0x1

    iput v9, v5, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;->action:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 108
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #eventType:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #parser:Lorg/kxml2/wap/WbxmlParser;
    .end local v7           #uri:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Ljava/lang/Exception;
    :goto_3
    sget-object v9, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlWbxmlParser;->TAG:Ljava/lang/String;

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

    .line 113
    .end local v1           #e:Ljava/lang/Exception;
    :goto_4
    return-object v6

    .line 92
    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #eventType:I
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #parser:Lorg/kxml2/wap/WbxmlParser;
    .restart local v7       #uri:Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v9, "execute-high"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 93
    const/4 v9, 0x2

    iput v9, v5, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;->action:I

    goto :goto_2

    .line 94
    :cond_4
    const-string v9, "cache"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 95
    const/4 v9, 0x3

    iput v9, v5, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;->action:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 100
    .end local v0           #action:Ljava/lang/String;
    .end local v5           #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    .restart local v6       #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    :pswitch_3
    :try_start_4
    invoke-virtual {v4}, Lorg/kxml2/wap/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 101
    const-string v9, "sl"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v9

    if-eqz v9, :cond_0

    goto/16 :goto_1

    .end local v3           #name:Ljava/lang/String;
    .end local v7           #uri:Ljava/lang/String;
    :cond_5
    move-object v5, v6

    .line 113
    .end local v6           #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    .restart local v5       #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    goto :goto_4

    .line 108
    .end local v5           #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v6       #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    .restart local v7       #uri:Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v5, v6

    .end local v6           #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    .restart local v5       #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    goto :goto_3

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
