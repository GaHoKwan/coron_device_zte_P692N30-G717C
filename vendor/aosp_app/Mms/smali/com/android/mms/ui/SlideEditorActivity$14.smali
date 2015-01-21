.class Lcom/android/mms/ui/SlideEditorActivity$14;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Lcom/android/mms/ui/BasicSlideEditorView$OnScrollTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1497
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$14;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$14;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->hideInputMethod()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$1200(Lcom/android/mms/ui/SlideEditorActivity;)V

    .line 1500
    return-void
.end method
