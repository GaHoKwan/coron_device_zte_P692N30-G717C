.class Lcom/android/mms/ui/MmsPlayerActivity$7$1;
.super Ljava/lang/Object;
.source "MmsPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsPlayerActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MmsPlayerActivity$7;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsPlayerActivity$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerActivity$7$1;->this$1:Lcom/android/mms/ui/MmsPlayerActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity$7$1;->this$1:Lcom/android/mms/ui/MmsPlayerActivity$7;

    iget-object v0, v0, Lcom/android/mms/ui/MmsPlayerActivity$7;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mLockedInd:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mms/ui/MmsPlayerActivity;->access$1300(Lcom/android/mms/ui/MmsPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity$7$1;->this$1:Lcom/android/mms/ui/MmsPlayerActivity$7;

    iget-boolean v0, v0, Lcom/android/mms/ui/MmsPlayerActivity$7;->val$lock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1379
    return-void

    .line 1378
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
