.class public Lahy;
.super Lalg;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Lrr;

    iget-object v1, p0, Lahy;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lahy;->a:Lrr;

    .line 33
    return-void
.end method

.method private a()I
    .locals 10

    .prologue
    const/16 v6, 0x28

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lahy;->a:Lrr;

    invoke-virtual {v0}, Lrr;->c()I

    move-result v0

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app info downlad result is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lahy;->a(Ljava/lang/String;)V

    .line 62
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_6

    .line 63
    const-string v0, "app info download success!!"

    invoke-direct {p0, v0}, Lahy;->a(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lahy;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_4

    const-string v2, "date"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 67
    const-string v2, "date"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    iget-object v2, p0, Lahy;->a:Landroid/content/Context;

    invoke-static {v2}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    invoke-virtual {v2}, Lafp;->p()Ljava/lang/String;

    move-result-object v2

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new date:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " old date:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lahy;->a(Ljava/lang/String;)V

    .line 70
    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    const-string v0, "no need to update"

    invoke-direct {p0, v0}, Lahy;->a(Ljava/lang/String;)V

    .line 72
    const/16 v0, 0x27

    .line 144
    :goto_0
    return v0

    .line 74
    :cond_0
    const-string v2, "need update"

    invoke-direct {p0, v2}, Lahy;->a(Ljava/lang/String;)V

    .line 75
    new-instance v2, Ljava/io/File;

    sget-object v3, Laox;->ac:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Layw;->a(Ljava/io/File;)Z

    .line 76
    sget-object v2, Laox;->k:Ljava/lang/String;

    sget-object v3, Laox;->ab:Ljava/lang/String;

    sget-object v4, Laox;->af:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Layw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 77
    if-nez v2, :cond_1

    move v0, v6

    .line 78
    goto :goto_0

    .line 81
    :cond_1
    iget-object v2, p0, Lahy;->a:Landroid/content/Context;

    invoke-static {v2}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lafp;->q(Ljava/lang/String;)V

    .line 83
    iget-boolean v0, p0, Lahy;->c:Z

    if-ne v0, v5, :cond_4

    .line 84
    iget-object v0, p0, Lahy;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v5}, Lafp;->H(Z)V

    .line 85
    new-instance v0, Laiv;

    invoke-direct {v0}, Laiv;-><init>()V

    .line 87
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 88
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laox;->ab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laox;->af:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 89
    invoke-virtual {v0}, Laiv;->a()Ljava/lang/String;

    move-result-object v2

    .line 90
    iget-object v3, p0, Lahy;->a:Landroid/content/Context;

    invoke-static {v3}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v3

    invoke-virtual {v3, v2}, Lafp;->r(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Laiv;->a()Ljava/util/List;

    move-result-object v2

    .line 92
    invoke-virtual {v0}, Laiv;->b()Ljava/util/List;

    move-result-object v3

    .line 93
    if-eqz v2, :cond_3

    .line 94
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 95
    :goto_1
    if-ge v1, v4, :cond_3

    .line 96
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget-object v5, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->f:Ljava/lang/String;

    .line 97
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget-object v7, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->b:Ljava/lang/String;

    .line 98
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget v0, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->c:I

    .line 99
    invoke-static {v7, v0, v5}, Lahr;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laox;->ad:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 102
    new-instance v7, Lahz;

    invoke-direct {v7, p0, v5, v0}, Lahz;-><init>(Lahy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lahz;->start()V

    .line 95
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 110
    :cond_3
    if-eqz v3, :cond_4

    .line 111
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiw;

    iget-object v0, v0, Laiw;->e:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lahy;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lqy;->b(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v4, Lahn;

    iget-object v0, p0, Lahy;->a:Landroid/content/Context;

    invoke-direct {v4, v0, v1}, Lahn;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 117
    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Z)Lsg;

    move-result-object v0

    .line 118
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->b(Z)V

    .line 119
    iget-object v1, p0, Lahy;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqy;->a(Lsg;)I

    .line 133
    :cond_4
    :goto_2
    const/16 v0, 0x27

    goto/16 :goto_0

    .line 121
    :cond_5
    const-string v0, "has this request,ignore!! "

    invoke-direct {p0, v0}, Lahy;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 124
    :catch_0
    move-exception v0

    .line 126
    const-string v0, "================this exception=========="

    invoke-direct {p0, v0}, Lahy;->a(Ljava/lang/String;)V

    move v0, v6

    .line 127
    goto/16 :goto_0

    .line 134
    :cond_6
    const/16 v1, 0x20

    if-ne v0, v1, :cond_7

    .line 135
    const/16 v0, 0x20

    goto/16 :goto_0

    .line 136
    :cond_7
    const/16 v1, 0x21

    if-ne v0, v1, :cond_8

    .line 137
    const/16 v0, 0x21

    goto/16 :goto_0

    .line 138
    :cond_8
    const/16 v1, 0x25

    if-ne v0, v1, :cond_9

    .line 139
    const/16 v0, 0x25

    goto/16 :goto_0

    .line 140
    :cond_9
    const/16 v1, 0x26

    if-ne v0, v1, :cond_a

    .line 141
    const/16 v0, 0x26

    goto/16 :goto_0

    .line 143
    :cond_a
    const-string v0, "app info download fail!!"

    invoke-direct {p0, v0}, Lahy;->a(Ljava/lang/String;)V

    move v0, v6

    .line 144
    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lahy;->a:Lalv;

    .line 51
    iget-object v0, p0, Lahy;->a:Lsg;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lahy;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 54
    :cond_0
    iget-object v0, p0, Lahy;->a:Lrr;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lahy;->a:Lrr;

    invoke-virtual {v0}, Lrr;->d()V

    .line 56
    :cond_1
    return-void
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lahy;->a:Lalv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lahy;->c:Z

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lahy;->a:Lalv;

    invoke-interface {v0}, Lalv;->e()V

    .line 40
    :cond_0
    invoke-direct {p0}, Lahy;->a()I

    move-result v0

    .line 42
    iget-object v1, p0, Lahy;->a:Lalv;

    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lahy;->a:Lalv;

    invoke-interface {v1, v0}, Lalv;->a(I)V

    .line 46
    :cond_1
    return-void
.end method
