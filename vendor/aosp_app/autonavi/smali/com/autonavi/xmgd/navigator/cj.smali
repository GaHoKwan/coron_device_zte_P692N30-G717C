.class Lcom/autonavi/xmgd/navigator/cj;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Lcom/autonavi/xmgd/e/k;

.field private synthetic c:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Map;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/cj;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/cj;->b:Lcom/autonavi/xmgd/e/k;

    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iget v3, p0, Lcom/autonavi/xmgd/navigator/cj;->a:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/cj;->b(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v4, :cond_2

    const-string v4, "autonavi60"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Map] dealIntentData scheme = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SHOWMAP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NAVI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GEOSHOWMAP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GEONAVI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-direct {p0, v2}, Lcom/autonavi/xmgd/navigator/cj;->a(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    iput v1, p0, Lcom/autonavi/xmgd/navigator/cj;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/cj;->b:Lcom/autonavi/xmgd/e/k;

    move v0, v1

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 8

    const v6, 0x49742400

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    array-length v3, v5

    if-lt v3, v7, :cond_9

    const-string v3, ""

    const/4 v4, 0x0

    aget-object v4, v5, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, ""

    const/4 v4, 0x1

    aget-object v4, v5, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    mul-float/2addr v3, v6

    float-to-int v4, v3

    const/4 v3, 0x1

    aget-object v3, v5, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    mul-float/2addr v3, v6

    float-to-int v3, v3

    array-length v6, v5

    if-le v6, v7, :cond_0

    const/4 v2, 0x2

    aget-object v2, v5, v2

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    if-nez v3, :cond_2

    :cond_1
    move v0, v1

    :goto_1
    return v0

    :cond_2
    new-instance v5, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v5, v4, v3}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v3}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/autonavi/xmgd/logic/b;->b(Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xmgd/e/k;

    move-result-object v3

    iput-object v3, p0, Lcom/autonavi/xmgd/navigator/cj;->b:Lcom/autonavi/xmgd/e/k;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/cj;->b:Lcom/autonavi/xmgd/e/k;

    iput-object v2, v3, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    :goto_2
    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/autonavi/xmgd/logic/b;->c(Lcom/autonavi/xm/navigation/server/GCoord;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NAVI"

    const-string v4, "SHOWMAP"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GEONAVI"

    const-string v4, "GEOSHOWMAP"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHOWMAP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    iput v2, p0, Lcom/autonavi/xmgd/navigator/cj;->a:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/navigator/Map;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0701c7

    invoke-static {v2, v3}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    :cond_4
    :goto_3
    move v0, v1

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cj;->b:Lcom/autonavi/xmgd/e/k;

    const-string v3, "\u672a\u77e5\u9053\u8def"

    iput-object v3, v2, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/navigator/Map;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0701c6

    invoke-static {v2, v3}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NAVI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    iput v2, p0, Lcom/autonavi/xmgd/navigator/cj;->a:I

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GEOSHOWMAP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x2

    iput v2, p0, Lcom/autonavi/xmgd/navigator/cj;->a:I

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GEONAVI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    iput v2, p0, Lcom/autonavi/xmgd/navigator/cj;->a:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :cond_9
    move v3, v1

    move v4, v1

    goto/16 :goto_0
.end method

.method private b(Landroid/content/Intent;)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lon"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "lat"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    const-string v2, "\u5206\u4eab\u6570\u636e\u6709\u8bef\uff0c\u65e0\u6cd5\u5b9a\u4f4d\u5230\u8be5\u70b9"

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    new-instance v4, Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {v4, v2, v3}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/autonavi/xmgd/logic/b;->c(Lcom/autonavi/xm/navigation/server/GCoord;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    const-string v2, "\u5206\u4eab\u6570\u636e\u6240\u5728\u533a\u57df\u65e0\u6570\u636e\uff0c\u65e0\u6cd5\u5b9a\u4f4d\u5230\u8be5\u70b9\uff01"

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/autonavi/xmgd/logic/b;->b(Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/cj;->b:Lcom/autonavi/xmgd/e/k;

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cj;->b:Lcom/autonavi/xmgd/e/k;

    const-string v1, "\u672a\u77e5\u9053\u8def"

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cj;->b:Lcom/autonavi/xmgd/e/k;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    goto :goto_1
.end method

.method private c(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "NAVI"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "autonavi60"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ExtraNavigator] lenovoCommand : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "GO_HOME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.autonavi.xmgd.navigator_new.action.go_home"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/Map;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v1, "GO_COMPANY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.autonavi.xmgd.navigator_new.action.go_company"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/Map;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v1, "OPEN_TMC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/autonavi/xmgd/logic/MapLogicImpl;->ac()Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->K()I

    move-result v0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/w;->a()Lcom/autonavi/xmgd/naviservice/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/naviservice/w;->a(I)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :cond_5
    const-string v1, "STOP_NAVI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const-string v1, "\u5bfc\u822a\u6b63\u5728\u9000\u51fa..."

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->u(Lcom/autonavi/xmgd/navigator/Map;)V

    goto :goto_0

    :cond_6
    const-string v1, "OPEN_VOICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->e:I

    invoke-virtual {v0, v1, v4}, Lcom/autonavi/xmgd/naviservice/l;->a(II)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->E()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/autonavi/xmgd/logic/b;->b(Z)V

    :cond_7
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070053

    invoke-virtual {v0, v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->showToast(IZ)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "CLOSE_VOICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/naviservice/l;->a(II)Z

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070054

    invoke-virtual {v0, v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->showToast(IZ)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getExtraItent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "com.autonavi.xmgd.action.COMMAND"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "NAVI"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "CLOSE_VOICE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "OPEN_VOICE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "OPEN_TMC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "GO_COMPANY"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v4, "GO_HOME"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v4, "STOP_NAVI"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const-string v2, "com.autonavi.xmgd.action.START"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getExtraItent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    const-string v1, "[ExtraNavigator] intent = null !"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/autonavi/xmgd/application/NaviApplication;->setExtraItent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    sget-boolean v2, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v2, :cond_3

    const-string v2, "autonavi60"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ExtraNavigator] dealExtraIntent  action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iput v5, p0, Lcom/autonavi/xmgd/navigator/cj;->a:I

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->b:Lcom/autonavi/xmgd/e/k;

    const-string v2, "com.autonavi.xmgd.action.NAVIGATOR"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput v6, p0, Lcom/autonavi/xmgd/navigator/cj;->a:I

    :goto_1
    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/navigator/cj;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cj;->b:Lcom/autonavi/xmgd/e/k;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/controls/ab;->a(Lcom/autonavi/xmgd/e/k;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    const-class v3, Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v2, p0, Lcom/autonavi/xmgd/navigator/cj;->a:I

    if-ne v2, v6, :cond_18

    const-string v2, "com.autonavi.xmgd.navigator_new.action.set_dest"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v2, v0}, Lcom/autonavi/xmgd/navigator/Map;->startActivity(Landroid/content/Intent;)V

    :cond_4
    invoke-static {v1}, Lcom/autonavi/xmgd/application/NaviApplication;->setExtraItent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string v2, "com.autonavi.xmgdplugin.shareposition.action.showmap"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput v7, p0, Lcom/autonavi/xmgd/navigator/cj;->a:I

    goto :goto_1

    :cond_6
    const-string v2, "com.autonavi.xmgd.action.COMMAND"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/navigator/cj;->c(Landroid/content/Intent;)V

    invoke-static {v1}, Lcom/autonavi/xmgd/application/NaviApplication;->setExtraItent(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "com.autonavi.xmgd.action.SHOWMAP"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "com.autonavi.xmgd.action.NAVIGATE"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_8
    const-string v1, "target"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "geo:0,0?q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getExtraItent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->W(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->W(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->W(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->dismiss()V

    :cond_9
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->X(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->X(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->X(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->dismiss()V

    :cond_a
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;Landroid/content/Intent;)V

    :cond_b
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->e(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/c/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getExternalAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_c
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->Y(Lcom/autonavi/xmgd/navigator/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0, v5}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->e(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/c/l;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->e(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/c/l;->h()V

    goto/16 :goto_0

    :cond_d
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->W(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->W(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->W(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->dismiss()V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/naviservice/q;->b(Lcom/autonavi/xmgd/naviservice/g;)V

    :cond_e
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->X(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->X(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->X(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->dismiss()V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/naviservice/q;->b(Lcom/autonavi/xmgd/naviservice/g;)V

    :cond_f
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/navigator/Map;->b(Lcom/autonavi/xmgd/navigator/Map;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_10
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_11

    const-string v1, "autonavi60"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Map] extraAction is unspport!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getExtraItent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->W(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->W(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->W(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->dismiss()V

    :cond_12
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->X(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->X(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->X(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->dismiss()V

    :cond_13
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1, v0}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;Landroid/content/Intent;)V

    :cond_14
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->e(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/c/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getExternalAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/b;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_15
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->Y(Lcom/autonavi/xmgd/navigator/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0, v5}, Lcom/autonavi/xmgd/navigator/Map;->c(Lcom/autonavi/xmgd/navigator/Map;Z)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->e(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/c/l;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/cj;->c:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->e(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/c/l;->h()V

    goto/16 :goto_0

    :cond_16
    sget-boolean v2, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v2, :cond_17

    const-string v2, "autonavi60"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Map.ExtraNavigator] extraAction is unspport!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    invoke-static {v1}, Lcom/autonavi/xmgd/application/NaviApplication;->setExtraItent(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_18
    iget v2, p0, Lcom/autonavi/xmgd/navigator/cj;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_19

    const-string v2, "com.autonavi.xmgd.navigator_new.action.move_map"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_19
    iget v2, p0, Lcom/autonavi/xmgd/navigator/cj;->a:I

    if-ne v2, v7, :cond_1a

    const-string v2, "com.autonavi.xmgd.navigator_new.action.show_map_pois"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-array v3, v6, [Lcom/autonavi/xmgd/e/k;

    iget-object v4, p0, Lcom/autonavi/xmgd/navigator/cj;->b:Lcom/autonavi/xmgd/e/k;

    aput-object v4, v3, v5

    new-instance v4, Lcom/autonavi/xmgd/f/z;

    invoke-direct {v4}, Lcom/autonavi/xmgd/f/z;-><init>()V

    invoke-virtual {v4, v3}, Lcom/autonavi/xmgd/f/z;->a([Lcom/autonavi/xmgd/e/k;)V

    invoke-virtual {v4, v5}, Lcom/autonavi/xmgd/f/z;->a(I)V

    const-string v3, "poi_union"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_1a
    move-object v0, v1

    goto/16 :goto_2
.end method
