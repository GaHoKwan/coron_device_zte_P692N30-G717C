.class public Lcom/mediatek/security/ui/PermissionToAppActivity;
.super Landroid/app/Activity;
.source "PermissionToAppActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;,
        Lcom/mediatek/security/ui/PermissionToAppActivity$AppViewHolder;,
        Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAsyncLoader;,
        Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAlertDlg:Landroid/app/AlertDialog;

.field private mApdater:Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;

.field private mCxt:Landroid/content/Context;

.field private mEntries:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mPermName:Ljava/lang/String;

.field private final mPkgChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mSavedSelectedIndex:I

.field private mSelectPermInfo:Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;

.field private final mSwitchContentObserver:Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 377
    new-instance v0, Lcom/mediatek/security/ui/PermissionToAppActivity$5;

    invoke-direct {v0}, Lcom/mediatek/security/ui/PermissionToAppActivity$5;-><init>()V

    sput-object v0, Lcom/mediatek/security/ui/PermissionToAppActivity;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    new-instance v0, Lcom/mediatek/security/ui/PermissionToAppActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/security/ui/PermissionToAppActivity$1;-><init>(Lcom/mediatek/security/ui/PermissionToAppActivity;)V

    iput-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mPkgChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    new-instance v0, Lcom/mediatek/security/ui/PermissionToAppActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/security/ui/PermissionToAppActivity$2;-><init>(Lcom/mediatek/security/ui/PermissionToAppActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mSwitchContentObserver:Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;

    .line 366
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/security/ui/PermissionToAppActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/mediatek/security/ui/PermissionToAppActivity;->load()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/security/ui/PermissionToAppActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/mediatek/security/ui/PermissionToAppActivity;->checkUiEnabled()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/security/ui/PermissionToAppActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mPermName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/security/ui/PermissionToAppActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/mediatek/security/ui/PermissionToAppActivity;->updateAlertDialog()V

    return-void
.end method

.method static synthetic access$302(Lcom/mediatek/security/ui/PermissionToAppActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mSavedSelectedIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/security/ui/PermissionToAppActivity;)Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mSelectPermInfo:Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/security/ui/PermissionToAppActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mCxt:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/security/ui/PermissionToAppActivity;)Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mApdater:Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/security/ui/PermissionToAppActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/security/ui/PermissionToAppActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mEntries:[Ljava/lang/String;

    return-object v0
.end method

.method private checkUiEnabled()V
    .locals 4

    .prologue
    .line 389
    invoke-static {p0}, Lcom/mediatek/security/service/PermControlUtils;->isInHouseEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 391
    .local v0, enable:Z
    const-string v1, "PermToAppActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange(), update current interface, enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    if-nez v0, :cond_0

    .line 394
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 395
    const-string v1, "PermToAppActivity"

    const-string v2, "finish itself"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 398
    :cond_0
    return-void
.end method

.method private load()V
    .locals 2

    .prologue
    .line 356
    new-instance v0, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAsyncLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAsyncLoader;-><init>(Lcom/mediatek/security/ui/PermissionToAppActivity;Lcom/mediatek/security/ui/PermissionToAppActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 357
    return-void
.end method

.method private updateAlertDialog()V
    .locals 4

    .prologue
    .line 410
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mAlertDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mSelectPermInfo:Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;

    if-nez v1, :cond_1

    .line 412
    :cond_0
    const-string v1, "PermToAppActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAlertDlg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mSelectPermInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mSelectPermInfo:Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_0
    return-void

    .line 416
    :cond_1
    const-string v1, "PermToAppActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set alertDialog select mSavedSelectedIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mSavedSelectedIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 419
    .local v0, listview:Landroid/widget/ListView;
    iget v1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mSavedSelectedIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 420
    iget v1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mSavedSelectedIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x1

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 118
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v4, "permName"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mPermName:Ljava/lang/String;

    .line 119
    const-string v4, "PermToAppActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get perm name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mPermName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v4, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mPermName:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 121
    const-string v4, "PermToAppActivity"

    const-string v5, "finish itself because of pkgName is null"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 125
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mEntries:[Ljava/lang/String;

    .line 127
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 128
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mCxt:Landroid/content/Context;

    .line 130
    const v4, 0x7f040003

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 132
    const v4, 0x102000a

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 133
    .local v1, lv:Landroid/widget/ListView;
    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    invoke-virtual {v1, v7}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 135
    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 136
    invoke-virtual {v1, v7}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 137
    iput-object v1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mListView:Landroid/widget/ListView;

    .line 138
    new-instance v4, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;

    invoke-direct {v4, p0}, Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;-><init>(Lcom/mediatek/security/ui/PermissionToAppActivity;)V

    iput-object v4, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mApdater:Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;

    .line 139
    iget-object v4, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mApdater:Lcom/mediatek/security/ui/PermissionToAppActivity$PermToAppAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    const v4, 0x7f080006

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 142
    .local v3, permTxt:Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f05

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, permLabelArray:[Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mPermName:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/mediatek/security/service/PermControlUtils;->getPermissionLabel(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-void

    .line 118
    .end local v1           #lv:Landroid/widget/ListView;
    .end local v2           #permLabelArray:[Ljava/lang/String;
    .end local v3           #permTxt:Landroid/widget/TextView;
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "id"
    .parameter "args"

    .prologue
    .line 194
    packed-switch p1, :pswitch_data_0

    .line 222
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 196
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 197
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "PermToAppActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog , get status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mSelectPermInfo:Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;

    invoke-virtual {v3}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mSelectPermInfo:Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;

    invoke-virtual {v1}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/security/ui/UiUtils;->getSelectIndex(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mSavedSelectedIndex:I

    .line 199
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mSelectPermInfo:Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;

    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->mPkgLabel:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->access$200(Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 200
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mEntries:[Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mSavedSelectedIndex:I

    new-instance v3, Lcom/mediatek/security/ui/PermissionToAppActivity$3;

    invoke-direct {v3, p0}, Lcom/mediatek/security/ui/PermissionToAppActivity$3;-><init>(Lcom/mediatek/security/ui/PermissionToAppActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 211
    new-instance v1, Lcom/mediatek/security/ui/PermissionToAppActivity$4;

    invoke-direct {v1, p0}, Lcom/mediatek/security/ui/PermissionToAppActivity$4;-><init>(Lcom/mediatek/security/ui/PermissionToAppActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 217
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mAlertDlg:Landroid/app/AlertDialog;

    .line 218
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mAlertDlg:Landroid/app/AlertDialog;

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 182
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    .line 188
    .local v0, l:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;

    iput-object v1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mSelectPermInfo:Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;

    .line 189
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 190
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 172
    const-string v0, "PermToAppActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 174
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mPkgChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mSwitchContentObserver:Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 177
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 150
    const-string v1, "PermToAppActivity"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 154
    invoke-direct {p0}, Lcom/mediatek/security/ui/PermissionToAppActivity;->checkUiEnabled()V

    .line 157
    invoke-direct {p0}, Lcom/mediatek/security/ui/PermissionToAppActivity;->load()V

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.security.action.DATA_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mPkgChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity;->mSwitchContentObserver:Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 168
    return-void
.end method
