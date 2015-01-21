.class public Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiTextParser;
.super Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;
.source "SiTextParser.java"


# static fields
.field public static final INDICATION:Ljava/lang/String; = "indication"

.field public static final INFO:Ljava/lang/String; = "info"

.field public static final SI:Ljava/lang/String; = "si"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "PUSH"

    sput-object v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiTextParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "mimetype"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;
    .locals 12
    .parameter "input"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 62
    const/4 v5, 0x0

    .line 63
    .local v5, siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 65
    .local v4, pxmlPullParser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    :try_start_0
    invoke-interface {v4, p1, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 66
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .local v2, eventType:I
    move-object v6, v5

    .line 67
    .end local v5           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .local v6, siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    :goto_0
    if-eq v2, v10, :cond_8

    .line 68
    const/4 v3, 0x0

    .line 69
    .local v3, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 70
    .local v7, uri:Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    :cond_0
    move-object v5, v6

    .line 117
    .end local v6           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .restart local v5       #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    move-object v6, v5

    .line 118
    .end local v5           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .restart local v6       #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    goto :goto_0

    .line 72
    :pswitch_0
    :try_start_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 73
    const-string v9, "si"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 75
    new-instance v5, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;

    sget-object v9, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->TYPE:Ljava/lang/String;

    invoke-direct {v5, v9}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;-><init>(Ljava/lang/String;)V

    .end local v6           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .restart local v5       #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    goto :goto_1

    .line 77
    .end local v5           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .restart local v6       #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    :cond_1
    const-string v9, "indication"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 78
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v7

    .line 80
    if-eqz v6, :cond_0

    .line 81
    const-string v9, "si-id"

    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->siid:Ljava/lang/String;

    .line 82
    const-string v9, "href"

    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->url:Ljava/lang/String;

    .line 83
    const-string v9, "created"

    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiDateDecoderUtil;->XmlDateDecoder(Ljava/lang/String;)I

    move-result v9

    iput v9, v6, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->create:I

    .line 84
    const-string v9, "si-expires"

    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiDateDecoderUtil;->XmlDateDecoder(Ljava/lang/String;)I

    move-result v9

    iput v9, v6, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->expiration:I

    .line 85
    const-string v9, "action"

    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, action:Ljava/lang/String;
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->text:Ljava/lang/String;

    .line 89
    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_2
    const/4 v9, 0x2

    iput v9, v6, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->action:I

    .line 93
    const-string v9, "signal-none"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 94
    const/4 v9, 0x0

    iput v9, v6, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->action:I

    :cond_3
    :goto_2
    move-object v5, v6

    .line 105
    .end local v6           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .restart local v5       #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    goto :goto_1

    .line 95
    .end local v5           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .restart local v6       #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    :cond_4
    const-string v9, "signal-low"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 96
    const/4 v9, 0x1

    iput v9, v6, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->action:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 120
    .end local v0           #action:Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v5, v6

    .line 121
    .end local v2           #eventType:I
    .end local v3           #name:Ljava/lang/String;
    .end local v6           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .end local v7           #uri:Ljava/lang/String;
    .local v1, e:Ljava/lang/Exception;
    .restart local v5       #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    :goto_3
    sget-object v9, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiTextParser;->TAG:Ljava/lang/String;

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

    .line 125
    .end local v1           #e:Ljava/lang/Exception;
    :goto_4
    return-object v6

    .line 97
    .end local v5           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #eventType:I
    .restart local v3       #name:Ljava/lang/String;
    .restart local v6       #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .restart local v7       #uri:Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v9, "signal-medium"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 98
    const/4 v9, 0x2

    iput v9, v6, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->action:I

    goto :goto_2

    .line 99
    :cond_6
    const-string v9, "signal-high"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 100
    const/4 v9, 0x3

    iput v9, v6, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->action:I

    goto :goto_2

    .line 101
    :cond_7
    const-string v9, "delete"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 102
    const/4 v9, 0x4

    iput v9, v6, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->action:I

    goto :goto_2

    .line 109
    .end local v0           #action:Ljava/lang/String;
    :pswitch_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 110
    const-string v9, "indication"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v9

    if-eqz v9, :cond_0

    move-object v5, v6

    .end local v6           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .restart local v5       #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    goto/16 :goto_1

    .end local v3           #name:Ljava/lang/String;
    .end local v5           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .end local v7           #uri:Ljava/lang/String;
    .restart local v6       #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    :cond_8
    move-object v5, v6

    .line 125
    .end local v6           #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    .restart local v5       #siMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;
    goto :goto_4

    .line 120
    .end local v2           #eventType:I
    :catch_1
    move-exception v1

    goto :goto_3

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
