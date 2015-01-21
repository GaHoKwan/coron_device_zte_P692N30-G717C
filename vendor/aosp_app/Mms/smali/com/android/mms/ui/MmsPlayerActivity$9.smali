.class Lcom/android/mms/ui/MmsPlayerActivity$9;
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
    .line 1407
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerActivity$9;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity$9;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity$9;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mMessageUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/mms/ui/MmsPlayerActivity;->access$1400(Lcom/android/mms/ui/MmsPlayerActivity;)Landroid/net/Uri;

    move-result-object v1

    #calls: Lcom/android/mms/ui/MmsPlayerActivity;->initListAdapter(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MmsPlayerActivity;->access$1600(Lcom/android/mms/ui/MmsPlayerActivity;Landroid/net/Uri;)V

    .line 1414
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity$9;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #calls: Lcom/android/mms/ui/MmsPlayerActivity;->setListTextSize()V
    invoke-static {v0}, Lcom/android/mms/ui/MmsPlayerActivity;->access$1700(Lcom/android/mms/ui/MmsPlayerActivity;)V

    .line 1415
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity$9;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mDirMode:Z
    invoke-static {v0}, Lcom/android/mms/ui/MmsPlayerActivity;->access$600(Lcom/android/mms/ui/MmsPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity$9;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mParseMsgUriSuccess:Z
    invoke-static {v0}, Lcom/android/mms/ui/MmsPlayerActivity;->access$1800(Lcom/android/mms/ui/MmsPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity$9;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #calls: Lcom/android/mms/ui/MmsPlayerActivity;->updateRecipient()V
    invoke-static {v0}, Lcom/android/mms/ui/MmsPlayerActivity;->access$1900(Lcom/android/mms/ui/MmsPlayerActivity;)V

    .line 1418
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerActivity$9;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1419
    return-void
.end method
