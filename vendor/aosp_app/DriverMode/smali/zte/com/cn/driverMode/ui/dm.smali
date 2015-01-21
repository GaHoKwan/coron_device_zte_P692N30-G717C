.class final Lzte/com/cn/driverMode/ui/dm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/dm;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    packed-switch p3, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/dm;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    const-class v2, Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/dm;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    const/16 v2, 0x5001

    invoke-virtual {v1, v0, v2}, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/dm;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    const-class v2, Lzte/com/cn/driverMode/ui/DMDistrubSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_1
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/dm;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    const/16 v2, 0x6001

    invoke-virtual {v1, v0, v2}, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/dm;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    const-class v2, Lzte/com/cn/driverMode/ui/DMTtsSpeedSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_2
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/dm;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    const/16 v2, 0x4001

    invoke-virtual {v1, v0, v2}, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/dm;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    const-class v2, Lzte/com/cn/driverMode/ui/DMPrivacyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_3
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/dm;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dm;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->a()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dm;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->b()V

    goto :goto_0

    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/dm;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    const-class v2, Lzte/com/cn/driverMode/ui/DMGaoDeDownload;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_4
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/dm;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/dm;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    const-class v2, Lzte/com/cn/driverMode/ui/DMNewFeedbackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_5
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/dm;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_8
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
