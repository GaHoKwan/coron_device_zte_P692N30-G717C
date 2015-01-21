.class final Lcom/android/mms/ui/MessageUtils$15;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->createSimpleAdapter(Ljava/util/List;Landroid/content/Context;)Landroid/widget/SimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 3327
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$15;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 12
    .parameter "view"
    .parameter "data"
    .parameter "textRepresentation"

    .prologue
    const v11, 0x7f0f0174

    const v10, 0x7f0f0173

    const v8, 0x7f0f002a

    const/16 v9, 0x8

    const/4 v7, 0x0

    .line 3330
    instance-of v6, p1, Landroid/widget/ImageView;

    if-eqz v6, :cond_5

    .line 3331
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v6, v10, :cond_1

    .line 3332
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 3334
    .local v3, simicon:Landroid/widget/ImageView;
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3355
    .end local v3           #simicon:Landroid/widget/ImageView;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    .line 3367
    :goto_1
    return v6

    .line 3335
    .restart local p2
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v6, v8, :cond_3

    .line 3336
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .local v4, simstatus:Landroid/widget/ImageView;
    move-object v6, p2

    .line 3338
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    move-object v6, p2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x5

    if-eq v6, v8, :cond_2

    .line 3340
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3341
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3343
    .restart local p2
    :cond_2
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 3345
    .end local v4           #simstatus:Landroid/widget/ImageView;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v6, v11, :cond_0

    .line 3346
    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .local v1, ipmsgIcon:Landroid/widget/ImageView;
    move-object v6, p2

    .line 3347
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_4

    .line 3348
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3349
    iget-object v6, p0, Lcom/android/mms/ui/MessageUtils$15;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v6

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3350
    .local v0, image:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3352
    .end local v0           #image:Landroid/graphics/drawable/Drawable;
    .restart local p2
    :cond_4
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 3356
    .end local v1           #ipmsgIcon:Landroid/widget/ImageView;
    :cond_5
    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_7

    .line 3357
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v8, 0x7f0f0177

    if-ne v6, v8, :cond_7

    .line 3358
    const v6, 0x7f0f0177

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .local v5, text:Landroid/widget/TextView;
    move-object v2, p2

    .line 3359
    check-cast v2, Ljava/lang/String;

    .line 3360
    .local v2, number:Ljava/lang/String;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3361
    :cond_6
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .end local v2           #number:Ljava/lang/String;
    .end local v5           #text:Landroid/widget/TextView;
    :cond_7
    :goto_2
    move v6, v7

    .line 3367
    goto/16 :goto_1

    .line 3363
    .restart local v2       #number:Ljava/lang/String;
    .restart local v5       #text:Landroid/widget/TextView;
    :cond_8
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
