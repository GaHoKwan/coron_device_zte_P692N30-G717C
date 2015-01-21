.class Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerChangeListener;
.super Ljava/lang/Object;
.source "ESurfingDialingGuideActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerChangeListener;->this$0:Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerChangeListener;-><init>(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 248
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 253
    return-void
.end method

.method public onPageSelected(I)V
    .locals 17
    .parameter "position"

    .prologue
    .line 258
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerChangeListener;->this$0:Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;

    #getter for: Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mStepViews:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->access$200(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;)Ljava/util/ArrayList;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 259
    .local v14, stepView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerChangeListener;->this$0:Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;

    move/from16 v0, p1

    #setter for: Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mCurrentPosition:I
    invoke-static {v15, v0}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->access$302(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;I)I

    .line 260
    const v15, 0x7f0b0053

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 261
    .local v8, homeCountryIcon:Landroid/widget/ImageView;
    const v15, 0x7f0b0056

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 262
    .local v10, internatonalIcon:Landroid/widget/ImageView;
    const v15, 0x7f0b0059

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 263
    .local v1, callBackIcon:Landroid/widget/ImageView;
    const v15, 0x7f0b005c

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 264
    .local v12, otherCountryIcon:Landroid/widget/ImageView;
    const v15, 0x7f0b005f

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 265
    .local v11, locallCallIcon:Landroid/widget/ImageView;
    const v15, 0x7f0b0065

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 267
    .local v9, inCallScreenPhoneNum:Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 366
    :goto_0
    return-void

    .line 270
    :pswitch_0
    const v15, 0x7f0b0063

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 271
    .local v13, step2Discrpit:Landroid/widget/TextView;
    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v15, v0, :cond_0

    if-eqz v13, :cond_0

    .line 272
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerChangeListener;->this$0:Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;

    #getter for: Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mStep2Discript:Ljava/lang/String;
    invoke-static {v15}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->access$400(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :cond_0
    if-eqz v9, :cond_1

    .line 275
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerChangeListener;->this$0:Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerChangeListener;->this$0:Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mExampleNumber:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->access$500(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;)Ljava/lang/String;

    move-result-object v16

    #calls: Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->getExampleFormatePhoneNo(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->access$600(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :cond_1
    const v15, 0x7f020069

    invoke-virtual {v8, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 279
    const v15, 0x7f020069

    invoke-virtual {v10, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 280
    const v15, 0x7f02006a

    invoke-virtual {v1, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 281
    const v15, 0x7f02006a

    invoke-virtual {v12, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 282
    const v15, 0x7f02006a

    invoke-virtual {v11, v15}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 286
    .end local v13           #step2Discrpit:Landroid/widget/TextView;
    :pswitch_1
    const v15, 0x7f0b0051

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 287
    .local v4, eSurfingNumEdit:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerChangeListener;->this$0:Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerChangeListener;->this$0:Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mExampleNumber:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->access$500(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;)Ljava/lang/String;

    move-result-object v16

    #calls: Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->getExampleFormatePhoneNo(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->access$600(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, formatNumber:Ljava/lang/String;
    const-string v15, "+"

    invoke-virtual {v7, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 290
    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 292
    :cond_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "**133*"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "#"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 293
    if-eqz v9, :cond_3

    .line 294
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :cond_3
    if-eqz v4, :cond_4

    .line 297
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :cond_4
    const v15, 0x7f020069

    invoke-virtual {v8, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 301
    const v15, 0x7f02006a

    invoke-virtual {v10, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 302
    const v15, 0x7f020069

    invoke-virtual {v1, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 303
    const v15, 0x7f02006a

    invoke-virtual {v12, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 304
    const v15, 0x7f02006a

    invoke-virtual {v11, v15}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 308
    .end local v4           #eSurfingNumEdit:Landroid/widget/TextView;
    .end local v7           #formatNumber:Ljava/lang/String;
    :pswitch_2
    const v15, 0x7f0b0051

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 309
    .restart local v4       #eSurfingNumEdit:Landroid/widget/TextView;
    const v15, 0x7f0b004c

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 310
    .local v3, eSurfingDialog:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerChangeListener;->this$0:Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;

    const-string v16, "26806802"

    #calls: Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->getExampleFormatePhoneNo(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->access$600(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 312
    .restart local v7       #formatNumber:Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 313
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :cond_5
    const v15, 0x7f02006a

    invoke-virtual {v8, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 316
    const v15, 0x7f02006a

    invoke-virtual {v10, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 317
    const v15, 0x7f02006a

    invoke-virtual {v1, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 318
    const v15, 0x7f020069

    invoke-virtual {v12, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 319
    const v15, 0x7f02006a

    invoke-virtual {v11, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 320
    const v15, 0x7f02005f

    invoke-virtual {v3, v15}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 324
    .end local v3           #eSurfingDialog:Landroid/view/View;
    .end local v4           #eSurfingNumEdit:Landroid/widget/TextView;
    .end local v7           #formatNumber:Ljava/lang/String;
    :pswitch_3
    const v15, 0x7f0b0050

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 325
    .local v2, countrySelect:Landroid/widget/TextView;
    const v15, 0x7f0b0051

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 326
    .restart local v4       #eSurfingNumEdit:Landroid/widget/TextView;
    const v15, 0x7f0b004c

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 327
    .restart local v3       #eSurfingDialog:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerChangeListener;->this$0:Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;

    #getter for: Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->access$700(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;)Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f09016f

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, egyptCountry:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerChangeListener;->this$0:Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;

    #getter for: Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->access$700(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;)Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f090172

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 330
    .local v6, egyptCountryCode:Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 331
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "26806802"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    :cond_6
    if-eqz v2, :cond_7

    .line 334
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    :cond_7
    if-eqz v9, :cond_8

    .line 337
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "26806802"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    :cond_8
    const v15, 0x7f02006a

    invoke-virtual {v8, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 341
    const v15, 0x7f02006a

    invoke-virtual {v10, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 342
    const v15, 0x7f02006a

    invoke-virtual {v1, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 343
    const v15, 0x7f020069

    invoke-virtual {v12, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 344
    const v15, 0x7f02006a

    invoke-virtual {v11, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 345
    const v15, 0x7f02005f

    invoke-virtual {v3, v15}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 349
    .end local v2           #countrySelect:Landroid/widget/TextView;
    .end local v3           #eSurfingDialog:Landroid/view/View;
    .end local v4           #eSurfingNumEdit:Landroid/widget/TextView;
    .end local v5           #egyptCountry:Ljava/lang/String;
    .end local v6           #egyptCountryCode:Ljava/lang/String;
    :pswitch_4
    const v15, 0x7f0b0051

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 350
    .restart local v4       #eSurfingNumEdit:Landroid/widget/TextView;
    if-eqz v4, :cond_9

    .line 351
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerChangeListener;->this$0:Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;

    #getter for: Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mExampleNumber:Ljava/lang/String;
    invoke-static {v15}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->access$500(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    :cond_9
    if-eqz v9, :cond_a

    .line 354
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerChangeListener;->this$0:Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;

    #getter for: Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mExampleNumber:Ljava/lang/String;
    invoke-static {v15}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->access$500(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    :cond_a
    const v15, 0x7f02006a

    invoke-virtual {v8, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 357
    const v15, 0x7f02006a

    invoke-virtual {v10, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 358
    const v15, 0x7f02006a

    invoke-virtual {v1, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 359
    const v15, 0x7f02006a

    invoke-virtual {v12, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 360
    const v15, 0x7f020069

    invoke-virtual {v11, v15}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
