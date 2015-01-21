.class Lcom/autonavi/xmgd/i/l;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/j;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/autonavi/xmgd/e/j;

.field private d:I

.field private e:I

.field private f:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>(Lcom/autonavi/xmgd/i/j;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput v0, p0, Lcom/autonavi/xmgd/i/l;->d:I

    iput v0, p0, Lcom/autonavi/xmgd/i/l;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/i/l;->b:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/xmgd/i/j;Lcom/autonavi/xmgd/i/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/i/l;-><init>(Lcom/autonavi/xmgd/i/j;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/i/l;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "processtime"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/i/l;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/i/l;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :cond_1
    const-string v0, "rspcode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/i/l;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/i/l;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "rsptype"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/i/l;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "userid"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/i/l;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/i/l;->c:Lcom/autonavi/xmgd/e/j;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/l;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->b:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "x"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/i/l;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/i/l;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput v4, p0, Lcom/autonavi/xmgd/i/l;->d:I

    goto :goto_0

    :cond_6
    const-string v0, "y"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :try_start_1
    iget-object v0, p0, Lcom/autonavi/xmgd/i/l;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/i/l;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iput v4, p0, Lcom/autonavi/xmgd/i/l;->e:I

    goto :goto_0

    :cond_7
    const-string v0, "name"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/autonavi/xmgd/i/l;->c:Lcom/autonavi/xmgd/e/j;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/l;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->szName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string v0, "address"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/autonavi/xmgd/i/l;->c:Lcom/autonavi/xmgd/e/j;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/l;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->szAddr:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const-string v0, "tel"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/xmgd/i/l;->c:Lcom/autonavi/xmgd/e/j;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/l;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->szTel:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string v0, "adcode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/autonavi/xmgd/i/l;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_2
    iget-object v1, p0, Lcom/autonavi/xmgd/i/l;->c:Lcom/autonavi/xmgd/e/j;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/autonavi/xmgd/e/j;->lAdminCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xmgd/i/l;->c:Lcom/autonavi/xmgd/e/j;

    iput v4, v0, Lcom/autonavi/xmgd/e/j;->lAdminCode:I

    goto/16 :goto_0

    :cond_b
    const-string v0, "time"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/autonavi/xmgd/i/l;->c:Lcom/autonavi/xmgd/e/j;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/l;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string v0, "remark"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/autonavi/xmgd/i/l;->c:Lcom/autonavi/xmgd/e/j;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->e:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    iget-object v0, p0, Lcom/autonavi/xmgd/i/l;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/autonavi/xmgd/i/m;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/i/m;-><init>(Lcom/autonavi/xmgd/i/l;)V

    invoke-virtual {v1}, Lcom/autonavi/xmgd/i/m;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    :try_start_3
    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "mLanguage"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    if-lez v2, :cond_d

    :try_start_4
    iget-object v2, p0, Lcom/autonavi/xmgd/i/l;->c:Lcom/autonavi/xmgd/e/j;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/autonavi/xm/navigation/server/map/GLanguage;->valueOf(I)Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v1

    iput-object v1, v2, Lcom/autonavi/xmgd/e/j;->e:Lcom/autonavi/xm/navigation/server/map/GLanguage;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_d
    :goto_1
    :try_start_5
    iget-object v2, p0, Lcom/autonavi/xmgd/i/l;->c:Lcom/autonavi/xmgd/e/j;

    const-string v1, "pname"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/autonavi/xmgd/e/j;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/autonavi/xmgd/i/l;->c:Lcom/autonavi/xmgd/e/j;

    const-string v1, "cname"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/autonavi/xmgd/e/j;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/l;->c:Lcom/autonavi/xmgd/e/j;

    const-string v2, "dname"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/autonavi/xmgd/e/j;->h:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_0

    :cond_e
    const-string v0, "poi"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/i/l;->c:Lcom/autonavi/xmgd/e/j;

    iput v4, v0, Lcom/autonavi/xmgd/e/j;->d:I

    iget-object v0, p0, Lcom/autonavi/xmgd/i/l;->c:Lcom/autonavi/xmgd/e/j;

    new-instance v1, Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, p0, Lcom/autonavi/xmgd/i/l;->d:I

    iget v3, p0, Lcom/autonavi/xmgd/i/l;->e:I

    invoke-direct {v1, v2, v3}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    iput-object v1, v0, Lcom/autonavi/xmgd/e/j;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v0, p0, Lcom/autonavi/xmgd/i/l;->c:Lcom/autonavi/xmgd/e/j;

    iget v0, v0, Lcom/autonavi/xmgd/e/j;->lAdminCode:I

    if-gtz v0, :cond_f

    iget-object v0, p0, Lcom/autonavi/xmgd/i/l;->c:Lcom/autonavi/xmgd/e/j;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/i/l;->c:Lcom/autonavi/xmgd/e/j;

    iget-object v2, v2, Lcom/autonavi/xmgd/e/j;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v1

    iput v1, v0, Lcom/autonavi/xmgd/e/j;->lAdminCode:I

    :cond_f
    iget-object v0, p0, Lcom/autonavi/xmgd/i/l;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/l;->c:Lcom/autonavi/xmgd/e/j;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public startDocument()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/i/l;->f:Ljava/lang/StringBuilder;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    const-string v0, "poi"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/e/j;

    invoke-direct {v0}, Lcom/autonavi/xmgd/e/j;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/i/l;->c:Lcom/autonavi/xmgd/e/j;

    :cond_0
    return-void
.end method
