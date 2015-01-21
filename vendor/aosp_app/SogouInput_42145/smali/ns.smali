.class Lns;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lnr;


# direct methods
.method constructor <init>(Lnr;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lns;->a:Lnr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 207
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 316
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 317
    return-void

    .line 209
    :pswitch_0
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 211
    iget-object v1, p0, Lns;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v1

    .line 212
    iget-object v2, p0, Lns;->a:Lnr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnr;->a(Lnr;Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Lns;->a:Lnr;

    invoke-static {v2}, Lnr;->a(Lnr;)Lnb;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lnb;->a(II)V

    .line 214
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lnb;

    move-result-object v0

    invoke-virtual {v0}, Lnb;->b()V

    goto :goto_0

    .line 218
    :pswitch_1
    iget-object v0, p0, Lns;->a:Lnr;

    const-string v1, "MSG_REFRESH_EXPRESSION_GIDVIEW"

    invoke-static {v0, v1}, Lnr;->a(Lnr;Ljava/lang/String;)V

    .line 219
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 220
    if-eqz v0, :cond_0

    .line 221
    iget-object v1, p0, Lns;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 222
    iget-object v1, p0, Lns;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->isStackFromBottom()Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    iget-object v1, p0, Lns;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setStackFromBottom(Z)V

    .line 225
    :cond_1
    iget-object v1, p0, Lns;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setStackFromBottom(Z)V

    .line 227
    :cond_2
    const-string v1, "base"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)V

    .line 229
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lns;->a:Lnr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete icon left:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lns;->a:Lnr;

    invoke-static {v3}, Lnr;->a(Lnr;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnr;->a(Lnr;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/expression/ExpressionViewContainer;

    move-result-object v0

    iget-object v1, p0, Lns;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)I

    move-result v1

    iget-object v3, p0, Lns;->a:Lnr;

    invoke-static {v3}, Lnr;->b(Lnr;)I

    move-result v3

    iget-object v4, p0, Lns;->a:Lnr;

    invoke-static {v4}, Lnr;->c(Lnr;)I

    move-result v4

    iget-object v5, p0, Lns;->a:Lnr;

    invoke-static {v5}, Lnr;->b(Lnr;)I

    move-result v5

    sget v6, Lnr;->C:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/sohu/inputmethod/expression/ExpressionViewContainer;->setDeleteButtonPosition(IIII)V

    .line 235
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v0

    sget v1, Lnr;->u:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 236
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v0

    sget v1, Lnr;->r:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 237
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v0

    sget v1, Lnr;->p:I

    sget v3, Lnr;->q:I

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 238
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lns;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Loc;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 239
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Loc;

    move-result-object v0

    invoke-virtual {v0}, Loc;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 241
    :cond_3
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v0

    sget v1, Lnr;->s:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 243
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v0

    sget v1, Lnr;->r:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 244
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v0

    sget v1, Lnr;->p:I

    sget v3, Lnr;->q:I

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 245
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lns;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Lof;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 246
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lof;

    move-result-object v0

    invoke-virtual {v0}, Lof;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 251
    :pswitch_2
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/expression/ExpressionTabScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/expression/ExpressionTabScrollView;

    move-result-object v0

    iget-object v1, p0, Lns;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/sogou/SogouIME;

    sget v1, Lcom/sohu/inputmethod/sogou/SogouIME;->a:I

    iget-object v2, p0, Lns;->a:Lnr;

    invoke-static {v2}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/sogou/SogouIME;

    sget v2, Lcom/sohu/inputmethod/sogou/SogouIME;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/expression/ExpressionTabScrollView;->scrollTo(II)V

    .line 253
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 257
    :pswitch_3
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0, v3}, Lnr;->a(Lnr;Z)Z

    goto/16 :goto_0

    .line 260
    :pswitch_4
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/expression/ExpressionTabScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/expression/ExpressionTabScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/expression/ExpressionTabScrollView;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lns;->a:Lnr;

    invoke-static {v1}, Lnr;->c(Lnr;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 262
    iget-object v1, p0, Lns;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lns;->a:Lnr;

    invoke-static {v3}, Lnr;->a(Lnr;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lns;->a:Lnr;

    invoke-static {v3}, Lnr;->c(Lnr;)I

    move-result v3

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_4

    .line 263
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lns;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lns;->a:Lnr;

    invoke-static {v1}, Lnr;->c(Lnr;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 265
    :cond_4
    iget-object v1, p0, Lns;->a:Lnr;

    invoke-static {v1, v0}, Lnr;->a(Lnr;I)V

    .line 266
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/expression/ExpressionTabScrollView;

    move-result-object v0

    iget-object v1, p0, Lns;->a:Lnr;

    invoke-static {v1}, Lnr;->c(Lnr;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/expression/ExpressionTabScrollView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 270
    :pswitch_5
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/expression/ExpressionTabScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/expression/ExpressionTabScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/expression/ExpressionTabScrollView;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lns;->a:Lnr;

    invoke-static {v1}, Lnr;->c(Lnr;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 272
    if-gez v0, :cond_5

    move v0, v2

    .line 275
    :cond_5
    iget-object v1, p0, Lns;->a:Lnr;

    invoke-static {v1, v0}, Lnr;->a(Lnr;I)V

    .line 276
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/expression/ExpressionTabScrollView;

    move-result-object v0

    iget-object v1, p0, Lns;->a:Lnr;

    invoke-static {v1}, Lnr;->c(Lnr;)I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/expression/ExpressionTabScrollView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 280
    :pswitch_6
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lns;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 283
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 287
    :pswitch_7
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 288
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->sendDownUpKeyEvents(I)V

    .line 290
    :cond_6
    const/16 v0, 0x6a

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lns;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 293
    :pswitch_8
    iget-object v0, p0, Lns;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 295
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 296
    iget-object v3, p0, Lns;->a:Lnr;

    invoke-static {v3}, Lnr;->a(Lnr;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 297
    iget-object v3, p0, Lns;->a:Lnr;

    invoke-static {v3, v0}, Lnr;->a(Lnr;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 298
    iget-object v4, p0, Lns;->a:Lnr;

    invoke-static {v4}, Lnr;->a(Lnr;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 299
    iget-object v4, p0, Lns;->a:Lnr;

    invoke-static {v4}, Lnr;->a(Lnr;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02006a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 300
    invoke-static {v4}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 301
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 306
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 307
    sget v0, Lnr;->f:I

    sget v4, Lnr;->g:I

    sget v5, Lnr;->f:I

    sget v6, Lnr;->g:I

    invoke-virtual {v1, v0, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 309
    invoke-static {v3}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 303
    :cond_7
    const v4, 0x7f02014f

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method
