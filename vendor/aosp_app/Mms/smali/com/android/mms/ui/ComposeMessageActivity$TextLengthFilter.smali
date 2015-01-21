.class Lcom/android/mms/ui/ComposeMessageActivity$TextLengthFilter;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextLengthFilter"
.end annotation


# instance fields
.field private mMaxLength:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 4
    .parameter
    .parameter "max"

    .prologue
    const v3, 0x7f0b0357

    const/4 v2, 0x0

    .line 9439
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$TextLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9440
    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$TextLengthFilter;->mMaxLength:I

    .line 9441
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$TextLengthFilter;->mMaxLength:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    :goto_0
    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mExceedMessageSizeToast:Landroid/widget/Toast;
    invoke-static {p1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16902(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 9446
    return-void

    .line 9441
    :cond_0
    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    goto :goto_0
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
    .line 9450
    const-string v1, "Mms/compose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TextLengthFilter source  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " start  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " end = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dstart = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dend = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dest length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9454
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$TextLengthFilter;->mMaxLength:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 9456
    .local v0, keep:I
    sub-int v1, p3, p2

    if-ge v0, v1, :cond_0

    .line 9457
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$TextLengthFilter;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mExceedMessageSizeToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16900(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 9460
    :cond_0
    if-gtz v0, :cond_1

    .line 9461
    const-string v1, ""

    .line 9465
    :goto_0
    return-object v1

    .line 9462
    :cond_1
    sub-int v1, p3, p2

    if-lt v0, v1, :cond_2

    .line 9463
    const/4 v1, 0x0

    goto :goto_0

    .line 9465
    :cond_2
    add-int v1, p2, v0

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method
