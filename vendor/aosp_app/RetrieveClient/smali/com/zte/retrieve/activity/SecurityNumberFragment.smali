.class public Lcom/zte/retrieve/activity/SecurityNumberFragment;
.super Landroid/app/Fragment;
.source "SecurityNumberFragment.java"

# interfaces
.implements Lcom/zte/retrieve/iview/ISecurityNumberModifyView;


# static fields
.field private static final PICK_CONTACT_NUMBER:I


# instance fields
.field private etHostName:Landroid/widget/EditText;

.field private etSecurityNumber:Landroid/widget/EditText;

.field private mActionBarListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/app/Activity;

.field private mPresenter:Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;

.field mView:Landroid/view/View;

.field private tvSecuritySMS:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 73
    new-instance v0, Lcom/zte/retrieve/activity/SecurityNumberFragment$1;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/activity/SecurityNumberFragment$1;-><init>(Lcom/zte/retrieve/activity/SecurityNumberFragment;)V

    iput-object v0, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->mActionBarListener:Landroid/view/View$OnClickListener;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/activity/SecurityNumberFragment;)Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->mPresenter:Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zte/retrieve/activity/SecurityNumberFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->etSecurityNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/zte/retrieve/activity/SecurityNumberFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->etHostName:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityNumberFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 153
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 157
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 158
    packed-switch p1, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->mPresenter:Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;

    invoke-virtual {v0, p3}, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->handlePickContactNumClick(Landroid/content/Intent;)V

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 98
    iput-object p1, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->mContext:Landroid/app/Activity;

    .line 99
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    new-instance v0, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;

    invoke-direct {v0}, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;-><init>()V

    iput-object v0, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->mPresenter:Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;

    .line 43
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->mPresenter:Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;

    invoke-virtual {v0, p0}, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->setView(Lcom/zte/retrieve/iview/IView;)V

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 48
    const v4, 0x7f03001a

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->mView:Landroid/view/View;

    .line 49
    iget-object v4, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->mView:Landroid/view/View;

    const v5, 0x7f090076

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 51
    const v4, 0x7f030009

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, actionBarButtons:Landroid/view/View;
    iget-object v4, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 54
    const v4, 0x7f09001d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, cancelActionView:Landroid/view/View;
    iget-object v4, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v4, 0x7f09001f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 58
    .local v3, doneActionView:Landroid/view/View;
    iget-object v4, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v4, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->mView:Landroid/view/View;

    const v5, 0x7f090071

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 61
    .local v2, contactActionView:Landroid/view/View;
    iget-object v4, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v4, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->mView:Landroid/view/View;

    const v5, 0x7f090070

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->etSecurityNumber:Landroid/widget/EditText;

    .line 64
    iget-object v4, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->mView:Landroid/view/View;

    const v5, 0x7f090074

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->etHostName:Landroid/widget/EditText;

    .line 65
    iget-object v4, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->mView:Landroid/view/View;

    const v5, 0x7f090075

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->tvSecuritySMS:Landroid/widget/TextView;

    .line 67
    iget-object v4, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->mPresenter:Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;

    iget-object v5, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->setContext(Landroid/content/Context;)V

    .line 68
    iget-object v4, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->mPresenter:Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;

    invoke-virtual {v4}, Lcom/zte/retrieve/presenter/SecurityNumberModifyPresenter;->init()V

    .line 70
    iget-object v4, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->mView:Landroid/view/View;

    return-object v4
.end method

.method public setEditTextSize()V
    .locals 4

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/SecurityNumberFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 143
    .local v0, scale:F
    iget-object v1, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->etHostName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->tvSecuritySMS:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    div-float/2addr v2, v0

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 144
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->etSecurityNumber:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "hostName"
    .parameter "securityNum"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->etHostName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->etSecurityNumber:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method public showContactChooser()V
    .locals 3

    .prologue
    .line 107
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/zte/retrieve/activity/SecurityNumberFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public toastShow(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/zte/retrieve/activity/SecurityNumberFragment;->mContext:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/zte/retrieve/utils/ToastHelper;->toastShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    return-void
.end method
