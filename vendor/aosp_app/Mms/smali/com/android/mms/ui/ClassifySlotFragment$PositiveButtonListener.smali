.class Lcom/android/mms/ui/ClassifySlotFragment$PositiveButtonListener;
.super Ljava/lang/Object;
.source "ClassifySlotFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ClassifySlotFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositiveButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ClassifySlotFragment;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ClassifySlotFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/mms/ui/ClassifySlotFragment$PositiveButtonListener;->this$0:Lcom/android/mms/ui/ClassifySlotFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ClassifySlotFragment;Lcom/android/mms/ui/ClassifySlotFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ClassifySlotFragment$PositiveButtonListener;-><init>(Lcom/android/mms/ui/ClassifySlotFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x0

    .line 413
    iget-object v3, p0, Lcom/android/mms/ui/ClassifySlotFragment$PositiveButtonListener;->this$0:Lcom/android/mms/ui/ClassifySlotFragment;

    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment$PositiveButtonListener;->this$0:Lcom/android/mms/ui/ClassifySlotFragment;

    #getter for: Lcom/android/mms/ui/ClassifySlotFragment;->mNumberText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/mms/ui/ClassifySlotFragment;->access$200(Lcom/android/mms/ui/ClassifySlotFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/mms/ui/ClassifySlotFragment;->isValidAddr(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/android/mms/ui/ClassifySlotFragment;->access$300(Lcom/android/mms/ui/ClassifySlotFragment;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 414
    iget-object v3, p0, Lcom/android/mms/ui/ClassifySlotFragment$PositiveButtonListener;->this$0:Lcom/android/mms/ui/ClassifySlotFragment;

    #getter for: Lcom/android/mms/ui/ClassifySlotFragment;->mNumberText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/mms/ui/ClassifySlotFragment;->access$200(Lcom/android/mms/ui/ClassifySlotFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, num:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/ClassifySlotFragment$PositiveButtonListener;->this$0:Lcom/android/mms/ui/ClassifySlotFragment;

    #getter for: Lcom/android/mms/ui/ClassifySlotFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ClassifySlotFragment;->access$400(Lcom/android/mms/ui/ClassifySlotFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b026b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, ""

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, strUnSpFormat:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/ClassifySlotFragment$PositiveButtonListener;->this$0:Lcom/android/mms/ui/ClassifySlotFragment;

    #getter for: Lcom/android/mms/ui/ClassifySlotFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ClassifySlotFragment;->access$400(Lcom/android/mms/ui/ClassifySlotFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 432
    .end local v0           #num:Ljava/lang/String;
    .end local v1           #strUnSpFormat:Ljava/lang/String;
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v2

    .line 421
    .local v2, teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/ClassifySlotFragment$PositiveButtonListener$1;

    invoke-direct {v4, p0, v2}, Lcom/android/mms/ui/ClassifySlotFragment$PositiveButtonListener$1;-><init>(Lcom/android/mms/ui/ClassifySlotFragment$PositiveButtonListener;Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
