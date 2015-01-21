.class Lcom/mediatek/omacp/message/OmacpMessageList$2;
.super Ljava/lang/Object;
.source "OmacpMessageList.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/omacp/message/OmacpMessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/omacp/message/OmacpMessageList;


# direct methods
.method constructor <init>(Lcom/mediatek/omacp/message/OmacpMessageList;)V
    .locals 0
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageList$2;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

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

    .line 425
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageList$2;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageList;->mListAdapter:Lcom/mediatek/omacp/message/OmacpMessageListAdapter;
    invoke-static {v1}, Lcom/mediatek/omacp/message/OmacpMessageList;->access$800(Lcom/mediatek/omacp/message/OmacpMessageList;)Lcom/mediatek/omacp/message/OmacpMessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 426
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    if-gez v1, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    const v1, 0x7f050008

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 432
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageList$2;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    #setter for: Lcom/mediatek/omacp/message/OmacpMessageList;->mMessageId:J
    invoke-static {v1, v2, v3}, Lcom/mediatek/omacp/message/OmacpMessageList;->access$902(Lcom/mediatek/omacp/message/OmacpMessageList;J)J

    .line 434
    const/16 v1, 0x3e8

    const v2, 0x7f050004

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 435
    const/16 v1, 0x3e9

    const v2, 0x7f050005

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 436
    const/16 v1, 0x3ea

    const v2, 0x7f050006

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method
