.class public Lcom/zte/zdm/d/c/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static A()Lcom/zte/zdm/d/c/ai;
    .locals 10

    const/4 v5, 0x0

    new-instance v6, Lcom/zte/zdm/d/c/ai;

    invoke-direct {v6}, Lcom/zte/zdm/d/c/ai;-><init>()V

    const/4 v1, 0x0

    move-object v0, v5

    move-object v2, v5

    move-object v3, v5

    move-object v4, v5

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    :goto_0
    sget-object v7, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    sget-object v7, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Target"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->h()Lcom/zte/zdm/d/c/bm;

    move-result-object v3

    :goto_1
    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    goto :goto_0

    :cond_0
    const-string v8, "Source"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->g()Lcom/zte/zdm/d/c/bb;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v8, "MoreData"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v1, "MoreData"

    invoke-static {v1}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const-string v8, "Data"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->B()Lcom/zte/zdm/d/c/n;

    move-result-object v2

    goto :goto_1

    :cond_3
    const-string v8, "Meta"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->i()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing sync item tag. Skipping unexpected token: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/zte/zdm/d/c/b/a;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v7, 0x3

    const-string v8, "Item"

    invoke-static {v7, v5, v8}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_6

    invoke-virtual {v6, v4}, Lcom/zte/zdm/d/c/ai;->a(Lcom/zte/zdm/d/c/bb;)V

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v6, v3}, Lcom/zte/zdm/d/c/ai;->a(Lcom/zte/zdm/d/c/bm;)V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v6, v2}, Lcom/zte/zdm/d/c/ai;->a(Lcom/zte/zdm/d/c/n;)V

    :cond_8
    if-eqz v1, :cond_9

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v6, v2}, Lcom/zte/zdm/d/c/ai;->a(Ljava/lang/Boolean;)V

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v6, v0}, Lcom/zte/zdm/d/c/ai;->a(Lcom/zte/zdm/d/c/ap;)V

    :cond_a
    return-object v6
.end method

.method private static B()Lcom/zte/zdm/d/c/n;
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x0

    new-instance v2, Lcom/zte/zdm/d/c/n;

    invoke-direct {v2}, Lcom/zte/zdm/d/c/n;-><init>()V

    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v5, :cond_0

    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    :cond_0
    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/zte/zdm/d/c/c/a/v;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/zte/zdm/d/c/c/a;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    const-string v3, "Data"

    invoke-static {v4, v1, v3}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/zte/zdm/d/c/n;->a(Lcom/zte/zdm/d/c/c/a;)V

    :goto_0
    return-object v2

    :cond_1
    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v5, :cond_2

    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/d/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    :goto_1
    const-string v3, "Data"

    invoke-static {v4, v1, v3}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/zte/zdm/d/c/n;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private static C()Lcom/zte/zdm/d/c/l;
    .locals 5

    const/4 v1, 0x0

    move-object v0, v1

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    :goto_0
    sget-object v2, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Meta"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->i()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing chal element. Skipping unexpected token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/zte/zdm/d/c/b/a;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    const-string v3, "Chal"

    invoke-static {v2, v1, v3}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/zte/zdm/d/c/l;

    invoke-direct {v1, v0}, Lcom/zte/zdm/d/c/l;-><init>(Lcom/zte/zdm/d/c/ap;)V

    return-object v1
.end method

.method private static D()V
    .locals 3

    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    :cond_1
    return-void
.end method

.method private static a(Lcom/zte/zdm/d/c/aj;)Lcom/zte/zdm/d/c/aj;
    .locals 10

    const/4 v5, 0x0

    const/4 v2, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v5

    move-object v3, v2

    move-object v4, v2

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    :goto_0
    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_5

    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "CmdID"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v0, "CmdID"

    invoke-static {v0}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/zte/zdm/d/c/m;

    invoke-direct {v0, v4}, Lcom/zte/zdm/d/c/m;-><init>(Ljava/lang/String;)V

    move v9, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move v0, v9

    :goto_1
    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v7, "Correlator"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v0, "Correlator"

    invoke-static {v0}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v3

    move-object v3, v4

    move v9, v1

    move-object v1, v0

    move v0, v9

    goto :goto_1

    :cond_1
    const-string v7, "Item"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->A()Lcom/zte/zdm/d/c/ai;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_1

    :cond_2
    const-string v7, "Meta"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->i()Lcom/zte/zdm/d/c/ap;

    move-result-object v0

    move-object v3, v4

    move-object v9, v2

    move-object v2, v0

    move v0, v1

    move-object v1, v9

    goto :goto_1

    :cond_3
    const-string v7, "NoResp"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->f()V

    const/4 v0, 0x1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_1

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing command tag. Skipping unexpected token: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zte/zdm/d/c/b/a;->c(Ljava/lang/String;)V

    move v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_1

    :cond_5
    if-eqz p0, :cond_6

    invoke-virtual {p0, v4}, Lcom/zte/zdm/d/c/aj;->a(Lcom/zte/zdm/d/c/m;)V

    new-array v0, v5, [Lcom/zte/zdm/d/c/ai;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/ai;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/d/c/aj;->a([Lcom/zte/zdm/d/c/ai;)V

    invoke-virtual {p0, v3}, Lcom/zte/zdm/d/c/aj;->a(Lcom/zte/zdm/d/c/ap;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/d/c/aj;->a(Ljava/lang/Boolean;)V

    :cond_6
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/aj;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zte/zdm/d/c/ae;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, p0

    check-cast v0, Lcom/zte/zdm/d/c/ae;

    invoke-virtual {v0, v2}, Lcom/zte/zdm/d/c/ae;->a(Ljava/lang/String;)V

    :cond_7
    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/ar;Lcom/zte/zdm/d/c/ao;)Lcom/zte/zdm/d/c/ao;
    .locals 0

    if-nez p3, :cond_0

    new-instance p3, Lcom/zte/zdm/d/c/ao;

    invoke-direct {p3}, Lcom/zte/zdm/d/c/ao;-><init>()V

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p3, p0}, Lcom/zte/zdm/d/c/ao;->b(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p3, p1}, Lcom/zte/zdm/d/c/ao;->a(Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p3, p2}, Lcom/zte/zdm/d/c/ao;->a(Lcom/zte/zdm/d/c/ar;)V

    :cond_3
    return-object p3
.end method

.method private static a(Lcom/zte/zdm/d/c/bd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/u;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/zte/zdm/d/c/l;)Lcom/zte/zdm/d/c/bd;
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/zte/zdm/d/c/m;

    invoke-direct {v0, p1}, Lcom/zte/zdm/d/c/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zte/zdm/d/c/bd;->a(Lcom/zte/zdm/d/c/m;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/zte/zdm/d/c/bd;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-array v0, v1, [Lcom/zte/zdm/d/c/bc;

    invoke-virtual {p7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/bc;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/d/c/bd;->a([Lcom/zte/zdm/d/c/bc;)V

    :cond_2
    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-array v0, v1, [Lcom/zte/zdm/d/c/bn;

    invoke-virtual {p6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/bn;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/d/c/bd;->a([Lcom/zte/zdm/d/c/bn;)V

    :cond_3
    invoke-virtual {p8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-array v0, v1, [Lcom/zte/zdm/d/c/ai;

    invoke-virtual {p8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/ai;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/d/c/bd;->a([Lcom/zte/zdm/d/c/ai;)V

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p0, p3}, Lcom/zte/zdm/d/c/bd;->b(Ljava/lang/String;)V

    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {p0, p4}, Lcom/zte/zdm/d/c/bd;->c(Ljava/lang/String;)V

    :cond_6
    if-eqz p5, :cond_7

    invoke-virtual {p0, p5}, Lcom/zte/zdm/d/c/bd;->a(Lcom/zte/zdm/d/c/u;)V

    :cond_7
    if-eqz p9, :cond_8

    invoke-virtual {p0, p9}, Lcom/zte/zdm/d/c/bd;->a(Lcom/zte/zdm/d/c/l;)V

    :cond_8
    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/u;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/zte/zdm/d/c/l;)Lcom/zte/zdm/d/c/bd;
    .locals 11

    move-object/from16 v10, p8

    move-object v6, p4

    move-object v5, p3

    move-object v4, p2

    move-object v3, p1

    move-object v2, p0

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    :goto_0
    sget-object v1, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v7, 0x2

    if-ne v1, v7, :cond_9

    sget-object v1, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v7, "CmdID"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v1, "CmdID"

    invoke-static {v1}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    goto :goto_0

    :cond_0
    const-string v7, "MsgRef"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v1, "MsgRef"

    invoke-static {v1}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v7, "TargetRef"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->z()Lcom/zte/zdm/d/c/bn;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v7, "SourceRef"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->y()Lcom/zte/zdm/d/c/bc;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v7, "Item"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->A()Lcom/zte/zdm/d/c/ai;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v7, "CmdRef"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v1, "CmdRef"

    invoke-static {v1}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    const-string v7, "Cmd"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v1, "Cmd"

    invoke-static {v1}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_6
    const-string v7, "Data"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v1, "Data"

    invoke-static {v1}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcom/zte/zdm/d/c/u;

    invoke-direct {v6, v1}, Lcom/zte/zdm/d/c/u;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v7, "Chal"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->C()Lcom/zte/zdm/d/c/l;

    move-result-object v10

    goto/16 :goto_1

    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing sync item tag. Skipping unexpected token: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/zte/zdm/d/c/b/a;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const/4 v1, 0x3

    const/4 v7, 0x0

    const-string v8, "Status"

    invoke-static {v1, v7, v8}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/zte/zdm/d/c/bd;

    invoke-direct {v1}, Lcom/zte/zdm/d/c/bd;-><init>()V

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v1 .. v10}, Lcom/zte/zdm/d/c/b/a;->a(Lcom/zte/zdm/d/c/bd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/u;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/zte/zdm/d/c/l;)Lcom/zte/zdm/d/c/bd;

    move-result-object v1

    return-object v1
.end method

.method private static a()Lcom/zte/zdm/d/c/bj;
    .locals 14

    const/4 v0, 0x0

    const/4 v8, 0x0

    move-object v9, v0

    move-object v7, v0

    move-object v10, v0

    move-object v5, v0

    move-object v6, v0

    move-object v4, v0

    move-object v3, v0

    move-object v2, v0

    move-object v1, v0

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    :goto_0
    sget-object v11, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_a

    sget-object v11, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "VerDTD"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v1, "VerDTD"

    invoke-static {v1}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v1, Lcom/zte/zdm/d/c/bo;

    invoke-direct {v1, v11}, Lcom/zte/zdm/d/c/bo;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    goto :goto_0

    :cond_0
    const-string v12, "VerProto"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->c()Lcom/zte/zdm/d/c/bp;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v12, "SessionID"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->d()Lcom/zte/zdm/d/c/az;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v12, "MsgID"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v4, "MsgID"

    invoke-static {v4}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    const-string v12, "Source"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->g()Lcom/zte/zdm/d/c/bb;

    move-result-object v6

    goto :goto_1

    :cond_4
    const-string v12, "Target"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->h()Lcom/zte/zdm/d/c/bm;

    move-result-object v5

    goto :goto_1

    :cond_5
    const-string v12, "Meta"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->i()Lcom/zte/zdm/d/c/ap;

    move-result-object v10

    goto :goto_1

    :cond_6
    const-string v12, "RespURI"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v7, "RespURI"

    invoke-static {v7}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_7
    const-string v12, "Cred"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->j()Lcom/zte/zdm/d/c/s;

    move-result-object v9

    goto :goto_1

    :cond_8
    const-string v12, "NoResp"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->f()V

    const/4 v8, 0x1

    goto :goto_1

    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error parsing header tag. Skipping unexpected token: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/zte/zdm/d/c/b/a;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const/4 v11, 0x3

    const-string v12, "SyncHdr"

    invoke-static {v11, v0, v12}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/d/c/bj;

    invoke-direct/range {v0 .. v10}, Lcom/zte/zdm/d/c/bj;-><init>(Lcom/zte/zdm/d/c/bo;Lcom/zte/zdm/d/c/bp;Lcom/zte/zdm/d/c/az;Ljava/lang/String;Lcom/zte/zdm/d/c/bm;Lcom/zte/zdm/d/c/bb;Ljava/lang/String;ZLcom/zte/zdm/d/c/s;Lcom/zte/zdm/d/c/ap;)V

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Z)Lcom/zte/zdm/d/c/bk;
    .locals 7

    const/4 v6, 0x2

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/zte/zdm/d/d/a;->b(Z)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    sput-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "UTF-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    const-string v0, "SyncML"

    invoke-static {v6, v2, v0}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    move-object v1, v2

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    :goto_0
    sget-object v3, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v6, :cond_2

    sget-object v3, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SyncHdr"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->a()Lcom/zte/zdm/d/c/bj;

    move-result-object v1

    :goto_1
    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    goto :goto_0

    :cond_0
    const-string v4, "SyncBody"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->b()Lcom/zte/zdm/d/c/bh;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing. Skipping unexpected token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/zte/zdm/d/c/b/a;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    const-string v4, "SyncML"

    invoke-static {v3, v2, v4}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/zte/zdm/d/c/bk;

    invoke-direct {v2, v1, v0}, Lcom/zte/zdm/d/c/bk;-><init>(Lcom/zte/zdm/d/c/bj;Lcom/zte/zdm/d/c/bh;)V

    return-object v2
.end method

.method public static a([BZ)Lcom/zte/zdm/d/c/bk;
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/io/InputStream;Z)Lcom/zte/zdm/d/c/bk;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    sget-object v1, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    sget-object v1, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/d/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    :cond_0
    :goto_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    sget-object v1, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne p0, v0, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " -- Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    sget-object v3, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method private static a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/zte/zdm/d/c/ao;Lcom/zte/zdm/d/c/ap;)V
    .locals 0

    invoke-virtual {p4, p3}, Lcom/zte/zdm/d/c/ap;->a(Lcom/zte/zdm/d/c/ao;)V

    if-eqz p0, :cond_0

    invoke-virtual {p4, p0}, Lcom/zte/zdm/d/c/ap;->a(Ljava/lang/Long;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p4, p1}, Lcom/zte/zdm/d/c/ap;->b(Ljava/lang/Long;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p4, p2}, Lcom/zte/zdm/d/c/ap;->c(Ljava/lang/Long;)V

    :cond_2
    return-void
.end method

.method private static b(Ljava/lang/String;)J
    .locals 3

    invoke-static {p0}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while parsing long "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method private static b()Lcom/zte/zdm/d/c/bh;
    .locals 6

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    :goto_0
    sget-object v3, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    sget-object v3, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    const-string v4, "Status"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->l()Lcom/zte/zdm/d/c/bd;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    goto :goto_0

    :cond_0
    const-string v4, "Results"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->x()Lcom/zte/zdm/d/c/aw;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v4, "Alert"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->q()Lcom/zte/zdm/d/c/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v4, "Final"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->e()V

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->m()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    const/4 v4, 0x0

    const-string v5, "SyncBody"

    invoke-static {v3, v4, v5}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/zte/zdm/d/c/bh;

    new-array v0, v0, [Lcom/zte/zdm/d/c/a;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/a;

    invoke-direct {v3, v0, v1}, Lcom/zte/zdm/d/c/bh;-><init>([Lcom/zte/zdm/d/c/a;Z)V

    return-object v3
.end method

.method private static c()Lcom/zte/zdm/d/c/bp;
    .locals 2

    const-string v0, "VerProto"

    invoke-static {v0}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zte/zdm/d/c/bp;

    invoke-direct {v1, v0}, Lcom/zte/zdm/d/c/bp;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2

    :cond_0
    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method private static d()Lcom/zte/zdm/d/c/az;
    .locals 2

    const-string v0, "SessionID"

    invoke-static {v0}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zte/zdm/d/c/az;

    invoke-direct {v1, v0}, Lcom/zte/zdm/d/c/az;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static e()V
    .locals 3

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const-string v2, "Final"

    invoke-static {v0, v1, v2}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static f()V
    .locals 3

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const-string v2, "NoResp"

    invoke-static {v0, v1, v2}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static g()Lcom/zte/zdm/d/c/bb;
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    move-object v0, v2

    move-object v1, v2

    :goto_0
    sget-object v3, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocURI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, "LocURI"

    invoke-static {v1}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    goto :goto_0

    :cond_0
    const-string v4, "LocName"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "LocName"

    invoke-static {v0}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing target item tag. Skipping unexpected token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/zte/zdm/d/c/b/a;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    const-string v4, "Source"

    invoke-static {v3, v2, v4}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/zte/zdm/d/c/bb;

    invoke-direct {v2, v1, v0}, Lcom/zte/zdm/d/c/bb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static h()Lcom/zte/zdm/d/c/bm;
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    move-object v0, v2

    move-object v1, v2

    :goto_0
    sget-object v3, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocURI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, "LocURI"

    invoke-static {v1}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    goto :goto_0

    :cond_0
    const-string v4, "LocName"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "LocName"

    invoke-static {v0}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing target item tag. Skipping unexpected token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/zte/zdm/d/c/b/a;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    const-string v4, "Target"

    invoke-static {v3, v2, v4}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/zte/zdm/d/c/bm;

    invoke-direct {v2, v1, v0}, Lcom/zte/zdm/d/c/bm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static i()Lcom/zte/zdm/d/c/ap;
    .locals 11

    const/4 v7, 0x0

    move-object v0, v7

    move-object v1, v7

    move-object v2, v7

    move-object v3, v7

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    :goto_0
    sget-object v8, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    sget-object v8, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Type"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v6, "Type"

    invoke-static {v6}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    goto :goto_0

    :cond_0
    const-string v9, "Format"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v5, "Format"

    invoke-static {v5}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const-string v9, "NextNonce"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v4, "NextNonce"

    invoke-static {v4}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v4, Lcom/zte/zdm/d/c/ar;

    invoke-direct {v4, v8}, Lcom/zte/zdm/d/c/ar;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v9, "Size"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v3, "Size"

    invoke-static {v3}, Lcom/zte/zdm/d/c/b/a;->b(Ljava/lang/String;)J

    move-result-wide v8

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v8, v9}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1

    :cond_3
    const-string v9, "MaxMsgSize"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v2, "MaxMsgSize"

    invoke-static {v2}, Lcom/zte/zdm/d/c/b/a;->b(Ljava/lang/String;)J

    move-result-wide v8

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v8, v9}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1

    :cond_4
    const-string v9, "MaxObjSize"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v1, "MaxObjSize"

    invoke-static {v1}, Lcom/zte/zdm/d/c/b/a;->b(Ljava/lang/String;)J

    move-result-wide v8

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v8, v9}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1

    :cond_5
    const-string v9, "syncml:metinf"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->k()Lcom/zte/zdm/d/c/ao;

    move-result-object v0

    goto :goto_1

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing META tag. Skipping unexpected token: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/zte/zdm/d/c/b/a;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const/4 v8, 0x3

    const-string v9, "Meta"

    invoke-static {v8, v7, v9}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/zte/zdm/d/c/ap;

    invoke-direct {v7}, Lcom/zte/zdm/d/c/ap;-><init>()V

    invoke-static {v6, v5, v4, v0}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/ar;Lcom/zte/zdm/d/c/ao;)Lcom/zte/zdm/d/c/ao;

    move-result-object v0

    invoke-static {v3, v2, v1, v0, v7}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/zte/zdm/d/c/ao;Lcom/zte/zdm/d/c/ap;)V

    return-object v7
.end method

.method private static j()Lcom/zte/zdm/d/c/s;
    .locals 6

    const/4 v2, 0x0

    move-object v0, v2

    move-object v1, v2

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    :goto_0
    sget-object v3, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Meta"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->i()Lcom/zte/zdm/d/c/ap;

    move-result-object v1

    :goto_1
    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    goto :goto_0

    :cond_0
    const-string v4, "Data"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "Data"

    invoke-static {v0}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing chal element. Skipping unexpected token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/zte/zdm/d/c/b/a;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    const-string v4, "Cred"

    invoke-static {v3, v2, v4}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/zte/zdm/d/c/s;

    new-instance v3, Lcom/zte/zdm/d/c/g;

    invoke-direct {v3, v1, v0}, Lcom/zte/zdm/d/c/g;-><init>(Lcom/zte/zdm/d/c/ap;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/zte/zdm/d/c/s;-><init>(Lcom/zte/zdm/d/c/g;)V

    return-object v2
.end method

.method private static k()Lcom/zte/zdm/d/c/ao;
    .locals 6

    const/4 v2, 0x0

    move-object v0, v2

    move-object v1, v2

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    :goto_0
    sget-object v3, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Type"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, "Type"

    invoke-static {v1}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    goto :goto_0

    :cond_0
    const-string v4, "Format"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "Format"

    invoke-static {v0}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing META tag. Skipping unexpected token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/zte/zdm/d/c/b/a;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    const-string v4, "syncml:metinf"

    invoke-static {v3, v2, v4}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/zte/zdm/d/c/ao;

    invoke-direct {v2}, Lcom/zte/zdm/d/c/ao;-><init>()V

    if-eqz v0, :cond_3

    invoke-virtual {v2, v0}, Lcom/zte/zdm/d/c/ao;->a(Ljava/lang/String;)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v2, v1}, Lcom/zte/zdm/d/c/ao;->b(Ljava/lang/String;)V

    :cond_4
    return-object v2
.end method

.method private static l()Lcom/zte/zdm/d/c/bd;
    .locals 9

    const/4 v0, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v8, v0

    invoke-static/range {v0 .. v8}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/u;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/zte/zdm/d/c/l;)Lcom/zte/zdm/d/c/bd;

    move-result-object v0

    return-object v0
.end method

.method private static m()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    sget-object v1, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Atomic"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->n()Lcom/zte/zdm/d/c/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "Sequence"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->o()Lcom/zte/zdm/d/c/ay;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->p()Lcom/zte/zdm/d/c/a;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "parseActionCommands return null"

    invoke-static {v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static n()Lcom/zte/zdm/d/c/f;
    .locals 5

    new-instance v1, Lcom/zte/zdm/d/c/f;

    invoke-direct {v1}, Lcom/zte/zdm/d/c/f;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    :goto_0
    sget-object v2, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CmdID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "CmdID"

    invoke-static {v2}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zte/zdm/d/c/m;

    invoke-direct {v3, v2}, Lcom/zte/zdm/d/c/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/zte/zdm/d/c/f;->a(Lcom/zte/zdm/d/c/m;)V

    :goto_1
    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    goto :goto_0

    :cond_0
    const-string v3, "Alert"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->q()Lcom/zte/zdm/d/c/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->p()Lcom/zte/zdm/d/c/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    const/4 v3, 0x0

    const-string v4, "Atomic"

    invoke-static {v2, v3, v4}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/zte/zdm/d/c/a;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/a;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/d/c/f;->a([Lcom/zte/zdm/d/c/a;)V

    return-object v1
.end method

.method private static o()Lcom/zte/zdm/d/c/ay;
    .locals 5

    new-instance v1, Lcom/zte/zdm/d/c/ay;

    invoke-direct {v1}, Lcom/zte/zdm/d/c/ay;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    :goto_0
    sget-object v2, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CmdID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "CmdID"

    invoke-static {v2}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zte/zdm/d/c/m;

    invoke-direct {v3, v2}, Lcom/zte/zdm/d/c/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/zte/zdm/d/c/ay;->a(Lcom/zte/zdm/d/c/m;)V

    :goto_1
    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    goto :goto_0

    :cond_0
    const-string v3, "Alert"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->q()Lcom/zte/zdm/d/c/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->p()Lcom/zte/zdm/d/c/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    const/4 v3, 0x0

    const-string v4, "Sequence"

    invoke-static {v2, v3, v4}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/zte/zdm/d/c/a;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/a;

    invoke-virtual {v1, v0}, Lcom/zte/zdm/d/c/ay;->a([Lcom/zte/zdm/d/c/a;)V

    return-object v1
.end method

.method private static p()Lcom/zte/zdm/d/c/a;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    sget-object v1, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Add"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->r()Lcom/zte/zdm/d/c/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v2, "Copy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->s()Lcom/zte/zdm/d/c/r;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v2, "Delete"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->t()Lcom/zte/zdm/d/c/w;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v2, "Exec"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->u()Lcom/zte/zdm/d/c/ae;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v2, "Get"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->v()Lcom/zte/zdm/d/c/ag;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v2, "Replace"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->w()Lcom/zte/zdm/d/c/at;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing command tag. Skipping unexpected token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/zte/zdm/d/c/b/a;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method private static q()Lcom/zte/zdm/d/c/c;
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    move-object v1, v3

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    :goto_0
    sget-object v5, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    sget-object v5, Lcom/zte/zdm/d/c/b/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CmdID"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v1, "CmdID"

    invoke-static {v1}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->D()V

    goto :goto_0

    :cond_0
    const-string v6, "Data"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v0, "Data"

    invoke-static {v0}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    const-string v6, "Item"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/zte/zdm/d/c/b/a;->A()Lcom/zte/zdm/d/c/ai;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing sync item tag. Skipping unexpected token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/zte/zdm/d/c/b/a;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x3

    const-string v6, "Alert"

    invoke-static {v5, v3, v6}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/zte/zdm/d/c/c;

    invoke-direct {v3}, Lcom/zte/zdm/d/c/c;-><init>()V

    if-eqz v1, :cond_4

    new-instance v5, Lcom/zte/zdm/d/c/m;

    invoke-direct {v5, v1}, Lcom/zte/zdm/d/c/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/zte/zdm/d/c/c;->a(Lcom/zte/zdm/d/c/m;)V

    :cond_4
    invoke-virtual {v3, v0}, Lcom/zte/zdm/d/c/c;->a(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    new-array v0, v2, [Lcom/zte/zdm/d/c/ai;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/d/c/ai;

    invoke-virtual {v3, v0}, Lcom/zte/zdm/d/c/c;->a([Lcom/zte/zdm/d/c/ai;)V

    :cond_5
    return-object v3
.end method

.method private static r()Lcom/zte/zdm/d/c/b;
    .locals 4

    new-instance v0, Lcom/zte/zdm/d/c/b;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/b;-><init>()V

    invoke-static {v0}, Lcom/zte/zdm/d/c/b/a;->a(Lcom/zte/zdm/d/c/aj;)Lcom/zte/zdm/d/c/aj;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/b;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "Add"

    invoke-static {v1, v2, v3}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static s()Lcom/zte/zdm/d/c/r;
    .locals 4

    new-instance v0, Lcom/zte/zdm/d/c/r;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/r;-><init>()V

    invoke-static {v0}, Lcom/zte/zdm/d/c/b/a;->a(Lcom/zte/zdm/d/c/aj;)Lcom/zte/zdm/d/c/aj;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/r;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "Copy"

    invoke-static {v1, v2, v3}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static t()Lcom/zte/zdm/d/c/w;
    .locals 4

    new-instance v0, Lcom/zte/zdm/d/c/w;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/w;-><init>()V

    invoke-static {v0}, Lcom/zte/zdm/d/c/b/a;->a(Lcom/zte/zdm/d/c/aj;)Lcom/zte/zdm/d/c/aj;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/w;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "Delete"

    invoke-static {v1, v2, v3}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static u()Lcom/zte/zdm/d/c/ae;
    .locals 4

    new-instance v0, Lcom/zte/zdm/d/c/ae;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/ae;-><init>()V

    invoke-static {v0}, Lcom/zte/zdm/d/c/b/a;->a(Lcom/zte/zdm/d/c/aj;)Lcom/zte/zdm/d/c/aj;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ae;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "Exec"

    invoke-static {v1, v2, v3}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static v()Lcom/zte/zdm/d/c/ag;
    .locals 4

    new-instance v0, Lcom/zte/zdm/d/c/ag;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/ag;-><init>()V

    invoke-static {v0}, Lcom/zte/zdm/d/c/b/a;->a(Lcom/zte/zdm/d/c/aj;)Lcom/zte/zdm/d/c/aj;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ag;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "Get"

    invoke-static {v1, v2, v3}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static w()Lcom/zte/zdm/d/c/at;
    .locals 4

    new-instance v0, Lcom/zte/zdm/d/c/at;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/at;-><init>()V

    invoke-static {v0}, Lcom/zte/zdm/d/c/b/a;->a(Lcom/zte/zdm/d/c/aj;)Lcom/zte/zdm/d/c/aj;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/at;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "Replace"

    invoke-static {v1, v2, v3}, Lcom/zte/zdm/d/c/b/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static x()Lcom/zte/zdm/d/c/aw;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static y()Lcom/zte/zdm/d/c/bc;
    .locals 2

    const-string v0, "SourceRef"

    invoke-static {v0}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zte/zdm/d/c/bc;

    invoke-direct {v1, v0}, Lcom/zte/zdm/d/c/bc;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static z()Lcom/zte/zdm/d/c/bn;
    .locals 2

    const-string v0, "TargetRef"

    invoke-static {v0}, Lcom/zte/zdm/d/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zte/zdm/d/c/bn;

    invoke-direct {v1, v0}, Lcom/zte/zdm/d/c/bn;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
