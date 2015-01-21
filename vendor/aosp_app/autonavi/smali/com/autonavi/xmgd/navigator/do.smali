.class Lcom/autonavi/xmgd/navigator/do;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/MyNavigate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/do;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMidBtnClicked()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;->onMidBtnClicked()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/do;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->dismissDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/do;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->d(Lcom/autonavi/xmgd/navigator/MyNavigate;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/do;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->h(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/i/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/i/f;->a()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/do;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->i(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/i/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/i/j;->a()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/do;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->j(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/i/a;->a()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
