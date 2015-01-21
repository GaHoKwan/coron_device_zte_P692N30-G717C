.class Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1;
.super Ljava/lang/Object;
.source "SpeedDialManageActivity.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 11
    .parameter "view"
    .parameter "cursor"
    .parameter "columnIndex"

    .prologue
    const/16 v0, 0x8

    const v10, 0x7f0701c4

    const/4 v5, 0x5

    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 404
    const-string v3, "SpeedDialManageActivity"

    const-string v4, "setViewValue() begin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 407
    .local v2, viewId:I
    const/4 v3, 0x3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 408
    .local v6, isNumberEmpty:Z
    const v3, 0x7f0701c5

    if-eq v2, v3, :cond_0

    const v3, 0x7f0701c3

    if-eq v2, v3, :cond_0

    if-ne v2, v10, :cond_7

    .line 409
    :cond_0
    if-eqz v6, :cond_3

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 410
    if-ne v2, v10, :cond_1

    .line 411
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    if-nez v6, :cond_4

    .line 414
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 415
    .local v7, parent:Landroid/view/View;
    new-instance v0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1$1;

    invoke-direct {v0, p0, p1, v7}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1$1;-><init>(Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 436
    .end local v7           #parent:Landroid/view/View;
    :cond_1
    :goto_1
    if-ne v2, v10, :cond_5

    .line 482
    .end local p1
    :cond_2
    :goto_2
    return v1

    .restart local p1
    :cond_3
    move v0, v9

    .line 409
    goto :goto_0

    .line 428
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 429
    .restart local v7       #parent:Landroid/view/View;
    new-instance v0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1$2;

    invoke-direct {v0, p0, v7}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1$2;-><init>(Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1;Landroid/view/View;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 441
    .end local v7           #parent:Landroid/view/View;
    :cond_5
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getSpeedDialExtension()Lcom/android/contacts/ext/SpeedDialExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #getter for: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumContactState:[Z
    invoke-static {v1}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$000(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)[Z

    move-result-object v1

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-boolean v3, v1, v3

    const v4, 0x7f0701c5

    const-string v5, "ExtensionForOP01"

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ext/SpeedDialExtension;->setView(Landroid/view/View;IZILjava/lang/String;)V

    :cond_6
    :goto_3
    move v1, v9

    .line 482
    goto :goto_2

    .line 451
    :cond_7
    const v3, 0x7f0701c6

    if-ne v2, v3, :cond_a

    .line 452
    if-eqz v6, :cond_8

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3

    :cond_9
    move v0, v9

    goto :goto_4

    .line 454
    :cond_a
    const v3, 0x7f0701c2

    if-ne v2, v3, :cond_6

    .line 455
    invoke-virtual {p1, v9}, Landroid/view/View;->setClickable(Z)V

    .line 456
    if-eqz v6, :cond_b

    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 457
    if-nez v6, :cond_2

    .line 458
    const-string v0, "SpeedDialManageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phone/sim indicator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v0, "SpeedDialManageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "int value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 464
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 468
    .local v8, simId:I
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #getter for: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;
    invoke-static {v0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$100(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const/4 v3, 0x4

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4, v1}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    goto/16 :goto_2

    .end local v8           #simId:I
    .restart local p1
    :cond_b
    move v0, v9

    .line 456
    goto :goto_5
.end method
