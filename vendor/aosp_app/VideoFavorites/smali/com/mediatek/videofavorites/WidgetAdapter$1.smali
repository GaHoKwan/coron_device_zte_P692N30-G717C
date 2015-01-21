.class Lcom/mediatek/videofavorites/WidgetAdapter$1;
.super Landroid/os/Handler;
.source "WidgetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/videofavorites/WidgetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/videofavorites/WidgetAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/videofavorites/WidgetAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mediatek/videofavorites/WidgetAdapter$1;->this$0:Lcom/mediatek/videofavorites/WidgetAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter$1;->this$0:Lcom/mediatek/videofavorites/WidgetAdapter;

    #getter for: Lcom/mediatek/videofavorites/WidgetAdapter;->mViewFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    invoke-static {v0}, Lcom/mediatek/videofavorites/WidgetAdapter;->access$000(Lcom/mediatek/videofavorites/WidgetAdapter;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter$1;->this$0:Lcom/mediatek/videofavorites/WidgetAdapter;

    #getter for: Lcom/mediatek/videofavorites/WidgetAdapter;->mViewFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    invoke-static {v0}, Lcom/mediatek/videofavorites/WidgetAdapter;->access$000(Lcom/mediatek/videofavorites/WidgetAdapter;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    move-result-object v0

    instance-of v0, v0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetAdapter$1;->this$0:Lcom/mediatek/videofavorites/WidgetAdapter;

    #getter for: Lcom/mediatek/videofavorites/WidgetAdapter;->mViewFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    invoke-static {v0}, Lcom/mediatek/videofavorites/WidgetAdapter;->access$000(Lcom/mediatek/videofavorites/WidgetAdapter;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    move-result-object v0

    check-cast v0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;

    invoke-virtual {v0}, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;->onContactDataChanged()V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
