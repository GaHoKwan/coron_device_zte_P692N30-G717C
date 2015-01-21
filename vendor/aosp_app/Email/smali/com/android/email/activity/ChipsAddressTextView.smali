.class public Lcom/android/email/activity/ChipsAddressTextView;
.super Lcom/android/ex/chips/MTKRecipientEditTextView;
.source "ChipsAddressTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;
    }
.end annotation


# static fields
.field private static final ADD_POST_DELAY:J = 0x12cL

.field public static final AUTO_SEARCH_THRESHOLD_LENGTH:I = 0x1

.field private static final DELETE_KEY_POST_DELAY:J = 0x1f4L


# instance fields
.field private final mInternalValidator:Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/MTKRecipientEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;-><init>(Lcom/android/email/activity/ChipsAddressTextView$1;)V

    iput-object v0, p0, Lcom/android/email/activity/ChipsAddressTextView;->mInternalValidator:Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;

    .line 59
    iget-object v0, p0, Lcom/android/email/activity/ChipsAddressTextView;->mInternalValidator:Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;

    invoke-super {p0, v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 62
    return-void
.end method


# virtual methods
.method public setGalSearchDelayer()V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 72
    .local v0, filter:Landroid/widget/Filter;
    if-eqz v0, :cond_0

    .line 73
    new-instance v1, Lcom/android/email/activity/ChipsAddressTextView$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/ChipsAddressTextView$1;-><init>(Lcom/android/email/activity/ChipsAddressTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->setDelayer(Landroid/widget/Filter$Delayer;)V

    .line 90
    :cond_0
    return-void
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .locals 1
    .parameter "validator"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/email/activity/ChipsAddressTextView;->mInternalValidator:Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 67
    return-void
.end method
