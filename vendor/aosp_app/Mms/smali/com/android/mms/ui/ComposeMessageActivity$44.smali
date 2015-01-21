.class Lcom/android/mms/ui/ComposeMessageActivity$44;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->addAttachment(IZ)V
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
    .line 5321
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$44;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 5323
    packed-switch p2, :pswitch_data_0

    .line 5338
    :goto_0
    return-void

    .line 5325
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$44;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->selectRingtone(Landroid/content/Context;I)V

    goto :goto_0

    .line 5328
    :pswitch_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5329
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$44;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$44;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5333
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$44;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v1, 0x68

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->selectAudio(Landroid/app/Activity;I)V

    goto :goto_0

    .line 5323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
