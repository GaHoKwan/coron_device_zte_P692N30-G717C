.class Lcom/autonavi/xmgd/i/h;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/autonavi/xmgd/e/c;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>(Lcom/autonavi/xmgd/i/f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput v0, p0, Lcom/autonavi/xmgd/i/h;->d:I

    iput v0, p0, Lcom/autonavi/xmgd/i/h;->e:I

    iput-boolean v0, p0, Lcom/autonavi/xmgd/i/h;->f:Z

    iput-boolean v0, p0, Lcom/autonavi/xmgd/i/h;->g:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/i/h;->b:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/xmgd/i/f;Lcom/autonavi/xmgd/i/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/i/h;-><init>(Lcom/autonavi/xmgd/i/f;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "processtime"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :cond_1
    const-string v0, "rspcode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/i/h;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "rsptype"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "userid"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/h;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/e/c;->b:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "x"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/i/h;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput v4, p0, Lcom/autonavi/xmgd/i/h;->d:I

    goto :goto_0

    :cond_6
    const-string v0, "y"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :try_start_1
    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/i/h;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iput v4, p0, Lcom/autonavi/xmgd/i/h;->e:I

    goto :goto_0

    :cond_7
    const-string v0, "name"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/h;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/e/c;->szName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string v0, "address"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/h;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/e/c;->szAddr:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const-string v0, "tel"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/h;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/e/c;->szTel:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string v0, "adcode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_b

    const-string v1, "autonavi60"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SyncForFavorite] adcode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/h;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/autonavi/xmgd/e/c;->lAdminCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    iput v4, v0, Lcom/autonavi/xmgd/e/c;->lAdminCode:I

    goto/16 :goto_0

    :cond_c
    const-string v0, "time"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/h;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/e/c;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const-string v0, "subtype"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :try_start_3
    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/h;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/autonavi/xmgd/e/c;->a:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    iput v5, v0, Lcom/autonavi/xmgd/e/c;->a:I

    goto/16 :goto_0

    :cond_e
    const-string v0, "remark"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/autonavi/xmgd/e/c;->e:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/autonavi/xmgd/i/i;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/i/i;-><init>(Lcom/autonavi/xmgd/i/h;)V

    invoke-virtual {v1}, Lcom/autonavi/xmgd/i/i;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    :try_start_4
    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "mLanguage"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v2

    if-lez v2, :cond_f

    :try_start_5
    iget-object v2, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/autonavi/xm/navigation/server/map/GLanguage;->valueOf(I)Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v1

    iput-object v1, v2, Lcom/autonavi/xmgd/e/c;->e:Lcom/autonavi/xm/navigation/server/map/GLanguage;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :cond_f
    :goto_1
    :try_start_6
    iget-object v2, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    const-string v1, "pname"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/autonavi/xmgd/e/c;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    const-string v1, "cname"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/autonavi/xmgd/e/c;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    const-string v2, "dname"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/autonavi/xmgd/e/c;->h:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto/16 :goto_0

    :cond_10
    const-string v0, "poi"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    iput v4, v0, Lcom/autonavi/xmgd/e/c;->d:I

    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    new-instance v1, Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, p0, Lcom/autonavi/xmgd/i/h;->d:I

    iget v3, p0, Lcom/autonavi/xmgd/i/h;->e:I

    invoke-direct {v1, v2, v3}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    iput-object v1, v0, Lcom/autonavi/xmgd/e/c;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    iget v0, v0, Lcom/autonavi/xmgd/e/c;->lAdminCode:I

    if-gtz v0, :cond_11

    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    iget-object v2, v2, Lcom/autonavi/xmgd/e/c;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v1

    iput v1, v0, Lcom/autonavi/xmgd/e/c;->lAdminCode:I

    :cond_11
    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    iget v0, v0, Lcom/autonavi/xmgd/e/c;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    iget-boolean v0, p0, Lcom/autonavi/xmgd/i/h;->f:Z

    if-nez v0, :cond_12

    iput-boolean v5, p0, Lcom/autonavi/xmgd/i/h;->f:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    iget v0, v0, Lcom/autonavi/xmgd/e/c;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    iget-boolean v0, p0, Lcom/autonavi/xmgd/i/h;->g:Z

    if-nez v0, :cond_13

    iput-boolean v5, p0, Lcom/autonavi/xmgd/i/h;->g:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    iget v0, v0, Lcom/autonavi/xmgd/e/c;->a:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/i/h;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_5
    move-exception v1

    goto/16 :goto_1
.end method

.method public startDocument()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/i/h;->h:Ljava/lang/StringBuilder;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    const-string v0, "poi"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/e/c;

    invoke-direct {v0}, Lcom/autonavi/xmgd/e/c;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/i/h;->c:Lcom/autonavi/xmgd/e/c;

    :cond_0
    return-void
.end method
