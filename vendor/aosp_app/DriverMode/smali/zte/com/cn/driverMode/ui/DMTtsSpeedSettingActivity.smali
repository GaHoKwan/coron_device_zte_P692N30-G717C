.class public Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lzte/com/cn/driverMode/service/by;

.field private c:Landroid/widget/ListView;

.field private h:Lzte/com/cn/driverMode/ui/dw;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;I)I
    .locals 0

    iput p1, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->i:I

    return p1
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;)Lzte/com/cn/driverMode/ui/dw;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->h:Lzte/com/cn/driverMode/ui/dw;

    return-object v0
.end method

.method static synthetic b(Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic b(Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "zte.com.cn.driverMode.SetTtsSpeed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "tts_Speed"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c(Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;)I
    .locals 1

    iget v0, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->i:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f030045

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->setContentView(I)V

    invoke-virtual {p0, v3}, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->setFinishOnTouchOutside(Z)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->a:Landroid/content/Context;

    const v0, 0x7f0b0108

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->c:Landroid/widget/ListView;

    new-instance v0, Lzte/com/cn/driverMode/ui/dw;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/dw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->h:Lzte/com/cn/driverMode/ui/dw;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->h:Lzte/com/cn/driverMode/ui/dw;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->c:Landroid/widget/ListView;

    new-instance v1, Lzte/com/cn/driverMode/ui/dv;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/dv;-><init>(Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->h:Lzte/com/cn/driverMode/ui/dw;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->a:Landroid/content/Context;

    const v2, 0x7f08036a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/dw;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->h:Lzte/com/cn/driverMode/ui/dw;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->a:Landroid/content/Context;

    const v2, 0x7f08036b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/dw;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->h:Lzte/com/cn/driverMode/ui/dw;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->a:Landroid/content/Context;

    const v2, 0x7f08036c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/dw;->a(Ljava/lang/String;)V

    const v0, 0x7f0b0042

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lzte/com/cn/driverMode/ui/du;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/du;-><init>(Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lzte/com/cn/driverMode/service/by;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->b:Lzte/com/cn/driverMode/service/by;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->b:Lzte/com/cn/driverMode/service/by;

    const-string v1, "ttsspeed"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->i:I

    iget v0, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->i:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->h:Lzte/com/cn/driverMode/ui/dw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/dw;->a(I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->h:Lzte/com/cn/driverMode/ui/dw;

    invoke-virtual {v0, v3}, Lzte/com/cn/driverMode/ui/dw;->a(I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->h:Lzte/com/cn/driverMode/ui/dw;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/dw;->a(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_2
        0x64 -> :sswitch_0
        0x78 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onDestroy()V

    return-void
.end method
