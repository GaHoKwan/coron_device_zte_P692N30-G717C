.class Lcom/android/contacts/activities/ContactDetailActivity$3$1;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactDetailActivity$3;->onDetailsLoaded(Lcom/android/contacts/model/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

.field final synthetic val$result:Lcom/android/contacts/model/Contact;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactDetailActivity$3;Lcom/android/contacts/model/Contact;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iput-object p2, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->val$result:Lcom/android/contacts/model/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #calls: Lcom/android/contacts/activities/ContactDetailActivity;->isActivityFinished()Z
    invoke-static {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->access$200(Lcom/android/contacts/activities/ContactDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const-string v0, "ContactDetailActivity"

    const-string v1, "onDetailsLoaded(),The Activity is finished,return.."

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->val$result:Lcom/android/contacts/model/Contact;

    #setter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$102(Lcom/android/contacts/activities/ContactDetailActivity;Lcom/android/contacts/model/Contact;)Lcom/android/contacts/model/Contact;

    .line 406
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->val$result:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$002(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 407
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 408
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #calls: Lcom/android/contacts/activities/ContactDetailActivity;->setupTitle()V
    invoke-static {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->access$300(Lcom/android/contacts/activities/ContactDetailActivity;)V

    .line 412
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->access$100(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/model/Contact;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->access$100(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/model/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getStreamItems()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->access$100(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/model/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getStreamItems()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string v3, "ExtensionForOP09"

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->initActionBarExt(Landroid/app/ActionBar;ZLjava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->access$400(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$100(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/model/Contact;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->setContactData(Lcom/android/contacts/model/Contact;)V

    .line 421
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$100(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/model/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/activities/ContactDetailActivity;->updateRCSIcon(J)V

    goto/16 :goto_0

    .line 412
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
