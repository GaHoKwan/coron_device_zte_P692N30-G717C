.class public Lcom/zte/engineer/TestFlag;
.super Lcom/zte/engineer/ZteActivity;
.source "TestFlag.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TestFlag"


# instance fields
.field private stringIDs:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/zte/engineer/ZteActivity;-><init>()V

    .line 12
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zte/engineer/TestFlag;->stringIDs:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x76t 0x0t 0x8t 0x7ft
        0x77t 0x0t 0x8t 0x7ft
        0x78t 0x0t 0x8t 0x7ft
        0x79t 0x0t 0x8t 0x7ft
        0x7at 0x0t 0x8t 0x7ft
        0x7bt 0x0t 0x8t 0x7ft
        0x7ct 0x0t 0x8t 0x7ft
        0x7dt 0x0t 0x8t 0x7ft
        0x7et 0x0t 0x8t 0x7ft
        0x7ft 0x0t 0x8t 0x7ft
        0x80t 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method private setState(Ljava/lang/String;)V
    .locals 6
    .parameter "flag"

    .prologue
    .line 53
    const/4 v3, 0x0

    .line 54
    .local v3, textView:Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 56
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 69
    .local v2, state:I
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 71
    const/16 v4, 0x31

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 72
    const v2, 0x7f06008b

    .line 80
    :goto_1
    iget-object v4, p0, Lcom/zte/engineer/TestFlag;->stringIDs:[I

    aget v4, v4, v0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #textView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 81
    .restart local v3       #textView:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    const/16 v4, 0x32

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_1

    .line 75
    const v2, 0x7f06008a

    goto :goto_1

    .line 78
    :cond_1
    const v2, 0x7f06001f

    goto :goto_1

    .line 83
    :cond_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 88
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    .line 89
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 48
    const v0, 0x7f080081

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "flag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/engineer/TestFlag;->setState(Ljava/lang/String;)V

    .line 50
    return-void
.end method
