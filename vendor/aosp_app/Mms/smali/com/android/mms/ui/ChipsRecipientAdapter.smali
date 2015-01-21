.class public Lcom/android/mms/ui/ChipsRecipientAdapter;
.super Lcom/android/ex/chips/BaseRecipientAdapter;
.source "ChipsRecipientAdapter.java"


# static fields
.field private static final DEFAULT_PREFERRED_MAX_RESULT_COUNT:I = 0xa


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 30
    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;II)V

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->setShowDuplicateResults(Z)V

    .line 32
    return-void
.end method


# virtual methods
.method protected getItemLayout()I
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f040041

    return v0
.end method

.method public setShowEmailAddress(Z)V
    .locals 0
    .parameter "showEmailAddress"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter;->setShowPhoneAndEmail(Z)V

    .line 48
    return-void
.end method
