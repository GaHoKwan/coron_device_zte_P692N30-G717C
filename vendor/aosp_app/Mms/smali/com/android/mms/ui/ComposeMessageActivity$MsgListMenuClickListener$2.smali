.class Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

.field final synthetic val$mRestrictedItem:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2466
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2;->val$mRestrictedItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2468
    sget v0, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 2469
    .local v0, createMode:I
    const/4 v1, 0x0

    sput v1, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 2470
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2475
    sput v0, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 2476
    return-void
.end method
