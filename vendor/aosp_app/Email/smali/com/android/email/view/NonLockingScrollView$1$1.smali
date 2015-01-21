.class Lcom/android/email/view/NonLockingScrollView$1$1;
.super Ljava/lang/Object;
.source "NonLockingScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/view/NonLockingScrollView$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/view/NonLockingScrollView$1;


# direct methods
.method constructor <init>(Lcom/android/email/view/NonLockingScrollView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/email/view/NonLockingScrollView$1$1;->this$1:Lcom/android/email/view/NonLockingScrollView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/email/view/NonLockingScrollView$1$1;->this$1:Lcom/android/email/view/NonLockingScrollView$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/email/view/NonLockingScrollView$1;->mOverHandleInterval:Z

    .line 121
    return-void
.end method
