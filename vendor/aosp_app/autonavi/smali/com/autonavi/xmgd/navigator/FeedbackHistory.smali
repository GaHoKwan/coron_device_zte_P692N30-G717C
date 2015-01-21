.class public Lcom/autonavi/xmgd/navigator/FeedbackHistory;
.super Lcom/autonavi/xmgd/controls/GDActivity;

# interfaces
.implements Lcom/autonavi/xmgd/c/e;


# instance fields
.field private a:Lcom/autonavi/xmgd/navigator/ao;

.field private b:Landroid/widget/ExpandableListView;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/xmgd/navigator/an;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/xmgd/navigator/an;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/xmgd/navigator/an;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/xmgd/navigator/an;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, -0x7c1

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDActivity;-><init>()V

    iput v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->c:I

    iput v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->f:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->i:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->j:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/FeedbackHistory;)Lcom/autonavi/xmgd/navigator/ao;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->a:Lcom/autonavi/xmgd/navigator/ao;

    return-object v0
.end method

.method private a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private a(Lorg/w3c/dom/NodeList;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-object p2

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const-string p2, ""

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    const-string v4, ""

    invoke-direct {p0, v3, v4}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a()V
    .locals 2

    const v0, 0x7f0c0057

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDTitle;

    const v1, 0x7f0700f6

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    new-instance v0, Lcom/autonavi/xmgd/navigator/ao;

    invoke-direct {v0, p0, p0}, Lcom/autonavi/xmgd/navigator/ao;-><init>(Lcom/autonavi/xmgd/navigator/FeedbackHistory;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->a:Lcom/autonavi/xmgd/navigator/ao;

    const v0, 0x7f0c005c

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->b:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->b:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->a:Lcom/autonavi/xmgd/navigator/ao;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->b:Landroid/widget/ExpandableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->b:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->b:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/ak;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/ak;-><init>(Lcom/autonavi/xmgd/navigator/FeedbackHistory;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/FeedbackHistory;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FeedbackHistroy]  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-array v3, v7, [I

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    const-string v1, "http://us.autonavi.com/data"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v4, 0xbc7

    const/16 v5, 0xa

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/xmgd/c/a;->a(Ljava/lang/String;[B[III)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    :goto_0
    return v0

    :cond_1
    aget v0, v3, v6

    iput v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->d:I

    move v0, v7

    goto :goto_0
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/FeedbackHistory;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/FeedbackHistory;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->e:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v2, "UTF-8"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, ""

    const-string v3, "opg"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "activitycode"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "0014"

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "activitycode"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "processtime"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "processtime"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "actioncode"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "0"

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "actioncode"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "svccont"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "info"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "imei"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/utility/Tool;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "imei"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "type"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "type"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "userid"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "userid"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "info"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "svccont"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "opg"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->c()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [I

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    const-string v1, "http://us.autonavi.com/data"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v4, 0xbc7

    const/16 v5, 0xa

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/xmgd/c/a;->a(Ljava/lang/String;[B[III)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    aget v0, v3, v6

    iput v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->c:I

    move v0, v7

    goto :goto_0
.end method

.method static synthetic c(Lcom/autonavi/xmgd/navigator/FeedbackHistory;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->c:I

    return v0
.end method

.method private c()Ljava/lang/String;
    .locals 6

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v2, "UTF-8"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, ""

    const-string v3, "opg"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "activitycode"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "0013"

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "activitycode"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "processtime"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "processtime"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "actioncode"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "0"

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "actioncode"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "svccont"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "info"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "imei"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/utility/Tool;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "imei"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "userid"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "userid"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "info"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "svccont"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "opg"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic d(Lcom/autonavi/xmgd/navigator/FeedbackHistory;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->j:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic e(Lcom/autonavi/xmgd/navigator/FeedbackHistory;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic f(Lcom/autonavi/xmgd/navigator/FeedbackHistory;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->h:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic g(Lcom/autonavi/xmgd/navigator/FeedbackHistory;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->i:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->setContentView(I)V

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    const/16 v1, 0xbc7

    invoke-virtual {v0, p0, v1}, Lcom/autonavi/xmgd/c/a;->a(Lcom/autonavi/xmgd/c/e;I)Z

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/ab;->n()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v0, "mUpRequestId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->c:I

    const-string v0, "mClearRequestId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->d:I

    const-string v0, "mAllMap"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->j:Ljava/util/HashMap;

    const-string v0, "mDataMap"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->g:Ljava/util/HashMap;

    const-string v0, "mEyeMap"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->h:Ljava/util/HashMap;

    const-string v0, "mSoftwareMap"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->i:Ljava/util/HashMap;

    const-string v0, "mType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->e:Ljava/lang/String;

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/ab;->e(Landroid/os/Bundle;)V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->a()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->b()Z

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->showDialog(I)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/al;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/al;-><init>(Lcom/autonavi/xmgd/navigator/FeedbackHistory;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07020a

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070113

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070019

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07001a

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    const/4 v1, 0x2

    new-instance v2, Lcom/autonavi/xmgd/navigator/am;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/am;-><init>(Lcom/autonavi/xmgd/navigator/FeedbackHistory;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070116

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setProgressBarContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070017

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/c/a;->a(Lcom/autonavi/xmgd/c/e;)Z

    goto :goto_0
.end method

.method public onHttpException(Ljava/lang/Exception;IILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->dismissDialog(I)V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0700de

    invoke-static {p0, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[32]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onHttpRequestByteReceived(III)V
    .locals 0

    return-void
.end method

.method public onHttpRequestFinish([BIII)V
    .locals 20

    sget-boolean v2, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "autonavi60"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FeedbackHistroy]  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->dismissDialog(I)V

    invoke-static/range {p1 .. p1}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "gbk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    :try_start_0
    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->c:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_f

    const/16 v2, -0x7c1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->c:I

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v3, "rsptype"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ok"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->h:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->i:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->j:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const-string v3, "all"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    move v8, v2

    move-object v2, v3

    :goto_1
    if-ge v8, v13, :cond_b

    invoke-interface {v12, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string v5, "type"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    const-string v4, "0"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->g:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->j:Ljava/util/HashMap;

    const v4, 0x7f07010e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    move v10, v2

    move v11, v3

    :goto_3
    if-ge v10, v15, :cond_a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v14, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    const/4 v2, 0x0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    :goto_4
    move/from16 v0, v16

    if-ge v2, v0, :cond_9

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "id"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v5, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    const-string v17, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    :cond_2
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    :try_start_2
    const-string v4, "1"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->h:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->j:Ljava/util/HashMap;

    const v4, 0x7f07010f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_1
    move-exception v2

    :cond_5
    :goto_6
    return-void

    :cond_6
    const-string v4, "2"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->i:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->j:Ljava/util/HashMap;

    const v4, 0x7f070110

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_7
    const-string v19, "name"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    const-string v17, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v4, v1}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->a(Lorg/w3c/dom/NodeList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_8
    const-string v19, "datatype"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string v17, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v1}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_5

    :cond_9
    new-instance v2, Lcom/autonavi/xmgd/navigator/an;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/autonavi/xmgd/navigator/an;-><init>(Lcom/autonavi/xmgd/navigator/FeedbackHistory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v11, 0x1

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move v11, v3

    goto/16 :goto_3

    :cond_a
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move-object v2, v9

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->j:Ljava/util/HashMap;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->j:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    const v3, 0x7f070115

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto/16 :goto_6

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->a:Lcom/autonavi/xmgd/navigator/ao;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/navigator/ao;->notifyDataSetChanged()V

    goto/16 :goto_6

    :cond_e
    const-string v3, "rspcode"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->finish()V

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f070114

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[45]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->d:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_5

    sget-boolean v2, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v2, :cond_10

    const-string v2, "autonavi60"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FeedbackHistroy]  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const/16 v2, -0x7c1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->d:I

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    :try_start_3
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v3, "rsptype"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ok"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->e:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->j:Ljava/util/HashMap;

    const v3, 0x7f07010e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->a:Lcom/autonavi/xmgd/navigator/ao;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/navigator/ao;->notifyDataSetChanged()V

    goto/16 :goto_6

    :catch_2
    move-exception v2

    goto/16 :goto_6

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->e:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->j:Ljava/util/HashMap;

    const v3, 0x7f07010f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->e:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->j:Ljava/util/HashMap;

    const v3, 0x7f070110

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_14
    const-string v3, "rspcode"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f070114

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[46]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_6

    :cond_15
    move-object v9, v2

    goto/16 :goto_2
.end method

.method public onHttpTaskCanceled([BIII)V
    .locals 0

    return-void
.end method

.method public onHttpTimeOut(Ljava/lang/String;II)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->dismissDialog(I)V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0700e3

    invoke-static {p0, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[47]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x1

    if-ne p1, v2, :cond_2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->f:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->f:Z

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/c/a;->a(Lcom/autonavi/xmgd/c/e;)Z

    if-ne p1, v2, :cond_2

    :try_start_0
    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/s;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "\u4ece\u8fd4\u56de\u6808\u4e2d\u53d6\u51fa\u7a7a\u7c7b\u540d"

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->finish()V

    move v0, v1

    :goto_1
    return v0

    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/controls/GDActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x4

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mUpRequestId"

    iget v2, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mClearRequestId"

    iget v2, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mAllMap"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->j:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mDataMap"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mEyeMap"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mSoftwareMap"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->i:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mType"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mUpRequestId"

    iget v2, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mClearRequestId"

    iget v2, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mAllMap"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->j:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mDataMap"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mEyeMap"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mSoftwareMap"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->i:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mType"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/FeedbackHistory;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/ab;->e(Landroid/os/Bundle;)V

    return-void
.end method
