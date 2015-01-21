.class Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;
.super Ljava/lang/Object;
.source "MultiDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;)V
    .locals 0
    .parameter

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1234
    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->mPopup:Landroid/widget/PopupMenu;
    invoke-static {v4}, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->access$3500(Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;)Landroid/widget/PopupMenu;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1235
    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    new-instance v5, Landroid/widget/PopupMenu;

    iget-object v6, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    iget-object v6, v6, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-direct {v5, v6, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->mPopup:Landroid/widget/PopupMenu;
    invoke-static {v4, v5}, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->access$3502(Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;

    .line 1236
    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->mPopup:Landroid/widget/PopupMenu;
    invoke-static {v4}, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->access$3500(Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;)Landroid/widget/PopupMenu;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    const v5, 0x7f0e0007

    iget-object v6, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->mPopup:Landroid/widget/PopupMenu;
    invoke-static {v6}, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->access$3500(Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;)Landroid/widget/PopupMenu;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1241
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->mPopup:Landroid/widget/PopupMenu;
    invoke-static {v4}, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->access$3500(Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;)Landroid/widget/PopupMenu;

    move-result-object v4

    new-instance v5, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1$1;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1$1;-><init>(Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1255
    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->mPopup:Landroid/widget/PopupMenu;
    invoke-static {v4}, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->access$3500(Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;)Landroid/widget/PopupMenu;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 1256
    .local v1, popupMenu:Landroid/view/Menu;
    const v4, 0x7f0f01ce

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1257
    .local v2, selectAllItem:Landroid/view/MenuItem;
    const v4, 0x7f0f01cf

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1258
    .local v3, unSelectAllItem:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    iget-object v4, v4, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v4, v4, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v4, :cond_7

    .line 1259
    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    iget-object v4, v4, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v4, v4, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v4}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1260
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_5

    .line 1261
    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    iget-object v4, v4, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v4, v4, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListAdapter;->getSelectedNumber()I

    move-result v4

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 1262
    if-eqz v2, :cond_0

    .line 1263
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1265
    :cond_0
    if-eqz v3, :cond_1

    .line 1266
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1291
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->mPopup:Landroid/widget/PopupMenu;
    invoke-static {v4}, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->access$3500(Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;)Landroid/widget/PopupMenu;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->show()V

    .line 1292
    return-void

    .line 1238
    .end local v1           #popupMenu:Landroid/view/Menu;
    .end local v2           #selectAllItem:Landroid/view/MenuItem;
    .end local v3           #unSelectAllItem:Landroid/view/MenuItem;
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->mPopup:Landroid/widget/PopupMenu;
    invoke-static {v4}, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->access$3500(Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;)Landroid/widget/PopupMenu;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->dismiss()V

    goto :goto_0

    .line 1269
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #popupMenu:Landroid/view/Menu;
    .restart local v2       #selectAllItem:Landroid/view/MenuItem;
    .restart local v3       #unSelectAllItem:Landroid/view/MenuItem;
    :cond_3
    if-eqz v2, :cond_4

    .line 1270
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1272
    :cond_4
    if-eqz v3, :cond_1

    .line 1273
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1277
    :cond_5
    if-eqz v2, :cond_6

    .line 1278
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1280
    :cond_6
    if-eqz v3, :cond_1

    .line 1281
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1284
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_7
    if-eqz v2, :cond_1

    .line 1285
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1286
    if-eqz v3, :cond_1

    .line 1287
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method
