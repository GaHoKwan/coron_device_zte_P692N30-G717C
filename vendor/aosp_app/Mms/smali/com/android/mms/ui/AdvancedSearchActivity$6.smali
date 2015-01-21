.class Lcom/android/mms/ui/AdvancedSearchActivity$6;
.super Ljava/lang/Object;
.source "AdvancedSearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AdvancedSearchActivity;->initCertainTimePickerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AdvancedSearchActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AdvancedSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/mms/ui/AdvancedSearchActivity$6;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 231
    const-string v0, "Mms/AdvancedSearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCertainTimePickerDialog.onClick(): which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity$6;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    #setter for: Lcom/android/mms/ui/AdvancedSearchActivity;->mCurrentCertainDate:I
    invoke-static {v0, p2}, Lcom/android/mms/ui/AdvancedSearchActivity;->access$602(Lcom/android/mms/ui/AdvancedSearchActivity;I)I

    .line 233
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity$6;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    #getter for: Lcom/android/mms/ui/AdvancedSearchActivity;->mCurrentCertainDate:I
    invoke-static {v0}, Lcom/android/mms/ui/AdvancedSearchActivity;->access$600(Lcom/android/mms/ui/AdvancedSearchActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 246
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 247
    return-void

    .line 235
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity$6;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    #getter for: Lcom/android/mms/ui/AdvancedSearchActivity;->mCertainTimeText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/AdvancedSearchActivity;->access$700(Lcom/android/mms/ui/AdvancedSearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f0b0205

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 238
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity$6;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    #getter for: Lcom/android/mms/ui/AdvancedSearchActivity;->mCertainTimeText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/AdvancedSearchActivity;->access$700(Lcom/android/mms/ui/AdvancedSearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f0b0206

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 241
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/AdvancedSearchActivity$6;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    #getter for: Lcom/android/mms/ui/AdvancedSearchActivity;->mCertainTimeText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/AdvancedSearchActivity;->access$700(Lcom/android/mms/ui/AdvancedSearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f0b0207

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
