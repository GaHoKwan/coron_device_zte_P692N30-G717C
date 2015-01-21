.class Lcom/zte/heartyservice/common/ui/FloatFrame$2;
.super Ljava/lang/Object;
.source "FloatFrame.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/common/ui/FloatFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/common/ui/FloatFrame;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/common/ui/FloatFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/zte/heartyservice/common/ui/FloatFrame$2;->this$0:Lcom/zte/heartyservice/common/ui/FloatFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/FloatFrame$2;->this$0:Lcom/zte/heartyservice/common/ui/FloatFrame;

    #getter for: Lcom/zte/heartyservice/common/ui/FloatFrame;->gestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/FloatFrame;->access$100(Lcom/zte/heartyservice/common/ui/FloatFrame;)Landroid/view/GestureDetector;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/FloatFrame$2;->this$0:Lcom/zte/heartyservice/common/ui/FloatFrame;

    #getter for: Lcom/zte/heartyservice/common/ui/FloatFrame;->gestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/FloatFrame;->access$100(Lcom/zte/heartyservice/common/ui/FloatFrame;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
