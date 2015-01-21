.class public Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;
.super Ljava/lang/Object;
.source "NewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/common/datatype/NewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;
    }
.end annotation


# instance fields
.field private cb:Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;

.field private contentView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private message:Ljava/lang/CharSequence;

.field private negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private negativeButtonText:Ljava/lang/String;

.field private positiveButonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButotnText:Ljava/lang/String;

.field private time:I

.field private title:Ljava/lang/String;

.field private total:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->total:I

    .line 111
    iput v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->time:I

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->cb:Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;

    .line 118
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    .line 119
    return-void
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->positiveButonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public GetTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "title"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->title:Ljava/lang/String;

    .line 144
    return-object p1
.end method

.method public create()Lcom/zte/heartyservice/common/datatype/NewDialog;
    .locals 10

    .prologue
    const v9, 0x7f0e0192

    const/4 v8, -0x2

    const v7, 0x7f0e00a4

    const v6, 0x7f0e00a3

    const/16 v5, 0x8

    .line 194
    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 196
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/zte/heartyservice/common/datatype/NewDialog;

    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    const v4, 0x7f0c00c7

    invoke-direct {v0, v3, v4}, Lcom/zte/heartyservice/common/datatype/NewDialog;-><init>(Landroid/content/Context;I)V

    .line 198
    .local v0, dialog:Lcom/zte/heartyservice/common/datatype/NewDialog;
    const v3, 0x7f030090

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 199
    .local v2, layout:Landroid/view/View;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Lcom/zte/heartyservice/common/datatype/NewDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/zte/heartyservice/common/datatype/NewDialog;->setNewDialogWidth(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 202
    const v3, 0x7f0e0005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->positiveButotnText:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 204
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->positiveButotnText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->positiveButonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_0

    .line 207
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$1;

    invoke-direct {v4, p0, v0}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$1;-><init>(Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;Lcom/zte/heartyservice/common/datatype/NewDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->negativeButtonText:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 222
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->negativeButtonText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_1

    .line 225
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$2;

    invoke-direct {v4, p0, v0}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$2;-><init>(Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;Lcom/zte/heartyservice/common/datatype/NewDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->message:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    .line 241
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->message:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :goto_2
    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/common/datatype/NewDialog;->setContentView(Landroid/view/View;)V

    .line 253
    iget v3, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->total:I

    if-lez v3, :cond_2

    iget v3, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->time:I

    if-lez v3, :cond_2

    iget v3, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->total:I

    iget v4, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->time:I

    rem-int/2addr v3, v4

    if-nez v3, :cond_2

    .line 254
    iget v3, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->total:I

    #calls: Lcom/zte/heartyservice/common/datatype/NewDialog;->setTotal(I)V
    invoke-static {v0, v3}, Lcom/zte/heartyservice/common/datatype/NewDialog;->access$600(Lcom/zte/heartyservice/common/datatype/NewDialog;I)V

    .line 255
    iget v3, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->time:I

    #calls: Lcom/zte/heartyservice/common/datatype/NewDialog;->setTime(I)V
    invoke-static {v0, v3}, Lcom/zte/heartyservice/common/datatype/NewDialog;->access$700(Lcom/zte/heartyservice/common/datatype/NewDialog;I)V

    .line 256
    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->cb:Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;

    #calls: Lcom/zte/heartyservice/common/datatype/NewDialog;->setTimeoutCb(Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;)V
    invoke-static {v0, v3}, Lcom/zte/heartyservice/common/datatype/NewDialog;->access$800(Lcom/zte/heartyservice/common/datatype/NewDialog;Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;)V

    .line 259
    :cond_2
    return-object v0

    .line 217
    :cond_3
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 235
    :cond_4
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 246
    :cond_5
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public create(I)Lcom/zte/heartyservice/common/datatype/NewDialog;
    .locals 24
    .parameter "id"

    .prologue
    .line 263
    packed-switch p1, :pswitch_data_0

    .line 539
    const/4 v15, 0x0

    :goto_0
    return-object v15

    .line 266
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "layout_inflater"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 268
    .local v16, progressInflater:Landroid/view/LayoutInflater;
    new-instance v15, Lcom/zte/heartyservice/common/datatype/NewDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0c00c7

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v15, v0, v1}, Lcom/zte/heartyservice/common/datatype/NewDialog;-><init>(Landroid/content/Context;I)V

    .line 270
    .local v15, progressDialog:Lcom/zte/heartyservice/common/datatype/NewDialog;
    const v21, 0x7f0300d6

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 272
    .local v17, progressLayout:Landroid/view/View;
    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    invoke-direct/range {v21 .. v23}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lcom/zte/heartyservice/common/datatype/NewDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/datatype/NewDialog;->setNewDialogWidth(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 275
    const v21, 0x7f0e0005

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->message:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 280
    const v21, 0x7f0e0192

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->message:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :cond_0
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/zte/heartyservice/common/datatype/NewDialog;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 290
    .end local v15           #progressDialog:Lcom/zte/heartyservice/common/datatype/NewDialog;
    .end local v16           #progressInflater:Landroid/view/LayoutInflater;
    .end local v17           #progressLayout:Landroid/view/View;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "layout_inflater"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/LayoutInflater;

    .line 292
    .local v19, radioInflater:Landroid/view/LayoutInflater;
    new-instance v18, Lcom/zte/heartyservice/common/datatype/NewDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0c00c7

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/common/datatype/NewDialog;-><init>(Landroid/content/Context;I)V

    .line 294
    .local v18, radioDialog:Lcom/zte/heartyservice/common/datatype/NewDialog;
    const v21, 0x7f030036

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 296
    .local v20, radioLayout:Landroid/view/View;
    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    invoke-direct/range {v21 .. v23}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/common/datatype/NewDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/datatype/NewDialog;->setNewDialogWidth(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 299
    const v21, 0x7f0e0005

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->positiveButotnText:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 302
    const v21, 0x7f0e00a4

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->positiveButotnText:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->positiveButonClickListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 305
    const v21, 0x7f0e00a4

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    new-instance v22, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$3;-><init>(Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;Lcom/zte/heartyservice/common/datatype/NewDialog;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->negativeButtonText:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    .line 323
    const v21, 0x7f0e00a3

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->negativeButtonText:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 327
    const v21, 0x7f0e00a3

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    new-instance v22, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$4;-><init>(Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;Lcom/zte/heartyservice/common/datatype/NewDialog;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    :cond_2
    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/datatype/NewDialog;->setContentView(Landroid/view/View;)V

    move-object/from16 v15, v18

    .line 344
    goto/16 :goto_0

    .line 318
    :cond_3
    const v21, 0x7f0e00a4

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 340
    :cond_4
    const v21, 0x7f0e00a3

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 347
    .end local v18           #radioDialog:Lcom/zte/heartyservice/common/datatype/NewDialog;
    .end local v19           #radioInflater:Landroid/view/LayoutInflater;
    .end local v20           #radioLayout:Landroid/view/View;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "layout_inflater"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 349
    .local v12, interceptInflater:Landroid/view/LayoutInflater;
    new-instance v11, Lcom/zte/heartyservice/common/datatype/NewDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0c00c7

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v11, v0, v1}, Lcom/zte/heartyservice/common/datatype/NewDialog;-><init>(Landroid/content/Context;I)V

    .line 351
    .local v11, interceptDialog:Lcom/zte/heartyservice/common/datatype/NewDialog;
    const v21, 0x7f03006b

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 353
    .local v13, interceptLayout:Landroid/view/View;
    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    invoke-direct/range {v21 .. v23}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v11, v13, v0}, Lcom/zte/heartyservice/common/datatype/NewDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v11}, Lcom/zte/heartyservice/common/datatype/NewDialog;->setNewDialogWidth(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 356
    const v21, 0x7f0e0005

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->positiveButotnText:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    .line 359
    const v21, 0x7f0e00a4

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->positiveButotnText:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->positiveButonClickListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 362
    const v21, 0x7f0e00a4

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    new-instance v22, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$5;-><init>(Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;Lcom/zte/heartyservice/common/datatype/NewDialog;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->negativeButtonText:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    .line 380
    const v21, 0x7f0e00a3

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->negativeButtonText:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 384
    const v21, 0x7f0e00a3

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    new-instance v22, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$6;-><init>(Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;Lcom/zte/heartyservice/common/datatype/NewDialog;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    :cond_6
    :goto_4
    invoke-virtual {v11, v13}, Lcom/zte/heartyservice/common/datatype/NewDialog;->setContentView(Landroid/view/View;)V

    move-object v15, v11

    .line 401
    goto/16 :goto_0

    .line 375
    :cond_7
    const v21, 0x7f0e00a4

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 397
    :cond_8
    const v21, 0x7f0e00a3

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 404
    .end local v11           #interceptDialog:Lcom/zte/heartyservice/common/datatype/NewDialog;
    .end local v12           #interceptInflater:Landroid/view/LayoutInflater;
    .end local v13           #interceptLayout:Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "layout_inflater"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 406
    .local v8, encryptInflater:Landroid/view/LayoutInflater;
    new-instance v7, Lcom/zte/heartyservice/common/datatype/NewDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0c00c7

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v7, v0, v1}, Lcom/zte/heartyservice/common/datatype/NewDialog;-><init>(Landroid/content/Context;I)V

    .line 408
    .local v7, encryptDialog:Lcom/zte/heartyservice/common/datatype/NewDialog;
    const v21, 0x7f0300d4

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 410
    .local v9, encryptLayout:Landroid/view/View;
    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    invoke-direct/range {v21 .. v23}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v7, v9, v0}, Lcom/zte/heartyservice/common/datatype/NewDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v7}, Lcom/zte/heartyservice/common/datatype/NewDialog;->setNewDialogWidth(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 413
    const v21, 0x7f0e0005

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    invoke-virtual {v7, v9}, Lcom/zte/heartyservice/common/datatype/NewDialog;->setContentView(Landroid/view/View;)V

    move-object v15, v7

    .line 417
    goto/16 :goto_0

    .line 420
    .end local v7           #encryptDialog:Lcom/zte/heartyservice/common/datatype/NewDialog;
    .end local v8           #encryptInflater:Landroid/view/LayoutInflater;
    .end local v9           #encryptLayout:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "layout_inflater"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 422
    .local v4, contactInflater:Landroid/view/LayoutInflater;
    new-instance v3, Lcom/zte/heartyservice/common/datatype/NewDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0c00c7

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v3, v0, v1}, Lcom/zte/heartyservice/common/datatype/NewDialog;-><init>(Landroid/content/Context;I)V

    .line 424
    .local v3, contactDialog:Lcom/zte/heartyservice/common/datatype/NewDialog;
    const v21, 0x7f0300c0

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 426
    .local v5, contactLayout:Landroid/view/View;
    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    invoke-direct/range {v21 .. v23}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v3, v5, v0}, Lcom/zte/heartyservice/common/datatype/NewDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lcom/zte/heartyservice/common/datatype/NewDialog;->setNewDialogWidth(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 429
    const v21, 0x7f0e0005

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->positiveButotnText:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    .line 432
    const v21, 0x7f0e00a4

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->positiveButotnText:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->positiveButonClickListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    .line 435
    const v21, 0x7f0e00a4

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    new-instance v22, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$7;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$7;-><init>(Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;Lcom/zte/heartyservice/common/datatype/NewDialog;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->negativeButtonText:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    .line 453
    const v21, 0x7f0e00a3

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->negativeButtonText:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    .line 457
    const v21, 0x7f0e00a3

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    new-instance v22, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$8;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$8;-><init>(Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;Lcom/zte/heartyservice/common/datatype/NewDialog;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    :cond_a
    :goto_6
    invoke-virtual {v3, v5}, Lcom/zte/heartyservice/common/datatype/NewDialog;->setContentView(Landroid/view/View;)V

    move-object v15, v3

    .line 474
    goto/16 :goto_0

    .line 448
    :cond_b
    const v21, 0x7f0e00a4

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 470
    :cond_c
    const v21, 0x7f0e00a3

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 476
    .end local v3           #contactDialog:Lcom/zte/heartyservice/common/datatype/NewDialog;
    .end local v4           #contactInflater:Landroid/view/LayoutInflater;
    .end local v5           #contactLayout:Landroid/view/View;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "layout_inflater"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 478
    .local v10, inflater:Landroid/view/LayoutInflater;
    new-instance v6, Lcom/zte/heartyservice/common/datatype/NewDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0c00c7

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v6, v0, v1}, Lcom/zte/heartyservice/common/datatype/NewDialog;-><init>(Landroid/content/Context;I)V

    .line 480
    .local v6, dialog:Lcom/zte/heartyservice/common/datatype/NewDialog;
    const v21, 0x7f030129

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 482
    .local v14, layout:Landroid/view/View;
    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    invoke-direct/range {v21 .. v23}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v14, v0}, Lcom/zte/heartyservice/common/datatype/NewDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v6}, Lcom/zte/heartyservice/common/datatype/NewDialog;->setNewDialogWidth(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 485
    const v21, 0x7f0e0005

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->positiveButotnText:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_10

    .line 487
    const v21, 0x7f0e00a4

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->positiveButotnText:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->positiveButonClickListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    .line 490
    const v21, 0x7f0e00a4

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    new-instance v22, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$9;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$9;-><init>(Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;Lcom/zte/heartyservice/common/datatype/NewDialog;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->negativeButtonText:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_11

    .line 507
    const v21, 0x7f0e00a3

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->negativeButtonText:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    .line 510
    const v21, 0x7f0e00a3

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    new-instance v22, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$10;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$10;-><init>(Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;Lcom/zte/heartyservice/common/datatype/NewDialog;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    :cond_e
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->message:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    if-eqz v21, :cond_f

    .line 529
    const v21, 0x7f0e0192

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->message:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    :cond_f
    invoke-virtual {v6, v14}, Lcom/zte/heartyservice/common/datatype/NewDialog;->setContentView(Landroid/view/View;)V

    move-object v15, v6

    .line 537
    goto/16 :goto_0

    .line 502
    :cond_10
    const v21, 0x7f0e00a4

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 523
    :cond_11
    const v21, 0x7f0e00a3

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setAutoChooseButton(IILcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;
    .locals 0
    .parameter "total"
    .parameter "time"
    .parameter "cb"

    .prologue
    .line 187
    iput p1, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->total:I

    .line 188
    iput p2, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->time:I

    .line 189
    iput-object p3, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->cb:Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;

    .line 190
    return-object p0
.end method

.method public setMessage(I)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;
    .locals 1
    .parameter "message"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->message:Ljava/lang/CharSequence;

    .line 129
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;
    .locals 0
    .parameter "message"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->message:Ljava/lang/CharSequence;

    .line 123
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;
    .locals 1
    .parameter "negativeButtonText"
    .parameter "listener"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 170
    iput-object p2, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 171
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;
    .locals 0
    .parameter "negativeButtonText"
    .parameter "listener"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 177
    iput-object p2, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 178
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;
    .locals 1
    .parameter "positiveButtonText"
    .parameter "listener"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->positiveButotnText:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->positiveButonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 156
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;
    .locals 0
    .parameter "positiveButtonText"
    .parameter "listener"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->positiveButotnText:Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->positiveButonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 163
    return-object p0
.end method

.method public setTitle(I)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;
    .locals 1
    .parameter "title"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->title:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;
    .locals 0
    .parameter "title"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->title:Ljava/lang/String;

    .line 139
    return-object p0
.end method

.method public setontentView(Landroid/view/View;)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;
    .locals 0
    .parameter "v"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->contentView:Landroid/view/View;

    .line 148
    return-object p0
.end method
