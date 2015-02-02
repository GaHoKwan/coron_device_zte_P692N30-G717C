.class public abstract Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;
.super Lcom/amoi/AmoiEngineerMode/base/TestBase;
.source "TPPanelBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mpressed_time:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/TestBase;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->mpressed_time:I

    return-void
.end method


# virtual methods
.method protected abstract initButton()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 89
    .local v1, id:I
    packed-switch v1, :pswitch_data_0

    .line 127
    :cond_0
    :goto_0
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->mpressed_time:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_1

    .line 128
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/auto/FinishHandler;->next(Landroid/app/Activity;)V

    .line 130
    :cond_1
    return-void

    .line 115
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 118
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 119
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->mpressed_time:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->mpressed_time:I

    goto :goto_0

    .line 89
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

    .line 18
    invoke-super {p0, p1}, Lcom/amoi/AmoiEngineerMode/base/TestBase;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->requestWindowFeature(I)Z

    .line 22
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 24
    const v1, 0x7f030031

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->setContentView(I)V

    .line 26
    const v1, 0x7f070081

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 27
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    const v1, 0x7f070082

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 29
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    const v1, 0x7f070083

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 31
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const v1, 0x7f070084

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 33
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v1, 0x7f070085

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 35
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const v1, 0x7f070086

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 37
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const v1, 0x7f070087

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 39
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v1, 0x7f070088

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 41
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const v1, 0x7f070089

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 43
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v1, 0x7f07008a

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 45
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v1, 0x7f07008b

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 47
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v1, 0x7f07008c

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 49
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v1, 0x7f07008d

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 51
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v1, 0x7f07008e

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 53
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v1, 0x7f07008f

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 55
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v1, 0x7f070090

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 57
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v1, 0x7f070091

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 59
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v1, 0x7f070092

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 61
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v1, 0x7f070093

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 63
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v1, 0x7f070094

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 65
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v1, 0x7f070095

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 67
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v1, 0x7f070096

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 69
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v1, 0x7f070097

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 71
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v1, 0x7f070098

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 73
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v1, 0x7f070099

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 75
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const/4 v1, 0x0

    iput v1, p0, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;->mpressed_time:I

    .line 81
    return-void
.end method

.method protected abstract showButton()V
.end method
