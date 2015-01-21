.class final Lzte/com/cn/driverMode/ui/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMConfirmDialog;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMConfirmDialog;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/s;->a:Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/s;->a:Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    iget v0, v0, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->k:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/s;->a:Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->finish()V

    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "PROVINCE"

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/s;->a:Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    iget-object v2, v2, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/s;->a:Lzte/com/cn/driverMode/ui/DMConfirmDialog;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lzte/com/cn/driverMode/ui/DMConfirmDialog;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
