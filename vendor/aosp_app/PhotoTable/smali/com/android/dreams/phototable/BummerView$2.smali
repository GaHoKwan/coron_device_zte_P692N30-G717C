.class Lcom/android/dreams/phototable/BummerView$2;
.super Ljava/lang/Object;
.source "BummerView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dreams/phototable/BummerView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dreams/phototable/BummerView;

.field final synthetic val$parent:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/dreams/phototable/BummerView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/dreams/phototable/BummerView$2;->this$0:Lcom/android/dreams/phototable/BummerView;

    iput-object p2, p0, Lcom/android/dreams/phototable/BummerView$2;->val$parent:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/dreams/phototable/BummerView$2;->val$parent:Landroid/view/View;

    if-ne p1, v0, :cond_0

    if-eq p4, p8, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/dreams/phototable/BummerView$2;->this$0:Lcom/android/dreams/phototable/BummerView;

    #getter for: Lcom/android/dreams/phototable/BummerView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/dreams/phototable/BummerView;->access$300(Lcom/android/dreams/phototable/BummerView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    iget-object v0, p0, Lcom/android/dreams/phototable/BummerView$2;->this$0:Lcom/android/dreams/phototable/BummerView;

    #getter for: Lcom/android/dreams/phototable/BummerView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/dreams/phototable/BummerView;->access$300(Lcom/android/dreams/phototable/BummerView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 100
    :cond_0
    return-void
.end method
