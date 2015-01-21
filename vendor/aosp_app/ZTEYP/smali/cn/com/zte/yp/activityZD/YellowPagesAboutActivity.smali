.class public Lcn/com/zte/yp/activityZD/YellowPagesAboutActivity;
.super Landroid/app/Activity;
.source "YellowPagesAboutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getVisitionCode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 53
    const-string v1, ""

    .line 56
    .local v1, versionCode:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcn/com/zte/yp/activityZD/YellowPagesAboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "cn.com.zte.yp"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private setVersion()V
    .locals 5

    .prologue
    .line 26
    const v3, 0x7f0a002e

    invoke-virtual {p0, v3}, Lcn/com/zte/yp/activityZD/YellowPagesAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 27
    .local v1, version:Landroid/widget/TextView;
    invoke-direct {p0}, Lcn/com/zte/yp/activityZD/YellowPagesAboutActivity;->getVisitionCode()Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, versionCode:Ljava/lang/String;
    const v3, 0x7f08004e

    invoke-virtual {p0, v3}, Lcn/com/zte/yp/activityZD/YellowPagesAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, buffer:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcn/com/zte/yp/activityZD/YellowPagesAboutActivity;->setContentView(I)V

    .line 22
    invoke-direct {p0}, Lcn/com/zte/yp/activityZD/YellowPagesAboutActivity;->setVersion()V

    .line 23
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 49
    :goto_0
    return v1

    .line 42
    :pswitch_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcn/com/zte/yp/activityZD/YellowPagesAboutActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 36
    return-void
.end method
