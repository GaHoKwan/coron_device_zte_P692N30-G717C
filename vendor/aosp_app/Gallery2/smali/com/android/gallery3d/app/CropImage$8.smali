.class Lcom/android/gallery3d/app/CropImage$8;
.super Landroid/content/BroadcastReceiver;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 1614
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$8;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 1616
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1617
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1618
    .local v4, storagePath:Ljava/lang/String;
    const-string v7, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 1620
    .local v3, isMediaBroadcast:Z
    :goto_0
    if-nez v3, :cond_3

    .line 1621
    const-string v6, "Gallery2/CropImage"

    const-string v7, "Storage receiver: not media broadcast!!"

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_1
    :goto_1
    return-void

    .end local v3           #isMediaBroadcast:Z
    :cond_2
    move v3, v6

    .line 1618
    goto :goto_0

    .line 1624
    .restart local v3       #isMediaBroadcast:Z
    :cond_3
    const-string v7, "Gallery2/CropImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Storage receiver: action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iget-object v7, p0, Lcom/android/gallery3d/app/CropImage$8;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 1627
    .local v5, uri:Landroid/net/Uri;
    if-eqz v5, :cond_1

    .line 1630
    iget-object v7, p0, Lcom/android/gallery3d/app/CropImage$8;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->isLocalOrMediaUri(Landroid/net/Uri;)Z
    invoke-static {v7, v5}, Lcom/android/gallery3d/app/CropImage;->access$1800(Lcom/android/gallery3d/app/CropImage;Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1634
    iget-object v7, p0, Lcom/android/gallery3d/app/CropImage$8;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mFilePath:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/gallery3d/app/CropImage;->access$1900(Lcom/android/gallery3d/app/CropImage;)Ljava/lang/String;

    move-result-object v1

    .line 1635
    .local v1, filePath:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1640
    iget-object v7, p0, Lcom/android/gallery3d/app/CropImage$8;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->isFileInStorage(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v7, v1, v4}, Lcom/android/gallery3d/app/CropImage;->access$2000(Lcom/android/gallery3d/app/CropImage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1641
    .local v2, isInEjectingStorage:Z
    const-string v7, "Gallery2/CropImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Storage receiver: filePath="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    const-string v7, "Gallery2/CropImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Storage receiver: storagePath="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    const-string v7, "Gallery2/CropImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Storage receiver: inEjectingStorage="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    if-eqz v2, :cond_1

    .line 1645
    const-string v7, "Gallery2/CropImage"

    const-string v8, "Storage receiver: opened file in ejecting storage, quit CropImage!!"

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    iget-object v7, p0, Lcom/android/gallery3d/app/CropImage$8;->this$0:Lcom/android/gallery3d/app/CropImage;

    const v8, 0x7f0c01d4

    invoke-static {v7, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1647
    iget-object v7, p0, Lcom/android/gallery3d/app/CropImage$8;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v7, v6}, Landroid/app/Activity;->setResult(I)V

    .line 1648
    iget-object v6, p0, Lcom/android/gallery3d/app/CropImage$8;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1
.end method
