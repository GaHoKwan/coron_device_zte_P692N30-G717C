.class Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener;
.super Ljava/lang/Object;
.source "SelectCardPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SelectCardPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositiveButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SelectCardPreferenceActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/SelectCardPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener;->this$0:Lcom/android/mms/ui/SelectCardPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/SelectCardPreferenceActivity;Lcom/android/mms/ui/SelectCardPreferenceActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 536
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener;-><init>(Lcom/android/mms/ui/SelectCardPreferenceActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 538
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v1

    .line 539
    .local v1, teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    iget-object v2, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener;->this$0:Lcom/android/mms/ui/SelectCardPreferenceActivity;

    #getter for: Lcom/android/mms/ui/SelectCardPreferenceActivity;->mNumberText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->access$300(Lcom/android/mms/ui/SelectCardPreferenceActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, scNumber:Ljava/lang/String;
    const-string v2, "Mms/SelectCardPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setScNumber is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v2, "Mms/SelectCardPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentSim is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener;->this$0:Lcom/android/mms/ui/SelectCardPreferenceActivity;

    #getter for: Lcom/android/mms/ui/SelectCardPreferenceActivity;->mCurrentSim:I
    invoke-static {v4}, Lcom/android/mms/ui/SelectCardPreferenceActivity;->access$400(Lcom/android/mms/ui/SelectCardPreferenceActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener$1;

    invoke-direct {v3, p0, v1}, Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener$1;-><init>(Lcom/android/mms/ui/SelectCardPreferenceActivity$PositiveButtonListener;Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 554
    return-void
.end method
