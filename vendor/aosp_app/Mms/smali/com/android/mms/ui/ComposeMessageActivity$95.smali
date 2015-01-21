.class Lcom/android/mms/ui/ComposeMessageActivity$95;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->chooseAudio()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 11257
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$95;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v2, 0xd0

    .line 11259
    packed-switch p2, :pswitch_data_0

    .line 11274
    :goto_0
    return-void

    .line 11261
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$95;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->selectRingtone(Landroid/content/Context;I)V

    goto :goto_0

    .line 11264
    :pswitch_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11265
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$95;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$95;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 11269
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$95;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->selectAudio(Landroid/app/Activity;I)V

    goto :goto_0

    .line 11259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
