.class public Lyt;
.super Lalg;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lrr;

    iget-object v1, p0, Lyt;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lyt;->a:Lrr;

    .line 34
    return-void
.end method

.method private a()I
    .locals 9

    .prologue
    const/16 v0, 0x20

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 51
    iget-object v2, p0, Lyt;->a:Lrr;

    invoke-virtual {v2}, Lrr;->d()I

    move-result v2

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app info downlad result is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lyt;->a(Ljava/lang/String;)V

    .line 53
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_7

    .line 54
    const-string v0, "app info download success!!"

    invoke-direct {p0, v0}, Lyt;->a(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lyt;->a:Lrr;

    invoke-virtual {v0}, Lrr;->b()Ljava/util/HashMap;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_5

    const-string v2, "date"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 58
    const-string v2, "date"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    iget-object v2, p0, Lyt;->a:Landroid/content/Context;

    invoke-static {v2}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    invoke-virtual {v2}, Lafp;->o()Ljava/lang/String;

    move-result-object v2

    .line 60
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

    invoke-direct {p0, v3}, Lyt;->a(Ljava/lang/String;)V

    .line 61
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    const-string v0, "no need to update"

    invoke-direct {p0, v0}, Lyt;->a(Ljava/lang/String;)V

    .line 63
    const/16 v0, 0x30

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    const-string v2, "need update"

    invoke-direct {p0, v2}, Lyt;->a(Ljava/lang/String;)V

    .line 66
    new-instance v2, Ljava/io/File;

    sget-object v3, Laox;->ao:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Layw;->a(Ljava/io/File;)Z

    .line 67
    sget-object v2, Laox;->k:Ljava/lang/String;

    sget-object v3, Laox;->aj:Ljava/lang/String;

    sget-object v4, Laox;->ak:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Layw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 68
    if-nez v2, :cond_2

    .line 69
    const/16 v0, 0x31

    goto :goto_0

    .line 71
    :cond_2
    iget-object v2, p0, Lyt;->a:Landroid/content/Context;

    invoke-static {v2}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lafp;->p(Ljava/lang/String;)V

    .line 73
    iget-boolean v0, p0, Lyt;->c:Z

    if-ne v0, v5, :cond_5

    .line 74
    new-instance v0, Lyw;

    invoke-direct {v0}, Lyw;-><init>()V

    .line 76
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 77
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laox;->aj:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laox;->ak:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 78
    invoke-virtual {v0}, Lyw;->a()Ljava/util/List;

    move-result-object v2

    .line 79
    invoke-virtual {v0}, Lyw;->b()Ljava/util/List;

    move-result-object v3

    .line 80
    if-eqz v2, :cond_4

    .line 81
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 82
    :goto_1
    if-ge v1, v4, :cond_4

    .line 83
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v5, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->e:Ljava/lang/String;

    .line 84
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v6, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    .line 85
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    .line 86
    invoke-static {v6, v0, v5}, Lwo;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laox;->al:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 89
    new-instance v6, Lyu;

    invoke-direct {v6, p0, v5, v0}, Lyu;-><init>(Lyt;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lyu;->start()V

    .line 82
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 97
    :cond_4
    if-eqz v3, :cond_5

    .line 98
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxt;

    iget-object v0, v0, Lxt;->e:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lyt;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Lqy;->b(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v4, Lxs;

    iget-object v0, p0, Lyt;->a:Landroid/content/Context;

    invoke-direct {v4, v0, v1}, Lxs;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 104
    const/16 v0, 0x19

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Z)Lsg;

    move-result-object v0

    .line 105
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->b(Z)V

    .line 106
    iget-object v1, p0, Lyt;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqy;->a(Lsg;)I

    .line 118
    :cond_5
    :goto_2
    const/16 v0, 0x30

    goto/16 :goto_0

    .line 108
    :cond_6
    const-string v0, "has this request,ignore!! "

    invoke-direct {p0, v0}, Lyt;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 111
    :catch_0
    move-exception v0

    goto :goto_2

    .line 119
    :cond_7
    if-eq v2, v0, :cond_0

    .line 121
    const/16 v0, 0x21

    if-ne v2, v0, :cond_8

    .line 122
    const/16 v0, 0x21

    goto/16 :goto_0

    .line 123
    :cond_8
    const/16 v0, 0x25

    if-ne v2, v0, :cond_9

    .line 124
    const/16 v0, 0x25

    goto/16 :goto_0

    .line 126
    :cond_9
    const-string v0, "app info download fail!!"

    invoke-direct {p0, v0}, Lyt;->a(Ljava/lang/String;)V

    .line 127
    const/16 v0, 0x31

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lyt;->a:Lalv;

    .line 133
    iget-object v0, p0, Lyt;->a:Lsg;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lyt;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 136
    :cond_0
    iget-object v0, p0, Lyt;->a:Lrr;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lyt;->a:Lrr;

    invoke-virtual {v0}, Lrr;->d()V

    .line 138
    :cond_1
    return-void
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lyt;->a:Lalv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lyt;->c:Z

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lyt;->a:Lalv;

    invoke-interface {v0}, Lalv;->e()V

    .line 41
    :cond_0
    invoke-direct {p0}, Lyt;->a()I

    move-result v0

    .line 43
    iget-object v1, p0, Lyt;->a:Lalv;

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lyt;->a:Lalv;

    invoke-interface {v1, v0}, Lalv;->a(I)V

    .line 47
    :cond_1
    return-void
.end method
