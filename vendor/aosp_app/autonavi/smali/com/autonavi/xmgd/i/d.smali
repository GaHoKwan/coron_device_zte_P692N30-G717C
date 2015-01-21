.class Lcom/autonavi/xmgd/i/d;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/g;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/autonavi/xmgd/e/g;

.field private d:I

.field private e:I

.field private f:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>(Lcom/autonavi/xmgd/i/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput v0, p0, Lcom/autonavi/xmgd/i/d;->d:I

    iput v0, p0, Lcom/autonavi/xmgd/i/d;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/i/d;->b:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/xmgd/i/a;Lcom/autonavi/xmgd/i/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/i/d;-><init>(Lcom/autonavi/xmgd/i/a;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->f:Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :cond_1
    const-string v0, "rspcode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/i/d;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "rsptype"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "userid"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/d;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->b:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "x"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/i/d;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput v4, p0, Lcom/autonavi/xmgd/i/d;->d:I

    goto :goto_0

    :cond_6
    const-string v0, "y"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :try_start_1
    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/i/d;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iput v4, p0, Lcom/autonavi/xmgd/i/d;->e:I

    goto :goto_0

    :cond_7
    const-string v0, "edogtype"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    :try_start_2
    iget-object v1, p0, Lcom/autonavi/xmgd/i/d;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    iget-object v1, v1, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    invoke-static {v0}, Lcom/autonavi/xmgd/user/GUserSafeMaping;->mapingFromServerToLocal(I)Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->eCategory:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    goto/16 :goto_0

    :cond_8
    const-string v0, "v"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_3
    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/d;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iput-short v1, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nSpeed:S
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iput-short v4, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nSpeed:S

    goto/16 :goto_0

    :cond_9
    const-string v0, "name"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/d;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->szName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string v0, "adcode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_4
    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/d;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->lAdminCode:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iput v4, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->lAdminCode:I

    goto/16 :goto_0

    :cond_b
    const-string v0, "time"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/d;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string v0, "address"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/d;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->i:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const-string v0, "remark"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->e:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/autonavi/xmgd/i/e;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/i/e;-><init>(Lcom/autonavi/xmgd/i/d;)V

    invoke-virtual {v1}, Lcom/autonavi/xmgd/i/e;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    :try_start_5
    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "mLanguage"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result v2

    if-lez v2, :cond_e

    :try_start_6
    iget-object v2, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/autonavi/xm/navigation/server/map/GLanguage;->valueOf(I)Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v1

    iput-object v1, v2, Lcom/autonavi/xmgd/e/g;->e:Lcom/autonavi/xm/navigation/server/map/GLanguage;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :cond_e
    :goto_2
    :try_start_7
    iget-object v2, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    const-string v1, "pname"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/autonavi/xmgd/e/g;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    const-string v1, "cname"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/autonavi/xmgd/e/g;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    const-string v2, "dname"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/autonavi/xmgd/e/g;->h:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto/16 :goto_0

    :cond_f
    const-string v0, "poi"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    iput v4, v0, Lcom/autonavi/xmgd/e/g;->d:I

    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->eCategory:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    sget-object v1, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->GSAFE_CATEGORY_SURVEILLANCE_CAMERA:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->eCategory:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    :cond_10
    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    new-instance v1, Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, p0, Lcom/autonavi/xmgd/i/d;->d:I

    iget v3, p0, Lcom/autonavi/xmgd/i/d;->e:I

    invoke-direct {v1, v2, v3}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    iput-object v1, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->lAdminCode:I

    if-gtz v0, :cond_11

    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    iget-object v2, v2, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v1

    iput v1, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->lAdminCode:I

    :cond_11
    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto/16 :goto_1
.end method

.method public startDocument()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/i/d;->f:Ljava/lang/StringBuilder;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    const-string v0, "poi"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/e/g;

    invoke-direct {v0}, Lcom/autonavi/xmgd/e/g;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    iget-object v0, p0, Lcom/autonavi/xmgd/i/d;->c:Lcom/autonavi/xmgd/e/g;

    new-instance v1, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    invoke-direct {v1}, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;-><init>()V

    iput-object v1, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    :cond_0
    return-void
.end method
