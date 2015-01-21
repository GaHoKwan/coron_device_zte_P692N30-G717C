.class Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$1;
.super Ljava/lang/Object;
.source "ContactListMultiChoiceActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->updateSelectionMenu(Landroid/view/View;)Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$1;->this$0:Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$1;->this$0:Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;

    sget-object v1, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$SelectionMode;->ListMode:Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$SelectionMode;

    #calls: Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->showActionBar(Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$SelectionMode;)V
    invoke-static {v0, v1}, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->access$000(Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$SelectionMode;)V

    .line 594
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$1;->this$0:Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;

    iget-object v0, v0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    invoke-virtual {v0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->onClearSelect()V

    .line 595
    const/4 v0, 0x0

    return v0
.end method
