.class Lcom/android/mms/ui/ComposeMessageActivity$12;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->viewMmsMessageAttachment(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$requestCode:I

.field final synthetic val$slideshow:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/model/SlideshowModel;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    iput p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1061
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 1063
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->val$requestCode:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 1065
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-class v3, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1069
    .local v0, intent:Landroid/content/Intent;
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTempMmsUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1070
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTempMmsUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1081
    :goto_1
    return-void

    .line 1067
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-class v3, Lcom/android/mms/ui/MmsPlayerActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 1073
    :cond_3
    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->val$requestCode:I

    if-lez v2, :cond_4

    .line 1074
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->val$requestCode:I

    invoke-virtual {v2, v0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1076
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
