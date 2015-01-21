.class Lcom/android/mms/ui/MessageListItem$26;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->hideDownloadButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 3705
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$26;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 3709
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 3710
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$26;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$26;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3719
    :goto_0
    return-void

    .line 3714
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$26;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMmsCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$4000(Lcom/android/mms/ui/MessageListItem;)Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$26;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3715
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$26;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMmsCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$4000(Lcom/android/mms/ui/MessageListItem;)Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$26;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->cancelDownload(Landroid/net/Uri;)V

    goto :goto_0

    .line 3717
    :cond_1
    const-string v0, "MessageListItem"

    const-string v1, "Try to cancel download failed for mmsCacelDownloadPlugin is null"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
