.class Lcom/android/mms/ui/ComposeMessageActivity$17;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1725
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$17;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v4, 0x0

    .line 1729
    if-eqz p3, :cond_0

    .line 1730
    check-cast p3, Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;

    .end local p3
    iget-object v0, p3, Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;->recipient:Lcom/android/mms/data/Contact;

    .line 1731
    .local v0, c:Lcom/android/mms/data/Contact;
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$17;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v1, v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)V

    .line 1733
    .local v1, l:Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1735
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1736
    const/16 v2, 0xc

    const v3, 0x7f0b0292

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1745
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v1           #l:Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;
    :cond_0
    :goto_0
    return-void

    .line 1739
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v1       #l:Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;
    :cond_1
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1741
    const/16 v2, 0xd

    const v3, 0x7f0b0293

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method
