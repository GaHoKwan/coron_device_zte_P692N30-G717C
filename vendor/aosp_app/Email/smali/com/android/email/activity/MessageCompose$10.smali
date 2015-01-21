.class Lcom/android/email/activity/MessageCompose$10;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onAddAttachment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 2175
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$10;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$10;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x1

    #setter for: Lcom/android/email/activity/MessageCompose;->mPickingAttachment:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$3502(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 2178
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$10;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$10;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAttachmentTypeSelectorAdapter:Lcom/android/email/activity/AttachmentTypeSelectorAdapter;
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$3700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->buttonToCommand(I)I

    move-result v1

    #calls: Lcom/android/email/activity/MessageCompose;->addAttachment(I)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$3800(Lcom/android/email/activity/MessageCompose;I)V

    .line 2179
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2180
    return-void
.end method
