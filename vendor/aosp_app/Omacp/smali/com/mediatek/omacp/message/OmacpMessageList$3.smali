.class Lcom/mediatek/omacp/message/OmacpMessageList$3;
.super Ljava/lang/Object;
.source "OmacpMessageList.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 496
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageList$3;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 498
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x43

    if-ne p2, v3, :cond_1

    .line 499
    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageList$3;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    invoke-virtual {v3}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v0

    .line 500
    .local v0, id:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 501
    new-instance v3, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;

    iget-object v4, p0, Lcom/mediatek/omacp/message/OmacpMessageList$3;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageList;->mQueryHandler:Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;
    invoke-static {v4}, Lcom/mediatek/omacp/message/OmacpMessageList;->access$1000(Lcom/mediatek/omacp/message/OmacpMessageList;)Lcom/mediatek/omacp/message/OmacpMessageList$MessageListQueryHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/omacp/message/OmacpMessageList$3;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;-><init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;)V

    iget-object v4, p0, Lcom/mediatek/omacp/message/OmacpMessageList$3;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    invoke-static {v3, v2, v4}, Lcom/mediatek/omacp/message/OmacpMessageList;->confirmDeleteMessageDialog(Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;ZLandroid/content/Context;)V

    .line 504
    :cond_0
    const/4 v2, 0x1

    .line 506
    .end local v0           #id:J
    :cond_1
    return v2
.end method
