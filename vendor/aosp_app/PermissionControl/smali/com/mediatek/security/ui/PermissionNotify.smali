.class public Lcom/mediatek/security/ui/PermissionNotify;
.super Lcom/android/internal/app/AlertActivity;
.source "PermissionNotify.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mBoundService:Lcom/mediatek/security/service/PermControlService;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mFlag:I

.field private mHandler:Landroid/os/Handler;

.field private mMessageText:Landroid/widget/TextView;

.field private mPackageLable:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPermissionName:Ljava/lang/String;

.field private mTimeCountDown:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/mediatek/security/ui/PermissionNotify$1;

    invoke-direct {v0, p0}, Lcom/mediatek/security/ui/PermissionNotify$1;-><init>(Lcom/mediatek/security/ui/PermissionNotify;)V

    iput-object v0, p0, Lcom/mediatek/security/ui/PermissionNotify;->mConnection:Landroid/content/ServiceConnection;

    .line 61
    new-instance v0, Lcom/mediatek/security/ui/PermissionNotify$2;

    invoke-direct {v0, p0}, Lcom/mediatek/security/ui/PermissionNotify$2;-><init>(Lcom/mediatek/security/ui/PermissionNotify;)V

    iput-object v0, p0, Lcom/mediatek/security/ui/PermissionNotify;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/security/ui/PermissionNotify;)Lcom/mediatek/security/service/PermControlService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionNotify;->mBoundService:Lcom/mediatek/security/service/PermControlService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/security/ui/PermissionNotify;Lcom/mediatek/security/service/PermControlService;)Lcom/mediatek/security/service/PermControlService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mediatek/security/ui/PermissionNotify;->mBoundService:Lcom/mediatek/security/service/PermControlService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/security/ui/PermissionNotify;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/mediatek/security/ui/PermissionNotify;->setCountDownTimerText(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/security/ui/PermissionNotify;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionNotify;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/security/ui/PermissionNotify;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionNotify;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/security/ui/PermissionNotify;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionNotify;->mPermissionName:Ljava/lang/String;

    return-object v0
.end method

.method private setCountDownTimerText(I)V
    .locals 5
    .parameter "timer"

    .prologue
    .line 154
    const v1, 0x7f070006

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionNotify;->mTimeCountDown:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    return-void
.end method

.method private setStatusBarEnableStatus(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 199
    const-string v1, "PermissionNotify"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStatusBarEnableStatus("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 202
    .local v0, statusBarManager:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_1

    .line 203
    if-eqz p1, :cond_0

    .line 204
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 213
    :goto_0
    return-void

    .line 206
    :cond_0
    const/high16 v1, 0x121

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 211
    :cond_1
    const-string v1, "PermissionNotify"

    const-string v2, "Fail to get status bar instance"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setWindowProperty()V
    .locals 4

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 107
    .local v1, win:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 108
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x8000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 109
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 110
    return-void
.end method

.method private showDialog()V
    .locals 8

    .prologue
    .line 129
    iget-object v2, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 130
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v4, 0x1080027

    iput v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 131
    const v4, 0x7f070004

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 132
    const v4, 0x7f070001

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 133
    const v4, 0x7f070002

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 134
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 135
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 136
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 137
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040004

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 138
    .local v3, view:Landroid/view/View;
    const v4, 0x7f08000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/mediatek/security/ui/PermissionNotify;->mCheckBox:Landroid/widget/CheckBox;

    .line 139
    iget v4, p0, Lcom/mediatek/security/ui/PermissionNotify;->mFlag:I

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_0

    .line 140
    iget-object v4, p0, Lcom/mediatek/security/ui/PermissionNotify;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :cond_0
    const v4, 0x7f080008

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mediatek/security/ui/PermissionNotify;->mMessageText:Landroid/widget/TextView;

    .line 143
    const v4, 0x7f080009

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mediatek/security/ui/PermissionNotify;->mTimeCountDown:Landroid/widget/TextView;

    .line 144
    const v4, 0x7f070005

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mediatek/security/ui/PermissionNotify;->mPackageLable:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/mediatek/security/ui/PermissionNotify;->mPermissionName:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/mediatek/security/service/PermControlUtils;->getMessageBody(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, msg:Ljava/lang/String;
    const-string v4, "PermissionNotify"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v4, p0, Lcom/mediatek/security/ui/PermissionNotify;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const/16 v4, 0x14

    invoke-direct {p0, v4}, Lcom/mediatek/security/ui/PermissionNotify;->setCountDownTimerText(I)V

    .line 149
    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 151
    return-void
.end method


# virtual methods
.method doBindService()V
    .locals 3

    .prologue
    .line 184
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/security/service/PermControlService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionNotify;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 186
    return-void
.end method

.method doUnbindService()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionNotify;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 190
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, enable:Z
    const/4 v2, 0x2

    .line 163
    .local v2, status:I
    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    .line 164
    const/4 v2, 0x0

    .line 165
    const/4 v0, 0x1

    .line 170
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/mediatek/security/ui/PermissionNotify;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    new-instance v1, Lcom/mediatek/common/mom/PermissionRecord;

    iget-object v3, p0, Lcom/mediatek/security/ui/PermissionNotify;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/security/ui/PermissionNotify;->mPermissionName:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v2}, Lcom/mediatek/common/mom/PermissionRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    .local v1, permRecord:Lcom/mediatek/common/mom/PermissionRecord;
    invoke-static {v1, p0}, Lcom/mediatek/security/service/PermControlUtils;->changePermission(Lcom/mediatek/common/mom/PermissionRecord;Landroid/content/Context;)V

    .line 174
    .end local v1           #permRecord:Lcom/mediatek/common/mom/PermissionRecord;
    :cond_1
    iget-object v3, p0, Lcom/mediatek/security/ui/PermissionNotify;->mBoundService:Lcom/mediatek/security/service/PermControlService;

    invoke-virtual {v3, v0}, Lcom/mediatek/security/service/PermControlService;->setPermissionStatus(Z)V

    .line 175
    iget-object v3, p0, Lcom/mediatek/security/ui/PermissionNotify;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 176
    const-string v3, "PermissionNotify"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick which = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void

    .line 166
    :cond_2
    const/4 v3, -0x2

    if-ne p2, v3, :cond_0

    .line 167
    const/4 v2, 0x1

    .line 168
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const-string v2, "PermissionNotify"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 87
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 90
    :cond_0
    const-string v2, "exta_package_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/security/ui/PermissionNotify;->mPackageName:Ljava/lang/String;

    .line 91
    iget-object v2, p0, Lcom/mediatek/security/ui/PermissionNotify;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/mediatek/security/service/PermControlUtils;->getApplicationName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/security/ui/PermissionNotify;->mPackageLable:Ljava/lang/String;

    .line 92
    const-string v2, "extra_permission_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/security/ui/PermissionNotify;->mPermissionName:Ljava/lang/String;

    .line 93
    const-string v2, "extra_permission_flag"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/security/ui/PermissionNotify;->mFlag:I

    .line 94
    const-string v2, "PermissionNotify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPackageLable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/security/ui/PermissionNotify;->mPackageLable:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPermissionName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/security/ui/PermissionNotify;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/mediatek/security/ui/PermissionNotify;->doBindService()V

    .line 96
    invoke-direct {p0}, Lcom/mediatek/security/ui/PermissionNotify;->showDialog()V

    .line 97
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 98
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x65

    iput v2, v1, Landroid/os/Message;->what:I

    .line 99
    const/16 v2, 0x14

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 100
    iget-object v2, p0, Lcom/mediatek/security/ui/PermissionNotify;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 101
    invoke-direct {p0}, Lcom/mediatek/security/ui/PermissionNotify;->setWindowProperty()V

    .line 102
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 219
    invoke-virtual {p0}, Lcom/mediatek/security/ui/PermissionNotify;->doUnbindService()V

    .line 220
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 125
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/security/ui/PermissionNotify;->setStatusBarEnableStatus(Z)V

    .line 126
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 115
    const-string v0, "PermissionNotify"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/security/ui/PermissionNotify;->setStatusBarEnableStatus(Z)V

    .line 118
    return-void
.end method
