.class Lcom/android/mms/ui/MmsMediaController$3;
.super Ljava/lang/Object;
.source "MmsMediaController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsMediaController;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsMediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/mms/ui/MmsMediaController$3;->this$0:Lcom/android/mms/ui/MmsMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 345
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$3;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-boolean v0, v0, Lcom/android/mms/ui/MmsMediaController;->mShowing:Z

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$3;->this$0:Lcom/android/mms/ui/MmsMediaController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsMediaController;->hide()V

    .line 350
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
