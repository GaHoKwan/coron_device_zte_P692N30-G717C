.class Lcom/android/mms/ui/DialogModeActivity$TextLengthFilter;
.super Ljava/lang/Object;
.source "DialogModeActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DialogModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextLengthFilter"
.end annotation


# instance fields
.field private final mExceedMessageSizeToast:Landroid/widget/Toast;

.field private final mMaxLength:I

.field final synthetic this$0:Lcom/android/mms/ui/DialogModeActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/DialogModeActivity;I)V
    .locals 2
    .parameter
    .parameter "max"

    .prologue
    .line 2516
    iput-object p1, p0, Lcom/android/mms/ui/DialogModeActivity$TextLengthFilter;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2517
    iput p2, p0, Lcom/android/mms/ui/DialogModeActivity$TextLengthFilter;->mMaxLength:I

    .line 2518
    const v0, 0x7f0b026d

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DialogModeActivity$TextLengthFilter;->mExceedMessageSizeToast:Landroid/widget/Toast;

    .line 2520
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 15
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 2525
    const-string v11, ""

    .line 2526
    .local v11, text:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2527
    .local v2, destString:Ljava/lang/String;
    const/4 v12, 0x0

    move/from16 v0, p5

    invoke-virtual {v2, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2528
    .local v3, headString:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2529
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2531
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2532
    .local v8, middleString:Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 2533
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2535
    :cond_1
    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 2536
    .local v10, tailString:Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 2537
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2539
    :cond_2
    iget-object v12, p0, Lcom/android/mms/ui/DialogModeActivity$TextLengthFilter;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #getter for: Lcom/android/mms/ui/DialogModeActivity;->mPage:I
    invoke-static {v12}, Lcom/android/mms/ui/DialogModeActivity;->access$800(Lcom/android/mms/ui/DialogModeActivity;)I

    move-result v12

    add-int/lit8 v9, v12, -0x1

    .line 2540
    .local v9, page:I
    iget v7, p0, Lcom/android/mms/ui/DialogModeActivity$TextLengthFilter;->mMaxLength:I

    .line 2541
    .local v7, maxLength:I
    invoke-static {v11}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 2542
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-le v12, v9, :cond_4

    .line 2543
    const/4 v7, 0x0

    .line 2544
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v9, :cond_3

    .line 2545
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v7, v12

    .line 2544
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2547
    :cond_3
    const-string v12, "Mms/DialogMode"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "get maxLength:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2550
    .end local v4           #i:I
    :cond_4
    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v12

    sub-int v13, p6, p5

    sub-int/2addr v12, v13

    sub-int v5, v7, v12

    .line 2552
    .local v5, keep:I
    sub-int v12, p3, p2

    if-ge v5, v12, :cond_5

    .line 2553
    iget-object v12, p0, Lcom/android/mms/ui/DialogModeActivity$TextLengthFilter;->mExceedMessageSizeToast:Landroid/widget/Toast;

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 2556
    :cond_5
    if-gtz v5, :cond_6

    .line 2557
    const-string v12, ""

    .line 2561
    :goto_1
    return-object v12

    .line 2558
    :cond_6
    sub-int v12, p3, p2

    if-lt v5, v12, :cond_7

    .line 2559
    const/4 v12, 0x0

    goto :goto_1

    .line 2561
    :cond_7
    add-int v12, p2, v5

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    goto :goto_1
.end method
