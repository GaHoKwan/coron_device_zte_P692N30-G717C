.class public Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;
.super Landroid/app/Activity;
.source "TPPanelTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mpressed_time:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->mpressed_time:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 84
    .local v1, id:I
    packed-switch v1, :pswitch_data_0

    .line 122
    :cond_0
    :goto_0
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->mpressed_time:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_1

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 125
    :cond_1
    return-void

    .line 110
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 113
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 114
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->mpressed_time:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->mpressed_time:I

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x7f070081
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x400

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->requestWindowFeature(I)Z

    .line 23
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 25
    const v1, 0x7f030031

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->setContentView(I)V

    .line 27
    const v1, 0x7f070081

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 28
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    const v1, 0x7f070082

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 30
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const v1, 0x7f070083

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 32
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const v1, 0x7f070084

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 34
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v1, 0x7f070085

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 36
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const v1, 0x7f070086

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 38
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v1, 0x7f070087

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 40
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v1, 0x7f070088

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 42
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v1, 0x7f070089

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 44
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v1, 0x7f07008a

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 46
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v1, 0x7f07008b

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 48
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v1, 0x7f07008c

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 50
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v1, 0x7f07008d

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 52
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v1, 0x7f07008e

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 54
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v1, 0x7f07008f

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 56
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v1, 0x7f070090

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 58
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v1, 0x7f070091

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 60
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v1, 0x7f070092

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 62
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v1, 0x7f070093

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 64
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v1, 0x7f070094

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 66
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v1, 0x7f070095

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 68
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v1, 0x7f070096

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 70
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v1, 0x7f070097

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 72
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f070098

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 74
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v1, 0x7f070099

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 76
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const/4 v1, 0x0

    iput v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/TPPanelTest;->mpressed_time:I

    .line 80
    return-void
.end method
