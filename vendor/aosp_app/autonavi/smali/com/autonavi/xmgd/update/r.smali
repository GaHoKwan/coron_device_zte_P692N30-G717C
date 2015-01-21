.class Lcom/autonavi/xmgd/update/r;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private synthetic b:Lcom/autonavi/xmgd/update/p;


# direct methods
.method private constructor <init>(Lcom/autonavi/xmgd/update/p;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/update/r;->b:Lcom/autonavi/xmgd/update/p;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/xmgd/update/p;Lcom/autonavi/xmgd/update/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/update/r;-><init>(Lcom/autonavi/xmgd/update/p;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/update/r;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "rspcode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/update/r;->b:Lcom/autonavi/xmgd/update/p;

    invoke-static {v0}, Lcom/autonavi/xmgd/update/p;->a(Lcom/autonavi/xmgd/update/p;)Lcom/autonavi/xmgd/update/f;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/update/r;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/update/f;->a:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/update/r;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :cond_1
    const-string v0, "repdesc"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/update/r;->b:Lcom/autonavi/xmgd/update/p;

    invoke-static {v0}, Lcom/autonavi/xmgd/update/p;->a(Lcom/autonavi/xmgd/update/p;)Lcom/autonavi/xmgd/update/f;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/update/r;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/update/f;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "update"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/update/r;->b:Lcom/autonavi/xmgd/update/p;

    invoke-static {v0}, Lcom/autonavi/xmgd/update/p;->a(Lcom/autonavi/xmgd/update/p;)Lcom/autonavi/xmgd/update/f;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/update/r;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/autonavi/xmgd/update/f;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    const-string v0, "status"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/autonavi/xmgd/update/r;->b:Lcom/autonavi/xmgd/update/p;

    invoke-static {v0}, Lcom/autonavi/xmgd/update/p;->a(Lcom/autonavi/xmgd/update/p;)Lcom/autonavi/xmgd/update/f;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/update/r;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/autonavi/xmgd/update/f;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_4
    const-string v0, "len"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/update/r;->b:Lcom/autonavi/xmgd/update/p;

    invoke-static {v0}, Lcom/autonavi/xmgd/update/p;->a(Lcom/autonavi/xmgd/update/p;)Lcom/autonavi/xmgd/update/f;

    iget-object v0, p0, Lcom/autonavi/xmgd/update/r;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "apkver"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/update/r;->b:Lcom/autonavi/xmgd/update/p;

    invoke-static {v0}, Lcom/autonavi/xmgd/update/p;->a(Lcom/autonavi/xmgd/update/p;)Lcom/autonavi/xmgd/update/f;

    iget-object v0, p0, Lcom/autonavi/xmgd/update/r;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const-string v0, "apkurl"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/xmgd/update/r;->b:Lcom/autonavi/xmgd/update/p;

    invoke-static {v0}, Lcom/autonavi/xmgd/update/p;->a(Lcom/autonavi/xmgd/update/p;)Lcom/autonavi/xmgd/update/f;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/update/r;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/update/f;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string v0, "desc"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/update/r;->b:Lcom/autonavi/xmgd/update/p;

    invoke-static {v0}, Lcom/autonavi/xmgd/update/p;->a(Lcom/autonavi/xmgd/update/p;)Lcom/autonavi/xmgd/update/f;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/update/r;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/update/f;->f:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public startDocument()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/update/r;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    return-void
.end method
