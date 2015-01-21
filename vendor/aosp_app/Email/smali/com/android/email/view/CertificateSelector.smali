.class public Lcom/android/email/view/CertificateSelector;
.super Landroid/widget/RelativeLayout;
.source "CertificateSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/view/CertificateSelector$1;,
        Lcom/android/email/view/CertificateSelector$SavedState;,
        Lcom/android/email/view/CertificateSelector$HostCallback;
    }
.end annotation


# instance fields
.field private mAliasText:Landroid/widget/TextView;

.field private mHost:Lcom/android/email/view/CertificateSelector$HostCallback;

.field private mSelectButton:Landroid/widget/Button;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method


# virtual methods
.method public getButtonFun()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/email/view/CertificateSelector;->mSelectButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getCertificate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/email/view/CertificateSelector;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public hasCertificate()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/email/view/CertificateSelector;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initTest(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .parameter "context"

    .prologue
    .line 142
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 143
    .local v1, layout:Landroid/widget/LinearLayout;
    const v2, 0x7f040003

    .line 144
    .local v2, layoutId:I
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 146
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 147
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0f0032

    invoke-static {v3, v4}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    return-object v4
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/email/view/CertificateSelector;->mSelectButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/email/view/CertificateSelector;->mHost:Lcom/android/email/view/CertificateSelector$HostCallback;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/email/view/CertificateSelector;->hasCertificate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/view/CertificateSelector;->setCertificate(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/email/view/CertificateSelector;->mHost:Lcom/android/email/view/CertificateSelector$HostCallback;

    invoke-interface {v0}, Lcom/android/email/view/CertificateSelector$HostCallback;->onCertificateRemoved()V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/email/view/CertificateSelector;->mHost:Lcom/android/email/view/CertificateSelector$HostCallback;

    invoke-interface {v0}, Lcom/android/email/view/CertificateSelector$HostCallback;->onCertificateRequested()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 81
    const v0, 0x7f0f0074

    invoke-static {p0, v0}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/view/CertificateSelector;->mAliasText:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0f0073

    invoke-static {p0, v0}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/view/CertificateSelector;->mSelectButton:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/android/email/view/CertificateSelector;->mSelectButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/view/CertificateSelector;->setCertificate(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "parcel"

    .prologue
    .line 128
    move-object v0, p1

    check-cast v0, Lcom/android/email/view/CertificateSelector$SavedState;

    .line 129
    .local v0, savedState:Lcom/android/email/view/CertificateSelector$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 130
    iget-object v1, v0, Lcom/android/email/view/CertificateSelector$SavedState;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/email/view/CertificateSelector;->setCertificate(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 135
    new-instance v0, Lcom/android/email/view/CertificateSelector$SavedState;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/view/CertificateSelector;->getCertificate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/email/view/CertificateSelector$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    return-object v0
.end method

.method public setCertificate(Ljava/lang/String;)V
    .locals 3
    .parameter "alias"

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    .local v0, res:Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/email/view/CertificateSelector;->mValue:Ljava/lang/String;

    .line 90
    iget-object v2, p0, Lcom/android/email/view/CertificateSelector;->mAliasText:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const v1, 0x7f080163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v2, p0, Lcom/android/email/view/CertificateSelector;->mSelectButton:Landroid/widget/Button;

    if-nez p1, :cond_1

    const v1, 0x7f080160

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void

    :cond_0
    move-object v1, p1

    .line 90
    goto :goto_0

    .line 94
    :cond_1
    const v1, 0x7f080162

    goto :goto_1
.end method

.method public setDelegate(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 75
    return-void
.end method

.method public setHostActivity(Lcom/android/email/view/CertificateSelector$HostCallback;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/email/view/CertificateSelector;->mHost:Lcom/android/email/view/CertificateSelector$HostCallback;

    .line 72
    return-void
.end method
