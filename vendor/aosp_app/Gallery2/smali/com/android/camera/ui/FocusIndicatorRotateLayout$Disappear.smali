.class Lcom/android/camera/ui/FocusIndicatorRotateLayout$Disappear;
.super Ljava/lang/Object;
.source "FocusIndicatorRotateLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FocusIndicatorRotateLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Disappear"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FocusIndicatorRotateLayout;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/FocusIndicatorRotateLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout$Disappear;->this$0:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/FocusIndicatorRotateLayout;Lcom/android/camera/ui/FocusIndicatorRotateLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusIndicatorRotateLayout$Disappear;-><init>(Lcom/android/camera/ui/FocusIndicatorRotateLayout;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 102
    const-string v0, "FocusLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disappear run mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout$Disappear;->this$0:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    #getter for: Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mState:I
    invoke-static {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->access$300(Lcom/android/camera/ui/FocusIndicatorRotateLayout;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout$Disappear;->this$0:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    iget-object v0, v0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout$Disappear;->this$0:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mState:I
    invoke-static {v0, v1}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->access$302(Lcom/android/camera/ui/FocusIndicatorRotateLayout;I)I

    .line 105
    return-void
.end method
