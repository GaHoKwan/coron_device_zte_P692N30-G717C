.class Lcom/autonavi/xmgd/c/m;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/c/k;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/c/n;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/StringBuilder;

.field private f:Lcom/autonavi/xmgd/c/k;

.field private g:Lcom/autonavi/xmgd/c/n;

.field private h:Z


# direct methods
.method private constructor <init>(Lcom/autonavi/xmgd/c/l;)V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xmgd/c/m;->a:I

    const-string v0, "0000"

    iput-object v0, p0, Lcom/autonavi/xmgd/c/m;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/c/m;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/c/m;->d:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/c/m;->h:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/xmgd/c/l;Lcom/autonavi/xmgd/c/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/c/m;-><init>(Lcom/autonavi/xmgd/c/l;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const v3, 0x49742400

    const/4 v1, 0x0

    const-string v0, "count"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/c/m;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :catch_0
    move-exception v0

    iput v1, p0, Lcom/autonavi/xmgd/c/m;->a:I

    goto :goto_0

    :cond_1
    const-string v0, "errorcode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/c/m;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "pguid"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/autonavi/xmgd/c/m;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->f:Lcom/autonavi/xmgd/c/k;

    iget-object v2, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/xmgd/c/k;->a:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "name"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/autonavi/xmgd/c/m;->h:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->f:Lcom/autonavi/xmgd/c/k;

    iget-object v2, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/xmgd/c/k;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->f:Lcom/autonavi/xmgd/c/k;

    iget-object v0, v0, Lcom/autonavi/xmgd/c/k;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->f:Lcom/autonavi/xmgd/c/k;

    iget-object v2, p0, Lcom/autonavi/xmgd/c/m;->f:Lcom/autonavi/xmgd/c/k;

    iget-object v2, v2, Lcom/autonavi/xmgd/c/k;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/xmgd/c/k;->e:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->g:Lcom/autonavi/xmgd/c/n;

    iget-object v2, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/xmgd/c/n;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->g:Lcom/autonavi/xmgd/c/n;

    iget-object v0, v0, Lcom/autonavi/xmgd/c/n;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->g:Lcom/autonavi/xmgd/c/n;

    iget-object v2, p0, Lcom/autonavi/xmgd/c/m;->g:Lcom/autonavi/xmgd/c/n;

    iget-object v2, v2, Lcom/autonavi/xmgd/c/n;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/xmgd/c/n;->a:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "ename"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/autonavi/xmgd/c/m;->h:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->f:Lcom/autonavi/xmgd/c/k;

    iget-object v2, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/xmgd/c/k;->f:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->g:Lcom/autonavi/xmgd/c/n;

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string v0, "adcode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_18

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_1
    iget-boolean v2, p0, Lcom/autonavi/xmgd/c/m;->h:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/autonavi/xmgd/c/m;->f:Lcom/autonavi/xmgd/c/k;

    iput v0, v2, Lcom/autonavi/xmgd/c/k;->d:I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/autonavi/xmgd/c/m;->g:Lcom/autonavi/xmgd/c/n;

    iput v0, v2, Lcom/autonavi/xmgd/c/n;->b:I

    goto/16 :goto_0

    :cond_9
    const-string v0, "address"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/autonavi/xmgd/c/m;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->f:Lcom/autonavi/xmgd/c/k;

    iget-object v2, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/xmgd/c/k;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string v0, "eaddress"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/autonavi/xmgd/c/m;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->f:Lcom/autonavi/xmgd/c/k;

    iget-object v2, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/xmgd/c/k;->h:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string v0, "pname"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/autonavi/xmgd/c/m;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->f:Lcom/autonavi/xmgd/c/k;

    iget-object v2, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/xmgd/c/k;->j:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string v0, "pename"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/autonavi/xmgd/c/m;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->f:Lcom/autonavi/xmgd/c/k;

    iget-object v2, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/xmgd/c/k;->k:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const-string v0, "cname"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/autonavi/xmgd/c/m;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->f:Lcom/autonavi/xmgd/c/k;

    iget-object v2, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/xmgd/c/k;->l:Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    const-string v0, "cename"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/autonavi/xmgd/c/m;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->f:Lcom/autonavi/xmgd/c/k;

    iget-object v2, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/xmgd/c/k;->m:Ljava/lang/String;

    goto/16 :goto_0

    :cond_f
    const-string v0, "dname"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/autonavi/xmgd/c/m;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->f:Lcom/autonavi/xmgd/c/k;

    iget-object v2, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/xmgd/c/k;->n:Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    const-string v0, "dename"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/autonavi/xmgd/c/m;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->f:Lcom/autonavi/xmgd/c/k;

    iget-object v2, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/xmgd/c/k;->o:Ljava/lang/String;

    goto/16 :goto_0

    :cond_11
    const-string v0, "tel"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/autonavi/xmgd/c/m;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->f:Lcom/autonavi/xmgd/c/k;

    iget-object v2, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/xmgd/c/k;->i:Ljava/lang/String;

    goto/16 :goto_0

    :cond_12
    const-string v0, "x"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/autonavi/xmgd/c/m;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    :try_start_2
    iget-object v2, p0, Lcom/autonavi/xmgd/c/m;->f:Lcom/autonavi/xmgd/c/k;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Lcom/autonavi/xmgd/c/k;->b:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->f:Lcom/autonavi/xmgd/c/k;

    iput v1, v0, Lcom/autonavi/xmgd/c/k;->b:I

    goto/16 :goto_0

    :cond_13
    const-string v0, "y"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/autonavi/xmgd/c/m;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    :try_start_3
    iget-object v2, p0, Lcom/autonavi/xmgd/c/m;->f:Lcom/autonavi/xmgd/c/k;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Lcom/autonavi/xmgd/c/k;->c:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->f:Lcom/autonavi/xmgd/c/k;

    iput v1, v0, Lcom/autonavi/xmgd/c/k;->c:I

    goto/16 :goto_0

    :cond_14
    const-string v0, "citycode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/autonavi/xmgd/c/m;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->g:Lcom/autonavi/xmgd/c/n;

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    const-string v0, "resultnum"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/autonavi/xmgd/c/m;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    :try_start_4
    iget-object v2, p0, Lcom/autonavi/xmgd/c/m;->g:Lcom/autonavi/xmgd/c/n;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/autonavi/xmgd/c/n;->c:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->g:Lcom/autonavi/xmgd/c/n;

    iput v1, v0, Lcom/autonavi/xmgd/c/n;->c:I

    goto/16 :goto_0

    :cond_16
    const-string v0, "poi"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/autonavi/xmgd/c/m;->f:Lcom/autonavi/xmgd/c/k;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_17
    const-string v0, "citysuggestion"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/m;->d:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/autonavi/xmgd/c/m;->g:Lcom/autonavi/xmgd/c/n;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_18
    move v0, v1

    goto/16 :goto_1
.end method

.method public startDocument()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/c/m;->e:Ljava/lang/StringBuilder;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    const-string v0, "poi"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/c/m;->h:Z

    new-instance v0, Lcom/autonavi/xmgd/c/k;

    invoke-direct {v0}, Lcom/autonavi/xmgd/c/k;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/c/m;->f:Lcom/autonavi/xmgd/c/k;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "citysuggestion"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/c/m;->h:Z

    new-instance v0, Lcom/autonavi/xmgd/c/n;

    invoke-direct {v0}, Lcom/autonavi/xmgd/c/n;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/c/m;->g:Lcom/autonavi/xmgd/c/n;

    goto :goto_0
.end method
