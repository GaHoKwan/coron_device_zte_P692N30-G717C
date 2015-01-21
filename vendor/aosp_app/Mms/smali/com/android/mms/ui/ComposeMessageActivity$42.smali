.class Lcom/android/mms/ui/ComposeMessageActivity$42;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onAttachmentError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4886
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$42;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$42;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4889
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$42;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$42;->val$error:I

    const v2, 0x7f0b02fb

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10400(Lcom/android/mms/ui/ComposeMessageActivity;II)V

    .line 4890
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$42;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->onMessageSent()V

    .line 4891
    return-void
.end method
