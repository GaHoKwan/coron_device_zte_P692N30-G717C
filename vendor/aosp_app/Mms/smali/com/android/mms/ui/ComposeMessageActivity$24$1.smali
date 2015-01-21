.class Lcom/android/mms/ui/ComposeMessageActivity$24$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$24;

.field final synthetic val$needNotify:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$24;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3192
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$24$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$24;

    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$24$1;->val$needNotify:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3195
    const-string v1, "Mms/compose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asyncUpdateThreadMuteIcon: meedNotify is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$24$1;->val$needNotify:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3196
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$24$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$24;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 3197
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$24$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$24;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mActionBarCustomView:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8202(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/View;)Landroid/view/View;

    .line 3198
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$24$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$24;

    iget-object v2, v1, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$24$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$24;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mActionBarCustomView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0f0001

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMuteLogo:Landroid/widget/ImageView;
    invoke-static {v2, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8302(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 3199
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$24$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$24;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMuteLogo:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8300(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$24$1;->val$needNotify:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3200
    return-void

    .line 3199
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
