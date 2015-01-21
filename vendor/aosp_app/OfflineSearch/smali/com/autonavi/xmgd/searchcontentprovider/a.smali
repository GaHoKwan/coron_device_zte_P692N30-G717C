.class Lcom/autonavi/xmgd/searchcontentprovider/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/searchcontentprovider/MainActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/searchcontentprovider/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/searchcontentprovider/a;->a:Lcom/autonavi/xmgd/searchcontentprovider/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/autonavi/xmgd/searchcontentprovider/a;->a:Lcom/autonavi/xmgd/searchcontentprovider/MainActivity;

    iget-object v0, v0, Lcom/autonavi/xmgd/searchcontentprovider/MainActivity;->a:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    sget-object v1, Lcom/autonavi/xmgd/search/a;->c:[I

    aget v2, v1, v0

    iget-object v0, p0, Lcom/autonavi/xmgd/searchcontentprovider/a;->a:Lcom/autonavi/xmgd/searchcontentprovider/MainActivity;

    iget-object v0, v0, Lcom/autonavi/xmgd/searchcontentprovider/MainActivity;->b:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const-string v0, "alphabet"

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/autonavi/xmgd/searchcontentprovider/a;->a:Lcom/autonavi/xmgd/searchcontentprovider/MainActivity;

    iget-object v1, v1, Lcom/autonavi/xmgd/searchcontentprovider/MainActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/searchcontentprovider/a;->a:Lcom/autonavi/xmgd/searchcontentprovider/MainActivity;

    iget-object v1, v1, Lcom/autonavi/xmgd/searchcontentprovider/MainActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "50"

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/autonavi/xmgd/searchcontentprovider/a;->a:Lcom/autonavi/xmgd/searchcontentprovider/MainActivity;

    iget-object v1, v1, Lcom/autonavi/xmgd/searchcontentprovider/MainActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    :cond_1
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x2

    aput-object v1, v4, v2

    iget-object v1, p0, Lcom/autonavi/xmgd/searchcontentprovider/a;->a:Lcom/autonavi/xmgd/searchcontentprovider/MainActivity;

    invoke-virtual {v1, v4, v0}, Lcom/autonavi/xmgd/searchcontentprovider/MainActivity;->a([Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string v0, "alphabet"

    goto :goto_0

    :pswitch_1
    const-string v0, "distance"

    goto :goto_0

    :pswitch_2
    const-string v0, "important"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
