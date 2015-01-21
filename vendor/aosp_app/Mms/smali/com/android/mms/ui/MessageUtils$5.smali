.class final Lcom/android/mms/ui/MessageUtils$5;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ILcom/android/mms/ui/AsyncDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$isSimple:Z

.field final synthetic val$msgUri:Landroid/net/Uri;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(ZILandroid/app/Activity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1489
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageUtils$5;->val$isSimple:Z

    iput p2, p0, Lcom/android/mms/ui/MessageUtils$5;->val$requestCode:I

    iput-object p3, p0, Lcom/android/mms/ui/MessageUtils$5;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/android/mms/ui/MessageUtils$5;->val$msgUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1494
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageUtils$5;->val$isSimple:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$000()Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/mms/ui/MessageUtils$5;->val$requestCode:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 1495
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1499
    .local v0, intent:Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$5;->val$msgUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1500
    iget v1, p0, Lcom/android/mms/ui/MessageUtils$5;->val$requestCode:I

    if-lez v1, :cond_3

    .line 1501
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$5;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/android/mms/ui/MessageUtils$5;->val$requestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1509
    :goto_1
    return-void

    .line 1497
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/mms/ui/MmsPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 1503
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
