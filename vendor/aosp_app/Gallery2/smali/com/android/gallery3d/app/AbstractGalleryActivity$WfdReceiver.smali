.class public Lcom/android/gallery3d/app/AbstractGalleryActivity$WfdReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AbstractGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AbstractGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WfdReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$WfdReceiver;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 381
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, action:Ljava/lang/String;
    const-string v2, "com.mediatek.wfd.connection"

    if-ne v1, v2, :cond_1

    .line 383
    const-string v2, "connected"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 384
    .local v0, ExtraResult:I
    const-string v2, "Gallery2/AbstractGalleryActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WfdReceiver action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "connected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    if-ne v0, v6, :cond_2

    .line 386
    iget-object v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$WfdReceiver;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    #setter for: Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIsWFDconnect:Z
    invoke-static {v2, v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->access$602(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)Z

    .line 390
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$WfdReceiver;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    #calls: Lcom/android/gallery3d/app/AbstractGalleryActivity;->isReplaceDRMImage()V
    invoke-static {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->access$200(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 392
    .end local v0           #ExtraResult:I
    :cond_1
    return-void

    .line 387
    .restart local v0       #ExtraResult:I
    :cond_2
    if-nez v0, :cond_0

    .line 388
    iget-object v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$WfdReceiver;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    #setter for: Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIsWFDconnect:Z
    invoke-static {v2, v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->access$602(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)Z

    goto :goto_0
.end method
