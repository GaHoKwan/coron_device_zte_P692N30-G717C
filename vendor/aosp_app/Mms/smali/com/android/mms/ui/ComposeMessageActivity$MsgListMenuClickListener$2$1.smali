.class Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2;)V
    .locals 0
    .parameter

    .prologue
    .line 2470
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2$1;->this$2:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2472
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2$1;->this$2:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2$1;->this$2:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2;->val$mRestrictedItem:Lcom/android/mms/ui/MessageItem;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->forwardMessage(Lcom/android/mms/ui/MessageItem;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7200(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 2473
    return-void
.end method
