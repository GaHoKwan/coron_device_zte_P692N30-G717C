.class Lcom/mediatek/contacts/list/ContactGroupListActivity$1;
.super Ljava/lang/Object;
.source "ContactGroupListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/list/ContactGroupListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/list/ContactGroupListActivity;

.field final synthetic val$fragment:Lcom/mediatek/contacts/list/ContactGroupListFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/list/ContactGroupListActivity;Lcom/mediatek/contacts/list/ContactGroupListFragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactGroupListActivity$1;->this$0:Lcom/mediatek/contacts/list/ContactGroupListActivity;

    iput-object p2, p0, Lcom/mediatek/contacts/list/ContactGroupListActivity$1;->val$fragment:Lcom/mediatek/contacts/list/ContactGroupListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactGroupListActivity$1;->val$fragment:Lcom/mediatek/contacts/list/ContactGroupListFragment;

    invoke-virtual {v0}, Lcom/mediatek/contacts/list/ContactGroupListFragment;->onOkClick()V

    .line 39
    return-void
.end method
