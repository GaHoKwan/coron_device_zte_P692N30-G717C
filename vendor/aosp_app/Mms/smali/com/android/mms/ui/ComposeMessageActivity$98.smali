.class Lcom/android/mms/ui/ComposeMessageActivity$98;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 11559
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$98;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 11562
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$98;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mPhotoFilePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$18900(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x43fa

    invoke-static {v2, v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->resizeImg(Ljava/lang/String;F)[B

    move-result-object v1

    .line 11563
    .local v1, img:[B
    if-nez v1, :cond_0

    .line 11573
    :goto_0
    return-void

    .line 11567
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$98;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDstPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17900(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->nmsStream2File([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11572
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$98;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageActivity;->mIpMsgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$98;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSendSketch:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$19100(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 11568
    :catch_0
    move-exception v0

    .line 11569
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
