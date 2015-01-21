.class Lcom/autonavi/xmgd/update/h;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private synthetic b:Lcom/autonavi/xmgd/update/e;


# direct methods
.method private constructor <init>(Lcom/autonavi/xmgd/update/e;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/update/h;->b:Lcom/autonavi/xmgd/update/e;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/xmgd/update/e;Lcom/autonavi/xmgd/update/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/update/h;-><init>(Lcom/autonavi/xmgd/update/e;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/update/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "rspcode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/update/h;->b:Lcom/autonavi/xmgd/update/e;

    invoke-static {v0}, Lcom/autonavi/xmgd/update/e;->a(Lcom/autonavi/xmgd/update/e;)Lcom/autonavi/xmgd/update/j;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/update/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/update/j;->a:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/update/h;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :cond_1
    const-string v0, "update"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/update/h;->b:Lcom/autonavi/xmgd/update/e;

    invoke-static {v0}, Lcom/autonavi/xmgd/update/e;->a(Lcom/autonavi/xmgd/update/e;)Lcom/autonavi/xmgd/update/j;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/update/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/autonavi/xmgd/update/j;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const-string v0, "status"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/autonavi/xmgd/update/h;->b:Lcom/autonavi/xmgd/update/e;

    invoke-static {v0}, Lcom/autonavi/xmgd/update/e;->a(Lcom/autonavi/xmgd/update/e;)Lcom/autonavi/xmgd/update/j;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/update/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/autonavi/xmgd/update/j;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_3
    const-string v0, "type"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/autonavi/xmgd/update/h;->b:Lcom/autonavi/xmgd/update/e;

    invoke-static {v0}, Lcom/autonavi/xmgd/update/e;->a(Lcom/autonavi/xmgd/update/e;)Lcom/autonavi/xmgd/update/j;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/update/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/autonavi/xmgd/update/j;->c:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :cond_4
    const-string v0, "resver"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_3
    iget-object v0, p0, Lcom/autonavi/xmgd/update/h;->b:Lcom/autonavi/xmgd/update/e;

    invoke-static {v0}, Lcom/autonavi/xmgd/update/e;->a(Lcom/autonavi/xmgd/update/e;)Lcom/autonavi/xmgd/update/j;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/update/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/autonavi/xmgd/update/j;->f:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_0

    :cond_5
    const-string v0, "mapver"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/update/h;->b:Lcom/autonavi/xmgd/update/e;

    invoke-static {v0}, Lcom/autonavi/xmgd/update/e;->a(Lcom/autonavi/xmgd/update/e;)Lcom/autonavi/xmgd/update/j;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/update/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/update/j;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const-string v0, "desc"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/xmgd/update/h;->b:Lcom/autonavi/xmgd/update/e;

    invoke-static {v0}, Lcom/autonavi/xmgd/update/e;->a(Lcom/autonavi/xmgd/update/e;)Lcom/autonavi/xmgd/update/j;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/update/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/update/j;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string v0, "repdesc"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/update/h;->b:Lcom/autonavi/xmgd/update/e;

    invoke-static {v0}, Lcom/autonavi/xmgd/update/e;->a(Lcom/autonavi/xmgd/update/e;)Lcom/autonavi/xmgd/update/j;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/update/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/update/j;->h:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public startDocument()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/update/h;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    return-void
.end method
