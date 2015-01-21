.class Lcom/autonavi/xmgd/logic/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/autonavi/xmgd/logic/am;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/logic/am;I)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/an;->b:Lcom/autonavi/xmgd/logic/am;

    iput p2, p0, Lcom/autonavi/xmgd/logic/an;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/autonavi/xmgd/logic/an;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/an;->b:Lcom/autonavi/xmgd/logic/am;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/an;->b:Lcom/autonavi/xmgd/logic/am;

    invoke-static {v1}, Lcom/autonavi/xmgd/logic/am;->a(Lcom/autonavi/xmgd/logic/am;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/logic/am;->a(Lcom/autonavi/xmgd/logic/am;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/an;->b:Lcom/autonavi/xmgd/logic/am;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/an;->b:Lcom/autonavi/xmgd/logic/am;

    invoke-static {v1}, Lcom/autonavi/xmgd/logic/am;->b(Lcom/autonavi/xmgd/logic/am;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/logic/am;->a(Lcom/autonavi/xmgd/logic/am;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/an;->b:Lcom/autonavi/xmgd/logic/am;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/an;->b:Lcom/autonavi/xmgd/logic/am;

    invoke-static {v1}, Lcom/autonavi/xmgd/logic/am;->c(Lcom/autonavi/xmgd/logic/am;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/logic/am;->a(Lcom/autonavi/xmgd/logic/am;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/an;->b:Lcom/autonavi/xmgd/logic/am;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/logic/am;->a(Lcom/autonavi/xmgd/logic/am;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/an;->b:Lcom/autonavi/xmgd/logic/am;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/an;->b:Lcom/autonavi/xmgd/logic/am;

    invoke-static {v1}, Lcom/autonavi/xmgd/logic/am;->d(Lcom/autonavi/xmgd/logic/am;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/logic/am;->a(Lcom/autonavi/xmgd/logic/am;I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/an;->b:Lcom/autonavi/xmgd/logic/am;

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/an;->b:Lcom/autonavi/xmgd/logic/am;

    invoke-static {v1}, Lcom/autonavi/xmgd/logic/am;->e(Lcom/autonavi/xmgd/logic/am;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/logic/am;->a(Lcom/autonavi/xmgd/logic/am;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
