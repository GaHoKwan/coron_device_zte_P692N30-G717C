.class Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener$1;
.super Ljava/lang/Object;
.source "SelectCardPreferenceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener;

.field final synthetic val$teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener;Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener$1;->this$1:Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener;

    iput-object p2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener$1;->val$teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 546
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener$1;->val$teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    iget-object v3, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener$1;->this$1:Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener;

    iget-object v3, v3, Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener;->this$0:Lcom/android/mms/ui/SelectCardPreferenceActivity;

    #getter for: Lcom/android/mms/ui/SelectCardPreferenceActivity;->mNumberText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->access$300(Lcom/android/mms/ui/SelectCardPreferenceActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener$1;->this$1:Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener;

    iget-object v4, v4, Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener;->this$0:Lcom/android/mms/ui/SelectCardPreferenceActivity;

    #getter for: Lcom/android/mms/ui/SelectCardPreferenceActivity;->mCurrentSim:I
    invoke-static {v4}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->access$400(Lcom/android/mms/ui/SelectCardPreferenceActivity;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->setScAddressGemini(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 552
    :goto_0
    return-void

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, e1:Landroid/os/RemoteException;
    const-string v2, "Mms/SelectCardPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setScAddressGemini is failed.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 549
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 550
    .local v1, e2:Ljava/lang/NullPointerException;
    const-string v2, "Mms/SelectCardPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setScAddressGemini is failed.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
