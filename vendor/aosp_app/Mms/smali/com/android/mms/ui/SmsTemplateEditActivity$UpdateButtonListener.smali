.class Lcom/android/mms/ui/SmsTemplateEditActivity$UpdateButtonListener;
.super Ljava/lang/Object;
.source "SmsTemplateEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SmsTemplateEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/SmsTemplateEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$UpdateButtonListener;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/SmsTemplateEditActivity;Lcom/android/mms/ui/SmsTemplateEditActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SmsTemplateEditActivity$UpdateButtonListener;-><init>(Lcom/android/mms/ui/SmsTemplateEditActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 216
    iget-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$UpdateButtonListener;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    #getter for: Lcom/android/mms/ui/SmsTemplateEditActivity;->mOldQuickText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$1000(Lcom/android/mms/ui/SmsTemplateEditActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, newQuicktext:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$UpdateButtonListener;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    iget-object v3, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$UpdateButtonListener;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    #getter for: Lcom/android/mms/ui/SmsTemplateEditActivity;->mQuickTextId:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$100(Lcom/android/mms/ui/SmsTemplateEditActivity;)Ljava/lang/Integer;

    move-result-object v3

    #calls: Lcom/android/mms/ui/SmsTemplateEditActivity;->updateST(Ljava/lang/Integer;Ljava/lang/String;)I
    invoke-static {v2, v3, v1}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$1100(Lcom/android/mms/ui/SmsTemplateEditActivity;Ljava/lang/Integer;Ljava/lang/String;)I

    move-result v0

    .line 218
    .local v0, i:I
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 219
    if-lez v0, :cond_0

    .line 220
    iget-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$UpdateButtonListener;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    const/4 v3, 0x0

    #setter for: Lcom/android/mms/ui/SmsTemplateEditActivity;->mQuickTextId:Ljava/lang/Integer;
    invoke-static {v2, v3}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$102(Lcom/android/mms/ui/SmsTemplateEditActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 221
    iget-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$UpdateButtonListener;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    #calls: Lcom/android/mms/ui/SmsTemplateEditActivity;->updateAllQuicktexts()V
    invoke-static {v2}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$1200(Lcom/android/mms/ui/SmsTemplateEditActivity;)V

    .line 222
    iget-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$UpdateButtonListener;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    const v3, 0x7f0b021b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #calls: Lcom/android/mms/ui/SmsTemplateEditActivity;->makeAToast(Ljava/lang/Integer;)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$1300(Lcom/android/mms/ui/SmsTemplateEditActivity;Ljava/lang/Integer;)V

    .line 231
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$1400()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 224
    iget-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$UpdateButtonListener;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    const v3, 0x7f0b0220

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #calls: Lcom/android/mms/ui/SmsTemplateEditActivity;->makeAToast(Ljava/lang/Integer;)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$1300(Lcom/android/mms/ui/SmsTemplateEditActivity;Ljava/lang/Integer;)V

    goto :goto_0

    .line 225
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$1500()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 226
    iget-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$UpdateButtonListener;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    const v3, 0x7f0b027f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #calls: Lcom/android/mms/ui/SmsTemplateEditActivity;->makeAToast(Ljava/lang/Integer;)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$1300(Lcom/android/mms/ui/SmsTemplateEditActivity;Ljava/lang/Integer;)V

    .line 227
    iget-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$UpdateButtonListener;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    iget-object v3, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$UpdateButtonListener;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    #getter for: Lcom/android/mms/ui/SmsTemplateEditActivity;->mQuickText:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$300(Lcom/android/mms/ui/SmsTemplateEditActivity;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/mms/ui/SmsTemplateEditActivity;->showEditDialog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$900(Lcom/android/mms/ui/SmsTemplateEditActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$UpdateButtonListener;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    const v3, 0x7f0b021c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #calls: Lcom/android/mms/ui/SmsTemplateEditActivity;->makeAToast(Ljava/lang/Integer;)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$1300(Lcom/android/mms/ui/SmsTemplateEditActivity;Ljava/lang/Integer;)V

    goto :goto_0
.end method
