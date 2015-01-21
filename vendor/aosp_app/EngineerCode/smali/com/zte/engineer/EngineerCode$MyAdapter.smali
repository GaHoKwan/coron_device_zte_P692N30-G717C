.class public Lcom/zte/engineer/EngineerCode$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "EngineerCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/EngineerCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field private checkboxID:I

.field private items:[Lcom/zte/engineer/EngineerCode$ItemContent;

.field private layout:I

.field private mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field private textID:I

.field final synthetic this$0:Lcom/zte/engineer/EngineerCode;


# direct methods
.method public constructor <init>(Lcom/zte/engineer/EngineerCode;Landroid/content/Context;III[Lcom/zte/engineer/EngineerCode$ItemContent;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "textID"
    .parameter "checkboxID"
    .parameter "items"

    .prologue
    .line 536
    iput-object p1, p0, Lcom/zte/engineer/EngineerCode$MyAdapter;->this$0:Lcom/zte/engineer/EngineerCode;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 537
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/EngineerCode$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 538
    iput p3, p0, Lcom/zte/engineer/EngineerCode$MyAdapter;->layout:I

    .line 539
    iput p4, p0, Lcom/zte/engineer/EngineerCode$MyAdapter;->textID:I

    .line 540
    iput p5, p0, Lcom/zte/engineer/EngineerCode$MyAdapter;->checkboxID:I

    .line 541
    iput-object p6, p0, Lcom/zte/engineer/EngineerCode$MyAdapter;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    .line 542
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/zte/engineer/EngineerCode$MyAdapter;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/zte/engineer/EngineerCode$MyAdapter;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 559
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 565
    if-nez p2, :cond_0

    .line 567
    iget-object v2, p0, Lcom/zte/engineer/EngineerCode$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/zte/engineer/EngineerCode$MyAdapter;->layout:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 570
    :cond_0
    iget v2, p0, Lcom/zte/engineer/EngineerCode$MyAdapter;->textID:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 571
    .local v1, mTextView:Landroid/widget/TextView;
    iget v2, p0, Lcom/zte/engineer/EngineerCode$MyAdapter;->checkboxID:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 573
    .local v0, mCheckBox:Landroid/widget/CheckBox;
    iget-object v2, p0, Lcom/zte/engineer/EngineerCode$MyAdapter;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/zte/engineer/EngineerCode$ItemContent;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 575
    iget-object v2, p0, Lcom/zte/engineer/EngineerCode$MyAdapter;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/zte/engineer/EngineerCode$ItemContent;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 576
    iget-object v2, p0, Lcom/zte/engineer/EngineerCode$MyAdapter;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/zte/engineer/EngineerCode$ItemContent;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zte/engineer/EngineerCode$MyAdapter;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/zte/engineer/EngineerCode$ItemContent;->isPassed()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8b

    invoke-static {v5, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 577
    return-object p2

    .line 576
    :cond_1
    const/high16 v2, -0x1

    goto :goto_0

    :cond_2
    const/high16 v2, -0x100

    goto :goto_0
.end method

.method public replaceItems([Lcom/zte/engineer/EngineerCode$ItemContent;)V
    .locals 0
    .parameter "items"

    .prologue
    .line 582
    iput-object p1, p0, Lcom/zte/engineer/EngineerCode$MyAdapter;->items:[Lcom/zte/engineer/EngineerCode$ItemContent;

    .line 583
    return-void
.end method
