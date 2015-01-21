.class Lcom/android/mms/ui/BasicSlideEditorView$2;
.super Ljava/lang/Object;
.source "BasicSlideEditorView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BasicSlideEditorView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BasicSlideEditorView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BasicSlideEditorView;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/mms/ui/BasicSlideEditorView$2;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView$2;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    #getter for: Lcom/android/mms/ui/BasicSlideEditorView;->mOnTouchListener:Lcom/android/mms/ui/BasicSlideEditorView$OnScrollTouchListener;
    invoke-static {v0}, Lcom/android/mms/ui/BasicSlideEditorView;->access$200(Lcom/android/mms/ui/BasicSlideEditorView;)Lcom/android/mms/ui/BasicSlideEditorView$OnScrollTouchListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return v1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView$2;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    #getter for: Lcom/android/mms/ui/BasicSlideEditorView;->mOnTouchListener:Lcom/android/mms/ui/BasicSlideEditorView$OnScrollTouchListener;
    invoke-static {v0}, Lcom/android/mms/ui/BasicSlideEditorView;->access$200(Lcom/android/mms/ui/BasicSlideEditorView;)Lcom/android/mms/ui/BasicSlideEditorView$OnScrollTouchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/mms/ui/BasicSlideEditorView$OnScrollTouchListener;->onTouch(Landroid/view/View;)V

    goto :goto_0
.end method
