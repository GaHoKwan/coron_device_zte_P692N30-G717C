.class final Lzte/com/cn/driverMode/ui/dn;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/dn;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    invoke-static {}, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->d()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dn;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f0b00e3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b00e4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b00e5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    const-string v3, "DMSettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getView---position="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p2

    :pswitch_0
    const v2, 0x7f080159

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dn;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->h:Lzte/com/cn/driverMode/service/by;

    const-string v2, "Reject_inCall"

    invoke-virtual {v0, v2, v7}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/dn;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    iget-object v2, v2, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->h:Lzte/com/cn/driverMode/service/by;

    const-string v3, "Reject_inSms"

    invoke-virtual {v2, v3, v7}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    const v0, 0x7f080172

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const v0, 0x7f080170

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f080171

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    const v2, 0x7f080158

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dn;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->h:Lzte/com/cn/driverMode/service/by;

    const-string v2, "autoreplaysms"

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/dn;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    iget-object v3, v3, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->c:Landroid/content/Context;

    const v4, 0x7f0800e0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    const v2, 0x7f08015a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dn;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->h:Lzte/com/cn/driverMode/service/by;

    const-string v2, "ttsspeed"

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;I)I

    move-result v2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dn;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->c:Landroid/content/Context;

    const v3, 0x7f08036b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x78

    if-ne v2, v3, :cond_4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dn;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->c:Landroid/content/Context;

    const v2, 0x7f08036a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x62

    if-ne v2, v3, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dn;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->c:Landroid/content/Context;

    const v2, 0x7f08036c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    const v3, 0x7f0803e8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0803e9

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dn;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->h:Lzte/com/cn/driverMode/service/by;

    const-string v1, "auto_open_bluetooth"

    invoke-virtual {v0, v1, v6}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    new-instance v0, Lzte/com/cn/driverMode/ui/dp;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/dp;-><init>(Lzte/com/cn/driverMode/ui/dn;)V

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :pswitch_4
    const v3, 0x7f0803e2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0803e1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dn;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->h:Lzte/com/cn/driverMode/service/by;

    const-string v1, "join_ue"

    invoke-virtual {v0, v1, v7}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    new-instance v0, Lzte/com/cn/driverMode/ui/do;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/do;-><init>(Lzte/com/cn/driverMode/ui/dn;)V

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    :pswitch_5
    const v2, 0x7f08015c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dn;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->g:Lzte/com/cn/driverMode/service/DMApplication;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v0, ""

    :try_start_0
    iget-object v3, p0, Lzte/com/cn/driverMode/ui/dn;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    iget-object v3, v3, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->g:Lzte/com/cn/driverMode/service/DMApplication;

    invoke-virtual {v3}, Lzte/com/cn/driverMode/service/DMApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/dn;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    iget-object v3, v3, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->c:Landroid/content/Context;

    const v4, 0x7f080161

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_4

    :pswitch_6
    const v2, 0x7f08015d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f080164

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :pswitch_7
    const v2, 0x7f08015e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f080165

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :pswitch_8
    const v2, 0x7f08015f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f080160

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
