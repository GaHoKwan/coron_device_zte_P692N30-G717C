.class public Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lzte/com/cn/driverMode/service/by;

.field c:Z

.field h:Z

.field i:Landroid/widget/CheckBox;

.field j:Landroid/widget/CheckBox;

.field k:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->setContentView(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->setFinishOnTouchOutside(Z)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->a:Landroid/content/Context;

    new-instance v0, Lzte/com/cn/driverMode/service/by;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->b:Lzte/com/cn/driverMode/service/by;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->b:Lzte/com/cn/driverMode/service/by;

    const-string v1, "Reject_inCall"

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->c:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->b:Lzte/com/cn/driverMode/service/by;

    const-string v1, "Reject_inSms"

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->h:Z

    const v0, 0x7f0b0040

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->i:Landroid/widget/CheckBox;

    const v0, 0x7f0b0041

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->j:Landroid/widget/CheckBox;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->i:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->c:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->j:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->h:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->i:Landroid/widget/CheckBox;

    new-instance v1, Lzte/com/cn/driverMode/ui/ah;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/ah;-><init>(Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->j:Landroid/widget/CheckBox;

    new-instance v1, Lzte/com/cn/driverMode/ui/ai;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/ai;-><init>(Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0b0042

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->k:Landroid/widget/Button;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;->k:Landroid/widget/Button;

    new-instance v1, Lzte/com/cn/driverMode/ui/aj;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/aj;-><init>(Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onDestroy()V

    return-void
.end method
