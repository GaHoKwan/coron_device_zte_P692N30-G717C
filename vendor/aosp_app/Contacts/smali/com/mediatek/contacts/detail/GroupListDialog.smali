.class public Lcom/mediatek/contacts/detail/GroupListDialog;
.super Landroid/app/DialogFragment;
.source "GroupListDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mContext:Landroid/app/Activity;

.field private mFragment:Lcom/android/contacts/detail/ContactDetailFragment;

.field private mSlotId:I

.field private mTitleArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/mediatek/contacts/detail/GroupListDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/detail/GroupListDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/mediatek/contacts/detail/GroupListDialog;->mContext:Landroid/app/Activity;

    .line 20
    iput-object v1, p0, Lcom/mediatek/contacts/detail/GroupListDialog;->mAccountName:Ljava/lang/String;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/detail/GroupListDialog;->mSlotId:I

    .line 22
    iput-object v1, p0, Lcom/mediatek/contacts/detail/GroupListDialog;->mTitleArray:[Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2
    .parameter "titleArray"

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/mediatek/contacts/detail/GroupListDialog;->mContext:Landroid/app/Activity;

    .line 20
    iput-object v1, p0, Lcom/mediatek/contacts/detail/GroupListDialog;->mAccountName:Ljava/lang/String;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/detail/GroupListDialog;->mSlotId:I

    .line 22
    iput-object v1, p0, Lcom/mediatek/contacts/detail/GroupListDialog;->mTitleArray:[Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/mediatek/contacts/detail/GroupListDialog;->mTitleArray:[Ljava/lang/String;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/detail/GroupListDialog;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mediatek/contacts/detail/GroupListDialog;->mTitleArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/contacts/detail/GroupListDialog;)Lcom/android/contacts/detail/ContactDetailFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mediatek/contacts/detail/GroupListDialog;->mFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/contacts/detail/GroupListDialog;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mediatek/contacts/detail/GroupListDialog;->mContext:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 35
    iput-object p1, p0, Lcom/mediatek/contacts/detail/GroupListDialog;->mContext:Landroid/app/Activity;

    .line 36
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    if-eqz p1, :cond_0

    .line 43
    const-string v0, "mTitleArray"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/detail/GroupListDialog;->mTitleArray:[Ljava/lang/String;

    .line 45
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/detail/ContactDetailFragment;

    iput-object v1, p0, Lcom/mediatek/contacts/detail/GroupListDialog;->mFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    .line 58
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c00c1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 61
    iget-object v1, p0, Lcom/mediatek/contacts/detail/GroupListDialog;->mTitleArray:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_0

    .line 62
    const v1, 0x7f0c00c3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/mediatek/contacts/detail/GroupListDialog;->mFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/contacts/detail/ContactDetailFragment;->isGroupItemChecked:Z

    .line 71
    const v1, 0x1040013

    new-instance v2, Lcom/mediatek/contacts/detail/GroupListDialog$1;

    invoke-direct {v2, p0}, Lcom/mediatek/contacts/detail/GroupListDialog$1;-><init>(Lcom/mediatek/contacts/detail/GroupListDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/mediatek/contacts/detail/GroupListDialog;->mFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->configDetailGroupList()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 49
    const-string v0, "mAccountName"

    iget-object v1, p0, Lcom/mediatek/contacts/detail/GroupListDialog;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "mSlotId"

    iget v1, p0, Lcom/mediatek/contacts/detail/GroupListDialog;->mSlotId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    const-string v0, "mTitleArray"

    iget-object v1, p0, Lcom/mediatek/contacts/detail/GroupListDialog;->mTitleArray:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 52
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 53
    return-void
.end method
