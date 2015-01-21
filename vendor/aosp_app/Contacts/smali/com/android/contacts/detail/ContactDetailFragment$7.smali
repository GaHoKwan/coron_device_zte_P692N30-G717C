.class Lcom/android/contacts/detail/ContactDetailFragment$7;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 3585
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$7;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 3588
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$7;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->tempDetailViewEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3589
    const-string v0, "ContactDetailFragment"

    const-string v1, "[mDelSimAssociationListener.onClick]: tempDetailViewEntry = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3598
    :goto_0
    return-void

    .line 3593
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3594
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "sim_id"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3595
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$7;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id=? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$7;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->tempDetailViewEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
