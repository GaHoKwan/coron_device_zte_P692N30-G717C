.class Lcom/android/mms/ui/ConversationList$ModeCallback$7;
.super Landroid/os/Handler;
.source "ConversationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList$ModeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$ModeCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 2292
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$7;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 2295
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2303
    :goto_0
    return-void

    .line 2297
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$7;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    #getter for: Lcom/android/mms/ui/ConversationList$ModeCallback;->mSelectionTitle:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$ModeCallback;->access$3600(Lcom/android/mms/ui/ConversationList$ModeCallback;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$7;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0001

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$7;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    #getter for: Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedNum:I
    invoke-static {v3}, Lcom/android/mms/ui/ConversationList$ModeCallback;->access$4400(Lcom/android/mms/ui/ConversationList$ModeCallback;)I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$7;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    #getter for: Lcom/android/mms/ui/ConversationList$ModeCallback;->mCheckedNum:I
    invoke-static {v6}, Lcom/android/mms/ui/ConversationList$ModeCallback;->access$4400(Lcom/android/mms/ui/ConversationList$ModeCallback;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
