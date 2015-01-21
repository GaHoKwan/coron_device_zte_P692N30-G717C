.class Lcom/mediatek/omacp/message/OmacpMessageList$4;
.super Ljava/lang/Object;
.source "OmacpMessageList.java"

# interfaces
.implements Lcom/mediatek/omacp/message/OmacpMessageListAdapter$OnContentChangedListener;


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
    .line 519
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageList$4;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/mediatek/omacp/message/OmacpMessageListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList$4;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    #calls: Lcom/mediatek/omacp/message/OmacpMessageList;->startAsyncQuery()V
    invoke-static {v0}, Lcom/mediatek/omacp/message/OmacpMessageList;->access$1100(Lcom/mediatek/omacp/message/OmacpMessageList;)V

    .line 522
    return-void
.end method
