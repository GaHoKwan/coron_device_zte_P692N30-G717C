.class Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "FrontCover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/FrontCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/FrontCover;

.field private view1:Landroid/view/View;

.field private view2:Landroid/view/View;

.field private view3:Landroid/view/View;

.field private view4:Landroid/view/View;

.field private view5:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/main/FrontCover;Landroid/support/v4/view/ViewPager;)V
    .locals 7
    .parameter
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 184
    iput-object p1, p0, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;->this$0:Lcom/zte/heartyservice/main/FrontCover;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 185
    invoke-virtual {p2}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 187
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030053

    invoke-virtual {v2, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;->view1:Landroid/view/View;

    .line 189
    const v5, 0x7f030055

    invoke-virtual {v2, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;->view2:Landroid/view/View;

    .line 192
    const v5, 0x7f030054

    invoke-virtual {v2, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;->view3:Landroid/view/View;

    .line 195
    const v5, 0x7f030051

    invoke-virtual {v2, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;->view4:Landroid/view/View;

    .line 199
    const v5, 0x7f030050

    invoke-virtual {v2, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;->view5:Landroid/view/View;

    .line 200
    iget-object v5, p0, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;->view5:Landroid/view/View;

    const v6, 0x7f0e00fd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 201
    .local v0, btn:Landroid/widget/Button;
    iget-object v5, p0, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;->view5:Landroid/view/View;

    const v6, 0x7f0e00fc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 202
    .local v4, tv:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setFlags(I)V

    .line 203
    #getter for: Lcom/zte/heartyservice/main/FrontCover;->mListener:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcom/zte/heartyservice/main/FrontCover;->access$100(Lcom/zte/heartyservice/main/FrontCover;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    #getter for: Lcom/zte/heartyservice/main/FrontCover;->mListener:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcom/zte/heartyservice/main/FrontCover;->access$100(Lcom/zte/heartyservice/main/FrontCover;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v5, p0, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;->view5:Landroid/view/View;

    const v6, 0x7f0e00fb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 207
    .local v1, check:Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 208
    .local v3, isChecked:Z
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 209
    new-instance v5, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter$1;

    invoke-direct {v5, p0, p1, v0}, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter$1;-><init>(Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;Lcom/zte/heartyservice/main/FrontCover;Landroid/widget/Button;)V

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 215
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 255
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 256
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 2
    .parameter "container"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;->this$0:Lcom/zte/heartyservice/main/FrontCover;

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/FrontCover;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 261
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;->this$0:Lcom/zte/heartyservice/main/FrontCover;

    #getter for: Lcom/zte/heartyservice/main/FrontCover;->isFirstStart:Z
    invoke-static {v0}, Lcom/zte/heartyservice/main/FrontCover;->access$200(Lcom/zte/heartyservice/main/FrontCover;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .parameter "container"
    .parameter "position"

    .prologue
    .line 229
    packed-switch p2, :pswitch_data_0

    .line 246
    iget-object v0, p0, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;->view1:Landroid/view/View;

    .line 249
    .local v0, page:Landroid/view/View;
    :goto_0
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 250
    return-object v0

    .line 231
    .end local v0           #page:Landroid/view/View;
    .restart local p1
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;->view1:Landroid/view/View;

    .line 232
    .restart local v0       #page:Landroid/view/View;
    goto :goto_0

    .line 234
    .end local v0           #page:Landroid/view/View;
    :pswitch_1
    iget-object v0, p0, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;->view2:Landroid/view/View;

    .line 235
    .restart local v0       #page:Landroid/view/View;
    goto :goto_0

    .line 237
    .end local v0           #page:Landroid/view/View;
    :pswitch_2
    iget-object v0, p0, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;->view3:Landroid/view/View;

    .line 238
    .restart local v0       #page:Landroid/view/View;
    goto :goto_0

    .line 240
    .end local v0           #page:Landroid/view/View;
    :pswitch_3
    iget-object v0, p0, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;->view5:Landroid/view/View;

    .line 241
    .restart local v0       #page:Landroid/view/View;
    goto :goto_0

    .line 243
    .end local v0           #page:Landroid/view/View;
    :pswitch_4
    iget-object v0, p0, Lcom/zte/heartyservice/main/FrontCover$CoverPagerAdapter;->view4:Landroid/view/View;

    .line 244
    .restart local v0       #page:Landroid/view/View;
    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 265
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 275
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 224
    return-void
.end method
