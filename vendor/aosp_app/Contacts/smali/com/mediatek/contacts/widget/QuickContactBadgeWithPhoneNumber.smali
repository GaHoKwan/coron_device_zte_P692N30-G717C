.class public Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;
.super Landroid/widget/QuickContactBadge;
.source "QuickContactBadgeWithPhoneNumber.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mIsSipNumber:Z

.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    .local v0, resources:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-direct {v1, v0}, Lcom/android/contacts/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    .local v0, resources:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-direct {v1, v0}, Lcom/android/contacts/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, resources:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-direct {v1, v0}, Lcom/android/contacts/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    .line 76
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;->mIsSipNumber:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 7
    .parameter "number"

    .prologue
    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x7f0c01a5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, message:Ljava/lang/String;
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x7f0c00b9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, title:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber$1;

    invoke-direct {v5, p0, p1}, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber$1;-><init>(Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 123
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 125
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public assignPhoneNumber(Ljava/lang/String;Z)V
    .locals 1
    .parameter "number"
    .parameter "isSipCallNumber"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;->mPhoneNumber:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-virtual {v0, p1}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 91
    :goto_0
    iput-boolean p2, p0, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;->mIsSipNumber:Z

    .line 92
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;->mPhoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;->mPhoneNumber:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;->showDialog(Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/QuickContactBadge;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
