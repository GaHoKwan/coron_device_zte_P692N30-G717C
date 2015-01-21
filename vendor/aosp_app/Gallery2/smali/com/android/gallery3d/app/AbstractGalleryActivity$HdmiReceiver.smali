.class public Lcom/android/gallery3d/app/AbstractGalleryActivity$HdmiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AbstractGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AbstractGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HdmiReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$HdmiReceiver;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 360
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$HdmiReceiver;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v2, "state"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/gallery3d/app/AbstractGalleryActivity;->hdmiCableState:I
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->access$302(Lcom/android/gallery3d/app/AbstractGalleryActivity;I)I

    .line 362
    const-string v1, "Gallery2/AbstractGalleryActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHdmiNative.needSwDrmProtect() == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$HdmiReceiver;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    #getter for: Lcom/android/gallery3d/app/AbstractGalleryActivity;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;
    invoke-static {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->access$400(Lcom/android/gallery3d/app/AbstractGalleryActivity;)Lcom/mediatek/common/hdmi/IHDMINative;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/hdmi/IHDMINative;->needSwDrmProtect()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HDMI action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|| hdmiCableState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$HdmiReceiver;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    #getter for: Lcom/android/gallery3d/app/AbstractGalleryActivity;->hdmiCableState:I
    invoke-static {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->access$300(Lcom/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v1, "android.intent.action.HDMI_PLUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$HdmiReceiver;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    #getter for: Lcom/android/gallery3d/app/AbstractGalleryActivity;->mHdmiNative:Lcom/mediatek/common/hdmi/IHDMINative;
    invoke-static {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->access$400(Lcom/android/gallery3d/app/AbstractGalleryActivity;)Lcom/mediatek/common/hdmi/IHDMINative;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/common/hdmi/IHDMINative;->needSwDrmProtect()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$HdmiReceiver;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    #getter for: Lcom/android/gallery3d/app/AbstractGalleryActivity;->hdmiCableState:I
    invoke-static {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->access$300(Lcom/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$HdmiReceiver;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/app/AbstractGalleryActivity;->KEY_HDMI_ENABLE_STATUS:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 367
    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$HdmiReceiver;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    #setter for: Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIsHDMIconnect:Z
    invoke-static {v1, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->access$502(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)Z

    .line 371
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$HdmiReceiver;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    #calls: Lcom/android/gallery3d/app/AbstractGalleryActivity;->isReplaceDRMImage()V
    invoke-static {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->access$200(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 372
    return-void

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$HdmiReceiver;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    #setter for: Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIsHDMIconnect:Z
    invoke-static {v1, v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->access$502(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)Z

    goto :goto_0
.end method
