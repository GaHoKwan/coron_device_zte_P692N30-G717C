.class final Lcom/android/email/activity/UiUtilities$1;
.super Landroid/text/InputFilter$LengthFilter;
.source "UiUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/UiUtilities;->setupLengthFilter(Landroid/widget/EditText;Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$maxLength:I

.field final synthetic val$showToast:Z


# direct methods
.method constructor <init>(IIZLandroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    iput p2, p0, Lcom/android/email/activity/UiUtilities$1;->val$maxLength:I

    iput-boolean p3, p0, Lcom/android/email/activity/UiUtilities$1;->val$showToast:Z

    iput-object p4, p0, Lcom/android/email/activity/UiUtilities$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v1, 0x0

    .line 207
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    if-nez p4, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, p5

    sub-int/2addr v0, p6

    iget v2, p0, Lcom/android/email/activity/UiUtilities$1;->val$maxLength:I

    if-ne v0, v2, :cond_2

    .line 210
    iget-boolean v0, p0, Lcom/android/email/activity/UiUtilities$1;->val$showToast:Z

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/email/activity/UiUtilities$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/UiUtilities$1;->val$context:Landroid/content/Context;

    const v3, 0x7f080001

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 215
    :cond_0
    const-string v0, ""

    .line 217
    :goto_1
    return-object v0

    .line 207
    :cond_1
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v0

    goto :goto_0

    .line 217
    :cond_2
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method
