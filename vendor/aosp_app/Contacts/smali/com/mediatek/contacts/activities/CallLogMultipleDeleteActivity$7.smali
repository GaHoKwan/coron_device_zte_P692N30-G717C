.class Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$7;
.super Ljava/lang/Object;
.source "CallLogMultipleDeleteActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->updateSelectionMenu(Landroid/view/View;)Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$7;->this$0:Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$7;->this$0:Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;

    #calls: Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->configureActionBar()V
    invoke-static {v0}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->access$200(Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;)V

    .line 270
    iget-object v0, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$7;->this$0:Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;

    iget-object v1, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$7;->this$0:Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;

    iget-object v1, v1, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->mFragment:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;

    invoke-virtual {v1}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->selectAllItems()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->updateSelectedItemsView(I)V

    .line 271
    const/4 v0, 0x0

    return v0
.end method
