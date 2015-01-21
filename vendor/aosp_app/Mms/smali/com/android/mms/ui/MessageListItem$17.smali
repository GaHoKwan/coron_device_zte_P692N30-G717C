.class Lcom/android/mms/ui/MessageListItem$17;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->showFileAttachmentView(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$attach:Lcom/android/mms/model/FileAttachmentModel;

.field final synthetic val$isCtFeature:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/model/FileAttachmentModel;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2251
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$17;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$17;->val$attach:Lcom/android/mms/model/FileAttachmentModel;

    iput-boolean p3, p0, Lcom/android/mms/ui/MessageListItem$17;->val$isCtFeature:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 2253
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$17;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$17;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListItem;->mSelectedBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 2281
    :cond_0
    :goto_0
    return-void

    .line 2256
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$17;->val$attach:Lcom/android/mms/model/FileAttachmentModel;

    invoke-virtual {v2}, Lcom/android/mms/model/FileAttachmentModel;->isVCard()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2258
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListItem$17;->val$isCtFeature:Z

    if-eqz v2, :cond_2

    .line 2260
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$17;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$2400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/mms/ui/VCardViewerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2261
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$17;->val$attach:Lcom/android/mms/model/FileAttachmentModel;

    invoke-virtual {v2}, Lcom/android/mms/model/FileAttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2262
    const-string v2, "file_name"

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$17;->val$attach:Lcom/android/mms/model/FileAttachmentModel;

    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2263
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$17;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$2500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2264
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2265
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "MessageListItem"

    const-string v3, "no activity handle "

    invoke-static {v2, v3, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2268
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$17;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$2600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$17;->val$attach:Lcom/android/mms/model/FileAttachmentModel;

    invoke-static {v2, v3}, Lcom/android/mms/util/VCardUtils;->importVCard(Landroid/content/Context;Lcom/android/mms/model/FileAttachmentModel;)V

    goto :goto_0

    .line 2271
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$17;->val$attach:Lcom/android/mms/model/FileAttachmentModel;

    invoke-virtual {v2}, Lcom/android/mms/model/FileAttachmentModel;->isVCalendar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2273
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2274
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$17;->val$attach:Lcom/android/mms/model/FileAttachmentModel;

    invoke-virtual {v2}, Lcom/android/mms/model/FileAttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$17;->val$attach:Lcom/android/mms/model/FileAttachmentModel;

    invoke-virtual {v3}, Lcom/android/mms/model/FileAttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2275
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2276
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$17;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$2700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2277
    .end local v1           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 2278
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v2, "MessageListItem"

    const-string v3, "no activity handle "

    invoke-static {v2, v3, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
