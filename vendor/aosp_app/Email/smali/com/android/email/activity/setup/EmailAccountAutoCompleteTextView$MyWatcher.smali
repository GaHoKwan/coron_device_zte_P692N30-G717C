.class Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$MyWatcher;
.super Ljava/lang/Object;
.source "EmailAccountAutoCompleteTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$MyWatcher;->this$0:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$MyWatcher;-><init>(Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 41
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 43
    iget-object v1, p0, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView$MyWatcher;->this$0:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    if-nez p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->mDeletingText:Z
    invoke-static {v1, v0}, Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;->access$002(Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;Z)Z

    .line 44
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 46
    return-void
.end method
