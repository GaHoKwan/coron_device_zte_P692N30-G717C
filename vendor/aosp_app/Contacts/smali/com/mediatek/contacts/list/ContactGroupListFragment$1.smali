.class Lcom/mediatek/contacts/list/ContactGroupListFragment$1;
.super Ljava/lang/Object;
.source "ContactGroupListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/list/ContactGroupListFragment;->configOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/list/ContactGroupListFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/list/ContactGroupListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactGroupListFragment$1;->this$0:Lcom/mediatek/contacts/list/ContactGroupListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v1, 0x1020001

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 68
    .local v0, checkbox:Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactGroupListFragment$1;->this$0:Lcom/mediatek/contacts/list/ContactGroupListFragment;

    #calls: Lcom/android/contacts/group/GroupBrowseListFragment;->getListView()Landroid/widget/ListView;
    invoke-static {v1}, Lcom/mediatek/contacts/list/ContactGroupListFragment;->access$000(Lcom/mediatek/contacts/list/ContactGroupListFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 69
    return-void
.end method
