.class Lcom/android/mms/ui/MessageListItem$18$1;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem$18;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageListItem$18;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem$18;)V
    .locals 0
    .parameter

    .prologue
    .line 2312
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$18$1;->this$1:Lcom/android/mms/ui/MessageListItem$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2314
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2316
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$18$1;->this$1:Lcom/android/mms/ui/MessageListItem$18;

    iget-object v6, v6, Lcom/android/mms/ui/MessageListItem$18;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$2900(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b00fc

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 2318
    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$18$1;->this$1:Lcom/android/mms/ui/MessageListItem$18;

    iget-object v6, v6, Lcom/android/mms/ui/MessageListItem$18;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    iget-wide v2, v6, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    .line 2319
    .local v2, iMsgId:J
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$18$1;->this$1:Lcom/android/mms/ui/MessageListItem$18;

    iget v6, v6, Lcom/android/mms/ui/MessageListItem$18;->val$filesize:I

    if-ne v6, v9, :cond_4

    .line 2320
    const/4 v4, 0x0

    .line 2321
    .local v4, succeeded:Z
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$18$1;->this$1:Lcom/android/mms/ui/MessageListItem$18;

    iget-object v6, v6, Lcom/android/mms/ui/MessageListItem$18;->this$0:Lcom/android/mms/ui/MessageListItem;

    #calls: Lcom/android/mms/ui/MessageListItem;->copyTextSingleAttachment(J)Z
    invoke-static {v6, v2, v3}, Lcom/android/mms/ui/MessageListItem;->access$3000(Lcom/android/mms/ui/MessageListItem;J)Z

    move-result v4

    .line 2322
    if-nez v4, :cond_1

    .line 2323
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$18$1;->this$1:Lcom/android/mms/ui/MessageListItem$18;

    iget-object v6, v6, Lcom/android/mms/ui/MessageListItem$18;->this$0:Lcom/android/mms/ui/MessageListItem;

    #calls: Lcom/android/mms/ui/MessageListItem;->copySingleAttachment(J)Z
    invoke-static {v6, v2, v3}, Lcom/android/mms/ui/MessageListItem;->access$3100(Lcom/android/mms/ui/MessageListItem;J)Z

    move-result v4

    .line 2325
    :cond_1
    if-eqz v4, :cond_3

    .line 2326
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$18$1;->this$1:Lcom/android/mms/ui/MessageListItem$18;

    iget-object v6, v6, Lcom/android/mms/ui/MessageListItem$18;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$3200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b030c

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 2329
    .local v5, t:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2345
    .end local v4           #succeeded:Z
    .end local v5           #t:Landroid/widget/Toast;
    :cond_2
    :goto_0
    return-void

    .line 2331
    .restart local v4       #succeeded:Z
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$18$1;->this$1:Lcom/android/mms/ui/MessageListItem$18;

    iget-object v6, v6, Lcom/android/mms/ui/MessageListItem$18;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$3300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b030d

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 2334
    .restart local v5       #t:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2336
    .end local v4           #succeeded:Z
    .end local v5           #t:Landroid/widget/Toast;
    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$18$1;->this$1:Lcom/android/mms/ui/MessageListItem$18;

    iget v6, v6, Lcom/android/mms/ui/MessageListItem$18;->val$filesize:I

    if-le v6, v9, :cond_2

    .line 2337
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2338
    .local v0, data:Landroid/os/Bundle;
    const-string v6, "savecontent"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2339
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$18$1;->this$1:Lcom/android/mms/ui/MessageListItem$18;

    iget-object v6, v6, Lcom/android/mms/ui/MessageListItem$18;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$3400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/android/mms/ui/MultiSaveActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2340
    .local v1, i:Landroid/content/Intent;
    const-string v6, "msgid"

    invoke-virtual {v1, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2341
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2343
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$18$1;->this$1:Lcom/android/mms/ui/MessageListItem$18;

    iget-object v6, v6, Lcom/android/mms/ui/MessageListItem$18;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$3500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
