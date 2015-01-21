.class final Lzte/com/cn/driverMode/ui/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/aj;->a:Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/aj;->a:Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->b:Lzte/com/cn/driverMode/service/by;

    const-string v1, "Reject_inCall"

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/aj;->a:Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;

    iget-object v2, v2, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/aj;->a:Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->b:Lzte/com/cn/driverMode/service/by;

    const-string v1, "Reject_inSms"

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/aj;->a:Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;

    iget-object v2, v2, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->j:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/aj;->a:Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;

    const/16 v1, 0x6001

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->setResult(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/aj;->a:Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->finish()V

    return-void
.end method
