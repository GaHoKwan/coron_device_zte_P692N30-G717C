.class public Lcom/zte/engineer/ProductInfo;
.super Lcom/zte/engineer/ZteActivity;
.source "ProductInfo.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/zte/engineer/ZteActivity;-><init>()V

    .line 13
    const-string v0, "ProductInfo"

    iput-object v0, p0, Lcom/zte/engineer/ProductInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static calcMEIDEndNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "MEID"

    .prologue
    const/4 v8, 0x0

    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xe

    if-ne v6, v7, :cond_6

    .line 78
    const/4 v6, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v6, "a"

    aput-object v6, v2, v8

    const/4 v6, 0x1

    const-string v7, "b"

    aput-object v7, v2, v6

    const/4 v6, 0x2

    const-string v7, "c"

    aput-object v7, v2, v6

    const/4 v6, 0x3

    const-string v7, "d"

    aput-object v7, v2, v6

    const/4 v6, 0x4

    const-string v7, "e"

    aput-object v7, v2, v6

    const/4 v6, 0x5

    const-string v7, "f"

    aput-object v7, v2, v6

    .line 79
    .local v2, myStr:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 80
    .local v5, sum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 81
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, param:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v6, v2

    if-ge v1, v6, :cond_1

    .line 83
    aget-object v6, v2, v1

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    :cond_1
    rem-int/lit8 v6, v0, 0x2

    if-nez v6, :cond_2

    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 80
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    rem-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    goto :goto_2

    .line 94
    .end local v1           #j:I
    .end local v3           #param:Ljava/lang/String;
    :cond_3
    rem-int/lit8 v6, v5, 0x10

    if-nez v6, :cond_4

    .line 95
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 121
    .end local v0           #i:I
    .end local v2           #myStr:[Ljava/lang/String;
    .end local v5           #sum:I
    :goto_3
    return-object v6

    .line 97
    .restart local v0       #i:I
    .restart local v2       #myStr:[Ljava/lang/String;
    .restart local v5       #sum:I
    :cond_4
    rem-int/lit8 v6, v5, 0x10

    rsub-int/lit8 v4, v6, 0x10

    .line 98
    .local v4, result:I
    const/16 v6, 0x9

    if-le v4, v6, :cond_5

    .line 99
    add-int/lit8 v4, v4, 0x37

    .line 101
    packed-switch v4, :pswitch_data_0

    .line 114
    const-string v6, "X"

    goto :goto_3

    .line 103
    :pswitch_0
    const-string v6, "A"

    goto :goto_3

    .line 105
    :pswitch_1
    const-string v6, "B"

    goto :goto_3

    .line 107
    :pswitch_2
    const-string v6, "C"

    goto :goto_3

    .line 109
    :pswitch_3
    const-string v6, "D"

    goto :goto_3

    .line 111
    :pswitch_4
    const-string v6, "E"

    goto :goto_3

    .line 113
    :pswitch_5
    const-string v6, "F"

    goto :goto_3

    .line 117
    :cond_5
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 121
    .end local v0           #i:I
    .end local v2           #myStr:[Ljava/lang/String;
    .end local v4           #result:I
    .end local v5           #sum:I
    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    .line 101
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/16 v1, 0xa

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 149
    invoke-virtual {p0, v1}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    .line 153
    :goto_0
    return-void

    .line 139
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    goto :goto_0

    .line 144
    :pswitch_1
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x7f08006e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 17
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v6, 0x7f030015

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(I)V

    .line 21
    const v6, 0x7f080065

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 22
    .local v0, mTextView:Landroid/widget/TextView;
    const v6, 0x7f060019

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 24
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 28
    .local v5, tm:Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    .line 29
    .local v2, psn:Ljava/lang/String;
    invoke-virtual {v5, v9}, Landroid/telephony/TelephonyManager;->getDeviceIdGemini(I)Ljava/lang/String;

    move-result-object v3

    .line 30
    .local v3, psn1:Ljava/lang/String;
    const-string v6, "ProductInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MEID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {v5, v10}, Landroid/telephony/TelephonyManager;->getDeviceIdGemini(I)Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, psn2:Ljava/lang/String;
    const-string v6, "ProductInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IMEI="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    if-nez v3, :cond_0

    .line 47
    const-string v3, "N/A"

    .line 49
    :cond_0
    if-nez v4, :cond_1

    .line 50
    const-string v4, "N/A"

    .line 52
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MEID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "IMEI:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    const-string v6, "ProductInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MEID IMEI="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const v6, 0x7f080067

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 56
    .local v1, mTextViewIMEI:Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060051

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v3, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const v6, 0x7f080068

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #mTextViewIMEI:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 58
    .restart local v1       #mTextViewIMEI:Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060052

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v4, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v6, 0x7f08006e

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v6, 0x7f08006f

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method
