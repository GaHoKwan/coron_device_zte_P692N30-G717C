.class Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RecipientsEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientsEditorTokenizer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RecipientsEditor;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/RecipientsEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/RecipientsEditor;Lcom/android/mms/ui/RecipientsEditor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 482
    invoke-direct {p0, p1}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;-><init>(Lcom/android/mms/ui/RecipientsEditor;)V

    return-void
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 4
    .parameter "text"
    .parameter "cursor"

    .prologue
    .line 510
    move v1, p2

    .line 511
    .local v1, i:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 514
    .local v2, len:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 515
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, c:C
    const/16 v3, 0x2c

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3b

    if-ne v0, v3, :cond_1

    .line 522
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_0
    :goto_1
    return v1

    .line 518
    .restart local v0       #c:C
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #c:C
    :cond_2
    move v1, v2

    .line 522
    goto :goto_1
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 5
    .parameter "text"
    .parameter "cursor"

    .prologue
    const/16 v4, 0x3b

    const/16 v3, 0x2c

    .line 486
    if-lez p2, :cond_2

    add-int/lit8 v1, p2, -0x1

    .line 490
    .local v1, i:I
    :goto_0
    if-lez v1, :cond_1

    add-int/lit8 v2, v1, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, c:C
    if-eq v0, v3, :cond_0

    if-ne v0, v4, :cond_1

    .line 491
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 494
    .end local v0           #c:C
    :cond_1
    :goto_1
    if-lez v1, :cond_3

    add-int/lit8 v2, v1, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .restart local v0       #c:C
    if-eq v0, v3, :cond_3

    if-eq v0, v4, :cond_3

    .line 495
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0           #c:C
    .end local v1           #i:I
    :cond_2
    move v1, p2

    .line 486
    goto :goto_0

    .line 497
    .restart local v1       #i:I
    :cond_3
    :goto_2
    if-ge v1, p2, :cond_5

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .restart local v0       #c:C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_4

    if-eq v0, v3, :cond_4

    if-ne v0, v4, :cond_5

    .line 498
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 501
    .end local v0           #c:C
    :cond_5
    return v1
.end method

.method public getNumbers()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, 0x22

    .line 556
    iget-object v7, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 557
    .local v4, sp:Landroid/text/Spanned;
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v2

    .line 558
    .local v2, len:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 561
    .local v6, start:I
    const/4 v1, 0x0

    .line 562
    .local v1, i:I
    :cond_0
    :goto_0
    add-int/lit8 v7, v2, 0x1

    if-ge v1, v7, :cond_9

    .line 564
    if-eq v1, v2, :cond_1

    invoke-interface {v4, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .local v0, c:C
    const/16 v7, 0x2c

    if-eq v0, v7, :cond_1

    const/16 v7, 0x3b

    if-ne v0, v7, :cond_4

    .line 565
    .end local v0           #c:C
    :cond_1
    if-le v1, v6, :cond_2

    .line 566
    iget-object v7, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    #calls: Lcom/android/mms/ui/RecipientsEditor;->getNumberAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    invoke-static {v4, v6, v1, v7}, Lcom/android/mms/ui/RecipientsEditor;->access$300(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    iget-object v7, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    #calls: Lcom/android/mms/ui/RecipientsEditor;->getSpanLength(Landroid/text/Spanned;IILandroid/content/Context;)I
    invoke-static {v4, v6, v1, v7}, Lcom/android/mms/ui/RecipientsEditor;->access$400(Landroid/text/Spanned;IILandroid/content/Context;)I

    move-result v5

    .line 573
    .local v5, spanLen:I
    if-le v5, v1, :cond_2

    .line 574
    move v1, v5

    .line 578
    .end local v5           #spanLen:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 580
    :goto_1
    if-ge v1, v2, :cond_3

    invoke-interface {v4, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_3

    .line 581
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 584
    :cond_3
    move v6, v1

    goto :goto_0

    .line 586
    .restart local v0       #c:C
    :cond_4
    if-ne v0, v9, :cond_6

    .line 587
    add-int/lit8 v1, v1, 0x1

    .line 588
    :goto_2
    if-ge v1, v2, :cond_0

    .line 589
    invoke-interface {v4, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 590
    if-ne v0, v9, :cond_5

    .line 591
    add-int/lit8 v1, v1, 0x1

    .line 592
    goto :goto_0

    .line 594
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 597
    :cond_6
    const/16 v7, 0x3c

    if-ne v0, v7, :cond_8

    .line 598
    add-int/lit8 v1, v1, 0x1

    .line 599
    :goto_3
    if-ge v1, v2, :cond_0

    .line 600
    invoke-interface {v4, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 601
    const/16 v7, 0x3e

    if-ne v0, v7, :cond_7

    .line 602
    add-int/lit8 v1, v1, 0x1

    .line 603
    goto :goto_0

    .line 605
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 610
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 614
    .end local v0           #c:C
    :cond_9
    return-object v3
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 531
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 533
    .local v7, i:I
    :goto_0
    if-lez v7, :cond_0

    add-int/lit8 v0, v7, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    .line 534
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 538
    :cond_0
    if-lez v7, :cond_2

    add-int/lit8 v0, v7, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .local v6, c:C
    const/16 v0, 0x2c

    if-eq v6, v0, :cond_1

    const/16 v0, 0x3b

    if-ne v6, v0, :cond_2

    .line 550
    .end local v6           #c:C
    .end local p1
    :cond_1
    :goto_1
    return-object p1

    .line 543
    .restart local p1
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    #getter for: Lcom/android/mms/ui/RecipientsEditor;->mLastSeparator:C
    invoke-static {v2}, Lcom/android/mms/ui/RecipientsEditor;->access$200(Lcom/android/mms/ui/RecipientsEditor;)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 544
    .local v8, separator:Ljava/lang/String;
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_3

    .line 545
    new-instance v4, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .local v4, sp:Landroid/text/SpannableString;
    move-object v0, p1

    .line 546
    check-cast v0, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object p1, v4

    .line 548
    goto :goto_1

    .line 550
    .end local v4           #sp:Landroid/text/SpannableString;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method
