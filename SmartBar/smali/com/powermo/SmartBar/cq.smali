.class Lcom/powermo/SmartBar/cq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/cm;

.field private b:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/powermo/SmartBar/cm;)V
    .locals 1

    iput-object p1, p0, Lcom/powermo/SmartBar/cq;->a:Lcom/powermo/SmartBar/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/SmartBar/cq;->b:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/powermo/SmartBar/cm;Lcom/powermo/SmartBar/cq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/SmartBar/cq;-><init>(Lcom/powermo/SmartBar/cm;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/powermo/SmartBar/cq;->a:Lcom/powermo/SmartBar/cm;

    invoke-virtual {v0, v2}, Lcom/powermo/SmartBar/cm;->a(Z)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/powermo/SmartBar/cq;->a:Lcom/powermo/SmartBar/cm;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/powermo/SmartBar/cm;->a(Lcom/powermo/SmartBar/cm;ZZ)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/powermo/SmartBar/cq;->a:Lcom/powermo/SmartBar/cm;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/powermo/SmartBar/cm;->a(Lcom/powermo/SmartBar/cm;I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/powermo/SmartBar/cq;->a:Lcom/powermo/SmartBar/cm;

    invoke-static {v0}, Lcom/powermo/SmartBar/cm;->a(Lcom/powermo/SmartBar/cm;)Lcom/powermo/SmartBar/ck;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/ck;->a(I)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/powermo/SmartBar/cq;->a:Lcom/powermo/SmartBar/cm;

    invoke-static {v0}, Lcom/powermo/SmartBar/cm;->a(Lcom/powermo/SmartBar/cm;)Lcom/powermo/SmartBar/ck;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/ck;->a(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f070031 -> :sswitch_1
        0x7f070032 -> :sswitch_2
        0x7f070033 -> :sswitch_0
        0x7f07003b -> :sswitch_3
        0x7f07003c -> :sswitch_4
    .end sparse-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x3

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v0, -0x1

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-ltz v0, :cond_0

    iget-object v4, p0, Lcom/powermo/SmartBar/cq;->a:Lcom/powermo/SmartBar/cm;

    invoke-static {v4}, Lcom/powermo/SmartBar/cm;->b(Lcom/powermo/SmartBar/cm;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/powermo/SmartBar/cq;->a:Lcom/powermo/SmartBar/cm;

    invoke-static {v4}, Lcom/powermo/SmartBar/cm;->c(Lcom/powermo/SmartBar/cm;)Lcom/powermo/SmartBar/cp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/powermo/SmartBar/cp;->c()V

    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    packed-switch v2, :pswitch_data_1

    :cond_1
    :goto_1
    return v5

    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x52

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xbb

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/powermo/SmartBar/cq;->a:Lcom/powermo/SmartBar/cm;

    invoke-static {v2, v0, v1}, Lcom/powermo/SmartBar/cm;->a(Lcom/powermo/SmartBar/cm;II)V

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/powermo/SmartBar/cq;->a:Lcom/powermo/SmartBar/cm;

    invoke-static {v1}, Lcom/powermo/SmartBar/cm;->a(Lcom/powermo/SmartBar/cm;)Lcom/powermo/SmartBar/ck;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powermo/SmartBar/ck;->b(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/cq;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-eq v3, v5, :cond_4

    if-ne v3, v1, :cond_1

    :cond_4
    if-ne v3, v5, :cond_5

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/powermo/SmartBar/cq;->b:Ljava/lang/Object;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/powermo/SmartBar/cq;->a:Lcom/powermo/SmartBar/cm;

    invoke-static {v0}, Lcom/powermo/SmartBar/cm;->a(Lcom/powermo/SmartBar/cm;)Lcom/powermo/SmartBar/ck;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/cq;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/ck;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/SmartBar/cq;->b:Ljava/lang/Object;

    :cond_5
    const v0, 0x7f070030

    if-ne v2, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/powermo/SmartBar/cq;->a:Lcom/powermo/SmartBar/cm;

    invoke-static {v2, v0, v1}, Lcom/powermo/SmartBar/cm;->a(Lcom/powermo/SmartBar/cm;II)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f070037
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f070030
        :pswitch_4
    .end packed-switch
.end method
