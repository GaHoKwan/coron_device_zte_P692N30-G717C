.class Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;


# direct methods
.method private constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 3034
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3034
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 19
    .parameter "s"

    .prologue
    .line 3038
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v16, "RecipientEditTextView"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[RecipientTextWatcher.afterTextChanged] "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v15 .. v17}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3040
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 3043
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 3045
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v11

    .line 3046
    .local v11, spannable:Landroid/text/Spannable;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/text/Editable;->length()I

    move-result v16

    const-class v17, Lcom/android/ex/chips/RecipientChip;

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v11, v15, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/ex/chips/RecipientChip;

    .line 3048
    .local v4, chips:[Lcom/android/ex/chips/RecipientChip;
    move-object v2, v4

    .local v2, arr$:[Lcom/android/ex/chips/RecipientChip;
    array-length v9, v2

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v3, v2, v6

    .line 3049
    .local v3, chip:Lcom/android/ex/chips/RecipientChip;
    invoke-interface {v11, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3048
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3051
    .end local v3           #chip:Lcom/android/ex/chips/RecipientChip;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;
    invoke-static {v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/text/style/ImageSpan;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 3052
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;
    invoke-static {v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/text/style/ImageSpan;

    move-result-object v15

    invoke-interface {v11, v15}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3111
    .end local v2           #arr$:[Lcom/android/ex/chips/RecipientChip;
    .end local v4           #chips:[Lcom/android/ex/chips/RecipientChip;
    .end local v6           #i$:I
    .end local v9           #len$:I
    .end local v11           #spannable:Landroid/text/Spannable;
    :cond_1
    :goto_1
    return-void

    .line 3058
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->chipsPending()Z
    invoke-static {v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1600(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 3062
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;
    invoke-static {v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/RecipientChip;

    move-result-object v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;
    invoke-static {v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/RecipientChip;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/ex/chips/RecipientChip;->getContactId()J

    move-result-wide v15

    const-wide/16 v17, -0x1

    cmp-long v15, v15, v17

    if-eqz v15, :cond_3

    .line 3064
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/text/Editable;->length()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setSelection(I)V

    .line 3065
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->clearSelectedChip()V
    invoke-static {v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1700(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    .line 3068
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mDuringAccelerateRemoveChip:Z
    invoke-static {v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1800(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 3072
    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v10

    .line 3075
    .local v10, length:I
    const/4 v15, 0x1

    if-le v10, v15, :cond_1

    .line 3077
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v15

    if-nez v15, :cond_5

    const/4 v5, 0x0

    .line 3078
    .local v5, end:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->length()I

    move-result v15

    add-int/lit8 v8, v15, -0x1

    .line 3079
    .local v8, len:I
    if-eq v5, v8, :cond_6

    .line 3080
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v7

    .line 3084
    .local v7, last:C
    :goto_3
    const/16 v15, 0x3b

    if-eq v7, v15, :cond_4

    const/16 v15, 0x2c

    if-eq v7, v15, :cond_4

    const v15, 0xff0c

    if-eq v7, v15, :cond_4

    const v15, 0xff1b

    if-ne v7, v15, :cond_9

    .line 3086
    :cond_4
    const v15, 0xff0c

    if-ne v7, v15, :cond_7

    .line 3087
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    add-int/lit8 v16, v5, 0x1

    const/16 v17, 0x2c

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v15, v5, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_1

    .line 3077
    .end local v5           #end:I
    .end local v7           #last:C
    .end local v8           #len:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v15

    add-int/lit8 v5, v15, -0x1

    goto :goto_2

    .line 3082
    .restart local v5       #end:I
    .restart local v8       #len:I
    :cond_6
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v7

    .restart local v7       #last:C
    goto :goto_3

    .line 3090
    :cond_7
    const v15, 0xff1b

    if-ne v7, v15, :cond_8

    .line 3091
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    add-int/lit8 v16, v5, 0x1

    const/16 v17, 0x3b

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v15, v5, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_1

    .line 3095
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->commitByCharacter()V
    invoke-static {v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1900(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    goto/16 :goto_1

    .line 3096
    :cond_9
    const/16 v15, 0x20

    if-ne v7, v15, :cond_1

    .line 3097
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->isPhoneQuery()Z

    move-result v15

    if-nez v15, :cond_1

    .line 3100
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3101
    .local v13, text:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    invoke-static {v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2000(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v15, v13, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v14

    .line 3102
    .local v14, tokenStart:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    invoke-static {v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2000(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v15

    invoke-interface {v15, v13, v14}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 3105
    .local v12, sub:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 3106
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->commitByCharacter()V
    invoke-static {v15}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1900(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    goto/16 :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 3171
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v6, 0x0

    .line 3115
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v7, "RecipientEditTextView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[RecipientTextWatcher.onTextChanged] start: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", before: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", processing mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessingMode:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;
    invoke-static {v9}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2100(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3117
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v7, "RecipientEditTextView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[RecipientTextWatcher.onTextChanged] text: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3119
    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessingMode:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2100(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    move-result-object v5

    sget-object v8, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->NONE:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    if-eq v5, v8, :cond_5

    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessingMode:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2100(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    move-result-object v5

    sget-object v8, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->COMMIT:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    if-eq v5, v8, :cond_5

    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessingMode:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2100(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    move-result-object v5

    sget-object v8, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->REMOVE_LAST:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    if-eq v5, v8, :cond_5

    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mChipProcessingMode:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2100(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    move-result-object v5

    sget-object v8, Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;->REPLACE_LAST:Lcom/android/ex/chips/MTKRecipientEditTextView$PROCESSING_MODE;

    if-eq v5, v8, :cond_5

    const/4 v5, 0x1

    :goto_0
    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->setDisableBringPointIntoView(Z)V
    invoke-static {v7, v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2200(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)V

    .line 3125
    if-le p3, p4, :cond_6

    .line 3126
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v7, "RecipientEditTextView"

    const-string v8, "[RecipientTextWatcher.onTextChanged] deleting case"

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3129
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 3130
    .local v2, selStart:I
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    const-class v7, Lcom/android/ex/chips/RecipientChip;

    invoke-interface {v5, v2, v2, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/ex/chips/RecipientChip;

    .line 3132
    .local v1, repl:[Lcom/android/ex/chips/RecipientChip;
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v7, "RecipientEditTextView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[RecipientTextWatcher.onTextChanged] selStart: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", repl.length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3133
    array-length v5, v1

    if-lez v5, :cond_4

    .line 3135
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 3137
    .local v0, editable:Landroid/text/Editable;
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2000(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v5

    invoke-interface {v5, v0, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 3138
    .local v4, tokenStart:I
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2000(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v5

    invoke-interface {v5, v0, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 3139
    .local v3, tokenEnd:I
    add-int/lit8 v3, v3, 0x1

    .line 3140
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v5

    if-le v3, v5, :cond_0

    .line 3141
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 3144
    :cond_0
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/RecipientChip;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 3145
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v7, "RecipientEditTextView"

    const-string v8, "[RecipientTextWatcher.onTextChanged] mSelectedChip != null"

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3146
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;
    invoke-static {v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/RecipientChip;

    move-result-object v7

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipStart(Lcom/android/ex/chips/RecipientChip;)I
    invoke-static {v5, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2300(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientChip;)I

    move-result v5

    if-ne v4, v5, :cond_3

    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v7, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;
    invoke-static {v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Lcom/android/ex/chips/RecipientChip;

    move-result-object v7

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/RecipientChip;)I
    invoke-static {v5, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2400(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientChip;)I

    move-result v5

    if-ne v3, v5, :cond_3

    .line 3147
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$400(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$400(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3148
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$400(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 3150
    :cond_1
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3151
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2500(Lcom/android/ex/chips/MTKRecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 3153
    :cond_2
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const/4 v7, 0x0

    #setter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/RecipientChip;
    invoke-static {v5, v7}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$502(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/RecipientChip;)Lcom/android/ex/chips/RecipientChip;

    .line 3157
    :cond_3
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v7, "MTKRecip"

    const-string v8, "[onTextChanged] delete"

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2600(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3158
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v7, "RecipientEditTextView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[RecipientTextWatcher.onTextChanged] delete a chip, tokenStart:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", tokenEnd:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v7, v8}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3159
    invoke-interface {v0, v4, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 3160
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    aget-object v6, v1, v6

    invoke-interface {v5, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3166
    .end local v0           #editable:Landroid/text/Editable;
    .end local v1           #repl:[Lcom/android/ex/chips/RecipientChip;
    .end local v2           #selStart:I
    .end local v3           #tokenEnd:I
    .end local v4           #tokenStart:I
    :cond_4
    :goto_1
    return-void

    :cond_5
    move v5, v6

    .line 3119
    goto/16 :goto_0

    .line 3162
    :cond_6
    if-le p4, p3, :cond_4

    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->mDisableBringPointIntoView:Z
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2700(Lcom/android/ex/chips/MTKRecipientEditTextView;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3164
    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->scrollBottomIntoView()V
    invoke-static {v5}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$900(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    goto :goto_1
.end method
