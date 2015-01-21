.class Lcom/autonavi/xmgd/navigator/gg;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/RoutesSet;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/RoutesSet;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/gg;->a:Lcom/autonavi/xmgd/navigator/RoutesSet;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onListViewItemSelected(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/utility/ADialogListener;->onListViewItemSelected(ILjava/util/List;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/gg;->a:Lcom/autonavi/xmgd/navigator/RoutesSet;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/gg;->a:Lcom/autonavi/xmgd/navigator/RoutesSet;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(Lcom/autonavi/xmgd/navigator/RoutesSet;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(Lcom/autonavi/xmgd/navigator/RoutesSet;I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/gg;->a:Lcom/autonavi/xmgd/navigator/RoutesSet;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->b(Lcom/autonavi/xmgd/navigator/RoutesSet;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->dismiss()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/gg;->a:Lcom/autonavi/xmgd/navigator/RoutesSet;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/gg;->a:Lcom/autonavi/xmgd/navigator/RoutesSet;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(Lcom/autonavi/xmgd/navigator/RoutesSet;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->b(Lcom/autonavi/xmgd/navigator/RoutesSet;I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/gg;->a:Lcom/autonavi/xmgd/navigator/RoutesSet;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->b(Lcom/autonavi/xmgd/navigator/RoutesSet;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->dismiss()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/gg;->a:Lcom/autonavi/xmgd/navigator/RoutesSet;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/gg;->a:Lcom/autonavi/xmgd/navigator/RoutesSet;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(Lcom/autonavi/xmgd/navigator/RoutesSet;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->c(Lcom/autonavi/xmgd/navigator/RoutesSet;I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/gg;->a:Lcom/autonavi/xmgd/navigator/RoutesSet;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->b(Lcom/autonavi/xmgd/navigator/RoutesSet;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->dismiss()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
