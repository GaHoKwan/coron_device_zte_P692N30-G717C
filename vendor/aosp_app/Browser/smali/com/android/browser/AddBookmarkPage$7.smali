.class Lcom/android/browser/AddBookmarkPage$7;
.super Landroid/os/Handler;
.source "AddBookmarkPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/AddBookmarkPage;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/AddBookmarkPage;


# direct methods
.method constructor <init>(Lcom/android/browser/AddBookmarkPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1182
    iput-object p1, p0, Lcom/android/browser/AddBookmarkPage$7;->this$0:Lcom/android/browser/AddBookmarkPage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 1185
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1208
    :goto_0
    return-void

    .line 1187
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_0

    .line 1188
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$7;->this$0:Lcom/android/browser/AddBookmarkPage;

    const v2, 0x7f0c008f

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1191
    :cond_0
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$7;->this$0:Lcom/android/browser/AddBookmarkPage;

    const v2, 0x7f0c0090

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1196
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1197
    .local v0, b:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/browser/AddBookmarkPage$7;->this$0:Lcom/android/browser/AddBookmarkPage;

    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage$7;->this$0:Lcom/android/browser/AddBookmarkPage;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "touch_icon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    const-string v2, "favicon"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v4, v5, v6, v1, v2}, Lcom/android/browser/BookmarkUtils;->createAddToHomeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1205
    .end local v0           #b:Landroid/os/Bundle;
    :pswitch_2
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$7;->this$0:Lcom/android/browser/AddBookmarkPage;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1185
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
