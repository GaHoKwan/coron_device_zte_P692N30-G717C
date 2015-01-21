.class Lcom/zte/heartyservice/common/datatype/EditableListView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "EditableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/common/datatype/EditableListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/common/datatype/EditableListView;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/common/datatype/EditableListView;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/EditableListView$1;->this$0:Lcom/zte/heartyservice/common/datatype/EditableListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    .line 78
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView$1;->this$0:Lcom/zte/heartyservice/common/datatype/EditableListView;

    #getter for: Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/zte/heartyservice/common/datatype/EditableListView;->access$000(Lcom/zte/heartyservice/common/datatype/EditableListView;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 79
    const/high16 v2, 0x447a

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView$1;->this$0:Lcom/zte/heartyservice/common/datatype/EditableListView;

    #getter for: Lcom/zte/heartyservice/common/datatype/EditableListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/zte/heartyservice/common/datatype/EditableListView;->access$100(Lcom/zte/heartyservice/common/datatype/EditableListView;)Landroid/graphics/Rect;

    move-result-object v0

    .line 81
    .local v0, r:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView$1;->this$0:Lcom/zte/heartyservice/common/datatype/EditableListView;

    #getter for: Lcom/zte/heartyservice/common/datatype/EditableListView;->mDragView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/zte/heartyservice/common/datatype/EditableListView;->access$000(Lcom/zte/heartyservice/common/datatype/EditableListView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView$1;->this$0:Lcom/zte/heartyservice/common/datatype/EditableListView;

    #calls: Lcom/zte/heartyservice/common/datatype/EditableListView;->stopDragging()V
    invoke-static {v2}, Lcom/zte/heartyservice/common/datatype/EditableListView;->access$200(Lcom/zte/heartyservice/common/datatype/EditableListView;)V

    .line 85
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView$1;->this$0:Lcom/zte/heartyservice/common/datatype/EditableListView;

    #getter for: Lcom/zte/heartyservice/common/datatype/EditableListView;->mRemoveListener:Lcom/zte/heartyservice/common/datatype/EditableListView$RemoveListener;
    invoke-static {v2}, Lcom/zte/heartyservice/common/datatype/EditableListView;->access$400(Lcom/zte/heartyservice/common/datatype/EditableListView;)Lcom/zte/heartyservice/common/datatype/EditableListView$RemoveListener;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/EditableListView$1;->this$0:Lcom/zte/heartyservice/common/datatype/EditableListView;

    #getter for: Lcom/zte/heartyservice/common/datatype/EditableListView;->mSrcDragPos:I
    invoke-static {v3}, Lcom/zte/heartyservice/common/datatype/EditableListView;->access$300(Lcom/zte/heartyservice/common/datatype/EditableListView;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/zte/heartyservice/common/datatype/EditableListView$RemoveListener;->remove(I)V

    .line 86
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/EditableListView$1;->this$0:Lcom/zte/heartyservice/common/datatype/EditableListView;

    #calls: Lcom/zte/heartyservice/common/datatype/EditableListView;->unExpandViews(Z)V
    invoke-static {v2, v1}, Lcom/zte/heartyservice/common/datatype/EditableListView;->access$500(Lcom/zte/heartyservice/common/datatype/EditableListView;Z)V

    .line 92
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
