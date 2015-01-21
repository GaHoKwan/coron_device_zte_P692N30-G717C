.class Lcom/isw/android/corp/util/IShowDrawable$1;
.super Landroid/os/Handler;
.source "IShowDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isw/android/corp/util/IShowDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isw/android/corp/util/IShowDrawable;


# direct methods
.method constructor <init>(Lcom/isw/android/corp/util/IShowDrawable;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/isw/android/corp/util/IShowDrawable$1;->this$0:Lcom/isw/android/corp/util/IShowDrawable;

    .line 55
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 59
    iget-object v0, p0, Lcom/isw/android/corp/util/IShowDrawable$1;->this$0:Lcom/isw/android/corp/util/IShowDrawable;

    invoke-virtual {v0}, Lcom/isw/android/corp/util/IShowDrawable;->invalidateSelf()V

    .line 60
    return-void
.end method
