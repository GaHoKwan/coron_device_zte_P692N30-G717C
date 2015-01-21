.class Lcom/android/camera/manager/PickImageViewManager$1;
.super Ljava/lang/Object;
.source "PickImageViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/manager/PickImageViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/manager/PickImageViewManager;


# direct methods
.method constructor <init>(Lcom/android/camera/manager/PickImageViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/manager/PickImageViewManager$1;->this$0:Lcom/android/camera/manager/PickImageViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    .line 58
    .local v4, id:I
    const-string v7, "PickImageViewManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onClick id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    packed-switch v4, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v7, p0, Lcom/android/camera/manager/PickImageViewManager$1;->this$0:Lcom/android/camera/manager/PickImageViewManager;

    #getter for: Lcom/android/camera/manager/PickImageViewManager;->mPictures2Pick:I
    invoke-static {v7}, Lcom/android/camera/manager/PickImageViewManager;->access$000(Lcom/android/camera/manager/PickImageViewManager;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/android/camera/manager/PickImageViewManager$1;->this$0:Lcom/android/camera/manager/PickImageViewManager;

    #getter for: Lcom/android/camera/manager/PickImageViewManager;->mRootView:Landroid/view/View;
    invoke-static {v7}, Lcom/android/camera/manager/PickImageViewManager;->access$100(Lcom/android/camera/manager/PickImageViewManager;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ui/EVPickerItem;

    invoke-virtual {v7}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 65
    const/4 v7, 0x3

    new-array v1, v7, [I

    fill-array-data v1, :array_0

    .line 68
    .local v1, evIds:[I
    move-object v0, v1

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_1

    aget v2, v0, v3

    .line 69
    .local v2, i:I
    iget-object v7, p0, Lcom/android/camera/manager/PickImageViewManager$1;->this$0:Lcom/android/camera/manager/PickImageViewManager;

    #getter for: Lcom/android/camera/manager/PickImageViewManager;->mRootView:Landroid/view/View;
    invoke-static {v7}, Lcom/android/camera/manager/PickImageViewManager;->access$100(Lcom/android/camera/manager/PickImageViewManager;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/EVPickerItem;

    .line 70
    .local v6, p:Lcom/android/camera/ui/EVPickerItem;
    if-eq v2, v4, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 71
    invoke-virtual {v6}, Lcom/android/camera/ui/EVPickerItem;->performClick()Z

    .line 68
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 76
    .end local v0           #arr$:[I
    .end local v1           #evIds:[I
    .end local v2           #i:I
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #p:Lcom/android/camera/ui/EVPickerItem;
    :cond_1
    iget-object v7, p0, Lcom/android/camera/manager/PickImageViewManager$1;->this$0:Lcom/android/camera/manager/PickImageViewManager;

    #getter for: Lcom/android/camera/manager/PickImageViewManager;->mSelectedChangedListener:Lcom/android/camera/manager/PickImageViewManager$SelectedChangedListener;
    invoke-static {v7}, Lcom/android/camera/manager/PickImageViewManager;->access$300(Lcom/android/camera/manager/PickImageViewManager;)Lcom/android/camera/manager/PickImageViewManager$SelectedChangedListener;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/manager/PickImageViewManager$1;->this$0:Lcom/android/camera/manager/PickImageViewManager;

    #calls: Lcom/android/camera/manager/PickImageViewManager;->isAnyImgSelected()Z
    invoke-static {v8}, Lcom/android/camera/manager/PickImageViewManager;->access$200(Lcom/android/camera/manager/PickImageViewManager;)Z

    move-result v8

    invoke-interface {v7, v8}, Lcom/android/camera/manager/PickImageViewManager$SelectedChangedListener;->onSelectedChanged(Z)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x7f0b013c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 65
    :array_0
    .array-data 0x4
        0x3ct 0x1t 0xbt 0x7ft
        0x3et 0x1t 0xbt 0x7ft
        0x3dt 0x1t 0xbt 0x7ft
    .end array-data
.end method
