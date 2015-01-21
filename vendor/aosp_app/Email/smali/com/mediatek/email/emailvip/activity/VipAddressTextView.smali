.class public Lcom/mediatek/email/emailvip/activity/VipAddressTextView;
.super Lcom/android/email/activity/ChipsAddressTextView;
.source "VipAddressTextView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListFragment:Lcom/mediatek/email/emailvip/activity/VipListFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/ChipsAddressTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipAddressTextView;->mListFragment:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    .line 32
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipAddressTextView;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;
    .locals 4
    .parameter "view"

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, addressList:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipAddressTextView;->mContext:Landroid/content/Context;

    const v3, 0x7f0800e0

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 47
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;Z)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 48
    .local v1, addresses:[Lcom/android/emailcommon/mail/Address;
    return-object v1
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 17
    .parameter "view"
    .parameter "action"
    .parameter "keyEvent"

    .prologue
    .line 56
    const-string v1, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VipAddressTextView onEditorAction : action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v16

    .line 58
    .local v16, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v16, :cond_0

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 60
    .local v2, eventTime:J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/16 v7, 0x42

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x16

    move-wide v4, v2

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 66
    new-instance v4, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v9, 0x1

    const/16 v10, 0x42

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v15, 0x16

    move-wide v7, v2

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 73
    .end local v2           #eventTime:J
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 79
    const/16 v1, 0x42

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    invoke-direct {p0, p0}, Lcom/mediatek/email/emailvip/activity/VipAddressTextView;->getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 81
    .local v0, addresses:[Lcom/android/emailcommon/mail/Address;
    array-length v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipAddressTextView;->mListFragment:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipAddressTextView;->mListFragment:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    invoke-virtual {v1, v0}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->onAddVip([Lcom/android/emailcommon/mail/Address;)V

    .line 83
    const-string v1, ""

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_0
    const/4 v1, 0x0

    .line 87
    .end local v0           #addresses:[Lcom/android/emailcommon/mail/Address;
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setTargetFragment(Lcom/mediatek/email/emailvip/activity/VipListFragment;)V
    .locals 0
    .parameter "listFragment"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipAddressTextView;->mListFragment:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    .line 37
    return-void
.end method
