.class Lcom/android/camera/actor/VideoActor$18;
.super Ljava/lang/Object;
.source "VideoActor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/VideoActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/VideoActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter

    .prologue
    .line 1483
    iput-object p1, p0, Lcom/android/camera/actor/VideoActor$18;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$18;->this$0:Lcom/android/camera/actor/VideoActor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/actor/VideoActor;->doReturnToCaller(Z)V

    .line 1486
    return-void
.end method
