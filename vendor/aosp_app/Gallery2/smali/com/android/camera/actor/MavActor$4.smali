.class Lcom/android/camera/actor/MavActor$4;
.super Ljava/lang/Object;
.source "MavActor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/MavActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/MavActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/MavActor;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/camera/actor/MavActor$4;->this$0:Lcom/android/camera/actor/MavActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$4;->this$0:Lcom/android/camera/actor/MavActor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/actor/MavActor;->onKeyPressed(Z)V

    .line 166
    return-void
.end method
