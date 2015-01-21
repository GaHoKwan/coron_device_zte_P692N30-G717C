.class Lcom/android/email/activity/MessageCompose$14;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 2697
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$14;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 3
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    .line 2701
    invoke-static {p1}, Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 2702
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$14;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$14;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2703
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$14;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v2, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->mQuotedTextCache:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageCompose;->access$3902(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    .line 2704
    const-string v1, "MessageCompose"

    const-string v2, "onNavigationItemSelected clear mQuotedTextCache "

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$14;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->setAction(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/email/activity/MessageCompose;->access$2600(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V

    .line 2708
    const/4 v1, 0x1

    return v1
.end method
