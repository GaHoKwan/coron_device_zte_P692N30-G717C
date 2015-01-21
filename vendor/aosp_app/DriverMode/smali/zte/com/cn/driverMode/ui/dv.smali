.class final Lzte/com/cn/driverMode/ui/dv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/dv;->a:Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    packed-switch p3, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dv;->a:Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->a(Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;)Lzte/com/cn/driverMode/ui/dw;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/dv;->a:Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;

    invoke-static {v2}, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->b(Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0, p3, v1, v2}, Lzte/com/cn/driverMode/ui/dw;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dv;->a:Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->a(Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;)Lzte/com/cn/driverMode/ui/dw;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/dw;->notifyDataSetChanged()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dv;->a:Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/dv;->a:Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->c(Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->b(Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dv;->a:Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->b:Lzte/com/cn/driverMode/service/by;

    const-string v1, "ttsspeed"

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/dv;->a:Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;

    invoke-static {v2}, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->c(Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dv;->a:Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;

    const/16 v1, 0x4001

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->setResult(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dv;->a:Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->finish()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dv;->a:Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;

    const/16 v1, 0x78

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->a(Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;I)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dv;->a:Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->a(Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;)Lzte/com/cn/driverMode/ui/dw;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/dw;->a(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dv;->a:Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->a(Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;I)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dv;->a:Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->a(Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;)Lzte/com/cn/driverMode/ui/dw;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/dw;->a(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dv;->a:Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;

    const/16 v1, 0x62

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->a(Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;I)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dv;->a:Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;->a(Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;)Lzte/com/cn/driverMode/ui/dw;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/dw;->a(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
