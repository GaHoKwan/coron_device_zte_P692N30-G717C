.class public Lcom/zte/retrieve/activity/RetrieveEntryActivity;
.super Landroid/app/Activity;
.source "RetrieveEntryActivity.java"

# interfaces
.implements Lcom/zte/retrieve/iview/IRetrieveEntryView;


# static fields
.field private static ACCOUNT_NEW_ACTIVITY_ID:I


# instance fields
.field private btnOpen:Landroid/widget/Button;

.field public hasVibrator:I

.field private localCheck:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mPresenter:Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0xbb9

    sput v0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->ACCOUNT_NEW_ACTIVITY_ID:I

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->hasVibrator:I

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/activity/RetrieveEntryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->setOpenButtonClickStatus()V

    return-void
.end method

.method static synthetic access$1(Lcom/zte/retrieve/activity/RetrieveEntryActivity;)Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;

    return-object v0
.end method

.method private buildNetworkDialog(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 136
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060011

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move v5, v4

    .line 136
    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 138
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 140
    .local v6, dialogLayout:Landroid/view/View;
    const v1, 0x7f090012

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/RetrieveEntryActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity$4;-><init>(Lcom/zte/retrieve/activity/RetrieveEntryActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method

.method private buildSmsDialog(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 121
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06000e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move v5, v4

    .line 121
    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 123
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 125
    .local v6, dialogLayout:Landroid/view/View;
    const v1, 0x7f090012

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/RetrieveEntryActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity$3;-><init>(Lcom/zte/retrieve/activity/RetrieveEntryActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void
.end method

.method private initCheckBoxSetting()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 71
    const v3, 0x7f090055

    invoke-virtual {p0, v3}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->btnOpen:Landroid/widget/Button;

    .line 72
    const v3, 0x7f09004e

    invoke-virtual {p0, v3}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->localCheck:Landroid/widget/CheckBox;

    .line 73
    const v3, 0x7f090052

    invoke-virtual {p0, v3}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 75
    .local v0, cloudCheck:Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->localCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 76
    iget-object v3, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->localCheck:Landroid/widget/CheckBox;

    new-instance v4, Lcom/zte/retrieve/activity/RetrieveEntryActivity$1;

    invoke-direct {v4, p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity$1;-><init>(Lcom/zte/retrieve/activity/RetrieveEntryActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    invoke-static {}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->getInstance()Lcom/zte/retrieve/utils/config/RetrieveConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->isSupportCloud()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 98
    :goto_0
    new-instance v3, Lcom/zte/retrieve/activity/RetrieveEntryActivity$2;

    invoke-direct {v3, p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity$2;-><init>(Lcom/zte/retrieve/activity/RetrieveEntryActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    return-void

    .line 87
    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 88
    const v3, 0x7f020011

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 90
    const v3, 0x7f090053

    invoke-virtual {p0, v3}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 91
    .local v2, tv_network:Landroid/widget/TextView;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    const v3, 0x7f090051

    invoke-virtual {p0, v3}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 95
    .local v1, rl_network:Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    goto :goto_0
.end method

.method private installAccountDialog(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 337
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0600cb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move v5, v4

    .line 337
    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 339
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 341
    .local v6, dialogLayout:Landroid/view/View;
    const v1, 0x7f090012

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/RetrieveEntryActivity$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity$7;-><init>(Lcom/zte/retrieve/activity/RetrieveEntryActivity;Landroid/content/Context;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    const v1, 0x7f090011

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/RetrieveEntryActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity$8;-><init>(Lcom/zte/retrieve/activity/RetrieveEntryActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    return-void
.end method

.method private setOpenButtonClickStatus()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 108
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->getLocalcheckStatus()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->getCloudCheckStatus()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->btnOpen:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 110
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->btnOpen:Landroid/widget/Button;

    const v1, 0x7f020027

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 111
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->btnOpen:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 117
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->btnOpen:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 114
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->btnOpen:Landroid/widget/Button;

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 115
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->btnOpen:Landroid/widget/Button;

    const/16 v1, 0x46

    const/16 v2, 0x80

    const/16 v3, 0xaf

    const/16 v4, 0x18

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method private showAccountStoppedDialog(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 422
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0600cc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    .line 422
    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 424
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 426
    .local v6, dialogLayout:Landroid/view/View;
    const v1, 0x7f090012

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/RetrieveEntryActivity$11;

    invoke-direct {v2, p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity$11;-><init>(Lcom/zte/retrieve/activity/RetrieveEntryActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    return-void
.end method


# virtual methods
.method public clickController(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 180
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 159
    :pswitch_1
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecurityPasswordActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    const-string v0, "click"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->openFunctionClickHandler()V

    goto :goto_0

    .line 167
    :pswitch_2
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->remoteControlClickHandler()V

    goto :goto_0

    .line 171
    :pswitch_3
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->buildSmsDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 175
    :pswitch_4
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->buildNetworkDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x7f09004d
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getActivity()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 232
    :try_start_0
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 233
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 234
    .local v1, cn:Landroid/content/ComponentName;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TOP___ACTIVITY === "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #cn:Landroid/content/ComponentName;
    :goto_0
    return-object v1

    .line 236
    :catch_0
    move-exception v2

    .line 237
    .local v2, e:Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 239
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCloudCheckStatus()I
    .locals 2

    .prologue
    .line 208
    const v1, 0x7f090052

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 210
    .local v0, cloudcheckbox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    const/4 v1, 0x1

    .line 213
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocalcheckStatus()I
    .locals 2

    .prologue
    .line 193
    const v1, 0x7f09004e

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 195
    .local v0, localcheckbox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const/4 v1, 0x1

    .line 198
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initAccountManager()Z
    .locals 2

    .prologue
    .line 324
    const-string v1, "initAccountManager enter"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/retrieve/utils/CommonFunctions;->loadCloudAccountApp(Landroid/content/Context;)V

    .line 326
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/retrieve/utils/CommonFunctions;->prepareAuthEnvir(Landroid/content/Context;)Z

    move-result v0

    .line 327
    .local v0, bflag:Z
    if-nez v0, :cond_0

    .line 328
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->installAccountDialog(Landroid/content/Context;)V

    .line 329
    const-string v1, "alert dialog show finish"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 332
    :cond_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult resultCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 282
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    sget v1, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->ACCOUNT_NEW_ACTIVITY_ID:I

    if-ne p1, v1, :cond_0

    .line 285
    const/4 v0, -0x1

    .line 286
    .local v0, result:I
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    if-eqz p3, :cond_2

    .line 287
    const-string v1, "add_account_result"

    const/4 v2, 0x1

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 289
    :cond_2
    if-eqz p3, :cond_3

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 292
    :cond_3
    if-nez v0, :cond_4

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;

    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->saveUid(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0600ce

    invoke-static {v1, v2}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;I)V

    .line 297
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;

    invoke-virtual {v1}, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->startBindingProcess()V

    goto :goto_0

    .line 300
    :cond_4
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;

    invoke-virtual {v1}, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->showLoginFailedDialog()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x10

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iput-object p0, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mContext:Landroid/content/Context;

    .line 49
    new-instance v1, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;

    invoke-direct {v1}, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;-><init>()V

    iput-object v1, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;

    .line 50
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;

    iget-object v2, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->setContext(Landroid/content/Context;)V

    .line 51
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;

    invoke-virtual {v1, p0}, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->setView(Lcom/zte/retrieve/iview/IView;)V

    .line 54
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 55
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 56
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 59
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->setContentView(I)V

    .line 60
    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->setTitle(I)V

    .line 63
    invoke-static {}, Lcom/zte/retrieve/utils/TrackInfoManager;->increaseUseTimes()V

    .line 65
    invoke-direct {p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->initCheckBoxSetting()V

    .line 66
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;

    invoke-virtual {v1}, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->checkActivation()V

    .line 67
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mPresenter:Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;

    invoke-virtual {v1}, Lcom/zte/retrieve/presenter/RetrieveEntryPresenter;->init()V

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->btnOpen:Landroid/widget/Button;

    .line 247
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 221
    const-string v0, "RetrieveEntryActivity onResume"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/cloud/account/AccountManager;->init(Landroid/content/Context;)V

    .line 223
    return-void
.end method

.method public setLocalBtnDisable()V
    .locals 3

    .prologue
    .line 376
    const v1, 0x7f09004e

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->localCheck:Landroid/widget/CheckBox;

    .line 377
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->localCheck:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 378
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 379
    .local v0, dw:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->localCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    return-void
.end method

.method public showLocalOpenedDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "title"
    .parameter "msg"

    .prologue
    const v8, 0x7f090012

    const v7, 0x7f090011

    const/4 v4, 0x0

    .line 385
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 386
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 388
    .local v6, dialogLayout:Landroid/view/View;
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f060033

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 389
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/RetrieveEntryActivity$9;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity$9;-><init>(Lcom/zte/retrieve/activity/RetrieveEntryActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f060032

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 399
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/RetrieveEntryActivity$10;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity$10;-><init>(Lcom/zte/retrieve/activity/RetrieveEntryActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    return-void
.end method

.method public showLoginDialog(II)V
    .locals 7
    .parameter "title"
    .parameter "content"

    .prologue
    .line 308
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 309
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 308
    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 310
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 312
    .local v6, dialogLayout:Landroid/view/View;
    const v1, 0x7f090012

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/RetrieveEntryActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity$6;-><init>(Lcom/zte/retrieve/activity/RetrieveEntryActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    return-void
.end method

.method public showOpenCloudPromptDialog()V
    .locals 7

    .prologue
    .line 252
    new-instance v0, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;

    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 252
    invoke-direct/range {v0 .. v5}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 254
    .local v0, dialog:Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;
    invoke-virtual {v0}, Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;->getDialogLayout()Landroid/view/View;

    move-result-object v6

    .line 256
    .local v6, dialogLayout:Landroid/view/View;
    const v1, 0x7f090012

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/zte/retrieve/activity/RetrieveEntryActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity$5;-><init>(Lcom/zte/retrieve/activity/RetrieveEntryActivity;Lcom/zte/retrieve/utils/dialogcustom/DialogConfirm;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 0
    .parameter "toast"

    .prologue
    .line 184
    invoke-static {p0, p1}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public startAccountManagerView()V
    .locals 1

    .prologue
    .line 411
    const-string v0, "startAccountView ACCOUNT_MANAGER_VIEW_ID"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 413
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->isRegisterServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->startAccountView()V

    .line 418
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->showAccountStoppedDialog(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public startAccountView()V
    .locals 5

    .prologue
    .line 269
    :try_start_0
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->getMyService()Lorg/zx/AuthComp/IMyService;

    move-result-object v3

    invoke-interface {v3}, Lorg/zx/AuthComp/IMyService;->startAddAccountActivity()Landroid/os/Bundle;

    move-result-object v2

    .line 270
    .local v2, result:Landroid/os/Bundle;
    const-string v3, "intent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 271
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "invoker"

    const-string v4, "phoneretrieve"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    sget v3, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->ACCOUNT_NEW_ACTIVITY_ID:I

    invoke-virtual {p0, v1, v3}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 273
    const-string v3, "startActivityForResult ACCOUNT_MANAGER_ACTIVITY_ID"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #result:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
