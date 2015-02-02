.class public Lcom/baidu/stocksettings/b;
.super Landroid/support/v13/app/FragmentPagerAdapter;


# instance fields
.field final synthetic a:Lcom/baidu/stocksettings/MainActivity;


# direct methods
.method public constructor <init>(Lcom/baidu/stocksettings/MainActivity;Landroid/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/stocksettings/b;->a:Lcom/baidu/stocksettings/MainActivity;

    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/baidu/stocksettings/c;

    invoke-direct {v0}, Lcom/baidu/stocksettings/c;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/baidu/stocksettings/n;

    invoke-direct {v0}, Lcom/baidu/stocksettings/n;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/baidu/stocksettings/i;

    invoke-direct {v0}, Lcom/baidu/stocksettings/i;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v1, p0, Lcom/baidu/stocksettings/b;->a:Lcom/baidu/stocksettings/MainActivity;

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Lcom/baidu/stocksettings/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/baidu/stocksettings/b;->a:Lcom/baidu/stocksettings/MainActivity;

    const v2, 0x7f080006

    invoke-virtual {v1, v2}, Lcom/baidu/stocksettings/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/baidu/stocksettings/b;->a:Lcom/baidu/stocksettings/MainActivity;

    const v2, 0x7f080007

    invoke-virtual {v1, v2}, Lcom/baidu/stocksettings/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
