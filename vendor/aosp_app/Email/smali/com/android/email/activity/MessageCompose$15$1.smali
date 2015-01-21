.class Lcom/android/email/activity/MessageCompose$15$1;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose$15;

.field final synthetic val$recipientList:Lcom/android/ex/chips/MTKRecipientList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$15;Lcom/android/ex/chips/MTKRecipientList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3080
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$15$1;->this$0:Lcom/android/email/activity/MessageCompose$15;

    iput-object p2, p0, Lcom/android/email/activity/MessageCompose$15$1;->val$recipientList:Lcom/android/ex/chips/MTKRecipientList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3083
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$15$1;->this$0:Lcom/android/email/activity/MessageCompose$15;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$15;->val$view:Landroid/widget/MultiAutoCompleteTextView;

    check-cast v0, Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$15$1;->val$recipientList:Lcom/android/ex/chips/MTKRecipientList;

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->appendList(Lcom/android/ex/chips/MTKRecipientList;)V

    .line 3084
    return-void
.end method
