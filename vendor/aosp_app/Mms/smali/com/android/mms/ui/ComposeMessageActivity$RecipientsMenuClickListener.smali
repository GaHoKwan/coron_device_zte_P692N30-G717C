.class final Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecipientsMenuClickListener"
.end annotation


# instance fields
.field private final mRecipient:Lcom/android/mms/data/Contact;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter
    .parameter "recipient"

    .prologue
    .line 1751
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1752
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->mRecipient:Lcom/android/mms/data/Contact;

    .line 1753
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 1757
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1780
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1760
    :pswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->mRecipient:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 1762
    .local v0, contactUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->mRecipient:Lcom/android/mms/data/Contact;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mInViewContact:Lcom/android/mms/data/Contact;
    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5702(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)Lcom/android/mms/data/Contact;

    .line 1764
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1765
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1766
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v4, 0x6f

    invoke-virtual {v3, v1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1771
    .end local v0           #contactUri:Landroid/net/Uri;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v4, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mInViewContact:Lcom/android/mms/data/Contact;
    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5702(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)Lcom/android/mms/data/Contact;

    .line 1773
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->mRecipient:Lcom/android/mms/data/Contact;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;
    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5802(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 1775
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5800(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/content/Intent;

    move-result-object v4

    const/16 v5, 0x6c

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1757
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
