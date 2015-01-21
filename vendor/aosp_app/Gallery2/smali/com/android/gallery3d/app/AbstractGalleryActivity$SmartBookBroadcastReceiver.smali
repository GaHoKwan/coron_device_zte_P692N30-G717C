.class Lcom/android/gallery3d/app/AbstractGalleryActivity$SmartBookBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AbstractGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AbstractGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartBookBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$SmartBookBroadcastReceiver;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/app/AbstractGalleryActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity$SmartBookBroadcastReceiver;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 235
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, action:Ljava/lang/String;
    const-string v2, "state"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 237
    .local v1, connected:Z
    const-string v2, "Gallery2/AbstractGalleryActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "************Rceive Smartbook action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|| Isconnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v2, "android.intent.action.SMARTBOOK_PLUG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    if-eqz v1, :cond_1

    .line 241
    iget-object v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$SmartBookBroadcastReceiver;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x1

    #setter for: Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIsSMBconnect:Z
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->access$102(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)Z

    .line 245
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$SmartBookBroadcastReceiver;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    #calls: Lcom/android/gallery3d/app/AbstractGalleryActivity;->isReplaceDRMImage()V
    invoke-static {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->access$200(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 247
    :cond_0
    return-void

    .line 243
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$SmartBookBroadcastReceiver;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    #setter for: Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIsSMBconnect:Z
    invoke-static {v2, v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->access$102(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)Z

    goto :goto_0
.end method
