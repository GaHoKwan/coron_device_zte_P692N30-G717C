.class Lcom/android/contacts/detail/PhotoSelectionHandler$HandlePhotoResultThread;
.super Ljava/lang/Object;
.source "PhotoSelectionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/PhotoSelectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlePhotoResultThread"
.end annotation


# instance fields
.field private mData:Landroid/content/Intent;

.field private mRequestCode:I

.field private mResultCode:I

.field final synthetic this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;


# direct methods
.method public constructor <init>(Lcom/android/contacts/detail/PhotoSelectionHandler;IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$HandlePhotoResultThread;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput p2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$HandlePhotoResultThread;->mRequestCode:I

    .line 410
    iput p3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$HandlePhotoResultThread;->mResultCode:I

    .line 411
    iput-object p4, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$HandlePhotoResultThread;->mData:Landroid/content/Intent;

    .line 412
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 416
    invoke-static {}, Lcom/android/contacts/detail/PhotoSelectionHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HandlePhotoResultThread]handle photo ActivityResult Async. request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$HandlePhotoResultThread;->mRequestCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$HandlePhotoResultThread;->mResultCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$HandlePhotoResultThread;->mData:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$HandlePhotoResultThread;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    iget v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$HandlePhotoResultThread;->mRequestCode:I

    iget v2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$HandlePhotoResultThread;->mResultCode:I

    iget-object v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$HandlePhotoResultThread;->mData:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/detail/PhotoSelectionHandler;->handlePhotoActivityResult(IILandroid/content/Intent;)Z

    .line 419
    return-void
.end method
