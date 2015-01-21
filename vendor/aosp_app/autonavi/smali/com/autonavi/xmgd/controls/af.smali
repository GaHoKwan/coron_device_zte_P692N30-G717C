.class public Lcom/autonavi/xmgd/controls/af;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/autonavi/xmgd/controls/af;


# instance fields
.field private a:I

.field private b:[Lcom/autonavi/xmgd/e/k;

.field private c:I

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/autonavi/xmgd/controls/af;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/af;->b:[Lcom/autonavi/xmgd/e/k;

    iput v1, p0, Lcom/autonavi/xmgd/controls/af;->c:I

    iput-boolean v1, p0, Lcom/autonavi/xmgd/controls/af;->e:Z

    iput v2, p0, Lcom/autonavi/xmgd/controls/af;->a:I

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/autonavi/xmgd/e/k;

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/af;->b:[Lcom/autonavi/xmgd/e/k;

    iput v1, p0, Lcom/autonavi/xmgd/controls/af;->c:I

    return-void
.end method

.method public static a()Lcom/autonavi/xmgd/controls/af;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/controls/af;->d:Lcom/autonavi/xmgd/controls/af;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/controls/af;

    invoke-direct {v0}, Lcom/autonavi/xmgd/controls/af;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/controls/af;->d:Lcom/autonavi/xmgd/controls/af;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/controls/af;->d:Lcom/autonavi/xmgd/controls/af;

    return-object v0
.end method

.method public static b()V
    .locals 2

    sget-object v0, Lcom/autonavi/xmgd/controls/af;->d:Lcom/autonavi/xmgd/controls/af;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xmgd/controls/af;->d:Lcom/autonavi/xmgd/controls/af;

    const/4 v1, 0x2

    iput v1, v0, Lcom/autonavi/xmgd/controls/af;->a:I

    sget-object v0, Lcom/autonavi/xmgd/controls/af;->d:Lcom/autonavi/xmgd/controls/af;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/autonavi/xmgd/e/k;

    iput-object v1, v0, Lcom/autonavi/xmgd/controls/af;->b:[Lcom/autonavi/xmgd/e/k;

    sget-object v0, Lcom/autonavi/xmgd/controls/af;->d:Lcom/autonavi/xmgd/controls/af;

    const/4 v1, 0x0

    iput v1, v0, Lcom/autonavi/xmgd/controls/af;->c:I

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/controls/af;->d:Lcom/autonavi/xmgd/controls/af;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/controls/af;->a:I

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/e/k;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/af;->d()[Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/controls/af;->e()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x0

    aput-object p1, v0, v1

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    aput-object p1, v0, v1

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    aput-object p1, v0, v1

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x3

    aput-object p1, v0, v1

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x4

    aput-object p1, v0, v1

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x5

    aput-object p1, v0, v1

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x6

    aput-object p1, v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07015e

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/controls/af;->e:Z

    return-void
.end method

.method public a([Lcom/autonavi/xmgd/e/k;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/af;->b:[Lcom/autonavi/xmgd/e/k;

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/controls/af;->c:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/controls/af;->a:I

    return v0
.end method

.method public d()[Lcom/autonavi/xmgd/e/k;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/af;->b:[Lcom/autonavi/xmgd/e/k;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/controls/af;->c:I

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/controls/af;->e:Z

    return v0
.end method
