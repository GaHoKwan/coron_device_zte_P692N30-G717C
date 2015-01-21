.class Lcom/android/contacts/activities/GroupEditorActivity$4;
.super Ljava/lang/Object;
.source "GroupEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/group/GroupEditorFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/GroupEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/GroupEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/GroupEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/contacts/activities/GroupEditorActivity$4;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsNotFound()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity$4;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 264
    return-void
.end method

.method public onGroupNotFound()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity$4;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 254
    return-void
.end method

.method public onReverted()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity$4;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 259
    return-void
.end method

.method public onSaveFinished(ILandroid/content/Intent;)V
    .locals 4
    .parameter "resultCode"
    .parameter "resultIntent"

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity$4;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity$4;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 300
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity$4;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 301
    return-void

    .line 274
    :cond_1
    if-eqz p2, :cond_0

    .line 287
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity$4;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    const-class v2, Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 289
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 290
    const-string v1, "mSlotId"

    iget-object v2, p0, Lcom/android/contacts/activities/GroupEditorActivity$4;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    #getter for: Lcom/android/contacts/activities/GroupEditorActivity;->mSlotId:I
    invoke-static {v2}, Lcom/android/contacts/activities/GroupEditorActivity;->access$100(Lcom/android/contacts/activities/GroupEditorActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    const-string v1, "callBackIntent"

    const-string v2, "callBackIntent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v1, "AccountCategory"

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "AccountCategory"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 295
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity$4;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
