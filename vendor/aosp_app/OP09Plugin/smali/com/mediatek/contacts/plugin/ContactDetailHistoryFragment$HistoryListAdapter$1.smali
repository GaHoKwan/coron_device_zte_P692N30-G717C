.class Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter$1;
.super Ljava/lang/Object;
.source "ContactDetailHistoryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->getMmsHistoryItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;

.field final synthetic val$mmsItem:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter$1;->this$1:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;

    iput-object p2, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter$1;->val$mmsItem:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 565
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 566
    .local v0, mmsIntent:Landroid/content/Intent;
    const-string v1, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    const-string v1, "thread_id"

    iget-object v2, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter$1;->val$mmsItem:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;

    invoke-virtual {v2}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->getMmsThreadId()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 568
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter$1;->this$1:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;

    iget-object v1, v1, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryListAdapter;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    invoke-virtual {v1, v0}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->startActivity(Landroid/content/Intent;)V

    .line 569
    return-void
.end method
