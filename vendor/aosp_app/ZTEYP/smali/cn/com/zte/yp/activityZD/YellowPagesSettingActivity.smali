.class public Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;
.super Landroid/app/ListActivity;
.source "YellowPagesSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity$3;,
        Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity$CheckUpdateThread;
    }
.end annotation


# static fields
.field private static final finish:I = 0x64

.field private static final netWorkError:I = 0x65


# instance fields
.field private adapter:Lcn/com/zte/yp/activityZD/CustomerListAdapter;

.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/ProgressDialog;

.field private mVersionInfo:Lcn/com/zte/yp/update/zd/UpdateApkInfo;

.field myHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 35
    iput-object v0, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->adapter:Lcn/com/zte/yp/activityZD/CustomerListAdapter;

    .line 36
    iput-object v0, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->dialog:Landroid/app/ProgressDialog;

    .line 37
    iput-object v0, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->mVersionInfo:Lcn/com/zte/yp/update/zd/UpdateApkInfo;

    .line 193
    new-instance v0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity$1;

    invoke-direct {v0, p0}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity$1;-><init>(Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;)V

    iput-object v0, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;)Lcn/com/zte/yp/update/zd/UpdateApkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->mVersionInfo:Lcn/com/zte/yp/update/zd/UpdateApkInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;Lcn/com/zte/yp/update/zd/UpdateApkInfo;)Lcn/com/zte/yp/update/zd/UpdateApkInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->mVersionInfo:Lcn/com/zte/yp/update/zd/UpdateApkInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->showVersionDialog(II)V

    return-void
.end method

.method private setListView()V
    .locals 2

    .prologue
    .line 52
    new-instance v1, Lcn/com/zte/yp/activityZD/CustomerListAdapter;

    invoke-direct {v1, p0}, Lcn/com/zte/yp/activityZD/CustomerListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->adapter:Lcn/com/zte/yp/activityZD/CustomerListAdapter;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, elements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcn/com/zte/yp/activityZD/ListElementInterface;>;"
    invoke-direct {p0, v0}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->setYellowPageFeedBack(Ljava/util/ArrayList;)V

    .line 60
    invoke-direct {p0, v0}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->setYellowPageAbout(Ljava/util/ArrayList;)V

    .line 62
    iget-object v1, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->adapter:Lcn/com/zte/yp/activityZD/CustomerListAdapter;

    invoke-virtual {v1, v0}, Lcn/com/zte/yp/activityZD/CustomerListAdapter;->addList(Ljava/util/List;)V

    .line 63
    iget-object v1, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->adapter:Lcn/com/zte/yp/activityZD/CustomerListAdapter;

    invoke-virtual {p0, v1}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    return-void
.end method

.method private setYellowPageAbout(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/zte/yp/activityZD/ListElementInterface;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, elements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcn/com/zte/yp/activityZD/ListElementInterface;>;"
    new-instance v0, Lcn/com/zte/yp/activityZD/SingleListElement;

    invoke-direct {v0}, Lcn/com/zte/yp/activityZD/SingleListElement;-><init>()V

    .line 88
    .local v0, element:Lcn/com/zte/yp/activityZD/SingleListElement;
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/zte/yp/activityZD/SingleListElement;->setText(Ljava/lang/String;)V

    .line 89
    sget-object v1, Lcn/com/zte/yp/utils/CommDefine$SettingsType;->YELLOW_PAGE_ABOUT:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    invoke-virtual {v0, v1}, Lcn/com/zte/yp/activityZD/SingleListElement;->setElementType(Lcn/com/zte/yp/utils/CommDefine$SettingsType;)V

    .line 90
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method private setYellowPageFeedBack(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/zte/yp/activityZD/ListElementInterface;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, elements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcn/com/zte/yp/activityZD/ListElementInterface;>;"
    new-instance v0, Lcn/com/zte/yp/activityZD/SingleListElement;

    invoke-direct {v0}, Lcn/com/zte/yp/activityZD/SingleListElement;-><init>()V

    .line 68
    .local v0, element:Lcn/com/zte/yp/activityZD/SingleListElement;
    const v1, 0x7f080051

    invoke-virtual {p0, v1}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/zte/yp/activityZD/SingleListElement;->setText(Ljava/lang/String;)V

    .line 69
    sget-object v1, Lcn/com/zte/yp/utils/CommDefine$SettingsType;->YELLOW_PAGE_FEEDBACK:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    invoke-virtual {v0, v1}, Lcn/com/zte/yp/activityZD/SingleListElement;->setElementType(Lcn/com/zte/yp/utils/CommDefine$SettingsType;)V

    .line 70
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method private setYellowPageUpgrade(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/zte/yp/activityZD/ListElementInterface;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, elements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcn/com/zte/yp/activityZD/ListElementInterface;>;"
    new-instance v0, Lcn/com/zte/yp/activityZD/SingleListElement;

    invoke-direct {v0}, Lcn/com/zte/yp/activityZD/SingleListElement;-><init>()V

    .line 75
    .local v0, element:Lcn/com/zte/yp/activityZD/SingleListElement;
    const v1, 0x7f080050

    invoke-virtual {p0, v1}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/zte/yp/activityZD/SingleListElement;->setText(Ljava/lang/String;)V

    .line 76
    sget-object v1, Lcn/com/zte/yp/utils/CommDefine$SettingsType;->YELLOW_PAGE_UPGRADE:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    invoke-virtual {v0, v1}, Lcn/com/zte/yp/activityZD/SingleListElement;->setElementType(Lcn/com/zte/yp/utils/CommDefine$SettingsType;)V

    .line 77
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method private showCheckUpgradeProcessDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 171
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->dialog:Landroid/app/ProgressDialog;

    .line 172
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 173
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->dialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080052

    invoke-virtual {p0, v1}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 175
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 176
    return-void
.end method

.method private showVersionDialog(II)V
    .locals 3
    .parameter "msgTitleId"
    .parameter "messageResId"

    .prologue
    .line 214
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 216
    invoke-virtual {p0, p2}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 217
    const v1, 0x7f080057

    new-instance v2, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity$2;

    invoke-direct {v2, p0}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity$2;-><init>(Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 224
    invoke-virtual {p0}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 227
    :cond_0
    return-void
.end method

.method private upgrade()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->showCheckUpgradeProcessDialog()V

    .line 168
    return-void
.end method


# virtual methods
.method public feedBack()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    iput-object p0, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->context:Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->setListView()V

    .line 44
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 143
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 144
    iget-object v2, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->adapter:Lcn/com/zte/yp/activityZD/CustomerListAdapter;

    invoke-virtual {v2, p3}, Lcn/com/zte/yp/activityZD/CustomerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/zte/yp/activityZD/ListElementInterface;

    invoke-interface {v2}, Lcn/com/zte/yp/activityZD/ListElementInterface;->getElementType()Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    move-result-object v1

    .line 145
    .local v1, type:Lcn/com/zte/yp/utils/CommDefine$SettingsType;
    sget-object v2, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity$3;->$SwitchMap$cn$com$zte$yp$utils$CommDefine$SettingsType:[I

    invoke-virtual {v1}, Lcn/com/zte/yp/utils/CommDefine$SettingsType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 164
    :goto_0
    return-void

    .line 150
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcn/com/zte/yp/activityZD/YellowPagesAboutActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v0}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 155
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p0}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->feedBack()V

    goto :goto_0

    .line 158
    :pswitch_2
    invoke-direct {p0}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->upgrade()V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 259
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 268
    :goto_0
    return v1

    .line 261
    :pswitch_0
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    goto :goto_0

    .line 259
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
    .line 253
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 254
    invoke-virtual {p0}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 255
    return-void
.end method
