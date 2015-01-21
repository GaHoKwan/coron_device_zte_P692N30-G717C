.class Lcom/android/mms/ui/SlideEditorActivity$TextLengthFilter;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextLengthFilter"
.end annotation


# instance fields
.field private mMaxLength:I

.field final synthetic this$0:Lcom/android/mms/ui/SlideEditorActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SlideEditorActivity;I)V
    .locals 2
    .parameter
    .parameter "max"

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$TextLengthFilter;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1190
    iput p2, p0, Lcom/android/mms/ui/SlideEditorActivity$TextLengthFilter;->mMaxLength:I

    .line 1191
    const v0, 0x7f0b0357

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    #setter for: Lcom/android/mms/ui/SlideEditorActivity;->mExceedMessageSizeToast:Landroid/widget/Toast;
    invoke-static {p1, v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$1802(Lcom/android/mms/ui/SlideEditorActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1193
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
    .line 1198
    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity$TextLengthFilter;->mMaxLength:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 1200
    .local v0, keep:I
    sub-int v1, p3, p2

    if-ge v0, v1, :cond_0

    .line 1201
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$TextLengthFilter;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mExceedMessageSizeToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->access$1800(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1204
    :cond_0
    if-gtz v0, :cond_1

    .line 1205
    const-string v1, ""

    .line 1209
    :goto_0
    return-object v1

    .line 1206
    :cond_1
    sub-int v1, p3, p2

    if-lt v0, v1, :cond_2

    .line 1207
    const/4 v1, 0x0

    goto :goto_0

    .line 1209
    :cond_2
    add-int v1, p2, v0

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method
