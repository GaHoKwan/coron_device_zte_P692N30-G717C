.class Lcom/android/mms/ui/SmsTemplateEditActivity$DeleteButtonListener;
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
    name = "DeleteButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/SmsTemplateEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$DeleteButtonListener;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/SmsTemplateEditActivity;Lcom/android/mms/ui/SmsTemplateEditActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SmsTemplateEditActivity$DeleteButtonListener;-><init>(Lcom/android/mms/ui/SmsTemplateEditActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$DeleteButtonListener;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    iget-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$DeleteButtonListener;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    #getter for: Lcom/android/mms/ui/SmsTemplateEditActivity;->mQuickTextId:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$100(Lcom/android/mms/ui/SmsTemplateEditActivity;)Ljava/lang/Integer;

    move-result-object v2

    #calls: Lcom/android/mms/ui/SmsTemplateEditActivity;->delST(Ljava/lang/Integer;)I
    invoke-static {v1, v2}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$1600(Lcom/android/mms/ui/SmsTemplateEditActivity;Ljava/lang/Integer;)I

    move-result v0

    .line 237
    .local v0, i:I
    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$DeleteButtonListener;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    #calls: Lcom/android/mms/ui/SmsTemplateEditActivity;->updateAllQuicktexts()V
    invoke-static {v1}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$1200(Lcom/android/mms/ui/SmsTemplateEditActivity;)V

    .line 238
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 239
    if-lez v0, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$DeleteButtonListener;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/ui/SmsTemplateEditActivity;->mQuickTextId:Ljava/lang/Integer;
    invoke-static {v1, v2}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$102(Lcom/android/mms/ui/SmsTemplateEditActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 241
    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$DeleteButtonListener;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    const v2, 0x7f0b021d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #calls: Lcom/android/mms/ui/SmsTemplateEditActivity;->makeAToast(Ljava/lang/Integer;)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$1300(Lcom/android/mms/ui/SmsTemplateEditActivity;Ljava/lang/Integer;)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$DeleteButtonListener;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    const v2, 0x7f0b021e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #calls: Lcom/android/mms/ui/SmsTemplateEditActivity;->makeAToast(Ljava/lang/Integer;)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$1300(Lcom/android/mms/ui/SmsTemplateEditActivity;Ljava/lang/Integer;)V

    goto :goto_0
.end method
