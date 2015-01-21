.class Lcom/android/mms/ui/MmsPlayerActivity$8;
.super Ljava/lang/Object;
.source "MmsPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsPlayerActivity;->asyncLoadMms()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsPlayerActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerActivity$8;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1393
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity$8;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mDirMode:Z
    invoke-static {v1}, Lcom/android/mms/ui/MmsPlayerActivity;->access$600(Lcom/android/mms/ui/MmsPlayerActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1394
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity$8;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity$8;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mMessageUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/ui/MmsPlayerActivity;->access$1400(Lcom/android/mms/ui/MmsPlayerActivity;)Landroid/net/Uri;

    move-result-object v2

    #setter for: Lcom/android/mms/ui/MmsPlayerActivity;->mMsgUri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/android/mms/ui/MmsPlayerActivity;->access$202(Lcom/android/mms/ui/MmsPlayerActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1395
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity$8;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #calls: Lcom/android/mms/ui/MmsPlayerActivity;->parseMsgUri()V
    invoke-static {v1}, Lcom/android/mms/ui/MmsPlayerActivity;->access$1500(Lcom/android/mms/ui/MmsPlayerActivity;)V

    .line 1400
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity$8;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity$8;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity$8;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mMessageUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/MmsPlayerActivity;->access$1400(Lcom/android/mms/ui/MmsPlayerActivity;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    #setter for: Lcom/android/mms/ui/MmsPlayerActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v1, v2}, Lcom/android/mms/ui/MmsPlayerActivity;->access$302(Lcom/android/mms/ui/MmsPlayerActivity;Lcom/android/mms/model/SlideshowModel;)Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1406
    :goto_0
    return-void

    .line 1402
    :catch_0
    move-exception v0

    .line 1403
    .local v0, e:Lcom/google/android/mms/MmsException;
    goto :goto_0
.end method
