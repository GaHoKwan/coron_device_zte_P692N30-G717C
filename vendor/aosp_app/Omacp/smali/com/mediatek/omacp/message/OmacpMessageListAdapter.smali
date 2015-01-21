.class public Lcom/mediatek/omacp/message/OmacpMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "OmacpMessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/omacp/message/OmacpMessageListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Omacp/OmacpMessageListAdapter"


# instance fields
.field private final mFactory:Landroid/view/LayoutInflater;

.field private mOnContentChangedListener:Lcom/mediatek/omacp/message/OmacpMessageListAdapter$OnContentChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "c"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 62
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 67
    instance-of v2, p1, Lcom/mediatek/omacp/message/OmacpMessageListItem;

    if-nez v2, :cond_0

    .line 68
    const-string v2, "Omacp/OmacpMessageListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OmacpMessageListAdapter Unexpected bound view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 72
    check-cast v1, Lcom/mediatek/omacp/message/OmacpMessageListItem;

    .line 73
    .local v1, itemView:Lcom/mediatek/omacp/message/OmacpMessageListItem;
    new-instance v0, Lcom/mediatek/omacp/message/OmacpMessageListItemData;

    invoke-direct {v0, p2, p3}, Lcom/mediatek/omacp/message/OmacpMessageListItemData;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 74
    .local v0, ch:Lcom/mediatek/omacp/message/OmacpMessageListItemData;
    invoke-virtual {v1, p2, v0}, Lcom/mediatek/omacp/message/OmacpMessageListItem;->bind(Landroid/content/Context;Lcom/mediatek/omacp/message/OmacpMessageListItemData;)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    const/high16 v1, 0x7f03

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageListAdapter;->mOnContentChangedListener:Lcom/mediatek/omacp/message/OmacpMessageListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageListAdapter;->mOnContentChangedListener:Lcom/mediatek/omacp/message/OmacpMessageListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/mediatek/omacp/message/OmacpMessageListAdapter$OnContentChangedListener;->onContentChanged(Lcom/mediatek/omacp/message/OmacpMessageListAdapter;)V

    .line 99
    :cond_0
    return-void
.end method

.method public setOnContentChangedListener(Lcom/mediatek/omacp/message/OmacpMessageListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageListAdapter;->mOnContentChangedListener:Lcom/mediatek/omacp/message/OmacpMessageListAdapter$OnContentChangedListener;

    .line 90
    return-void
.end method
