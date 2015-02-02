.class public abstract Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;
.super Lcom/amoi/AmoiEngineerMode/base/TestBase;
.source "KeystrokeBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeystrokeBase"


# instance fields
.field protected keysView:Landroid/widget/GridView;

.field private mkey_List:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mkeycode_List:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected pressedKeyCount:I

.field protected tipsView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/TestBase;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->pressedKeyCount:I

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->mkey_List:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->mkeycode_List:Ljava/util/ArrayList;

    return-void
.end method

.method private initKey()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->mkey_List:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 43
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->mkeycode_List:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->mkey_List:Ljava/util/ArrayList;

    const v1, 0x7f060104

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->mkeycode_List:Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->mkey_List:Ljava/util/ArrayList;

    const v1, 0x7f060105

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->mkeycode_List:Ljava/util/ArrayList;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->mkey_List:Ljava/util/ArrayList;

    const v1, 0x7f060102

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->mkeycode_List:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->mkey_List:Ljava/util/ArrayList;

    const v1, 0x7f060106

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->mkeycode_List:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->mkey_List:Ljava/util/ArrayList;

    const v1, 0x7f060101

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->mkeycode_List:Ljava/util/ArrayList;

    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    .line 130
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 132
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/amoi/AmoiEngineerMode/base/TestBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method enableHomeKeyDispatched(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 114
    const-string v2, "EngineerMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableHomeKeyDispatched, enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 117
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 118
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 119
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x8000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 123
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 124
    return-void

    .line 121
    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method protected abstract initButton()V
.end method

.method protected initView()V
    .locals 4

    .prologue
    .line 69
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->setContentView(I)V

    .line 70
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    const v0, 0x7f070058

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->tipsView:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->keysView:Landroid/widget/GridView;

    .line 73
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->keysView:Landroid/widget/GridView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->mkey_List:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->hideAutoButtons(Landroid/app/Activity;)V

    .line 78
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/amoi/AmoiEngineerMode/base/TestBase;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->initKey()V

    .line 36
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->initView()V

    .line 37
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->initButton()V

    .line 38
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->enableHomeKeyDispatched(Z)V

    .line 87
    invoke-super {p0}, Lcom/amoi/AmoiEngineerMode/base/TestBase;->onDestroy()V

    .line 89
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 137
    const-string v2, "EngineerMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeystrokeBase key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " repeat:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->mkey_List:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 140
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->mkeycode_List:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->keysView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 142
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 143
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->pressedKeyCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->pressedKeyCount:I

    .line 145
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->pressedKeyCount:I

    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->mkey_List:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->showButton()V

    .line 149
    :cond_0
    const/4 v2, 0x1

    .line 152
    .end local v1           #v:Landroid/view/View;
    :goto_1
    return v2

    .line 139
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/amoi/AmoiEngineerMode/base/TestBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->enableHomeKeyDispatched(Z)V

    .line 94
    invoke-super {p0}, Lcom/amoi/AmoiEngineerMode/base/TestBase;->onPause()V

    .line 95
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;->enableHomeKeyDispatched(Z)V

    .line 100
    invoke-super {p0}, Lcom/amoi/AmoiEngineerMode/base/TestBase;->onResume()V

    .line 101
    return-void
.end method

.method protected abstract showButton()V
.end method
