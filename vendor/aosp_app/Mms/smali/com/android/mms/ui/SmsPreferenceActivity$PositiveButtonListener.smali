.class Lcom/android/mms/ui/SmsPreferenceActivity$PositiveButtonListener;
.super Ljava/lang/Object;
.source "SmsPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SmsPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositiveButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsPreferenceActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/SmsPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 651
    iput-object p1, p0, Lcom/android/mms/ui/SmsPreferenceActivity$PositiveButtonListener;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/SmsPreferenceActivity;Lcom/android/mms/ui/SmsPreferenceActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 651
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SmsPreferenceActivity$PositiveButtonListener;-><init>(Lcom/android/mms/ui/SmsPreferenceActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x0

    .line 655
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity$PositiveButtonListener;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    iget-object v5, p0, Lcom/android/mms/ui/SmsPreferenceActivity$PositiveButtonListener;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    #getter for: Lcom/android/mms/ui/SmsPreferenceActivity;->mNumberText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/android/mms/ui/SmsPreferenceActivity;->access$200(Lcom/android/mms/ui/SmsPreferenceActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/mms/ui/SmsPreferenceActivity;->isValidAddr(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/android/mms/ui/SmsPreferenceActivity;->access$300(Lcom/android/mms/ui/SmsPreferenceActivity;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 656
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity$PositiveButtonListener;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    #getter for: Lcom/android/mms/ui/SmsPreferenceActivity;->mNumberText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/mms/ui/SmsPreferenceActivity;->access$200(Lcom/android/mms/ui/SmsPreferenceActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, num:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity$PositiveButtonListener;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b026b

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, ""

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 658
    .local v2, strUnSpFormat:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity$PositiveButtonListener;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 680
    .end local v0           #num:Ljava/lang/String;
    .end local v2           #strUnSpFormat:Ljava/lang/String;
    :goto_0
    return-void

    .line 662
    :cond_0
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v3

    .line 665
    .local v3, teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity$PositiveButtonListener;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    #getter for: Lcom/android/mms/ui/SmsPreferenceActivity;->mListSimInfo:Ljava/util/List;
    invoke-static {v4}, Lcom/android/mms/ui/SmsPreferenceActivity;->access$400(Lcom/android/mms/ui/SmsPreferenceActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v4}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v1

    .line 669
    .local v1, slotId:I
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/ui/SmsPreferenceActivity$PositiveButtonListener$1;

    invoke-direct {v5, p0, v3, v1}, Lcom/android/mms/ui/SmsPreferenceActivity$PositiveButtonListener$1;-><init>(Lcom/android/mms/ui/SmsPreferenceActivity$PositiveButtonListener;Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;I)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
