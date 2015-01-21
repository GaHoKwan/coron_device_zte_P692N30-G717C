.class public Leu/chainfire/supersu/Logs$LogArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/supersu/Logs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<Leu/chainfire/supersu/Logs$Log;>;"
    }
.end annotation


# instance fields
.field private Ą:Z

.field private ȃ:Landroid/app/Activity;

.field private ˮ͈:Ljava/lang/String;

.field private 櫯:Landroid/view/LayoutInflater;

.field 鷭:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;ILjava/util/ArrayList;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/app/Activity;ILjava/util/List<Leu/chainfire/supersu/Logs$Log;>;Ljava/lang/String;Z)V"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Logs$LogArrayAdapter;->櫯:Landroid/view/LayoutInflater;

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Logs$LogArrayAdapter;->ˮ͈:Ljava/lang/String;

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Logs$LogArrayAdapter;->ȃ:Landroid/app/Activity;

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/Logs$LogArrayAdapter;->Ą:Z

    .line 236
    const/4 v0, -0x1

    iput v0, p0, Leu/chainfire/supersu/Logs$LogArrayAdapter;->鷭:I

    .line 228
    iput-object p1, p0, Leu/chainfire/supersu/Logs$LogArrayAdapter;->ȃ:Landroid/app/Activity;

    .line 229
    iput-object p4, p0, Leu/chainfire/supersu/Logs$LogArrayAdapter;->ˮ͈:Ljava/lang/String;

    .line 230
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/Logs$LogArrayAdapter;->櫯:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 257
    invoke-virtual {p0}, Leu/chainfire/supersu/Logs$LogArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Leu/chainfire/supersu/Logs$LogArrayAdapter;->櫯:Landroid/view/LayoutInflater;

    .line 260
    .line 261
    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/Logs$LogArrayAdapter;->櫯:Landroid/view/LayoutInflater;

    const v1, 0x7f030017

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 263
    :cond_1
    invoke-virtual {p0, p1}, Leu/chainfire/supersu/Logs$LogArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Logs$Log;

    move-object p3, v0

    .line 265
    const v0, 0x7f040038

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    .line 266
    const v0, 0x7f040039

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v5, v0

    .line 267
    const v0, 0x7f04003a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v6, v0

    .line 268
    const v0, 0x7f04003b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object v7, v0

    .line 270
    iget-object v0, p0, Leu/chainfire/supersu/Logs$LogArrayAdapter;->ˮ͈:Ljava/lang/String;

    invoke-virtual {p3, v0}, Leu/chainfire/supersu/Logs$Log;->鷭(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 271
    iget-object v0, p0, Leu/chainfire/supersu/Logs$LogArrayAdapter;->ˮ͈:Ljava/lang/String;

    invoke-virtual {p3, v0}, Leu/chainfire/supersu/Logs$Log;->櫯(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 273
    if-lez p1, :cond_2

    .line 274
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/Logs$LogArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Logs$Log;

    move-object v10, v0

    .line 275
    iget v0, v10, Leu/chainfire/supersu/Logs$Log;->ˮ͈:I

    mul-int/lit16 v0, v0, 0x2710

    iget v1, v10, Leu/chainfire/supersu/Logs$Log;->ȃ:I

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    iget v1, v10, Leu/chainfire/supersu/Logs$Log;->Ą:I

    add-int/2addr v0, v1

    iget v1, p3, Leu/chainfire/supersu/Logs$Log;->ˮ͈:I

    mul-int/lit16 v1, v1, 0x2710

    iget v2, p3, Leu/chainfire/supersu/Logs$Log;->ȃ:I

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    iget v2, p3, Leu/chainfire/supersu/Logs$Log;->Ą:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_2

    .line 276
    const-string v8, ""

    .line 278
    iget v0, v10, Leu/chainfire/supersu/Logs$Log;->ą:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, v10, Leu/chainfire/supersu/Logs$Log;->Ć:I

    add-int/2addr v0, v1

    iget v1, p3, Leu/chainfire/supersu/Logs$Log;->ą:I

    mul-int/lit8 v1, v1, 0x64

    iget v2, p3, Leu/chainfire/supersu/Logs$Log;->Ć:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_2

    .line 279
    const-string v9, ""

    .line 284
    :cond_2
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p3, Leu/chainfire/supersu/Logs$Log;->纫:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget v0, p3, Leu/chainfire/supersu/Logs$Log;->ċ:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 288
    :pswitch_0
    const v0, 0x7f02005a

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 289
    :pswitch_1
    const v0, 0x7f020059

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 290
    :pswitch_2
    const v0, 0x7f02005b

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    :goto_0
    const v0, 0x7f040037

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 294
    iget-boolean v1, p0, Leu/chainfire/supersu/Logs$LogArrayAdapter;->Ą:Z

    if-nez v1, :cond_5

    move-object p3, p0

    iget-object v1, p0, Leu/chainfire/supersu/Logs$LogArrayAdapter;->ȃ:Landroid/app/Activity;

    instance-of v1, v1, Leu/chainfire/supersu/MainActivity;

    if-eqz v1, :cond_3

    iget-object v1, p3, Leu/chainfire/supersu/Logs$LogArrayAdapter;->ȃ:Landroid/app/Activity;

    check-cast v1, Leu/chainfire/supersu/MainActivity;

    iget-boolean v1, v1, Leu/chainfire/supersu/MainActivity;->鷭:Z

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    .line 296
    iget v1, p0, Leu/chainfire/supersu/Logs$LogArrayAdapter;->鷭:I

    if-ne p1, v1, :cond_4

    .line 297
    const/4 v1, 0x0

    goto :goto_2

    .line 298
    :cond_4
    const/4 v1, 0x4

    .line 299
    goto :goto_2

    :cond_5
    const/16 v1, 0x8

    .line 294
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    return-object p2
.end method
