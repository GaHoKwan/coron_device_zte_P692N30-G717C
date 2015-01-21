.class final Lzte/com/cn/driverMode/ui/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/af;->a:Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/af;->a:Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->a:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/af;->a:Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;

    iget-object v1, v1, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->c:Landroid/content/Context;

    const/high16 v2, 0x7f04

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/af;->a:Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->a:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/af;->a:Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;

    iget-object v1, v1, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->c:Landroid/content/Context;

    const v2, 0x7f040001

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/af;->a:Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->a:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    return-void
.end method
