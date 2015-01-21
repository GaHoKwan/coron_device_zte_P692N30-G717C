.class public Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlTextParser;
.super Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;
.source "SlTextParser.java"


# static fields
.field public static final SL:Ljava/lang/String; = "sl"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "PUSH"

    sput-object v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlTextParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "mimetype"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;
    .locals 12
    .parameter "input"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 64
    const/4 v4, 0x0

    .line 65
    .local v4, slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 67
    .local v7, xmlPullParser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    :try_start_0
    invoke-interface {v7, p1, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 68
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .local v2, eventType:I
    move-object v5, v4

    .line 70
    .end local v4           #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    .local v5, slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    :goto_0
    if-eq v2, v10, :cond_5

    .line 71
    const/4 v3, 0x0

    .line 72
    .local v3, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 73
    .local v6, uri:Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    :cond_0
    move-object v4, v5

    .line 107
    .end local v5           #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    .restart local v4       #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    :cond_1
    :goto_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move-object v5, v4

    .line 108
    .end local v4           #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    .restart local v5       #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    goto :goto_0

    .line 75
    :pswitch_0
    :try_start_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 76
    const-string v9, "sl"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 78
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v6

    .line 80
    new-instance v4, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;

    const-string v9, "SL"

    invoke-direct {v4, v9}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    .end local v5           #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    .restart local v4       #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    :try_start_2
    const-string v9, "href"

    invoke-interface {v7, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;->url:Ljava/lang/String;

    .line 82
    const-string v9, "action"

    invoke-interface {v7, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_2
    const/4 v9, 0x1

    iput v9, v4, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;->action:I

    .line 88
    const-string v9, "execute-low"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 89
    const/4 v9, 0x1

    iput v9, v4, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;->action:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 110
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #eventType:I
    .end local v3           #name:Ljava/lang/String;
    .end local v6           #uri:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 111
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    sget-object v9, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlTextParser;->TAG:Ljava/lang/String;

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

    move-object v5, v8

    .line 116
    .end local v1           #e:Ljava/lang/Exception;
    :goto_3
    return-object v5

    .line 90
    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #eventType:I
    .restart local v3       #name:Ljava/lang/String;
    .restart local v6       #uri:Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v9, "execute-high"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 91
    const/4 v9, 0x2

    iput v9, v4, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;->action:I

    goto :goto_1

    .line 92
    :cond_4
    const-string v9, "cache"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 93
    const/4 v9, 0x3

    iput v9, v4, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;->action:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 99
    .end local v0           #action:Ljava/lang/String;
    .end local v4           #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    .restart local v5       #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    :pswitch_1
    :try_start_4
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 100
    const-string v9, "sl"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v9

    if-eqz v9, :cond_0

    move-object v4, v5

    .end local v5           #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    .restart local v4       #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    goto/16 :goto_1

    .end local v3           #name:Ljava/lang/String;
    .end local v4           #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    .end local v6           #uri:Ljava/lang/String;
    .restart local v5       #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    :cond_5
    move-object v4, v5

    .line 116
    .end local v5           #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    .restart local v4       #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    goto :goto_3

    .line 110
    .end local v4           #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v5       #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    .restart local v6       #uri:Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5           #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    .restart local v4       #slMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
    goto :goto_2

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
