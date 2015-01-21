.class Lvc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Luv;


# direct methods
.method constructor <init>(Luv;)V
    .locals 0
    .parameter

    .prologue
    .line 816
    iput-object p1, p0, Lvc;->a:Luv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 819
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    .line 820
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 835
    :goto_0
    iget-object v0, p0, Lvc;->a:Luv;

    invoke-static {v0}, Luv;->b(Luv;)Ljava/lang/String;

    move-result-object v7

    .line 836
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 837
    iget-object v0, p0, Lvc;->a:Luv;

    invoke-static {v0}, Luv;->a(Luv;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 852
    :goto_1
    iget-object v0, p0, Lvc;->a:Luv;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Luv;->a:Ljava/lang/String;

    .line 853
    iget-object v0, p0, Lvc;->a:Luv;

    iget-object v2, p0, Lvc;->a:Luv;

    invoke-static {v2}, Luv;->a(Luv;)J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    shl-int v4, v6, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shl-int v1, v6, v1

    mul-int/2addr v1, v4

    int-to-long v8, v1

    div-long v1, v2, v8

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lvc;->a:Luv;

    iget-object v7, v7, Luv;->a:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Luv;->a(Luv;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 856
    iget-object v0, p0, Lvc;->a:Luv;

    invoke-static {v0}, Luv;->c(Luv;)V

    .line 857
    :goto_2
    return-void

    .line 822
    :pswitch_0
    iget-object v0, p0, Lvc;->a:Luv;

    invoke-static {v0}, Luv;->a(Luv;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v2, v0, Lamo;->bh:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lamo;->bh:I

    goto :goto_0

    .line 825
    :pswitch_1
    iget-object v0, p0, Lvc;->a:Luv;

    invoke-static {v0}, Luv;->a(Luv;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v2, v0, Lamo;->bi:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lamo;->bi:I

    goto :goto_0

    .line 828
    :pswitch_2
    iget-object v0, p0, Lvc;->a:Luv;

    invoke-static {v0}, Luv;->a(Luv;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v2, v0, Lamo;->bj:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lamo;->bj:I

    goto/16 :goto_0

    .line 831
    :pswitch_3
    iget-object v0, p0, Lvc;->a:Luv;

    invoke-static {v0}, Luv;->a(Luv;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v2, v0, Lamo;->bk:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lamo;->bk:I

    goto/16 :goto_0

    .line 839
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->P:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lvc;->a:Luv;

    invoke-static {v2}, Luv;->b(Luv;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 840
    iget-object v2, p0, Lvc;->a:Luv;

    invoke-static {v2}, Luv;->a(Luv;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    shl-int v3, v6, v3

    invoke-static {v2, v3}, Layr;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 841
    if-nez v2, :cond_1

    .line 842
    iget-object v0, p0, Lvc;->a:Luv;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Luv;->a(Luv;I)V

    .line 843
    iget-object v0, p0, Lvc;->a:Luv;

    invoke-static {v0}, Luv;->c(Luv;)V

    .line 844
    iget-object v0, p0, Lvc;->a:Luv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Luv;->a(Luv;I)I

    .line 845
    iget-object v0, p0, Lvc;->a:Luv;

    invoke-static {v0}, Luv;->b(Luv;)Z

    goto/16 :goto_2

    .line 848
    :cond_1
    invoke-static {v2, v0}, Layr;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 849
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v5, v0

    .line 850
    goto/16 :goto_1

    .line 820
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
