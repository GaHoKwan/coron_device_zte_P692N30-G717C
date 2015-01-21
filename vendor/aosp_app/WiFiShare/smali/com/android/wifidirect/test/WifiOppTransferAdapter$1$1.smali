.class Lcom/android/wifidirect/test/WifiOppTransferAdapter$1$1;
.super Ljava/lang/Object;
.source "WifiOppTransferAdapter.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;


# direct methods
.method constructor <init>(Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1$1;->this$1:Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    .line 153
    const-string v4, "wifiOppTransferAdapter"

    const-string v5, "onMenuItemClick"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 176
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 157
    :pswitch_0
    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1$1;->this$1:Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;

    iget-object v4, v4, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;->this$0:Lcom/android/wifidirect/test/WifiOppTransferAdapter;

    #calls: Lcom/android/wifidirect/test/WifiOppTransferAdapter;->openCompleteTransfer()V
    invoke-static {v4}, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->access$200(Lcom/android/wifidirect/test/WifiOppTransferAdapter;)V

    goto :goto_0

    .line 163
    :pswitch_1
    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1$1;->this$1:Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;

    iget-object v4, v4, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;->this$0:Lcom/android/wifidirect/test/WifiOppTransferAdapter;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mTransferCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->access$000(Lcom/android/wifidirect/test/WifiOppTransferAdapter;)Landroid/database/Cursor;

    move-result-object v4

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 164
    .local v1, idColumnId:I
    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1$1;->this$1:Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;

    iget-object v4, v4, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;->this$0:Lcom/android/wifidirect/test/WifiOppTransferAdapter;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mTransferCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->access$000(Lcom/android/wifidirect/test/WifiOppTransferAdapter;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 165
    .local v2, sessionId:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 166
    .local v0, contentUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1$1;->this$1:Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;

    iget-object v4, v4, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;->this$0:Lcom/android/wifidirect/test/WifiOppTransferAdapter;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mShowAllIncoming:Z
    invoke-static {v4}, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->access$300(Lcom/android/wifidirect/test/WifiOppTransferAdapter;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 167
    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1$1;->this$1:Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;

    iget-object v4, v4, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;->this$0:Lcom/android/wifidirect/test/WifiOppTransferAdapter;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->access$100(Lcom/android/wifidirect/test/WifiOppTransferAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/wifidirect/test/WifiOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1$1;->this$1:Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;

    iget-object v4, v4, Lcom/android/wifidirect/test/WifiOppTransferAdapter$1;->this$0:Lcom/android/wifidirect/test/WifiOppTransferAdapter;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransferAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/wifidirect/test/WifiOppTransferAdapter;->access$100(Lcom/android/wifidirect/test/WifiOppTransferAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/wifidirect/test/WifiOppUtility;->DeleteItem(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x7f0b002e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
