.class public final Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;
.super Ljava/lang/Object;
.source "Ngin3dLayoutInflater.java"


# static fields
.field public static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "Ngin3dLayoutInflater"

.field private static final TEXT_STYLE_BOLD:I = 0x1

.field private static final TEXT_STYLE_BOLDITALIC:I = 0x3

.field private static final TEXT_STYLE_ITALIC:I = 0x2

.field private static final TEXT_STYLE_NORMAL:I = 0x0

.field private static final TEXT_TYPEFACE_MONOSPACE:I = 0x3

.field private static final TEXT_TYPEFACE_NORMAL:I = 0x0

.field private static final TEXT_TYPEFACE_SANS:I = 0x1

.field private static final TEXT_TYPEFACE_SERIF:I = 0x2

.field private static final XML_TAG_BITMAPTEXT:Ljava/lang/String; = "BitmapText"

.field private static final XML_TAG_CONTAINER:Ljava/lang/String; = "Container"

.field private static final XML_TAG_IMAGE:Ljava/lang/String; = "Image"

.field private static final XML_TAG_SPHERE:Ljava/lang/String; = "Sphere"

.field private static final XML_TAG_STAGE:Ljava/lang/String; = "Stage"

.field private static final XML_TAG_TEXT:Ljava/lang/String; = "Text"

.field private static sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method public static inflateLayout(Landroid/content/Context;ILcom/mediatek/ngin3d/Container;)Lcom/mediatek/ngin3d/Actor;
    .locals 13
    .parameter "context"
    .parameter "xmlResId"
    .parameter "rootContainer"

    .prologue
    const/4 v12, 0x1

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 118
    .local v4, parser:Landroid/content/res/XmlResourceParser;
    const/4 v8, 0x0

    .line 121
    .local v8, xmlRootContainer:Lcom/mediatek/ngin3d/Actor;
    new-instance v9, Lcom/mediatek/ngin3d/android/StyleableResolver;

    invoke-direct {v9, p0}, Lcom/mediatek/ngin3d/android/StyleableResolver;-><init>(Landroid/content/Context;)V

    sput-object v9, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    .line 124
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 129
    .local v2, containerList:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/mediatek/ngin3d/Container;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    .local v7, xmlEventType:I
    if-eq v7, v12, :cond_1

    .line 130
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 132
    :pswitch_1
    const-string v9, "Ngin3dLayoutInflater"

    const-string v10, "Start document"

    invoke-static {v9, v10}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 197
    .end local v7           #xmlEventType:I
    :catch_0
    move-exception v3

    .line 198
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v9, "Ngin3dLayoutInflater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parser Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-object v8

    .line 135
    .restart local v7       #xmlEventType:I
    :pswitch_2
    :try_start_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, tag:Ljava/lang/String;
    const-string v9, "Ngin3dLayoutInflater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Start Tag: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {v6, p0, v4, p2}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->newActorByTag(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/XmlResourceParser;Lcom/mediatek/ngin3d/Container;)Lcom/mediatek/ngin3d/Actor;

    move-result-object v1

    .line 140
    .local v1, actor:Lcom/mediatek/ngin3d/Actor;
    if-nez v8, :cond_2

    .line 141
    move-object v8, v1

    .line 142
    const-string v9, "Ngin3dLayoutInflater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "xmlRootContainer:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-eqz p2, :cond_0

    .line 145
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/mediatek/ngin3d/Actor;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {p2, v9}, Lcom/mediatek/ngin3d/Container;->add([Lcom/mediatek/ngin3d/Actor;)V

    .line 146
    const-string v9, "Ngin3dLayoutInflater"

    const-string v10, "add xmlRootContainer into rootContainer."

    invoke-static {v9, v10}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 199
    .end local v1           #actor:Lcom/mediatek/ngin3d/Actor;
    .end local v6           #tag:Ljava/lang/String;
    .end local v7           #xmlEventType:I
    :catch_1
    move-exception v3

    .line 200
    .local v3, e:Ljava/io/IOException;
    const-string v9, "Ngin3dLayoutInflater"

    const-string v10, "IOException occurs. Unable to read resource file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 149
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #actor:Lcom/mediatek/ngin3d/Actor;
    .restart local v6       #tag:Ljava/lang/String;
    .restart local v7       #xmlEventType:I
    :cond_2
    :try_start_2
    instance-of v9, v1, Lcom/mediatek/ngin3d/Stage;

    if-eqz v9, :cond_3

    .line 150
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Stage should be the root container."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 155
    :cond_3
    instance-of v9, v8, Lcom/mediatek/ngin3d/Container;

    if-eqz v9, :cond_5

    instance-of v9, v8, Lcom/mediatek/ngin3d/BitmapText;

    if-nez v9, :cond_5

    .line 158
    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 159
    move-object v0, v8

    check-cast v0, Lcom/mediatek/ngin3d/Container;

    move-object v9, v0

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/mediatek/ngin3d/Actor;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {v9, v10}, Lcom/mediatek/ngin3d/Container;->add([Lcom/mediatek/ngin3d/Actor;)V

    .line 160
    const-string v9, "Ngin3dLayoutInflater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "no proper sub container. add actor into xmlRootContainer:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_2
    instance-of v9, v1, Lcom/mediatek/ngin3d/Container;

    if-eqz v9, :cond_0

    instance-of v9, v1, Lcom/mediatek/ngin3d/BitmapText;

    if-nez v9, :cond_0

    .line 171
    check-cast v1, Lcom/mediatek/ngin3d/Container;

    .end local v1           #actor:Lcom/mediatek/ngin3d/Actor;
    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v9, "Ngin3dLayoutInflater"

    const-string v10, "actor is a Container, add into ContainerList."

    invoke-static {v9, v10}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    .restart local v1       #actor:Lcom/mediatek/ngin3d/Actor;
    :cond_4
    const-string v9, "Ngin3dLayoutInflater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "containerList size :  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ngin3d/Container;

    .line 164
    .local v5, properContainer:Lcom/mediatek/ngin3d/Container;
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/mediatek/ngin3d/Actor;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-virtual {v5, v9}, Lcom/mediatek/ngin3d/Container;->add([Lcom/mediatek/ngin3d/Actor;)V

    .line 165
    const-string v9, "Ngin3dLayoutInflater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add actor into proper sub container.  actor:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", properContainer: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 175
    .end local v5           #properContainer:Lcom/mediatek/ngin3d/Container;
    :cond_5
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "xmlRootContainer is not a container, can\'t add actor into it."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 180
    .end local v1           #actor:Lcom/mediatek/ngin3d/Actor;
    .end local v6           #tag:Ljava/lang/String;
    :pswitch_3
    const-string v9, "Ngin3dLayoutInflater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "End Tag: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Container"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 184
    const-string v9, "Ngin3dLayoutInflater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "End Tag -- containerList size :  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 186
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_0

    .line 191
    :pswitch_4
    const-string v9, "Ngin3dLayoutInflater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Text: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 77
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method private static newActorByTag(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/XmlResourceParser;Lcom/mediatek/ngin3d/Container;)Lcom/mediatek/ngin3d/Actor;
    .locals 3
    .parameter "tag"
    .parameter "context"
    .parameter "parser"
    .parameter "rootContainer"

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 219
    .local v0, actor:Lcom/mediatek/ngin3d/Actor;
    const-string v1, "Stage"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    if-eqz p3, :cond_0

    .line 222
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Stage should be the root container."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_0
    invoke-static {p1, p2}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->parseStage(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Lcom/mediatek/ngin3d/Stage;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    .line 225
    :cond_1
    const-string v1, "Text"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    invoke-static {p1, p2}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->parseText(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Lcom/mediatek/ngin3d/Text;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_2
    const-string v1, "Image"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 231
    invoke-static {p1, p2}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->parseImage(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Lcom/mediatek/ngin3d/Image;

    move-result-object v0

    goto :goto_0

    .line 233
    :cond_3
    const-string v1, "Container"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 235
    invoke-static {p1, p2}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->parseContainer(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Lcom/mediatek/ngin3d/Container;

    move-result-object v0

    goto :goto_0

    .line 237
    :cond_4
    const-string v1, "Sphere"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 239
    invoke-static {p1, p2}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->parseSphere(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Lcom/mediatek/ngin3d/Sphere;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_5
    const-string v1, "BitmapText"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 243
    invoke-static {p1, p2}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->parseBitmapText(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Lcom/mediatek/ngin3d/BitmapText;

    move-result-object v0

    goto :goto_0

    .line 248
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unknown Actor tag in xml file."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseBitmapText(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Lcom/mediatek/ngin3d/BitmapText;
    .locals 14
    .parameter "context"
    .parameter "parser"

    .prologue
    .line 470
    sget-object v11, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p0, p1, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 471
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v11, 0x8

    const/4 v12, -0x1

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 472
    .local v8, tagId:I
    const-string v11, "Ngin3dLayoutInflater"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "BitmapText  tagId : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 476
    sget-object v11, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v12, "BitmapText"

    invoke-virtual {v11, v12}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveIntArray(Ljava/lang/String;)[I

    move-result-object v11

    invoke-virtual {p0, p1, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 477
    .local v7, ta:Landroid/content/res/TypedArray;
    sget-object v11, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v12, "BitmapText_text"

    invoke-virtual {v11, v12}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 478
    .local v9, text:Ljava/lang/String;
    const-string v11, "Ngin3dLayoutInflater"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "BitmapText  text : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    if-nez v9, :cond_0

    .line 480
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 481
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "invalid/null text of BitmapText is not allowed!"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 485
    :cond_0
    sget-object v11, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v12, "BitmapText_fontSrc"

    invoke-virtual {v11, v12}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    invoke-virtual {v7, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 486
    .local v4, fontResId:I
    sget-object v11, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v12, "BitmapText_fontDescriptionSrc"

    invoke-virtual {v11, v12}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    invoke-virtual {v7, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 487
    .local v3, fontDescriptionResId:I
    const-string v11, "Ngin3dLayoutInflater"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "BitmapText  fontResId : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", fontDescriptionResId :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const/4 v11, -0x1

    if-eq v4, v11, :cond_1

    const/4 v11, -0x1

    if-ne v3, v11, :cond_2

    .line 490
    :cond_1
    new-instance v2, Lcom/mediatek/ngin3d/BitmapText;

    invoke-direct {v2, v9}, Lcom/mediatek/ngin3d/BitmapText;-><init>(Ljava/lang/String;)V

    .line 494
    .local v2, bitmapText:Lcom/mediatek/ngin3d/BitmapText;
    :goto_0
    invoke-virtual {v2, v8}, Lcom/mediatek/ngin3d/Actor;->setTag(I)V

    .line 497
    sget-object v11, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v12, "BitmapText_scale"

    invoke-virtual {v11, v12}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v11

    const/high16 v12, -0x4080

    invoke-virtual {v7, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 498
    .local v6, scale:F
    sget-object v11, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v12, "BitmapText_visible"

    invoke-virtual {v11, v12}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v7, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 499
    .local v10, visible:Z
    sget-object v11, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v12, "BitmapText_position"

    invoke-virtual {v11, v12}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 500
    .local v5, positionString:Ljava/lang/String;
    sget-object v11, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v12, "BitmapText_anchorPoint"

    invoke-virtual {v11, v12}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, anchorString:Ljava/lang/String;
    invoke-static {v2, v6, v10, v5, v1}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->setActorCommonAttribute(Lcom/mediatek/ngin3d/Actor;FZLjava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 504
    return-object v2

    .line 492
    .end local v1           #anchorString:Ljava/lang/String;
    .end local v2           #bitmapText:Lcom/mediatek/ngin3d/BitmapText;
    .end local v5           #positionString:Ljava/lang/String;
    .end local v6           #scale:F
    .end local v10           #visible:Z
    :cond_2
    new-instance v2, Lcom/mediatek/ngin3d/BitmapText;

    new-instance v11, Lcom/mediatek/ngin3d/BitmapFont;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-direct {v11, v12, v3, v4}, Lcom/mediatek/ngin3d/BitmapFont;-><init>(Landroid/content/res/Resources;II)V

    invoke-direct {v2, v9, v11}, Lcom/mediatek/ngin3d/BitmapText;-><init>(Ljava/lang/String;Lcom/mediatek/ngin3d/BitmapFont;)V

    .restart local v2       #bitmapText:Lcom/mediatek/ngin3d/BitmapText;
    goto :goto_0
.end method

.method private static parseContainer(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Lcom/mediatek/ngin3d/Container;
    .locals 11
    .parameter "context"
    .parameter "parser"

    .prologue
    .line 516
    sget-object v8, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p0, p1, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 517
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v8, 0x8

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 518
    .local v6, tagId:I
    const-string v8, "Ngin3dLayoutInflater"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Container  tagId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 522
    sget-object v8, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v9, "Container"

    invoke-virtual {v8, v9}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveIntArray(Ljava/lang/String;)[I

    move-result-object v8

    invoke-virtual {p0, p1, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 523
    .local v5, ta:Landroid/content/res/TypedArray;
    new-instance v2, Lcom/mediatek/ngin3d/Container;

    invoke-direct {v2}, Lcom/mediatek/ngin3d/Container;-><init>()V

    .line 524
    .local v2, container:Lcom/mediatek/ngin3d/Container;
    invoke-virtual {v2, v6}, Lcom/mediatek/ngin3d/Actor;->setTag(I)V

    .line 527
    sget-object v8, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v9, "Container_scale"

    invoke-virtual {v8, v9}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v8

    const/high16 v9, -0x4080

    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 528
    .local v4, scale:F
    sget-object v8, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v9, "Container_visible"

    invoke-virtual {v8, v9}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 529
    .local v7, visible:Z
    sget-object v8, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v9, "Container_position"

    invoke-virtual {v8, v9}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 530
    .local v3, positionString:Ljava/lang/String;
    sget-object v8, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v9, "Container_anchorPoint"

    invoke-virtual {v8, v9}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, anchorString:Ljava/lang/String;
    invoke-static {v2, v4, v7, v3, v1}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->setActorCommonAttribute(Lcom/mediatek/ngin3d/Actor;FZLjava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 534
    return-object v2
.end method

.method private static parseImage(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Lcom/mediatek/ngin3d/Image;
    .locals 14
    .parameter "context"
    .parameter "parser"

    .prologue
    .line 388
    sget-object v11, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p0, p1, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 389
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v11, 0x8

    const/4 v12, -0x1

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 390
    .local v8, tagId:I
    const-string v11, "Ngin3dLayoutInflater"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Image  tagId : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 394
    sget-object v11, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v12, "Image"

    invoke-virtual {v11, v12}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveIntArray(Ljava/lang/String;)[I

    move-result-object v11

    invoke-virtual {p0, p1, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 395
    .local v7, ta:Landroid/content/res/TypedArray;
    sget-object v11, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v12, "Image_src"

    invoke-virtual {v11, v12}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    invoke-virtual {v7, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 396
    .local v5, resId:I
    const-string v11, "Ngin3dLayoutInflater"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Image  resId : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/4 v11, -0x1

    if-ne v5, v11, :cond_0

    .line 398
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 399
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "image resource is null, create Image failed! "

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 402
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11, v5}, Lcom/mediatek/ngin3d/Image;->createFromResource(Landroid/content/res/Resources;I)Lcom/mediatek/ngin3d/Image;

    move-result-object v3

    .line 403
    .local v3, image:Lcom/mediatek/ngin3d/Image;
    invoke-virtual {v3, v8}, Lcom/mediatek/ngin3d/Actor;->setTag(I)V

    .line 406
    sget-object v11, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v12, "Image_width"

    invoke-virtual {v11, v12}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v11

    const/high16 v12, -0x4080

    invoke-virtual {v7, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 407
    .local v10, width:F
    sget-object v11, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v12, "Image_height"

    invoke-virtual {v11, v12}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v11

    const/high16 v12, -0x4080

    invoke-virtual {v7, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 408
    .local v2, height:F
    const/high16 v11, -0x4080

    cmpl-float v11, v10, v11

    if-eqz v11, :cond_1

    const/high16 v11, -0x4080

    cmpl-float v11, v2, v11

    if-eqz v11, :cond_1

    .line 409
    const-string v11, "Ngin3dLayoutInflater"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Image  width : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , Image height :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    new-instance v11, Lcom/mediatek/ngin3d/Dimension;

    invoke-direct {v11, v10, v2}, Lcom/mediatek/ngin3d/Dimension;-><init>(FF)V

    invoke-virtual {v3, v11}, Lcom/mediatek/ngin3d/Plane;->setSize(Lcom/mediatek/ngin3d/Dimension;)V

    .line 414
    :cond_1
    sget-object v11, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v12, "Image_scale"

    invoke-virtual {v11, v12}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v11

    const/high16 v12, -0x4080

    invoke-virtual {v7, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 415
    .local v6, scale:F
    sget-object v11, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v12, "Image_visible"

    invoke-virtual {v11, v12}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v7, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 416
    .local v9, visible:Z
    sget-object v11, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v12, "Image_position"

    invoke-virtual {v11, v12}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, positionString:Ljava/lang/String;
    sget-object v11, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v12, "Image_anchorPoint"

    invoke-virtual {v11, v12}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, anchorString:Ljava/lang/String;
    invoke-static {v3, v6, v9, v4, v1}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->setActorCommonAttribute(Lcom/mediatek/ngin3d/Actor;FZLjava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 421
    return-object v3
.end method

.method private static parseSphere(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Lcom/mediatek/ngin3d/Sphere;
    .locals 13
    .parameter "context"
    .parameter "parser"

    .prologue
    const/4 v12, -0x1

    .line 433
    sget-object v9, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p0, p1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 434
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v9, 0x8

    invoke-virtual {v0, v9, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 435
    .local v7, tagId:I
    const-string v9, "Ngin3dLayoutInflater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sphere  tagId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 439
    sget-object v9, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v10, "Sphere"

    invoke-virtual {v9, v10}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveIntArray(Ljava/lang/String;)[I

    move-result-object v9

    invoke-virtual {p0, p1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 440
    .local v6, ta:Landroid/content/res/TypedArray;
    sget-object v9, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v10, "Sphere_src"

    invoke-virtual {v9, v10}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 441
    .local v3, resId:I
    const-string v9, "Ngin3dLayoutInflater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sphere  resId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    if-ne v3, v12, :cond_0

    .line 443
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 444
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "image resource is null, create Sphere failed!"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 447
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/mediatek/ngin3d/Sphere;->createFromResource(Landroid/content/res/Resources;I)Lcom/mediatek/ngin3d/Sphere;

    move-result-object v5

    .line 448
    .local v5, sphere:Lcom/mediatek/ngin3d/Sphere;
    invoke-virtual {v5, v7}, Lcom/mediatek/ngin3d/Actor;->setTag(I)V

    .line 451
    sget-object v9, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v10, "Sphere_scale"

    invoke-virtual {v9, v10}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v9

    const/high16 v10, -0x4080

    invoke-virtual {v6, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 452
    .local v4, scale:F
    sget-object v9, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v10, "Sphere_visible"

    invoke-virtual {v9, v10}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 453
    .local v8, visible:Z
    sget-object v9, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v10, "Sphere_position"

    invoke-virtual {v9, v10}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, positionString:Ljava/lang/String;
    sget-object v9, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v10, "Sphere_anchorPoint"

    invoke-virtual {v9, v10}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, anchorString:Ljava/lang/String;
    invoke-static {v5, v4, v8, v2, v1}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->setActorCommonAttribute(Lcom/mediatek/ngin3d/Actor;FZLjava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 458
    return-object v5
.end method

.method private static parseStage(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Lcom/mediatek/ngin3d/Stage;
    .locals 7
    .parameter "context"
    .parameter "parser"

    .prologue
    const/4 v6, -0x1

    .line 262
    new-instance v0, Lcom/mediatek/ngin3d/Stage;

    invoke-static {}, Lcom/mediatek/ngin3d/android/AndroidUiHandler;->create()Lcom/mediatek/ngin3d/UiHandler;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/mediatek/ngin3d/Stage;-><init>(Lcom/mediatek/ngin3d/UiHandler;)V

    .line 265
    .local v0, stage:Lcom/mediatek/ngin3d/Stage;
    sget-object v3, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v4, "Stage"

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveIntArray(Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 268
    .local v2, ta:Landroid/content/res/TypedArray;
    sget-object v3, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v4, "Stage_backgroundColor"

    invoke-virtual {v3, v4}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 269
    .local v1, stageBgColor:I
    const-string v3, "Ngin3dLayoutInflater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stage stageBgColor : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    if-eq v1, v6, :cond_0

    .line 271
    new-instance v3, Lcom/mediatek/ngin3d/Color;

    invoke-direct {v3, v1}, Lcom/mediatek/ngin3d/Color;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/mediatek/ngin3d/Stage;->setBackgroundColor(Lcom/mediatek/ngin3d/Color;)V

    .line 274
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 275
    return-object v0
.end method

.method private static parseText(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Lcom/mediatek/ngin3d/Text;
    .locals 20
    .parameter "context"
    .parameter "parser"

    .prologue
    .line 287
    sget-object v17, Lcom/android/internal/R$styleable;->View:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 288
    .local v3, a:Landroid/content/res/TypedArray;
    const/16 v17, 0x8

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 289
    .local v7, tagId:I
    const-string v17, "Ngin3dLayoutInflater"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Text tagId : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 293
    sget-object v17, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v18, "Text"

    invoke-virtual/range {v17 .. v18}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveIntArray(Ljava/lang/String;)[I

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 294
    .local v6, ta:Landroid/content/res/TypedArray;
    sget-object v17, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v18, "Text_text"

    invoke-virtual/range {v17 .. v18}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 295
    .local v12, textString:Ljava/lang/String;
    if-nez v12, :cond_0

    .line 296
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "text string is null, create text failed!"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 300
    :cond_0
    new-instance v8, Lcom/mediatek/ngin3d/Text;

    invoke-direct {v8, v12}, Lcom/mediatek/ngin3d/Text;-><init>(Ljava/lang/String;)V

    .line 301
    .local v8, text:Lcom/mediatek/ngin3d/Text;
    invoke-virtual {v8, v7}, Lcom/mediatek/ngin3d/Actor;->setTag(I)V

    .line 304
    sget-object v17, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v18, "Text_textColor"

    invoke-virtual/range {v17 .. v18}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 305
    .local v9, textColor:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_1

    .line 306
    const-string v17, "Ngin3dLayoutInflater"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Text textColor : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v17, Lcom/mediatek/ngin3d/Color;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Lcom/mediatek/ngin3d/Color;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/mediatek/ngin3d/Text;->setTextColor(Lcom/mediatek/ngin3d/Color;)V

    .line 311
    :cond_1
    sget-object v17, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v18, "Text_textSize"

    invoke-virtual/range {v17 .. v18}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v17

    const/high16 v18, -0x4080

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    .line 312
    .local v11, textSize:F
    const/high16 v17, -0x4080

    cmpl-float v17, v11, v17

    if-eqz v17, :cond_2

    .line 313
    const-string v17, "Ngin3dLayoutInflater"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Text textSize : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v8, v11}, Lcom/mediatek/ngin3d/Text;->setTextSize(F)V

    .line 318
    :cond_2
    sget-object v17, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v18, "Text_textStyle"

    invoke-virtual/range {v17 .. v18}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 319
    .local v13, textStyle:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_3

    .line 320
    const/4 v13, 0x0

    .line 342
    :goto_0
    sget-object v17, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v18, "Text_textTypeface"

    invoke-virtual/range {v17 .. v18}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 343
    .local v14, textTypeface:I
    const/16 v16, 0x0

    .line 344
    .local v16, tf:Landroid/graphics/Typeface;
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_4

    .line 345
    sget-object v17, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-static {v0, v13}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v16

    .line 366
    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/mediatek/ngin3d/Text;->setTypeface(Landroid/graphics/Typeface;)V

    .line 369
    sget-object v17, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v18, "Text_scale"

    invoke-virtual/range {v17 .. v18}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v17

    const/high16 v18, -0x4080

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 370
    .local v10, textScale:F
    sget-object v17, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v18, "Text_visible"

    invoke-virtual/range {v17 .. v18}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 371
    .local v15, textVisible:Z
    sget-object v17, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v18, "Text_position"

    invoke-virtual/range {v17 .. v18}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, positionString:Ljava/lang/String;
    sget-object v17, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->sStyleable:Lcom/mediatek/ngin3d/android/StyleableResolver;

    const-string v18, "Text_anchorPoint"

    invoke-virtual/range {v17 .. v18}, Lcom/mediatek/ngin3d/android/StyleableResolver;->resolveInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, anchorString:Ljava/lang/String;
    invoke-static {v8, v10, v15, v5, v4}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->setActorCommonAttribute(Lcom/mediatek/ngin3d/Actor;FZLjava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 376
    return-object v8

    .line 322
    .end local v4           #anchorString:Ljava/lang/String;
    .end local v5           #positionString:Ljava/lang/String;
    .end local v10           #textScale:F
    .end local v14           #textTypeface:I
    .end local v15           #textVisible:Z
    .end local v16           #tf:Landroid/graphics/Typeface;
    :cond_3
    const-string v17, "Ngin3dLayoutInflater"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Text textStyle : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    packed-switch v13, :pswitch_data_0

    .line 337
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 325
    :pswitch_0
    const/4 v13, 0x0

    .line 326
    goto/16 :goto_0

    .line 328
    :pswitch_1
    const/4 v13, 0x1

    .line 329
    goto/16 :goto_0

    .line 331
    :pswitch_2
    const/4 v13, 0x2

    .line 332
    goto/16 :goto_0

    .line 334
    :pswitch_3
    const/4 v13, 0x3

    .line 335
    goto/16 :goto_0

    .line 347
    .restart local v14       #textTypeface:I
    .restart local v16       #tf:Landroid/graphics/Typeface;
    :cond_4
    const-string v17, "Ngin3dLayoutInflater"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Text textTypeface : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    packed-switch v14, :pswitch_data_1

    .line 362
    sget-object v17, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-static {v0, v13}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v16

    goto/16 :goto_1

    .line 350
    :pswitch_4
    sget-object v17, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-static {v0, v13}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v16

    .line 351
    goto/16 :goto_1

    .line 353
    :pswitch_5
    sget-object v17, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-static {v0, v13}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v16

    .line 354
    goto/16 :goto_1

    .line 356
    :pswitch_6
    sget-object v17, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-static {v0, v13}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v16

    .line 357
    goto/16 :goto_1

    .line 359
    :pswitch_7
    sget-object v17, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-static {v0, v13}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v16

    .line 360
    goto/16 :goto_1

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 348
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static setActorCommonAttribute(Lcom/mediatek/ngin3d/Actor;FZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "actor"
    .parameter "scale"
    .parameter "visible"
    .parameter "positionString"
    .parameter "anchorString"

    .prologue
    .line 548
    const/high16 v0, -0x4080

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 549
    const-string v0, "Ngin3dLayoutInflater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance v0, Lcom/mediatek/ngin3d/Scale;

    invoke-direct {v0, p1, p1, p1}, Lcom/mediatek/ngin3d/Scale;-><init>(FFF)V

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->setScale(Lcom/mediatek/ngin3d/Scale;)V

    .line 554
    :cond_0
    const-string v0, "Ngin3dLayoutInflater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text  visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ngin3d/android/Ngin3dLayoutInflater;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0, p2}, Lcom/mediatek/ngin3d/Actor;->setVisible(Z)V

    .line 558
    if-eqz p3, :cond_1

    .line 559
    invoke-static {p3}, Lcom/mediatek/ngin3d/Point;->newFromString(Ljava/lang/String;)Lcom/mediatek/ngin3d/Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->setPosition(Lcom/mediatek/ngin3d/Point;)V

    .line 563
    :cond_1
    if-eqz p4, :cond_2

    .line 564
    instance-of v0, p0, Lcom/mediatek/ngin3d/Plane;

    if-eqz v0, :cond_3

    .line 565
    check-cast p0, Lcom/mediatek/ngin3d/Plane;

    .end local p0
    invoke-static {p4}, Lcom/mediatek/ngin3d/Point;->newFromString(Ljava/lang/String;)Lcom/mediatek/ngin3d/Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Plane;->setAnchorPoint(Lcom/mediatek/ngin3d/Point;)V

    .line 571
    :cond_2
    :goto_0
    return-void

    .line 566
    .restart local p0
    :cond_3
    instance-of v0, p0, Lcom/mediatek/ngin3d/BitmapText;

    if-eqz v0, :cond_2

    .line 567
    check-cast p0, Lcom/mediatek/ngin3d/BitmapText;

    .end local p0
    invoke-static {p4}, Lcom/mediatek/ngin3d/Point;->newFromString(Ljava/lang/String;)Lcom/mediatek/ngin3d/Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/BitmapText;->setAnchorPoint(Lcom/mediatek/ngin3d/Point;)V

    goto :goto_0
.end method
