.class Lcom/android/contacts/detail/PhotoSelectionHandler$2;
.super Landroid/os/Handler;
.source "PhotoSelectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/PhotoSelectionHandler;->handlePhotoActivityResult(IILandroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

.field final synthetic val$listener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/PhotoSelectionHandler;Landroid/os/Looper;Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$2;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    iput-object p3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$2;->val$listener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 135
    invoke-static {}, Lcom/android/contacts/detail/PhotoSelectionHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handlePhotoActivityResult][handleMessage]notify photo selected via main looper, listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$2;->val$listener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$2;->val$listener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->onPhotoSelected(Landroid/graphics/Bitmap;)V

    .line 138
    return-void
.end method
