.class Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$5;
.super Ljava/lang/Object;
.source "CallLogMultipleDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 235
    iput-object p1, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$5;->this$0:Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 238
    iget-object v1, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$5;->this$0:Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;

    #getter for: Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->mSelectionMenu:Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;
    invoke-static {v1}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->access$000(Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;)Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$5;->this$0:Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;

    #getter for: Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->mSelectionMenu:Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;
    invoke-static {v1}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->access$000(Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;)Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 239
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 240
    .local v0, parent:Landroid/view/View;
    iget-object v1, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$5;->this$0:Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;

    iget-object v2, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$5;->this$0:Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;

    #calls: Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->updateSelectionMenu(Landroid/view/View;)Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;
    invoke-static {v2, v0}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->access$100(Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;Landroid/view/View;)Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;

    move-result-object v2

    #setter for: Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->mSelectionMenu:Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;
    invoke-static {v1, v2}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->access$002(Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;)Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;

    .line 241
    iget-object v1, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$5;->this$0:Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;

    #getter for: Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->mSelectionMenu:Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;
    invoke-static {v1}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->access$000(Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;)Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;->show()V

    .line 245
    .end local v0           #parent:Landroid/view/View;
    :goto_0
    return-void

    .line 243
    :cond_1
    const-string v1, "CallLogMultipleDeleteActivity"

    const-string v2, "mSelectionMenu is already showing, ignore this click"

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
