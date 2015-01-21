.class final Lzte/com/cn/driverMode/ui/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/ah;->a:Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ah;->a:Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ah;->a:Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->k:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ah;->a:Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->k:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
