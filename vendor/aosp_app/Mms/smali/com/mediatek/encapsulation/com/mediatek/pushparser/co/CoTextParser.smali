.class public Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoTextParser;
.super Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;
.source "CoTextParser.java"


# static fields
.field public static final CO:Ljava/lang/String; = "co"

.field public static final OBJECT:Ljava/lang/String; = "invalidate-object"

.field public static final SERVICE:Ljava/lang/String; = "invalidate-service"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "PUSH"

    sput-object v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoTextParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "mimetype"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/Parser;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Ljava/io/InputStream;)Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoTextParser;->parse(Ljava/io/InputStream;)Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .locals 10
    .parameter "input"

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 66
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v5, p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 67
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .local v3, eventType:I
    move-object v1, v0

    .line 68
    .end local v0           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .local v1, coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    :goto_0
    const/4 v7, 0x1

    if-eq v3, v7, :cond_3

    .line 69
    const/4 v4, 0x0

    .line 70
    .local v4, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 71
    .local v6, uri:Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    move-object v0, v1

    .line 99
    .end local v1           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v0       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    :goto_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move-object v1, v0

    .line 100
    .end local v0           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v1       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    goto :goto_0

    :pswitch_1
    move-object v0, v1

    .line 73
    .end local v1           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v0       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    goto :goto_2

    .line 75
    .end local v0           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v1       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    :pswitch_2
    :try_start_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v6

    .line 77
    const-string v7, "co"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 79
    new-instance v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;

    sget-object v7, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;->TYPE:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    .end local v1           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v0       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    :try_start_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;->objects:Ljava/util/ArrayList;

    .line 81
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;->services:Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 102
    .end local v3           #eventType:I
    .end local v4           #name:Ljava/lang/String;
    .end local v6           #uri:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 103
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    sget-object v7, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoTextParser;->TAG:Ljava/lang/String;

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
    :goto_4
    return-object v0

    .line 82
    .end local v0           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v1       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v3       #eventType:I
    .restart local v4       #name:Ljava/lang/String;
    .restart local v6       #uri:Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v7, "invalidate-object"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 83
    if-eqz v1, :cond_0

    .line 84
    iget-object v7, v1, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;->objects:Ljava/util/ArrayList;

    const-string v8, "uri"

    invoke-interface {v5, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .end local v1           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v0       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    goto :goto_2

    .line 86
    .end local v0           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v1       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    :cond_2
    const-string v7, "invalidate-service"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 87
    if-eqz v1, :cond_0

    .line 88
    iget-object v7, v1, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;->services:Ljava/util/ArrayList;

    const-string v8, "uri"

    invoke-interface {v5, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .end local v1           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v0       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    goto :goto_2

    .line 93
    .end local v0           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v1       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    :pswitch_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 94
    const-string v7, "co"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_1

    .end local v4           #name:Ljava/lang/String;
    .end local v6           #uri:Ljava/lang/String;
    :cond_3
    move-object v0, v1

    .line 105
    .end local v1           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v0       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    goto :goto_4

    .line 102
    .end local v0           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v1       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v4       #name:Ljava/lang/String;
    .restart local v6       #uri:Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    .restart local v0       #coMsg:Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;
    goto :goto_3

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
