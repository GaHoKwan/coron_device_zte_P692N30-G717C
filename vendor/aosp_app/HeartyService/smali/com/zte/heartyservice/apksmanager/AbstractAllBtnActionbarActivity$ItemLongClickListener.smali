.class public Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemLongClickListener;
.super Ljava/lang/Object;
.source "AbstractAllBtnActionbarActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;


# direct methods
.method protected constructor <init>(Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemLongClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 264
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemLongClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;

    invoke-virtual {v2}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->getmListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 265
    .local v0, isChecked:Z
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemLongClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;

    invoke-virtual {v2, p3, v0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->multiClickHandler(IZ)V

    .line 266
    return v1

    .line 264
    .end local v0           #isChecked:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
