.class public abstract Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
.super Ljava/lang/Object;
.source "PhotoSelectionHandler.java"

# interfaces
.implements Lcom/android/contacts/editor/PhotoActionPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/PhotoSelectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "PhotoActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;


# direct methods
.method public constructor <init>(Lcom/android/contacts/detail/PhotoSelectionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCurrentPhotoFile()Ljava/lang/String;
.end method

.method public abstract onPhotoSelected(Landroid/graphics/Bitmap;)V
.end method

.method public abstract onPhotoSelectionDismissed()V
.end method

.method public onPickFromGalleryChosen()V
    .locals 4

    .prologue
    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    invoke-static {}, Lcom/android/contacts/util/ContactPhotoUtils;->generateTempPhotoFileName()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/contacts/detail/PhotoSelectionHandler;->startPickFromGalleryActivity(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/contacts/detail/PhotoSelectionHandler;->access$200(Lcom/android/contacts/detail/PhotoSelectionHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    iget-object v1, v1, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0153

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onRemovePictureChosen()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public onTakePhotoChosen()V
    .locals 4

    .prologue
    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    invoke-static {}, Lcom/android/contacts/util/ContactPhotoUtils;->generateTempPhotoFileName()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/contacts/detail/PhotoSelectionHandler;->startTakePhotoActivity(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/contacts/detail/PhotoSelectionHandler;->access$100(Lcom/android/contacts/detail/PhotoSelectionHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    iget-object v1, v1, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0153

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onUseAsPrimaryChosen()V
    .locals 0

    .prologue
    .line 351
    return-void
.end method
