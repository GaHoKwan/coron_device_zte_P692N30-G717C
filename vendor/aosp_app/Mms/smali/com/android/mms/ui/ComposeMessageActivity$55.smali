.class Lcom/android/mms/ui/ComposeMessageActivity$55;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->handleSendIntent()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$numberToImport:I

.field final synthetic val$uris:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6367
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$55;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$55;->val$numberToImport:I

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$55;->val$uris:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$55;->val$mimeType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 6370
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$55;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mToastCountForResizeImage:I
    invoke-static {v5, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12002(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    .line 6371
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$55;->val$numberToImport:I

    if-ge v0, v5, :cond_3

    .line 6372
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$55;->val$uris:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .local v4, uri:Landroid/os/Parcelable;
    move-object v5, v4

    .line 6374
    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 6375
    .local v2, scheme:Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v5, "file"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    .line 6378
    check-cast v5, Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->getContentType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 6379
    .local v3, type:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6380
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$55;->val$mimeType:Ljava/lang/String;

    .line 6383
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$55;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    check-cast v4, Landroid/net/Uri;

    .end local v4           #uri:Landroid/os/Parcelable;
    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->addFileAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V
    invoke-static {v5, v3, v4, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11800(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 6371
    .end local v3           #type:Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6385
    .restart local v4       #uri:Landroid/os/Parcelable;
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$55;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$55;->val$mimeType:Ljava/lang/String;

    check-cast v4, Landroid/net/Uri;

    .end local v4           #uri:Landroid/os/Parcelable;
    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V
    invoke-static {v5, v6, v4, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11900(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;Z)V

    goto :goto_1

    .line 6388
    .end local v2           #scheme:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$55;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mToastCountForResizeImage:I
    invoke-static {v5, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12002(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    .line 6389
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$55;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    .line 6390
    .local v1, mSlideShowModel:Lcom/android/mms/model/SlideshowModel;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 6391
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$55;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 6393
    :cond_4
    return-void
.end method
