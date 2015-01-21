.class Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;
.super Ljava/lang/Object;
.source "ChipsAddressTextView.java"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ChipsAddressTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForwardValidator"
.end annotation


# instance fields
.field private mValidator:Landroid/widget/AutoCompleteTextView$Validator;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/ChipsAddressTextView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "invalidText"

    .prologue
    .line 43
    return-object p1
.end method

.method public isValid(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v0, p1}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .locals 0
    .parameter "validator"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 52
    return-void
.end method
