.class public Lcom/zte/handservice/SetImageView;
.super Ljava/lang/Object;
.source "SetImageView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dip2px(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "dpValue"

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 106
    .local v0, scale:F
    mul-float v1, p2, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public setBlueGodImageSize(Landroid/content/Context;Landroid/view/View;)V
    .locals 8
    .parameter "context"
    .parameter "image"

    .prologue
    const/16 v7, 0xb4

    const/16 v6, 0x35

    const/16 v5, 0x34

    const/16 v4, 0x21

    const/high16 v3, 0x4250

    .line 76
    new-instance v2, Lcom/zte/handservice/GetScreenInfo;

    invoke-direct {v2}, Lcom/zte/handservice/GetScreenInfo;-><init>()V

    invoke-virtual {v2, p1}, Lcom/zte/handservice/GetScreenInfo;->getDpi(Landroid/content/Context;)I

    move-result v0

    .line 77
    .local v0, dpi:I
    const/4 v1, 0x0

    .line 79
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    sparse-switch v0, :sswitch_data_0

    .line 96
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 99
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 100
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    return-void

    .line 82
    :sswitch_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_0

    .line 87
    :sswitch_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0, p1, v3}, Lcom/zte/handservice/SetImageView;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {p0, p1, v3}, Lcom/zte/handservice/SetImageView;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_0

    .line 90
    :sswitch_2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_0

    .line 93
    :sswitch_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_0

    .line 79
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_3
        0xa0 -> :sswitch_2
        0xd5 -> :sswitch_1
        0xf0 -> :sswitch_1
        0x140 -> :sswitch_1
        0x1e0 -> :sswitch_0
    .end sparse-switch
.end method

.method public setBlueGodTextSize(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 3
    .parameter "context"
    .parameter "text"

    .prologue
    const/high16 v2, 0x4180

    .line 111
    new-instance v1, Lcom/zte/handservice/GetScreenInfo;

    invoke-direct {v1}, Lcom/zte/handservice/GetScreenInfo;-><init>()V

    invoke-virtual {v1, p1}, Lcom/zte/handservice/GetScreenInfo;->getDpi(Landroid/content/Context;)I

    move-result v0

    .line 113
    .local v0, dpi:I
    sparse-switch v0, :sswitch_data_0

    .line 131
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 134
    :goto_0
    return-void

    .line 116
    :sswitch_0
    const/high16 v1, 0x4190

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 119
    :sswitch_1
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 122
    :sswitch_2
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 125
    :sswitch_3
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 128
    :sswitch_4
    const/high16 v1, 0x4170

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_4
        0xa0 -> :sswitch_3
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_1
        0x140 -> :sswitch_0
    .end sparse-switch
.end method

.method public setLinearImageSize(Landroid/content/Context;Landroid/view/View;)V
    .locals 8
    .parameter "context"
    .parameter "image"

    .prologue
    const/16 v7, 0x6c

    const/16 v6, 0x4b

    const/16 v5, 0x3c

    const/16 v4, 0x37

    const/16 v3, 0x28

    .line 45
    new-instance v2, Lcom/zte/handservice/GetScreenInfo;

    invoke-direct {v2}, Lcom/zte/handservice/GetScreenInfo;-><init>()V

    invoke-virtual {v2, p1}, Lcom/zte/handservice/GetScreenInfo;->getDpi(Landroid/content/Context;)I

    move-result v0

    .line 46
    .local v0, dpi:I
    const/4 v1, 0x0

    .line 48
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    sparse-switch v0, :sswitch_data_0

    .line 67
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 70
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 71
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    return-void

    .line 51
    :sswitch_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0xa0

    const/16 v3, 0xa0

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_0

    .line 54
    :sswitch_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 55
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_0

    .line 58
    :sswitch_2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 59
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_0

    .line 61
    :sswitch_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_0

    .line 64
    :sswitch_4
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 65
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_0

    .line 48
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_4
        0xa0 -> :sswitch_3
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_1
        0x1e0 -> :sswitch_0
    .end sparse-switch
.end method

.method public setRelativeImageSize(Landroid/content/Context;Landroid/view/View;)V
    .locals 8
    .parameter "context"
    .parameter "image"

    .prologue
    const/16 v7, 0x6c

    const/16 v6, 0x4b

    const/16 v5, 0x3c

    const/16 v4, 0x37

    const/16 v3, 0x28

    .line 15
    new-instance v2, Lcom/zte/handservice/GetScreenInfo;

    invoke-direct {v2}, Lcom/zte/handservice/GetScreenInfo;-><init>()V

    invoke-virtual {v2, p1}, Lcom/zte/handservice/GetScreenInfo;->getDpi(Landroid/content/Context;)I

    move-result v0

    .line 16
    .local v0, dpi:I
    const/4 v1, 0x0

    .line 18
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    sparse-switch v0, :sswitch_data_0

    .line 37
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40
    .restart local v1       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    return-void

    .line 21
    :sswitch_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xa0

    const/16 v3, 0xa0

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 22
    .restart local v1       #params:Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0

    .line 24
    :sswitch_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 25
    .restart local v1       #params:Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0

    .line 28
    :sswitch_2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 29
    .restart local v1       #params:Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0

    .line 31
    :sswitch_3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 32
    .restart local v1       #params:Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0

    .line 34
    :sswitch_4
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 35
    .restart local v1       #params:Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0

    .line 18
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_4
        0xa0 -> :sswitch_3
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_1
        0x1e0 -> :sswitch_0
    .end sparse-switch
.end method
