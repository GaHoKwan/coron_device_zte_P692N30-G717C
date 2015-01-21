.class Lcom/android/camera/manager/RecordingView$1;
.super Ljava/lang/Object;
.source "RecordingView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/manager/RecordingView;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/manager/RecordingView;


# direct methods
.method constructor <init>(Lcom/android/camera/manager/RecordingView;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/camera/manager/RecordingView$1;->this$0:Lcom/android/camera/manager/RecordingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "motion"

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method
