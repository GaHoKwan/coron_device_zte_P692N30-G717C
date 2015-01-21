.class public Lcom/autonavi/xmgd/logic/am;
.super Lcom/autonavi/xmgd/logic/n;

# interfaces
.implements Lcom/autonavi/xmgd/logic/l;


# static fields
.field private static a:Lcom/autonavi/xmgd/logic/l;


# instance fields
.field private b:Landroid/app/Application;

.field private c:Landroid/os/Handler;

.field private d:Lcom/autonavi/xmgd/logic/m;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Lcom/autonavi/xmgd/logic/ao;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/xmgd/logic/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Application;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/autonavi/xmgd/logic/n;-><init>()V

    iput-boolean v1, p0, Lcom/autonavi/xmgd/logic/am;->e:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/logic/am;->f:Z

    iput v0, p0, Lcom/autonavi/xmgd/logic/am;->g:I

    iput v0, p0, Lcom/autonavi/xmgd/logic/am;->h:I

    iput v0, p0, Lcom/autonavi/xmgd/logic/am;->i:I

    iput v0, p0, Lcom/autonavi/xmgd/logic/am;->j:I

    iput v0, p0, Lcom/autonavi/xmgd/logic/am;->k:I

    iput v0, p0, Lcom/autonavi/xmgd/logic/am;->l:I

    new-instance v0, Lcom/autonavi/xmgd/logic/ao;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/logic/ao;-><init>(Lcom/autonavi/xmgd/logic/am;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/am;->m:Lcom/autonavi/xmgd/logic/ao;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/am;->n:Ljava/util/List;

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/am;->b:Landroid/app/Application;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/am;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/logic/am;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/logic/am;->g:I

    return v0
.end method

.method public static a(Landroid/app/Application;)Lcom/autonavi/xmgd/logic/l;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/logic/am;->a:Lcom/autonavi/xmgd/logic/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/logic/am;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/logic/am;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/autonavi/xmgd/logic/am;->a:Lcom/autonavi/xmgd/logic/l;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/logic/am;->a:Lcom/autonavi/xmgd/logic/l;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/am;->c:Landroid/os/Handler;

    new-instance v1, Lcom/autonavi/xmgd/logic/an;

    invoke-direct {v1, p0, p1}, Lcom/autonavi/xmgd/logic/an;-><init>(Lcom/autonavi/xmgd/logic/am;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/logic/am;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/logic/am;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/autonavi/xmgd/logic/am;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/logic/am;->i:I

    return v0
.end method

.method static synthetic b(Lcom/autonavi/xmgd/logic/am;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/logic/am;->g:I

    return p1
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/am;->d:Lcom/autonavi/xmgd/logic/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/am;->d:Lcom/autonavi/xmgd/logic/m;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/logic/m;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/am;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/logic/m;

    invoke-interface {v0, p1}, Lcom/autonavi/xmgd/logic/m;->a(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/autonavi/xmgd/logic/am;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/logic/am;->h:I

    return v0
.end method

.method static synthetic d(Lcom/autonavi/xmgd/logic/am;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic e(Lcom/autonavi/xmgd/logic/am;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/autonavi/xmgd/logic/am;->d:Lcom/autonavi/xmgd/logic/m;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/am;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/am;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sput-object v1, Lcom/autonavi/xmgd/logic/am;->a:Lcom/autonavi/xmgd/logic/l;

    :cond_0
    return-void
.end method

.method public a(Lcom/autonavi/xmgd/controls/r;)V
    .locals 6

    const/4 v2, 0x2

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/logic/n;->a(Lcom/autonavi/xmgd/controls/r;)V

    check-cast p1, Lcom/autonavi/xmgd/logic/m;

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/am;->d:Lcom/autonavi/xmgd/logic/m;

    iget-boolean v1, p0, Lcom/autonavi/xmgd/logic/am;->e:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/am;->e:Z

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/am;->m:Lcom/autonavi/xmgd/logic/ao;

    invoke-static {v1}, Lcom/autonavi/xmgd/logic/ao;->a(Lcom/autonavi/xmgd/logic/ao;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v2, p0, Lcom/autonavi/xmgd/logic/am;->g:I

    :cond_1
    iget v1, p0, Lcom/autonavi/xmgd/logic/am;->g:I

    if-eq v1, v2, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/logic/am;->a(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/autonavi/xmgd/logic/am;->b:Landroid/app/Application;

    invoke-static {v1}, Lcom/autonavi/xmgd/naviservice/n;->a(Landroid/app/Application;)Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/naviservice/n;->g()Lcom/autonavi/xmgd/naviservice/e;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/naviservice/n;->a()V

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    sget-object v3, Lcom/autonavi/xmgd/a/a;->c:[Ljava/lang/String;

    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v0, v3, v2

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/logic/am;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/am;->c()V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    sput-object p1, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/am;->b:Landroid/app/Application;

    const-string v1, "autonavi"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    :cond_1
    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data_dir"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return-void
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/n;->b()V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/n;->c()Z

    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/am;->e()V

    iget v0, p0, Lcom/autonavi/xmgd/logic/am;->h:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/logic/am;->a(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/am;->f()V

    iget v0, p0, Lcom/autonavi/xmgd/logic/am;->i:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/logic/am;->a(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/logic/am;->a(I)V

    goto :goto_0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 4

    iget-boolean v0, p0, Lcom/autonavi/xmgd/logic/am;->f:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/logic/am;->f:Z

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/n;->g()Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->a()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->b()V

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "autonavi60"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[StartLogic] startUp result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v0, :cond_2

    const/16 v0, 0x9

    iput v0, p0, Lcom/autonavi/xmgd/logic/am;->h:I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NO_DATA:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v1, v0, :cond_3

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NO_MEMORY:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v0, :cond_4

    :cond_3
    const/16 v0, 0x10

    iput v0, p0, Lcom/autonavi/xmgd/logic/am;->h:I

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    iput v0, p0, Lcom/autonavi/xmgd/logic/am;->h:I

    goto :goto_0
.end method

.method public f()V
    .locals 4

    iget v0, p0, Lcom/autonavi/xmgd/logic/am;->h:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    const-string v1, "[StartLogic]\u5fc5\u987b\u5f15\u64ce\u521d\u59cb\u5316\u6210\u529f\u540e\uff0c\u624d\u80fd\u521d\u59cb\u5316\u8fd9\u4e9b\u4fe1\u606f\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/xmgd/logic/am;->i:I

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    const-string v1, "[StartLogic] Configs has inited"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    const-string v1, "[StartLogic] NaviLogic didn\'t init"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/n;->d()I

    move-result v0

    sget-boolean v1, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v1, :cond_4

    const-string v1, "autonavi60"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[StartLogic] NaviLogic initModules result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[StartLogic] initConfigs result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/autonavi/xmgd/logic/am;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xf

    iput v0, p0, Lcom/autonavi/xmgd/logic/am;->i:I

    goto :goto_1

    :pswitch_2
    const/16 v0, 0xb

    iput v0, p0, Lcom/autonavi/xmgd/logic/am;->i:I

    goto :goto_1

    :pswitch_3
    const/16 v0, 0xc

    iput v0, p0, Lcom/autonavi/xmgd/logic/am;->i:I

    goto :goto_1

    :pswitch_4
    const/16 v0, 0xd

    iput v0, p0, Lcom/autonavi/xmgd/logic/am;->i:I

    goto :goto_1

    :pswitch_5
    const/16 v0, 0xe

    iput v0, p0, Lcom/autonavi/xmgd/logic/am;->i:I

    goto :goto_1

    :pswitch_6
    const/16 v0, 0x10

    iput v0, p0, Lcom/autonavi/xmgd/logic/am;->i:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
