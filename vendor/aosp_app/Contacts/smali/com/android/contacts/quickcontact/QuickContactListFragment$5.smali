.class Lcom/android/contacts/quickcontact/QuickContactListFragment$5;
.super Ljava/lang/Object;
.source "QuickContactListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 443
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/quickcontact/QuickDataAction;

    .line 444
    .local v0, action:Lcom/mediatek/contacts/quickcontact/QuickDataAction;
    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/DataAction;->getBody()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, sNumber:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "tel"

    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 447
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 448
    const-string v4, "com.android.phone.extra.video"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 449
    const-string v4, "com.android.phone.extra.original"

    invoke-virtual {v0}, Lcom/mediatek/contacts/quickcontact/QuickDataAction;->getSimId()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 450
    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.OutgoingCallBroadcaster"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-virtual {v4, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 455
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$300(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 456
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$300(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 457
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 462
    .end local v1           #activity:Landroid/app/Activity;
    :cond_0
    return-void
.end method
